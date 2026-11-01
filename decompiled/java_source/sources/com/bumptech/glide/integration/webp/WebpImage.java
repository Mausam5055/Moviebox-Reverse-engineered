package com.bumptech.glide.integration.webp;

import androidx.annotation.Keep;
import com.bumptech.glide.util.Preconditions;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class WebpImage {
    private int mBackgroundColor;
    private int mDurationMs;
    private int mFrameCount;
    private int[] mFrameDurations;
    private int mHeigth;
    private int mLoopCount;

    @Keep
    private long mNativePtr;
    private int mWidth;

    static {
        System.loadLibrary("glide-webp");
    }

    @Keep
    WebpImage(long j11, int i11, int i12, int i13, int i14, int[] iArr, int i15, int i16) {
        if (j11 == 0) {
            throw new RuntimeException("internal error: native WebpImage is 0");
        }
        this.mWidth = i11;
        this.mHeigth = i12;
        this.mFrameCount = i13;
        this.mDurationMs = i14;
        this.mFrameDurations = iArr;
        this.mLoopCount = i15;
        fixFrameDurations(iArr);
        this.mBackgroundColor = i16;
        this.mNativePtr = j11;
    }

    public static WebpImage create(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(bArr.length);
        byteBufferAllocateDirect.put(bArr);
        byteBufferAllocateDirect.rewind();
        return nativeCreateFromDirectByteBuffer(byteBufferAllocateDirect);
    }

    private void fixFrameDurations(int[] iArr) {
        for (int i11 = 0; i11 < iArr.length; i11++) {
            if (iArr[i11] < 20) {
                iArr[i11] = 100;
            }
        }
    }

    private static native WebpImage nativeCreateFromDirectByteBuffer(ByteBuffer byteBuffer);

    private native void nativeDispose();

    private native void nativeFinalize();

    private native WebpFrame nativeGetFrame(int i11);

    private native int nativeGetSizeInBytes();

    public void dispose() {
        nativeDispose();
    }

    protected void finalize() throws Throwable {
        nativeFinalize();
    }

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public int getDuration() {
        return this.mDurationMs;
    }

    public WebpFrame getFrame(int i11) {
        return nativeGetFrame(i11);
    }

    public int getFrameCount() {
        return this.mFrameCount;
    }

    public int[] getFrameDurations() {
        return this.mFrameDurations;
    }

    public WebpFrameInfo getFrameInfo(int i11) {
        WebpFrame frame = getFrame(i11);
        try {
            return new WebpFrameInfo(i11, frame);
        } finally {
            frame.dispose();
        }
    }

    public int getHeight() {
        return this.mHeigth;
    }

    public int getLoopCount() {
        return this.mLoopCount;
    }

    public int getSizeInBytes() {
        return nativeGetSizeInBytes();
    }

    public int getWidth() {
        return this.mWidth;
    }
}
