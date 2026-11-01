package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class Downsampler {
    public static final Option<Boolean> ALLOW_HARDWARE_CONFIG;
    private static final DecodeCallbacks EMPTY_CALLBACKS;
    public static final Option<Boolean> FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS;
    private static final String ICO_MIME_TYPE = "image/x-ico";
    private static final Set<String> NO_DOWNSAMPLE_PRE_N_MIME_TYPES;
    private static final Queue<BitmapFactory.Options> OPTIONS_QUEUE;
    static final String TAG = "Downsampler";
    private static final Set<ImageHeaderParser.ImageType> TYPES_THAT_USE_POOL_PRE_KITKAT;
    private static final String WBMP_MIME_TYPE = "image/vnd.wap.wbmp";
    private final BitmapPool bitmapPool;
    private final ArrayPool byteArrayPool;
    private final DisplayMetrics displayMetrics;
    private final HardwareConfigState hardwareConfigState = HardwareConfigState.getInstance();
    private final List<ImageHeaderParser> parsers;
    public static final Option<DecodeFormat> DECODE_FORMAT = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", DecodeFormat.DEFAULT);
    public static final Option<PreferredColorSpace> PREFERRED_COLOR_SPACE = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace");

    @Deprecated
    public static final Option<DownsampleStrategy> DOWNSAMPLE_STRATEGY = DownsampleStrategy.OPTION;

    public interface DecodeCallbacks {
        void onDecodeComplete(BitmapPool bitmapPool, Bitmap bitmap) throws IOException;

        void onObtainBounds();
    }

    static {
        Boolean bool = Boolean.FALSE;
        FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        ALLOW_HARDWARE_CONFIG = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
        NO_DOWNSAMPLE_PRE_N_MIME_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(WBMP_MIME_TYPE, ICO_MIME_TYPE)));
        EMPTY_CALLBACKS = new DecodeCallbacks() { // from class: com.bumptech.glide.load.resource.bitmap.Downsampler.1
            @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
            public void onDecodeComplete(BitmapPool bitmapPool, Bitmap bitmap) {
            }

            @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
            public void onObtainBounds() {
            }
        };
        TYPES_THAT_USE_POOL_PRE_KITKAT = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        OPTIONS_QUEUE = Util.createQueue(0);
    }

    public Downsampler(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, BitmapPool bitmapPool, ArrayPool arrayPool) {
        this.parsers = list;
        this.displayMetrics = (DisplayMetrics) Preconditions.checkNotNull(displayMetrics);
        this.bitmapPool = (BitmapPool) Preconditions.checkNotNull(bitmapPool);
        this.byteArrayPool = (ArrayPool) Preconditions.checkNotNull(arrayPool);
    }

    private static int adjustTargetDensityForError(double d11) {
        int densityMultiplier = getDensityMultiplier(d11);
        int iRound = round(((double) densityMultiplier) * d11);
        return round((d11 / ((double) (iRound / densityMultiplier))) * ((double) iRound));
    }

    private void calculateConfig(ImageReader imageReader, DecodeFormat decodeFormat, boolean z10, boolean z11, BitmapFactory.Options options, int i11, int i12) {
        boolean zHasAlpha;
        if (this.hardwareConfigState.setHardwareConfigIfAllowed(i11, i12, options, z10, z11)) {
            return;
        }
        if (decodeFormat == DecodeFormat.PREFER_ARGB_8888) {
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return;
        }
        try {
            zHasAlpha = imageReader.getImageType().hasAlpha();
        } catch (IOException unused) {
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Cannot determine whether the image has alpha or not from header, format ");
                sb2.append(decodeFormat);
            }
            zHasAlpha = false;
        }
        Bitmap.Config config = zHasAlpha ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        options.inPreferredConfig = config;
        if (config == Bitmap.Config.RGB_565) {
            options.inDither = true;
        }
    }

    private static void calculateScaling(ImageHeaderParser.ImageType imageType, ImageReader imageReader, DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool, DownsampleStrategy downsampleStrategy, int i11, int i12, int i13, int i14, int i15, BitmapFactory.Options options) throws IOException {
        int i16;
        int i17;
        int i18;
        int iFloor;
        double dFloor;
        int iRound;
        if (i12 <= 0 || i13 <= 0) {
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unable to determine dimensions for: ");
                sb2.append(imageType);
                sb2.append(" with target [");
                sb2.append(i14);
                sb2.append("x");
                sb2.append(i15);
                sb2.append("]");
                return;
            }
            return;
        }
        if (isRotationRequired(i11)) {
            i17 = i12;
            i16 = i13;
        } else {
            i16 = i12;
            i17 = i13;
        }
        float scaleFactor = downsampleStrategy.getScaleFactor(i16, i17, i14, i15);
        if (scaleFactor <= 0.0f) {
            throw new IllegalArgumentException("Cannot scale with factor: " + scaleFactor + " from: " + downsampleStrategy + ", source: [" + i12 + "x" + i13 + "], target: [" + i14 + "x" + i15 + "]");
        }
        DownsampleStrategy.SampleSizeRounding sampleSizeRounding = downsampleStrategy.getSampleSizeRounding(i16, i17, i14, i15);
        if (sampleSizeRounding == null) {
            throw new IllegalArgumentException("Cannot round with null rounding");
        }
        float f11 = i16;
        float f12 = i17;
        int iRound2 = i16 / round(scaleFactor * f11);
        int iRound3 = i17 / round(scaleFactor * f12);
        DownsampleStrategy.SampleSizeRounding sampleSizeRounding2 = DownsampleStrategy.SampleSizeRounding.MEMORY;
        int iMax = sampleSizeRounding == sampleSizeRounding2 ? Math.max(iRound2, iRound3) : Math.min(iRound2, iRound3);
        int i19 = Build.VERSION.SDK_INT;
        if (i19 > 23 || !NO_DOWNSAMPLE_PRE_N_MIME_TYPES.contains(options.outMimeType)) {
            int iMax2 = Math.max(1, Integer.highestOneBit(iMax));
            if (sampleSizeRounding == sampleSizeRounding2 && iMax2 < 1.0f / scaleFactor) {
                iMax2 <<= 1;
            }
            i18 = iMax2;
        } else {
            i18 = 1;
        }
        options.inSampleSize = i18;
        if (imageType == ImageHeaderParser.ImageType.JPEG) {
            float fMin = Math.min(i18, 8);
            iFloor = (int) Math.ceil(f11 / fMin);
            iRound = (int) Math.ceil(f12 / fMin);
            int i20 = i18 / 8;
            if (i20 > 0) {
                iFloor /= i20;
                iRound /= i20;
            }
        } else {
            if (imageType == ImageHeaderParser.ImageType.PNG || imageType == ImageHeaderParser.ImageType.PNG_A) {
                float f13 = i18;
                iFloor = (int) Math.floor(f11 / f13);
                dFloor = Math.floor(f12 / f13);
            } else if (imageType.isWebp()) {
                if (i19 >= 24) {
                    float f14 = i18;
                    iFloor = Math.round(f11 / f14);
                    iRound = Math.round(f12 / f14);
                } else {
                    float f15 = i18;
                    iFloor = (int) Math.floor(f11 / f15);
                    dFloor = Math.floor(f12 / f15);
                }
            } else if (i16 % i18 == 0 && i17 % i18 == 0) {
                iFloor = i16 / i18;
                iRound = i17 / i18;
            } else {
                int[] dimensions = getDimensions(imageReader, options, decodeCallbacks, bitmapPool);
                iFloor = dimensions[0];
                iRound = dimensions[1];
            }
            iRound = (int) dFloor;
        }
        double scaleFactor2 = downsampleStrategy.getScaleFactor(iFloor, iRound, i14, i15);
        options.inTargetDensity = adjustTargetDensityForError(scaleFactor2);
        options.inDensity = getDensityMultiplier(scaleFactor2);
        if (isScaling(options)) {
            options.inScaled = true;
        } else {
            options.inTargetDensity = 0;
            options.inDensity = 0;
        }
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "Calculate scaling, source: [" + i12 + "x" + i13 + "], degreesToRotate: " + i11 + ", target: [" + i14 + "x" + i15 + "], power of two scaled: [" + iFloor + "x" + iRound + "], exact scale factor: " + scaleFactor + ", power of 2 sample size: " + i18 + ", adjusted scale factor: " + scaleFactor2 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
        }
    }

    private Resource<Bitmap> decode(ImageReader imageReader, int i11, int i12, Options options, DecodeCallbacks decodeCallbacks) throws IOException {
        byte[] bArr = (byte[]) this.byteArrayPool.get(65536, byte[].class);
        BitmapFactory.Options defaultOptions = getDefaultOptions();
        defaultOptions.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) options.get(DECODE_FORMAT);
        PreferredColorSpace preferredColorSpace = (PreferredColorSpace) options.get(PREFERRED_COLOR_SPACE);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) options.get(DownsampleStrategy.OPTION);
        boolean zBooleanValue = ((Boolean) options.get(FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS)).booleanValue();
        Option<Boolean> option = ALLOW_HARDWARE_CONFIG;
        try {
            return BitmapResource.obtain(decodeFromWrappedStreams(imageReader, defaultOptions, downsampleStrategy, decodeFormat, preferredColorSpace, options.get(option) != null && ((Boolean) options.get(option)).booleanValue(), i11, i12, zBooleanValue, decodeCallbacks), this.bitmapPool);
        } finally {
            releaseOptions(defaultOptions);
            this.byteArrayPool.put(bArr);
        }
    }

    private Bitmap decodeFromWrappedStreams(ImageReader imageReader, BitmapFactory.Options options, DownsampleStrategy downsampleStrategy, DecodeFormat decodeFormat, PreferredColorSpace preferredColorSpace, boolean z10, int i11, int i12, boolean z11, DecodeCallbacks decodeCallbacks) throws IOException {
        int i13;
        int i14;
        int i15;
        String str;
        int iRound;
        int iRound2;
        long logTime = LogTime.getLogTime();
        int[] dimensions = getDimensions(imageReader, options, decodeCallbacks, this.bitmapPool);
        int i16 = dimensions[0];
        int i17 = dimensions[1];
        String str2 = options.outMimeType;
        boolean z12 = (i16 == -1 || i17 == -1) ? false : z10;
        int imageOrientation = imageReader.getImageOrientation();
        int exifOrientationDegrees = TransformationUtils.getExifOrientationDegrees(imageOrientation);
        boolean zIsExifOrientationRequired = TransformationUtils.isExifOrientationRequired(imageOrientation);
        if (i11 == Integer.MIN_VALUE) {
            i13 = i12;
            i14 = isRotationRequired(exifOrientationDegrees) ? i17 : i16;
        } else {
            i13 = i12;
            i14 = i11;
        }
        if (i13 == Integer.MIN_VALUE) {
            i15 = isRotationRequired(exifOrientationDegrees) ? i16 : i17;
        } else {
            i15 = i13;
        }
        ImageHeaderParser.ImageType imageType = imageReader.getImageType();
        calculateScaling(imageType, imageReader, decodeCallbacks, this.bitmapPool, downsampleStrategy, exifOrientationDegrees, i16, i17, i14, i15, options);
        calculateConfig(imageReader, decodeFormat, z12, zIsExifOrientationRequired, options, i14, i15);
        int i18 = Build.VERSION.SDK_INT;
        if (shouldUsePool(imageType)) {
            if (i16 < 0 || i17 < 0 || !z11) {
                float f11 = isScaling(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                int i19 = options.inSampleSize;
                float f12 = i19;
                int iCeil = (int) Math.ceil(i16 / f12);
                int iCeil2 = (int) Math.ceil(i17 / f12);
                iRound = Math.round(iCeil * f11);
                iRound2 = Math.round(iCeil2 * f11);
                str = TAG;
                if (Log.isLoggable(str, 2)) {
                    Log.v(str, "Calculated target [" + iRound + "x" + iRound2 + "] for source [" + i16 + "x" + i17 + "], sampleSize: " + i19 + ", targetDensity: " + options.inTargetDensity + ", density: " + options.inDensity + ", density multiplier: " + f11);
                }
            } else {
                str = TAG;
                iRound = i14;
                iRound2 = i15;
            }
            if (iRound > 0 && iRound2 > 0) {
                setInBitmap(options, this.bitmapPool, iRound, iRound2);
            }
        } else {
            str = TAG;
        }
        if (preferredColorSpace != null) {
            if (i18 >= 28) {
                options.inPreferredColorSpace = ColorSpace.get((preferredColorSpace == PreferredColorSpace.DISPLAY_P3 && options.outColorSpace != null && options.outColorSpace.isWideGamut()) ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB);
            } else if (i18 >= 26) {
                options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            }
        }
        Bitmap bitmapDecodeStream = decodeStream(imageReader, options, decodeCallbacks, this.bitmapPool);
        decodeCallbacks.onDecodeComplete(this.bitmapPool, bitmapDecodeStream);
        if (Log.isLoggable(str, 2)) {
            logDecode(i16, i17, str2, options, bitmapDecodeStream, i11, i12, logTime);
        }
        if (bitmapDecodeStream == null) {
            return null;
        }
        bitmapDecodeStream.setDensity(this.displayMetrics.densityDpi);
        Bitmap bitmapRotateImageExif = TransformationUtils.rotateImageExif(this.bitmapPool, bitmapDecodeStream, imageOrientation);
        if (bitmapDecodeStream.equals(bitmapRotateImageExif)) {
            return bitmapRotateImageExif;
        }
        this.bitmapPool.put(bitmapDecodeStream);
        return bitmapRotateImageExif;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:?, code lost:
    
        throw r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Bitmap decodeStream(ImageReader imageReader, BitmapFactory.Options options, DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool) throws IOException {
        if (!options.inJustDecodeBounds) {
            decodeCallbacks.onObtainBounds();
            imageReader.stopGrowingBuffers();
        }
        int i11 = options.outWidth;
        int i12 = options.outHeight;
        String str = options.outMimeType;
        TransformationUtils.getBitmapDrawableLock().lock();
        try {
            try {
                Bitmap bitmapDecodeBitmap = imageReader.decodeBitmap(options);
                TransformationUtils.getBitmapDrawableLock().unlock();
                return bitmapDecodeBitmap;
            } catch (IllegalArgumentException e11) {
                IOException iOExceptionNewIoExceptionForInBitmapAssertion = newIoExceptionForInBitmapAssertion(e11, i11, i12, str, options);
                Log.isLoggable(TAG, 3);
                Bitmap bitmap = options.inBitmap;
                if (bitmap == null) {
                    throw iOExceptionNewIoExceptionForInBitmapAssertion;
                }
                try {
                    bitmapPool.put(bitmap);
                    options.inBitmap = null;
                    Bitmap bitmapDecodeStream = decodeStream(imageReader, options, decodeCallbacks, bitmapPool);
                    TransformationUtils.getBitmapDrawableLock().unlock();
                    return bitmapDecodeStream;
                } catch (IOException unused) {
                    throw iOExceptionNewIoExceptionForInBitmapAssertion;
                }
            }
        } catch (Throwable th2) {
            TransformationUtils.getBitmapDrawableLock().unlock();
            throw th2;
        }
    }

    @Nullable
    @TargetApi(19)
    private static String getBitmapString(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    private static synchronized BitmapFactory.Options getDefaultOptions() {
        BitmapFactory.Options optionsPoll;
        Queue<BitmapFactory.Options> queue = OPTIONS_QUEUE;
        synchronized (queue) {
            optionsPoll = queue.poll();
        }
        if (optionsPoll == null) {
            optionsPoll = new BitmapFactory.Options();
            resetOptions(optionsPoll);
        }
        return optionsPoll;
    }

    private static int getDensityMultiplier(double d11) {
        if (d11 > 1.0d) {
            d11 = 1.0d / d11;
        }
        return (int) Math.round(d11 * 2.147483647E9d);
    }

    private static int[] getDimensions(ImageReader imageReader, BitmapFactory.Options options, DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool) throws IOException {
        options.inJustDecodeBounds = true;
        decodeStream(imageReader, options, decodeCallbacks, bitmapPool);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    private static String getInBitmapString(BitmapFactory.Options options) {
        return getBitmapString(options.inBitmap);
    }

    private static boolean isRotationRequired(int i11) {
        return i11 == 90 || i11 == 270;
    }

    private static boolean isScaling(BitmapFactory.Options options) {
        int i11;
        int i12 = options.inTargetDensity;
        return i12 > 0 && (i11 = options.inDensity) > 0 && i12 != i11;
    }

    private static void logDecode(int i11, int i12, String str, BitmapFactory.Options options, Bitmap bitmap, int i13, int i14, long j11) {
        Log.v(TAG, "Decoded " + getBitmapString(bitmap) + " from [" + i11 + "x" + i12 + "] " + str + " with inBitmap " + getInBitmapString(options) + " for [" + i13 + "x" + i14 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + LogTime.getElapsedMillis(j11));
    }

    private static IOException newIoExceptionForInBitmapAssertion(IllegalArgumentException illegalArgumentException, int i11, int i12, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i11 + ", outHeight: " + i12 + ", outMimeType: " + str + ", inBitmap: " + getInBitmapString(options), illegalArgumentException);
    }

    private static void releaseOptions(BitmapFactory.Options options) {
        resetOptions(options);
        Queue<BitmapFactory.Options> queue = OPTIONS_QUEUE;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    private static void resetOptions(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    private static int round(double d11) {
        return (int) (d11 + 0.5d);
    }

    @TargetApi(26)
    private static void setInBitmap(BitmapFactory.Options options, BitmapPool bitmapPool, int i11, int i12) {
        Bitmap.Config config;
        if (Build.VERSION.SDK_INT < 26) {
            config = null;
        } else if (options.inPreferredConfig == Bitmap.Config.HARDWARE) {
            return;
        } else {
            config = options.outConfig;
        }
        if (config == null) {
            config = options.inPreferredConfig;
        }
        options.inBitmap = bitmapPool.getDirty(i11, i12, config);
    }

    private boolean shouldUsePool(ImageHeaderParser.ImageType imageType) {
        return true;
    }

    public Resource<Bitmap> decode(ParcelFileDescriptor parcelFileDescriptor, int i11, int i12, Options options) throws IOException {
        return decode(new ImageReader.ParcelFileDescriptorImageReader(parcelFileDescriptor, this.parsers, this.byteArrayPool), i11, i12, options, EMPTY_CALLBACKS);
    }

    public Resource<Bitmap> decode(InputStream inputStream, int i11, int i12, Options options) throws IOException {
        return decode(inputStream, i11, i12, options, EMPTY_CALLBACKS);
    }

    public Resource<Bitmap> decode(InputStream inputStream, int i11, int i12, Options options, DecodeCallbacks decodeCallbacks) throws IOException {
        return decode(new ImageReader.InputStreamImageReader(inputStream, this.parsers, this.byteArrayPool), i11, i12, options, decodeCallbacks);
    }

    public Resource<Bitmap> decode(ByteBuffer byteBuffer, int i11, int i12, Options options) throws IOException {
        return decode(new ImageReader.ByteBufferReader(byteBuffer, this.parsers, this.byteArrayPool), i11, i12, options, EMPTY_CALLBACKS);
    }

    void decode(File file, int i11, int i12, Options options) throws IOException {
        decode(new ImageReader.FileReader(file, this.parsers, this.byteArrayPool), i11, i12, options, EMPTY_CALLBACKS);
    }

    void decode(byte[] bArr, int i11, int i12, Options options) throws IOException {
        decode(new ImageReader.ByteArrayReader(bArr, this.parsers, this.byteArrayPool), i11, i12, options, EMPTY_CALLBACKS);
    }

    public boolean handles(ParcelFileDescriptor parcelFileDescriptor) {
        return ParcelFileDescriptorRewinder.isSupported();
    }

    public boolean handles(InputStream inputStream) {
        return true;
    }

    public boolean handles(ByteBuffer byteBuffer) {
        return true;
    }
}
