package com.bumptech.glide.integration.webp.decoder;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.Nullable;
import com.bumptech.glide.integration.webp.WebpBitmapFactory;
import com.bumptech.glide.integration.webp.WebpHeaderParser;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes2.dex */
public final class WebpDownsampler {
    private static final int DENSITY_PRECISION_MULTIPLIER = 1000000000;
    private static final int MARK_POSITION = 10485760;
    private static final String TAG = "WebpDownsampler";
    private final BitmapPool bitmapPool;
    private final ArrayPool byteArrayPool;
    private final DisplayMetrics displayMetrics;
    private final List<ImageHeaderParser> parsers;
    public static final Option<Boolean> DISABLE_DECODER = Option.memory("com.bumptech.glide.integration.webp.decoder.WebpDownsampler.DisableDecoder", Boolean.FALSE);
    private static final Downsampler.DecodeCallbacks EMPTY_CALLBACKS = new Downsampler.DecodeCallbacks() { // from class: com.bumptech.glide.integration.webp.decoder.WebpDownsampler.1
        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public void onDecodeComplete(BitmapPool bitmapPool, Bitmap bitmap) throws IOException {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public void onObtainBounds() {
        }
    };
    private static final Queue<BitmapFactory.Options> OPTIONS_QUEUE = Util.createQueue(0);

    public WebpDownsampler(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, BitmapPool bitmapPool, ArrayPool arrayPool) {
        this.parsers = list;
        this.displayMetrics = (DisplayMetrics) Preconditions.checkNotNull(displayMetrics);
        this.bitmapPool = (BitmapPool) Preconditions.checkNotNull(bitmapPool);
        this.byteArrayPool = (ArrayPool) Preconditions.checkNotNull(arrayPool);
    }

    private static int adjustTargetDensityForError(double d11) {
        int iRound = round(1.0E9d * d11);
        return round((d11 / ((double) (iRound / 1.0E9f))) * ((double) iRound));
    }

    private void calculateConfig(InputStream inputStream, DecodeFormat decodeFormat, boolean z10, boolean z11, BitmapFactory.Options options, int i11, int i12) throws IOException {
        boolean zHasAlpha;
        if (decodeFormat == DecodeFormat.PREFER_ARGB_8888) {
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return;
        }
        try {
            zHasAlpha = ImageHeaderParserUtils.getType(this.parsers, inputStream, this.byteArrayPool).hasAlpha();
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
        if (config == Bitmap.Config.RGB_565 || config == Bitmap.Config.ARGB_4444 || config == Bitmap.Config.ALPHA_8) {
            options.inDither = true;
        }
    }

    static void calculateScaling(ImageHeaderParser.ImageType imageType, InputStream inputStream, Downsampler.DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool, DownsampleStrategy downsampleStrategy, int i11, int i12, int i13, int i14, int i15, BitmapFactory.Options options) throws IOException {
        int iFloor;
        double dFloor;
        int iRound;
        if (i12 <= 0 || i13 <= 0) {
            return;
        }
        float scaleFactor = (i11 == 90 || i11 == 270) ? downsampleStrategy.getScaleFactor(i13, i12, i14, i15) : downsampleStrategy.getScaleFactor(i12, i13, i14, i15);
        if (scaleFactor <= 0.0f) {
            throw new IllegalArgumentException("Cannot scale with factor: " + scaleFactor + " from: " + downsampleStrategy + ", source: [" + i12 + "x" + i13 + "], target: [" + i14 + "x" + i15 + "]");
        }
        DownsampleStrategy.SampleSizeRounding sampleSizeRounding = downsampleStrategy.getSampleSizeRounding(i12, i13, i14, i15);
        if (sampleSizeRounding == null) {
            throw new IllegalArgumentException("Cannot round with null rounding");
        }
        float f11 = i12;
        float f12 = i13;
        int iRound2 = i12 / round(scaleFactor * f11);
        int iRound3 = i13 / round(scaleFactor * f12);
        DownsampleStrategy.SampleSizeRounding sampleSizeRounding2 = DownsampleStrategy.SampleSizeRounding.MEMORY;
        int iMax = Math.max(1, Integer.highestOneBit(sampleSizeRounding == sampleSizeRounding2 ? Math.max(iRound2, iRound3) : Math.min(iRound2, iRound3)));
        if (sampleSizeRounding == sampleSizeRounding2 && iMax < 1.0f / scaleFactor) {
            iMax <<= 1;
        }
        options.inSampleSize = iMax;
        if (imageType == ImageHeaderParser.ImageType.JPEG) {
            float fMin = Math.min(iMax, 8);
            iFloor = (int) Math.ceil(f11 / fMin);
            iRound = (int) Math.ceil(f12 / fMin);
            int i16 = iMax / 8;
            if (i16 > 0) {
                iFloor /= i16;
                iRound /= i16;
            }
        } else {
            if (imageType == ImageHeaderParser.ImageType.PNG || imageType == ImageHeaderParser.ImageType.PNG_A) {
                float f13 = iMax;
                iFloor = (int) Math.floor(f11 / f13);
                dFloor = Math.floor(f12 / f13);
            } else if (imageType == ImageHeaderParser.ImageType.WEBP || imageType == ImageHeaderParser.ImageType.WEBP_A) {
                if (Build.VERSION.SDK_INT >= 24) {
                    float f14 = iMax;
                    iFloor = Math.round(f11 / f14);
                    iRound = Math.round(f12 / f14);
                } else {
                    float f15 = iMax;
                    iFloor = (int) Math.floor(f11 / f15);
                    dFloor = Math.floor(f12 / f15);
                }
            } else if (i12 % iMax == 0 && i13 % iMax == 0) {
                iFloor = i12 / iMax;
                iRound = i13 / iMax;
            } else {
                int[] dimensions = getDimensions(inputStream, options, decodeCallbacks, bitmapPool);
                iFloor = dimensions[0];
                iRound = dimensions[1];
            }
            iRound = (int) dFloor;
        }
        double scaleFactor2 = downsampleStrategy.getScaleFactor(iFloor, iRound, i14, i15);
        options.inTargetDensity = adjustTargetDensityForError(scaleFactor2);
        options.inDensity = 1000000000;
        if (isScaling(options)) {
            options.inScaled = true;
        } else {
            options.inTargetDensity = 0;
            options.inDensity = 0;
        }
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "Calculate scaling, source: [" + i12 + "x" + i13 + "], target: [" + i14 + "x" + i15 + "], power of two scaled: [" + iFloor + "x" + iRound + "], exact scale factor: " + scaleFactor + ", power of 2 sample size: " + iMax + ", adjusted scale factor: " + scaleFactor2 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
        }
    }

    private Bitmap decodeFromWrappedStreams(InputStream inputStream, BitmapFactory.Options options, DownsampleStrategy downsampleStrategy, DecodeFormat decodeFormat, boolean z10, int i11, int i12, boolean z11, Downsampler.DecodeCallbacks decodeCallbacks) throws IOException {
        int iRound;
        int iRound2;
        long logTime = LogTime.getLogTime();
        int[] dimensions = getDimensions(inputStream, options, decodeCallbacks, this.bitmapPool);
        int i13 = dimensions[0];
        int i14 = dimensions[1];
        String str = options.outMimeType;
        boolean z12 = (i13 == -1 || i14 == -1) ? false : z10;
        int orientation = ImageHeaderParserUtils.getOrientation(this.parsers, inputStream, this.byteArrayPool);
        int exifOrientationDegrees = TransformationUtils.getExifOrientationDegrees(orientation);
        boolean zIsExifOrientationRequired = TransformationUtils.isExifOrientationRequired(orientation);
        int i15 = i11 == Integer.MIN_VALUE ? i13 : i11;
        int i16 = i12 == Integer.MIN_VALUE ? i14 : i12;
        ImageHeaderParser.ImageType type = ImageHeaderParserUtils.getType(this.parsers, inputStream, this.byteArrayPool);
        calculateScaling(type, inputStream, decodeCallbacks, this.bitmapPool, downsampleStrategy, exifOrientationDegrees, i13, i14, i15, i16, options);
        calculateConfig(inputStream, decodeFormat, z12, zIsExifOrientationRequired, options, i15, i16);
        if (shouldUsePool(type)) {
            if (z11) {
                iRound = i15;
                iRound2 = i16;
            } else {
                float f11 = isScaling(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                int i17 = options.inSampleSize;
                float f12 = i17;
                int iCeil = (int) Math.ceil(i13 / f12);
                int iCeil2 = (int) Math.ceil(i14 / f12);
                iRound = Math.round(iCeil * f11);
                iRound2 = Math.round(iCeil2 * f11);
                if (Log.isLoggable(TAG, 2)) {
                    Log.v(TAG, "Calculated target [" + iRound + "x" + iRound2 + "] for source [" + i13 + "x" + i14 + "], sampleSize: " + i17 + ", targetDensity: " + options.inTargetDensity + ", density: " + options.inDensity + ", density multiplier: " + f11);
                }
            }
            if (iRound > 0 && iRound2 > 0) {
                setInBitmap(options, this.bitmapPool, iRound, iRound2);
            }
        }
        Bitmap bitmapDecodeStream = decodeStream(inputStream, options, decodeCallbacks, this.bitmapPool);
        decodeCallbacks.onDecodeComplete(this.bitmapPool, bitmapDecodeStream);
        if (Log.isLoggable(TAG, 2)) {
            logDecode(i13, i14, str, options, bitmapDecodeStream, i11, i12, logTime);
        }
        if (bitmapDecodeStream == null) {
            return null;
        }
        bitmapDecodeStream.setDensity(this.displayMetrics.densityDpi);
        Bitmap bitmapRotateImageExif = TransformationUtils.rotateImageExif(this.bitmapPool, bitmapDecodeStream, orientation);
        if (bitmapDecodeStream.equals(bitmapRotateImageExif)) {
            return bitmapRotateImageExif;
        }
        this.bitmapPool.put(bitmapDecodeStream);
        return bitmapRotateImageExif;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
    
        throw r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Bitmap decodeStream(InputStream inputStream, BitmapFactory.Options options, Downsampler.DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool) throws IOException {
        if (options.inJustDecodeBounds) {
            inputStream.mark(MARK_POSITION);
        } else {
            decodeCallbacks.onObtainBounds();
        }
        int i11 = options.outWidth;
        int i12 = options.outHeight;
        String str = options.outMimeType;
        TransformationUtils.getBitmapDrawableLock().lock();
        try {
            try {
                Bitmap bitmapDecodeStream = WebpBitmapFactory.decodeStream(inputStream, null, options);
                TransformationUtils.getBitmapDrawableLock().unlock();
                if (options.inJustDecodeBounds) {
                    inputStream.reset();
                }
                return bitmapDecodeStream;
            } catch (IllegalArgumentException e11) {
                IOException iOExceptionNewIoExceptionForInBitmapAssertion = newIoExceptionForInBitmapAssertion(e11, i11, i12, str, options);
                Log.isLoggable(TAG, 3);
                if (options.inBitmap == null) {
                    throw iOExceptionNewIoExceptionForInBitmapAssertion;
                }
                try {
                    inputStream.reset();
                    bitmapPool.put(options.inBitmap);
                    options.inBitmap = null;
                    Bitmap bitmapDecodeStream2 = decodeStream(inputStream, options, decodeCallbacks, bitmapPool);
                    TransformationUtils.getBitmapDrawableLock().unlock();
                    return bitmapDecodeStream2;
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

    private static int[] getDimensions(InputStream inputStream, BitmapFactory.Options options, Downsampler.DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool) throws IOException {
        options.inJustDecodeBounds = true;
        decodeStream(inputStream, options, decodeCallbacks, bitmapPool);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    private static String getInBitmapString(BitmapFactory.Options options) {
        return getBitmapString(options.inBitmap);
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
        if (Build.VERSION.SDK_INT < 26 || options.inPreferredConfig != Bitmap.Config.HARDWARE) {
            options.inBitmap = bitmapPool.getDirty(i11, i12, options.inPreferredConfig);
        }
    }

    private boolean shouldUsePool(ImageHeaderParser.ImageType imageType) throws IOException {
        return true;
    }

    public Resource<Bitmap> decode(InputStream inputStream, int i11, int i12, Options options) throws IOException {
        return decode(inputStream, i11, i12, options, EMPTY_CALLBACKS);
    }

    public Resource<Bitmap> decode(InputStream inputStream, int i11, int i12, Options options, Downsampler.DecodeCallbacks decodeCallbacks) throws IOException {
        Preconditions.checkArgument(inputStream.markSupported(), "You must provide an InputStream that supports mark()");
        byte[] bArr = (byte[]) this.byteArrayPool.get(65536, byte[].class);
        BitmapFactory.Options defaultOptions = getDefaultOptions();
        defaultOptions.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) options.get(Downsampler.DECODE_FORMAT);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) options.get(Downsampler.DOWNSAMPLE_STRATEGY);
        boolean zBooleanValue = ((Boolean) options.get(Downsampler.FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS)).booleanValue();
        Option<Boolean> option = Downsampler.ALLOW_HARDWARE_CONFIG;
        try {
            return BitmapResource.obtain(decodeFromWrappedStreams(inputStream, defaultOptions, downsampleStrategy, decodeFormat, options.get(option) != null && ((Boolean) options.get(option)).booleanValue(), i11, i12, zBooleanValue, decodeCallbacks), this.bitmapPool);
        } finally {
            releaseOptions(defaultOptions);
            this.byteArrayPool.put(bArr, byte[].class);
        }
    }

    public boolean handles(InputStream inputStream, Options options) throws IOException {
        if (((Boolean) options.get(DISABLE_DECODER)).booleanValue() || WebpHeaderParser.sIsExtendedWebpSupported) {
            return false;
        }
        WebpHeaderParser.WebpImageType type = WebpHeaderParser.getType(inputStream, this.byteArrayPool);
        return WebpHeaderParser.isStaticWebpType(type) && type != WebpHeaderParser.WebpImageType.WEBP_SIMPLE;
    }

    public boolean handles(ByteBuffer byteBuffer, Options options) throws IOException {
        if (((Boolean) options.get(DISABLE_DECODER)).booleanValue() || WebpHeaderParser.sIsExtendedWebpSupported) {
            return false;
        }
        WebpHeaderParser.WebpImageType type = WebpHeaderParser.getType(byteBuffer);
        return WebpHeaderParser.isStaticWebpType(type) && type != WebpHeaderParser.WebpImageType.WEBP_SIMPLE;
    }
}
