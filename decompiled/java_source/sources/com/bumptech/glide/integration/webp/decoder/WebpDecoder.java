package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.LruCache;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.integration.webp.WebpFrame;
import com.bumptech.glide.integration.webp.WebpFrameInfo;
import com.bumptech.glide.integration.webp.WebpImage;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class WebpDecoder implements GifDecoder {
    private static final int MAX_FRAME_BITMAP_CACHE_SIZE = 5;
    private static final String TAG = "WebpDecoder";
    private int downsampledHeight;
    private int downsampledWidth;
    private Bitmap.Config mBitmapConfig;
    private final GifDecoder.BitmapProvider mBitmapProvider;
    private WebpFrameCacheStrategy mCacheStrategy;
    private final LruCache<Integer, Bitmap> mFrameBitmapCache;
    private final int[] mFrameDurations;
    private final WebpFrameInfo[] mFrameInfos;
    private int mFramePointer;
    private final Paint mTransparentFillPaint;
    private WebpImage mWebPImage;
    private ByteBuffer rawData;
    private int sampleSize;

    public WebpDecoder(GifDecoder.BitmapProvider bitmapProvider, WebpImage webpImage, ByteBuffer byteBuffer, int i11) {
        this(bitmapProvider, webpImage, byteBuffer, i11, WebpFrameCacheStrategy.NONE);
    }

    public WebpDecoder(GifDecoder.BitmapProvider bitmapProvider, WebpImage webpImage, ByteBuffer byteBuffer, int i11, WebpFrameCacheStrategy webpFrameCacheStrategy) {
        this.mFramePointer = -1;
        this.mBitmapConfig = Bitmap.Config.ARGB_8888;
        this.mBitmapProvider = bitmapProvider;
        this.mWebPImage = webpImage;
        this.mFrameDurations = webpImage.getFrameDurations();
        this.mFrameInfos = new WebpFrameInfo[webpImage.getFrameCount()];
        for (int i12 = 0; i12 < this.mWebPImage.getFrameCount(); i12++) {
            this.mFrameInfos[i12] = this.mWebPImage.getFrameInfo(i12);
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("mFrameInfos: ");
                sb2.append(this.mFrameInfos[i12].toString());
            }
        }
        this.mCacheStrategy = webpFrameCacheStrategy;
        Paint paint = new Paint();
        this.mTransparentFillPaint = paint;
        paint.setColor(0);
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        this.mFrameBitmapCache = new LruCache<Integer, Bitmap>(this.mCacheStrategy.cacheAll() ? webpImage.getFrameCount() : Math.max(5, this.mCacheStrategy.getCacheSize())) { // from class: com.bumptech.glide.integration.webp.decoder.WebpDecoder.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.util.LruCache
            public void entryRemoved(boolean z10, Integer num, Bitmap bitmap, Bitmap bitmap2) {
                if (bitmap != null) {
                    WebpDecoder.this.mBitmapProvider.release(bitmap);
                }
            }
        };
        setData(new GifHeader(), byteBuffer, i11);
    }

    private void cacheFrameBitmap(int i11, Bitmap bitmap) {
        this.mFrameBitmapCache.remove(Integer.valueOf(i11));
        Bitmap bitmapObtain = this.mBitmapProvider.obtain(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
        bitmapObtain.eraseColor(0);
        bitmapObtain.setDensity(bitmap.getDensity());
        Canvas canvas = new Canvas(bitmapObtain);
        canvas.drawColor(0, PorterDuff.Mode.SRC);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        this.mFrameBitmapCache.put(Integer.valueOf(i11), bitmapObtain);
    }

    private void disposeToBackground(Canvas canvas, WebpFrameInfo webpFrameInfo) {
        int i11 = webpFrameInfo.xOffset;
        int i12 = this.sampleSize;
        int i13 = webpFrameInfo.yOffset;
        canvas.drawRect(i11 / i12, i13 / i12, (i11 + webpFrameInfo.width) / i12, (i13 + webpFrameInfo.height) / i12, this.mTransparentFillPaint);
    }

    private boolean isFullFrame(WebpFrameInfo webpFrameInfo) {
        return webpFrameInfo.xOffset == 0 && webpFrameInfo.yOffset == 0 && webpFrameInfo.width == this.mWebPImage.getWidth() && webpFrameInfo.height == this.mWebPImage.getHeight();
    }

    private boolean isKeyFrame(int i11) {
        if (i11 == 0) {
            return true;
        }
        WebpFrameInfo[] webpFrameInfoArr = this.mFrameInfos;
        WebpFrameInfo webpFrameInfo = webpFrameInfoArr[i11];
        WebpFrameInfo webpFrameInfo2 = webpFrameInfoArr[i11 - 1];
        if (webpFrameInfo.blendPreviousFrame || !isFullFrame(webpFrameInfo)) {
            return webpFrameInfo2.disposeBackgroundColor && isFullFrame(webpFrameInfo2);
        }
        return true;
    }

    private int prepareCanvasWithBlending(int i11, Canvas canvas) {
        while (i11 >= 0) {
            WebpFrameInfo webpFrameInfo = this.mFrameInfos[i11];
            if (webpFrameInfo.disposeBackgroundColor && isFullFrame(webpFrameInfo)) {
                return i11 + 1;
            }
            Bitmap bitmap = this.mFrameBitmapCache.get(Integer.valueOf(i11));
            if (bitmap != null && !bitmap.isRecycled()) {
                bitmap.setDensity(canvas.getDensity());
                canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
                if (webpFrameInfo.disposeBackgroundColor) {
                    disposeToBackground(canvas, webpFrameInfo);
                }
                return i11 + 1;
            }
            if (isKeyFrame(i11)) {
                return i11;
            }
            i11--;
        }
        return 0;
    }

    private void renderFrame(int i11, Canvas canvas) {
        WebpFrameInfo webpFrameInfo = this.mFrameInfos[i11];
        int i12 = webpFrameInfo.width;
        int i13 = this.sampleSize;
        int i14 = i12 / i13;
        int i15 = webpFrameInfo.height / i13;
        int i16 = webpFrameInfo.xOffset / i13;
        int i17 = webpFrameInfo.yOffset / i13;
        WebpFrame frame = this.mWebPImage.getFrame(i11);
        try {
            try {
                Bitmap bitmapObtain = this.mBitmapProvider.obtain(i14, i15, this.mBitmapConfig);
                bitmapObtain.eraseColor(0);
                bitmapObtain.setDensity(canvas.getDensity());
                frame.renderFrame(i14, i15, bitmapObtain);
                canvas.drawBitmap(bitmapObtain, i16, i17, (Paint) null);
                this.mBitmapProvider.release(bitmapObtain);
            } catch (IllegalStateException unused) {
                Log.e(TAG, "Rendering of frame failed. Frame number: " + i11);
            }
        } finally {
            frame.dispose();
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void advance() {
        this.mFramePointer = (this.mFramePointer + 1) % this.mWebPImage.getFrameCount();
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void clear() {
        this.mWebPImage.dispose();
        this.mWebPImage = null;
        this.mFrameBitmapCache.evictAll();
        this.rawData = null;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getByteSize() {
        return this.mWebPImage.getSizeInBytes();
    }

    public WebpFrameCacheStrategy getCacheStrategy() {
        return this.mCacheStrategy;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getCurrentFrameIndex() {
        return this.mFramePointer;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public ByteBuffer getData() {
        return this.rawData;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getDelay(int i11) {
        if (i11 >= 0) {
            int[] iArr = this.mFrameDurations;
            if (i11 < iArr.length) {
                return iArr[i11];
            }
        }
        return -1;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getFrameCount() {
        return this.mWebPImage.getFrameCount();
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getHeight() {
        return this.mWebPImage.getHeight();
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @Deprecated
    public int getLoopCount() {
        return this.mWebPImage.getLoopCount();
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getNetscapeLoopCount() {
        return this.mWebPImage.getLoopCount();
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getNextDelay() {
        int i11;
        if (this.mFrameDurations.length == 0 || (i11 = this.mFramePointer) < 0) {
            return 0;
        }
        return getDelay(i11);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public Bitmap getNextFrame() {
        Bitmap bitmap;
        int currentFrameIndex = getCurrentFrameIndex();
        Bitmap bitmapObtain = this.mBitmapProvider.obtain(this.downsampledWidth, this.downsampledHeight, Bitmap.Config.ARGB_8888);
        bitmapObtain.eraseColor(0);
        if (Build.VERSION.SDK_INT >= 24) {
            bitmapObtain.setDensity(DisplayMetrics.DENSITY_DEVICE_STABLE);
        }
        Canvas canvas = new Canvas(bitmapObtain);
        canvas.drawColor(0, PorterDuff.Mode.SRC);
        if (!this.mCacheStrategy.noCache() && (bitmap = this.mFrameBitmapCache.get(Integer.valueOf(currentFrameIndex))) != null) {
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("hit frame bitmap from memory cache, frameNumber=");
                sb2.append(currentFrameIndex);
            }
            bitmap.setDensity(canvas.getDensity());
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            return bitmapObtain;
        }
        int iPrepareCanvasWithBlending = !isKeyFrame(currentFrameIndex) ? prepareCanvasWithBlending(currentFrameIndex - 1, canvas) : currentFrameIndex;
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("frameNumber=");
            sb3.append(currentFrameIndex);
            sb3.append(", nextIndex=");
            sb3.append(iPrepareCanvasWithBlending);
        }
        while (iPrepareCanvasWithBlending < currentFrameIndex) {
            WebpFrameInfo webpFrameInfo = this.mFrameInfos[iPrepareCanvasWithBlending];
            if (!webpFrameInfo.blendPreviousFrame) {
                disposeToBackground(canvas, webpFrameInfo);
            }
            renderFrame(iPrepareCanvasWithBlending, canvas);
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("renderFrame, index=");
                sb4.append(iPrepareCanvasWithBlending);
                sb4.append(", blend=");
                sb4.append(webpFrameInfo.blendPreviousFrame);
                sb4.append(", dispose=");
                sb4.append(webpFrameInfo.disposeBackgroundColor);
            }
            if (webpFrameInfo.disposeBackgroundColor) {
                disposeToBackground(canvas, webpFrameInfo);
            }
            iPrepareCanvasWithBlending++;
        }
        WebpFrameInfo webpFrameInfo2 = this.mFrameInfos[currentFrameIndex];
        if (!webpFrameInfo2.blendPreviousFrame) {
            disposeToBackground(canvas, webpFrameInfo2);
        }
        renderFrame(currentFrameIndex, canvas);
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append("renderFrame, index=");
            sb5.append(currentFrameIndex);
            sb5.append(", blend=");
            sb5.append(webpFrameInfo2.blendPreviousFrame);
            sb5.append(", dispose=");
            sb5.append(webpFrameInfo2.disposeBackgroundColor);
        }
        cacheFrameBitmap(currentFrameIndex, bitmapObtain);
        return bitmapObtain;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getStatus() {
        return 0;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getTotalIterationCount() {
        if (this.mWebPImage.getLoopCount() == 0) {
            return 0;
        }
        return this.mWebPImage.getLoopCount();
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getWidth() {
        return this.mWebPImage.getWidth();
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int read(InputStream inputStream, int i11) {
        return 0;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int read(byte[] bArr) {
        return 0;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void resetFrameIndex() {
        this.mFramePointer = -1;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void setData(GifHeader gifHeader, ByteBuffer byteBuffer) {
        setData(gifHeader, byteBuffer, 1);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void setData(GifHeader gifHeader, ByteBuffer byteBuffer, int i11) {
        if (i11 <= 0) {
            throw new IllegalArgumentException("Sample size must be >=0, not: " + i11);
        }
        int iHighestOneBit = Integer.highestOneBit(i11);
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.rawData = byteBufferAsReadOnlyBuffer;
        byteBufferAsReadOnlyBuffer.position(0);
        this.sampleSize = iHighestOneBit;
        this.downsampledWidth = this.mWebPImage.getWidth() / iHighestOneBit;
        this.downsampledHeight = this.mWebPImage.getHeight() / iHighestOneBit;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void setData(GifHeader gifHeader, byte[] bArr) {
        setData(gifHeader, ByteBuffer.wrap(bArr));
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void setDefaultBitmapConfig(Bitmap.Config config) {
        Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
        if (config == config2) {
            this.mBitmapConfig = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + config2);
    }
}
