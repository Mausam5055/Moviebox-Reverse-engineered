package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class StandardGifDecoder implements GifDecoder {
    private static final int BYTES_PER_INTEGER = 4;
    private static final int COLOR_TRANSPARENT_BLACK = 0;
    private static final int INITIAL_FRAME_POINTER = -1;
    private static final int MASK_INT_LOWEST_BYTE = 255;
    private static final int MAX_STACK_SIZE = 4096;
    private static final int NULL_CODE = -1;
    private static final String TAG = "StandardGifDecoder";
    private int[] act;

    @NonNull
    private Bitmap.Config bitmapConfig;
    private final GifDecoder.BitmapProvider bitmapProvider;
    private byte[] block;
    private int downsampledHeight;
    private int downsampledWidth;
    private int framePointer;
    private GifHeader header;

    @Nullable
    private Boolean isFirstFrameTransparent;
    private byte[] mainPixels;
    private int[] mainScratch;
    private GifHeaderParser parser;
    private final int[] pct;
    private byte[] pixelStack;
    private short[] prefix;
    private Bitmap previousImage;
    private ByteBuffer rawData;
    private int sampleSize;
    private boolean savePrevious;
    private int status;
    private byte[] suffix;

    public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider bitmapProvider) {
        this.pct = new int[256];
        this.bitmapConfig = Bitmap.Config.ARGB_8888;
        this.bitmapProvider = bitmapProvider;
        this.header = new GifHeader();
    }

    public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer) {
        this(bitmapProvider, gifHeader, byteBuffer, 1);
    }

    public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer, int i11) {
        this(bitmapProvider);
        setData(gifHeader, byteBuffer, i11);
    }

    private int averageColorsNear(int i11, int i12, int i13) {
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        for (int i19 = i11; i19 < this.sampleSize + i11; i19++) {
            byte[] bArr = this.mainPixels;
            if (i19 >= bArr.length || i19 >= i12) {
                break;
            }
            int i20 = this.act[bArr[i19] & 255];
            if (i20 != 0) {
                i14 += (i20 >> 24) & 255;
                i15 += (i20 >> 16) & 255;
                i16 += (i20 >> 8) & 255;
                i17 += i20 & 255;
                i18++;
            }
        }
        int i21 = i11 + i13;
        for (int i22 = i21; i22 < this.sampleSize + i21; i22++) {
            byte[] bArr2 = this.mainPixels;
            if (i22 >= bArr2.length || i22 >= i12) {
                break;
            }
            int i23 = this.act[bArr2[i22] & 255];
            if (i23 != 0) {
                i14 += (i23 >> 24) & 255;
                i15 += (i23 >> 16) & 255;
                i16 += (i23 >> 8) & 255;
                i17 += i23 & 255;
                i18++;
            }
        }
        if (i18 == 0) {
            return 0;
        }
        return ((i14 / i18) << 24) | ((i15 / i18) << 16) | ((i16 / i18) << 8) | (i17 / i18);
    }

    private void copyCopyIntoScratchRobust(GifFrame gifFrame) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int[] iArr = this.mainScratch;
        int i16 = gifFrame.f20129ih;
        int i17 = this.sampleSize;
        int i18 = i16 / i17;
        int i19 = gifFrame.f20132iy / i17;
        int i20 = gifFrame.f20130iw / i17;
        int i21 = gifFrame.f20131ix / i17;
        boolean z10 = this.framePointer == 0;
        int i22 = this.downsampledWidth;
        int i23 = this.downsampledHeight;
        byte[] bArr = this.mainPixels;
        int[] iArr2 = this.act;
        Boolean bool = this.isFirstFrameTransparent;
        int i24 = 8;
        int i25 = 0;
        int i26 = 0;
        int i27 = 1;
        while (i26 < i18) {
            Boolean bool2 = bool;
            if (gifFrame.interlace) {
                if (i25 >= i18) {
                    int i28 = i27 + 1;
                    i11 = i18;
                    if (i28 == 2) {
                        i25 = 4;
                    } else if (i28 == 3) {
                        i24 = 4;
                        i27 = i28;
                        i25 = 2;
                    } else if (i28 == 4) {
                        i27 = i28;
                        i25 = 1;
                        i24 = 2;
                    }
                    i27 = i28;
                } else {
                    i11 = i18;
                }
                i12 = i25 + i24;
            } else {
                i11 = i18;
                i12 = i25;
                i25 = i26;
            }
            int i29 = i25 + i19;
            boolean z11 = i17 == 1;
            if (i29 < i23) {
                int i30 = i29 * i22;
                int i31 = i30 + i21;
                int i32 = i31 + i20;
                int i33 = i30 + i22;
                if (i33 < i32) {
                    i32 = i33;
                }
                i13 = i12;
                int i34 = i26 * i17 * gifFrame.f20130iw;
                if (!z11) {
                    i15 = i19;
                    int i35 = ((i32 - i31) * i17) + i34;
                    int i36 = i31;
                    while (true) {
                        i14 = i20;
                        if (i36 >= i32) {
                            break;
                        }
                        int iAverageColorsNear = averageColorsNear(i34, i35, gifFrame.f20130iw);
                        if (iAverageColorsNear != 0) {
                            iArr[i36] = iAverageColorsNear;
                        } else if (z10 && bool2 == null) {
                            bool2 = Boolean.TRUE;
                        }
                        i34 += i17;
                        i36++;
                        i20 = i14;
                    }
                } else {
                    int i37 = i31;
                    while (i37 < i32) {
                        int i38 = i19;
                        int i39 = iArr2[bArr[i34] & 255];
                        if (i39 != 0) {
                            iArr[i37] = i39;
                        } else if (z10 && bool2 == null) {
                            bool2 = Boolean.TRUE;
                        }
                        i34 += i17;
                        i37++;
                        i19 = i38;
                    }
                }
                bool = bool2;
                i26++;
                i19 = i15;
                i18 = i11;
                i20 = i14;
                i25 = i13;
            } else {
                i13 = i12;
            }
            i15 = i19;
            i14 = i20;
            bool = bool2;
            i26++;
            i19 = i15;
            i18 = i11;
            i20 = i14;
            i25 = i13;
        }
        Boolean bool3 = bool;
        if (this.isFirstFrameTransparent == null) {
            this.isFirstFrameTransparent = Boolean.valueOf(bool3 == null ? false : bool3.booleanValue());
        }
    }

    private void copyIntoScratchFast(GifFrame gifFrame) {
        GifFrame gifFrame2 = gifFrame;
        int[] iArr = this.mainScratch;
        int i11 = gifFrame2.f20129ih;
        int i12 = gifFrame2.f20132iy;
        int i13 = gifFrame2.f20130iw;
        int i14 = gifFrame2.f20131ix;
        boolean z10 = this.framePointer == 0;
        int i15 = this.downsampledWidth;
        byte[] bArr = this.mainPixels;
        int[] iArr2 = this.act;
        int i16 = 0;
        byte b11 = -1;
        while (i16 < i11) {
            int i17 = (i16 + i12) * i15;
            int i18 = i17 + i14;
            int i19 = i18 + i13;
            int i20 = i17 + i15;
            if (i20 < i19) {
                i19 = i20;
            }
            int i21 = gifFrame2.f20130iw * i16;
            int i22 = i18;
            while (i22 < i19) {
                byte b12 = bArr[i21];
                int i23 = i11;
                int i24 = b12 & 255;
                if (i24 != b11) {
                    int i25 = iArr2[i24];
                    if (i25 != 0) {
                        iArr[i22] = i25;
                    } else {
                        b11 = b12;
                    }
                }
                i21++;
                i22++;
                i11 = i23;
            }
            i16++;
            gifFrame2 = gifFrame;
        }
        Boolean bool = this.isFirstFrameTransparent;
        this.isFirstFrameTransparent = Boolean.valueOf((bool != null && bool.booleanValue()) || (this.isFirstFrameTransparent == null && z10 && b11 != -1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v15, types: [short] */
    /* JADX WARN: Type inference failed for: r7v17 */
    private void decodeBitmapData(GifFrame gifFrame) {
        int i11;
        int i12;
        short s11;
        StandardGifDecoder standardGifDecoder = this;
        if (gifFrame != null) {
            standardGifDecoder.rawData.position(gifFrame.bufferFrameStart);
        }
        if (gifFrame == null) {
            GifHeader gifHeader = standardGifDecoder.header;
            i11 = gifHeader.width;
            i12 = gifHeader.height;
        } else {
            i11 = gifFrame.f20130iw;
            i12 = gifFrame.f20129ih;
        }
        int i13 = i11 * i12;
        byte[] bArr = standardGifDecoder.mainPixels;
        if (bArr == null || bArr.length < i13) {
            standardGifDecoder.mainPixels = standardGifDecoder.bitmapProvider.obtainByteArray(i13);
        }
        byte[] bArr2 = standardGifDecoder.mainPixels;
        if (standardGifDecoder.prefix == null) {
            standardGifDecoder.prefix = new short[4096];
        }
        short[] sArr = standardGifDecoder.prefix;
        if (standardGifDecoder.suffix == null) {
            standardGifDecoder.suffix = new byte[4096];
        }
        byte[] bArr3 = standardGifDecoder.suffix;
        if (standardGifDecoder.pixelStack == null) {
            standardGifDecoder.pixelStack = new byte[4097];
        }
        byte[] bArr4 = standardGifDecoder.pixelStack;
        int i14 = readByte();
        int i15 = 1 << i14;
        int i16 = i15 + 1;
        int i17 = i15 + 2;
        int i18 = i14 + 1;
        int i19 = (1 << i18) - 1;
        int i20 = 0;
        for (int i21 = 0; i21 < i15; i21++) {
            sArr[i21] = 0;
            bArr3[i21] = (byte) i21;
        }
        byte[] bArr5 = standardGifDecoder.block;
        int i22 = i18;
        int i23 = i17;
        int i24 = i19;
        int block = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        int i29 = 0;
        int i30 = 0;
        int i31 = -1;
        while (i20 < i13) {
            if (block == 0) {
                block = readBlock();
                if (block <= 0) {
                    standardGifDecoder.status = 3;
                    break;
                }
                i25 = 0;
            }
            i27 += (bArr5[i25] & 255) << i26;
            i25++;
            block--;
            int i32 = i26 + 8;
            i23 = i23;
            i31 = i31;
            i22 = i22;
            i18 = i18;
            i30 = i30;
            while (true) {
                if (i32 < i22) {
                    i26 = i32;
                    break;
                }
                int i33 = i17;
                int i34 = i27 & i24;
                i27 >>= i22;
                i32 -= i22;
                if (i34 == i15) {
                    i24 = i19;
                    i22 = i18;
                    i23 = i33;
                    i17 = i23;
                    i31 = -1;
                } else {
                    if (i34 == i16) {
                        i26 = i32;
                        i17 = i33;
                        break;
                    }
                    if (i31 == -1) {
                        bArr2[i28] = bArr3[i34];
                        i28++;
                        i20++;
                        i31 = i34;
                        i30 = i31;
                        i17 = i33;
                        i32 = i32;
                    } else {
                        if (i34 >= i23) {
                            bArr4[i29] = (byte) i30;
                            i29++;
                            s11 = i31;
                        } else {
                            s11 = i34;
                        }
                        while (s11 >= i15) {
                            bArr4[i29] = bArr3[s11];
                            i29++;
                            s11 = sArr[s11];
                        }
                        i30 = bArr3[s11] & 255;
                        byte b11 = (byte) i30;
                        bArr2[i28] = b11;
                        while (true) {
                            i28++;
                            i20++;
                            if (i29 <= 0) {
                                break;
                            }
                            i29--;
                            bArr2[i28] = bArr4[i29];
                        }
                        byte[] bArr6 = bArr4;
                        if (i23 < 4096) {
                            sArr[i23] = (short) i31;
                            bArr3[i23] = b11;
                            i23++;
                            if ((i23 & i24) == 0 && i23 < 4096) {
                                i22++;
                                i24 += i23;
                            }
                        }
                        i31 = i34;
                        i17 = i33;
                        i32 = i32;
                        bArr4 = bArr6;
                    }
                }
            }
            standardGifDecoder = this;
        }
        Arrays.fill(bArr2, i28, i13, (byte) 0);
    }

    @NonNull
    private GifHeaderParser getHeaderParser() {
        if (this.parser == null) {
            this.parser = new GifHeaderParser();
        }
        return this.parser;
    }

    private Bitmap getNextBitmap() {
        Boolean bool = this.isFirstFrameTransparent;
        Bitmap bitmapObtain = this.bitmapProvider.obtain(this.downsampledWidth, this.downsampledHeight, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.bitmapConfig);
        bitmapObtain.setHasAlpha(true);
        return bitmapObtain;
    }

    private int readBlock() {
        int i11 = readByte();
        if (i11 <= 0) {
            return i11;
        }
        ByteBuffer byteBuffer = this.rawData;
        byteBuffer.get(this.block, 0, Math.min(i11, byteBuffer.remaining()));
        return i11;
    }

    private int readByte() {
        return this.rawData.get() & 255;
    }

    private Bitmap setPixels(GifFrame gifFrame, GifFrame gifFrame2) {
        int i11;
        int i12;
        Bitmap bitmap;
        int[] iArr = this.mainScratch;
        int i13 = 0;
        if (gifFrame2 == null) {
            Bitmap bitmap2 = this.previousImage;
            if (bitmap2 != null) {
                this.bitmapProvider.release(bitmap2);
            }
            this.previousImage = null;
            Arrays.fill(iArr, 0);
        }
        if (gifFrame2 != null && gifFrame2.dispose == 3 && this.previousImage == null) {
            Arrays.fill(iArr, 0);
        }
        if (gifFrame2 != null && (i12 = gifFrame2.dispose) > 0) {
            if (i12 == 2) {
                if (!gifFrame.transparency) {
                    GifHeader gifHeader = this.header;
                    int i14 = gifHeader.bgColor;
                    if (gifFrame.lct == null || gifHeader.bgIndex != gifFrame.transIndex) {
                        i13 = i14;
                    }
                }
                int i15 = gifFrame2.f20129ih;
                int i16 = this.sampleSize;
                int i17 = i15 / i16;
                int i18 = gifFrame2.f20132iy / i16;
                int i19 = gifFrame2.f20130iw / i16;
                int i20 = gifFrame2.f20131ix / i16;
                int i21 = this.downsampledWidth;
                int i22 = (i18 * i21) + i20;
                int i23 = (i17 * i21) + i22;
                while (i22 < i23) {
                    int i24 = i22 + i19;
                    for (int i25 = i22; i25 < i24; i25++) {
                        iArr[i25] = i13;
                    }
                    i22 += this.downsampledWidth;
                }
            } else if (i12 == 3 && (bitmap = this.previousImage) != null) {
                int i26 = this.downsampledWidth;
                bitmap.getPixels(iArr, 0, i26, 0, 0, i26, this.downsampledHeight);
            }
        }
        decodeBitmapData(gifFrame);
        if (gifFrame.interlace || this.sampleSize != 1) {
            copyCopyIntoScratchRobust(gifFrame);
        } else {
            copyIntoScratchFast(gifFrame);
        }
        if (this.savePrevious && ((i11 = gifFrame.dispose) == 0 || i11 == 1)) {
            if (this.previousImage == null) {
                this.previousImage = getNextBitmap();
            }
            Bitmap bitmap3 = this.previousImage;
            int i27 = this.downsampledWidth;
            bitmap3.setPixels(iArr, 0, i27, 0, 0, i27, this.downsampledHeight);
        }
        Bitmap nextBitmap = getNextBitmap();
        int i28 = this.downsampledWidth;
        nextBitmap.setPixels(iArr, 0, i28, 0, 0, i28, this.downsampledHeight);
        return nextBitmap;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void advance() {
        this.framePointer = (this.framePointer + 1) % this.header.frameCount;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void clear() {
        this.header = null;
        byte[] bArr = this.mainPixels;
        if (bArr != null) {
            this.bitmapProvider.release(bArr);
        }
        int[] iArr = this.mainScratch;
        if (iArr != null) {
            this.bitmapProvider.release(iArr);
        }
        Bitmap bitmap = this.previousImage;
        if (bitmap != null) {
            this.bitmapProvider.release(bitmap);
        }
        this.previousImage = null;
        this.rawData = null;
        this.isFirstFrameTransparent = null;
        byte[] bArr2 = this.block;
        if (bArr2 != null) {
            this.bitmapProvider.release(bArr2);
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getByteSize() {
        return this.rawData.limit() + this.mainPixels.length + (this.mainScratch.length * 4);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getCurrentFrameIndex() {
        return this.framePointer;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @NonNull
    public ByteBuffer getData() {
        return this.rawData;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getDelay(int i11) {
        if (i11 >= 0) {
            GifHeader gifHeader = this.header;
            if (i11 < gifHeader.frameCount) {
                return gifHeader.frames.get(i11).delay;
            }
        }
        return -1;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getFrameCount() {
        return this.header.frameCount;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getHeight() {
        return this.header.height;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @Deprecated
    public int getLoopCount() {
        int i11 = this.header.loopCount;
        if (i11 == -1) {
            return 1;
        }
        return i11;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getNetscapeLoopCount() {
        return this.header.loopCount;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getNextDelay() {
        int i11;
        if (this.header.frameCount <= 0 || (i11 = this.framePointer) < 0) {
            return 0;
        }
        return getDelay(i11);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @Nullable
    public synchronized Bitmap getNextFrame() {
        try {
            if (this.header.frameCount <= 0 || this.framePointer < 0) {
                if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Unable to decode frame, frameCount=");
                    sb2.append(this.header.frameCount);
                    sb2.append(", framePointer=");
                    sb2.append(this.framePointer);
                }
                this.status = 1;
            }
            int i11 = this.status;
            if (i11 != 1 && i11 != 2) {
                this.status = 0;
                if (this.block == null) {
                    this.block = this.bitmapProvider.obtainByteArray(255);
                }
                GifFrame gifFrame = this.header.frames.get(this.framePointer);
                int i12 = this.framePointer - 1;
                GifFrame gifFrame2 = i12 >= 0 ? this.header.frames.get(i12) : null;
                int[] iArr = gifFrame.lct;
                if (iArr == null) {
                    iArr = this.header.gct;
                }
                this.act = iArr;
                if (iArr == null) {
                    if (Log.isLoggable(TAG, 3)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("No valid color table found for frame #");
                        sb3.append(this.framePointer);
                    }
                    this.status = 1;
                    return null;
                }
                if (gifFrame.transparency) {
                    System.arraycopy(iArr, 0, this.pct, 0, iArr.length);
                    int[] iArr2 = this.pct;
                    this.act = iArr2;
                    iArr2[gifFrame.transIndex] = 0;
                    if (gifFrame.dispose == 2 && this.framePointer == 0) {
                        this.isFirstFrameTransparent = Boolean.TRUE;
                    }
                }
                return setPixels(gifFrame, gifFrame2);
            }
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Unable to decode frame, status=");
                sb4.append(this.status);
            }
            return null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getStatus() {
        return this.status;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getTotalIterationCount() {
        int i11 = this.header.loopCount;
        if (i11 == -1) {
            return 1;
        }
        if (i11 == 0) {
            return 0;
        }
        return i11 + 1;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getWidth() {
        return this.header.width;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int read(@Nullable InputStream inputStream, int i11) {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i11 > 0 ? i11 + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int i12 = inputStream.read(bArr, 0, 16384);
                    if (i12 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i12);
                }
                byteArrayOutputStream.flush();
                read(byteArrayOutputStream.toByteArray());
            } catch (IOException e11) {
                Log.w(TAG, "Error reading data from stream", e11);
            }
        } else {
            this.status = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e12) {
                Log.w(TAG, "Error closing stream", e12);
            }
        }
        return this.status;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized int read(@Nullable byte[] bArr) {
        try {
            GifHeader header = getHeaderParser().setData(bArr).parseHeader();
            this.header = header;
            if (bArr != null) {
                setData(header, bArr);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.status;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void resetFrameIndex() {
        this.framePointer = -1;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized void setData(@NonNull GifHeader gifHeader, @NonNull ByteBuffer byteBuffer) {
        setData(gifHeader, byteBuffer, 1);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized void setData(@NonNull GifHeader gifHeader, @NonNull ByteBuffer byteBuffer, int i11) {
        try {
            if (i11 <= 0) {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i11);
            }
            int iHighestOneBit = Integer.highestOneBit(i11);
            this.status = 0;
            this.header = gifHeader;
            this.framePointer = -1;
            ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.rawData = byteBufferAsReadOnlyBuffer;
            byteBufferAsReadOnlyBuffer.position(0);
            this.rawData.order(ByteOrder.LITTLE_ENDIAN);
            this.savePrevious = false;
            Iterator<GifFrame> it = gifHeader.frames.iterator();
            while (it.hasNext()) {
                if (it.next().dispose == 3) {
                    this.savePrevious = true;
                    break;
                }
            }
            this.sampleSize = iHighestOneBit;
            int i12 = gifHeader.width;
            this.downsampledWidth = i12 / iHighestOneBit;
            int i13 = gifHeader.height;
            this.downsampledHeight = i13 / iHighestOneBit;
            this.mainPixels = this.bitmapProvider.obtainByteArray(i12 * i13);
            this.mainScratch = this.bitmapProvider.obtainIntArray(this.downsampledWidth * this.downsampledHeight);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized void setData(@NonNull GifHeader gifHeader, @NonNull byte[] bArr) {
        setData(gifHeader, ByteBuffer.wrap(bArr));
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void setDefaultBitmapConfig(@NonNull Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
        if (config == config3 || config == (config2 = Bitmap.Config.RGB_565)) {
            this.bitmapConfig = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + config3 + " or " + config2);
    }
}
