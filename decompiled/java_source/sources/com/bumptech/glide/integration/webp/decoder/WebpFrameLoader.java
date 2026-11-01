package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.signature.ObjectKey;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class WebpFrameLoader {
    public static final Option<WebpFrameCacheStrategy> FRAME_CACHE_STRATEGY = Option.memory("com.bumptech.glide.integration.webp.decoder.WebpFrameLoader.CacheStrategy", WebpFrameCacheStrategy.AUTO);
    private final BitmapPool bitmapPool;
    private final List<FrameCallback> callbacks;
    private DelayTarget current;
    private Bitmap firstFrame;
    private int firstFrameSize;
    private final Handler handler;
    private int height;
    private boolean isCleared;
    private boolean isLoadPending;
    private boolean isRunning;
    private DelayTarget next;

    @Nullable
    private OnEveryFrameListener onEveryFrameListener;
    private DelayTarget pendingTarget;
    private RequestBuilder<Bitmap> requestBuilder;
    final RequestManager requestManager;
    private boolean startFromFirstFrame;
    private Transformation<Bitmap> transformation;
    private final WebpDecoder webpDecoder;
    private int width;

    static class DelayTarget extends CustomTarget<Bitmap> {
        private final Handler handler;
        final int index;
        private Bitmap resource;
        private final long targetTime;

        DelayTarget(Handler handler, int i11, long j11) {
            this.handler = handler;
            this.index = i11;
            this.targetTime = j11;
        }

        Bitmap getResource() {
            return this.resource;
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(@Nullable Drawable drawable) {
            this.resource = null;
        }

        public void onResourceReady(Bitmap bitmap, Transition<? super Bitmap> transition) {
            this.resource = bitmap;
            this.handler.sendMessageAtTime(this.handler.obtainMessage(1, this), this.targetTime);
        }

        @Override // com.bumptech.glide.request.target.Target
        public /* bridge */ /* synthetic */ void onResourceReady(Object obj, Transition transition) {
            onResourceReady((Bitmap) obj, (Transition<? super Bitmap>) transition);
        }
    }

    public interface FrameCallback {
        void onFrameReady();
    }

    private class FrameLoaderCallback implements Handler.Callback {
        static final int MSG_CLEAR = 2;
        static final int MSG_DELAY = 1;

        FrameLoaderCallback() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i11 = message.what;
            if (i11 == 1) {
                WebpFrameLoader.this.onFrameReady((DelayTarget) message.obj);
                return true;
            }
            if (i11 != 2) {
                return false;
            }
            WebpFrameLoader.this.requestManager.clear((DelayTarget) message.obj);
            return false;
        }
    }

    interface OnEveryFrameListener {
        void onFrameReady();
    }

    private static class WebpFrameCacheKey implements Key {
        private final int frameIndex;
        private final Key sourceKey;

        WebpFrameCacheKey(Key key, int i11) {
            this.sourceKey = key;
            this.frameIndex = i11;
        }

        @Override // com.bumptech.glide.load.Key
        public boolean equals(Object obj) {
            if (!(obj instanceof WebpFrameCacheKey)) {
                return false;
            }
            WebpFrameCacheKey webpFrameCacheKey = (WebpFrameCacheKey) obj;
            return this.sourceKey.equals(webpFrameCacheKey.sourceKey) && this.frameIndex == webpFrameCacheKey.frameIndex;
        }

        @Override // com.bumptech.glide.load.Key
        public int hashCode() {
            return (this.sourceKey.hashCode() * 31) + this.frameIndex;
        }

        @Override // com.bumptech.glide.load.Key
        public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
            messageDigest.update(ByteBuffer.allocate(12).putInt(this.frameIndex).array());
            this.sourceKey.updateDiskCacheKey(messageDigest);
        }
    }

    public WebpFrameLoader(Glide glide, WebpDecoder webpDecoder, int i11, int i12, Transformation<Bitmap> transformation, Bitmap bitmap) {
        this(glide.getBitmapPool(), Glide.with(glide.getContext()), webpDecoder, null, getRequestBuilder(Glide.with(glide.getContext()), i11, i12), transformation, bitmap);
    }

    WebpFrameLoader(BitmapPool bitmapPool, RequestManager requestManager, WebpDecoder webpDecoder, Handler handler, RequestBuilder<Bitmap> requestBuilder, Transformation<Bitmap> transformation, Bitmap bitmap) {
        this.callbacks = new ArrayList();
        this.isRunning = false;
        this.isLoadPending = false;
        this.startFromFirstFrame = false;
        this.requestManager = requestManager;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new FrameLoaderCallback()) : handler;
        this.bitmapPool = bitmapPool;
        this.handler = handler;
        this.requestBuilder = requestBuilder;
        this.webpDecoder = webpDecoder;
        setFrameTransformation(transformation, bitmap);
    }

    private Key getFrameSignature(int i11) {
        return new WebpFrameCacheKey(new ObjectKey(this.webpDecoder), i11);
    }

    private static RequestBuilder<Bitmap> getRequestBuilder(RequestManager requestManager, int i11, int i12) {
        return requestManager.asBitmap().apply((BaseRequestOptions<?>) RequestOptions.diskCacheStrategyOf(DiskCacheStrategy.NONE).useAnimationPool(true).skipMemoryCache(true).override(i11, i12));
    }

    private void loadNextFrame() {
        if (!this.isRunning || this.isLoadPending) {
            return;
        }
        if (this.startFromFirstFrame) {
            Preconditions.checkArgument(this.pendingTarget == null, "Pending target must be null when starting from the first frame");
            this.webpDecoder.resetFrameIndex();
            this.startFromFirstFrame = false;
        }
        DelayTarget delayTarget = this.pendingTarget;
        if (delayTarget != null) {
            this.pendingTarget = null;
            onFrameReady(delayTarget);
            return;
        }
        this.isLoadPending = true;
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) this.webpDecoder.getNextDelay());
        this.webpDecoder.advance();
        int currentFrameIndex = this.webpDecoder.getCurrentFrameIndex();
        this.next = new DelayTarget(this.handler, currentFrameIndex, jUptimeMillis);
        this.requestBuilder.apply((BaseRequestOptions<?>) RequestOptions.signatureOf(getFrameSignature(currentFrameIndex)).skipMemoryCache(this.webpDecoder.getCacheStrategy().noCache())).load2((Object) this.webpDecoder).into(this.next);
    }

    private void recycleFirstFrame() {
        Bitmap bitmap = this.firstFrame;
        if (bitmap != null) {
            this.bitmapPool.put(bitmap);
            this.firstFrame = null;
        }
    }

    private void start() {
        if (this.isRunning) {
            return;
        }
        this.isRunning = true;
        this.isCleared = false;
        loadNextFrame();
    }

    private void stop() {
        this.isRunning = false;
    }

    void clear() {
        this.callbacks.clear();
        recycleFirstFrame();
        stop();
        DelayTarget delayTarget = this.current;
        if (delayTarget != null) {
            this.requestManager.clear(delayTarget);
            this.current = null;
        }
        DelayTarget delayTarget2 = this.next;
        if (delayTarget2 != null) {
            this.requestManager.clear(delayTarget2);
            this.next = null;
        }
        DelayTarget delayTarget3 = this.pendingTarget;
        if (delayTarget3 != null) {
            this.requestManager.clear(delayTarget3);
            this.pendingTarget = null;
        }
        this.webpDecoder.clear();
        this.isCleared = true;
    }

    ByteBuffer getBuffer() {
        return this.webpDecoder.getData().asReadOnlyBuffer();
    }

    Bitmap getCurrentFrame() {
        DelayTarget delayTarget = this.current;
        return delayTarget != null ? delayTarget.getResource() : this.firstFrame;
    }

    int getCurrentIndex() {
        DelayTarget delayTarget = this.current;
        if (delayTarget != null) {
            return delayTarget.index;
        }
        return -1;
    }

    Bitmap getFirstFrame() {
        return this.firstFrame;
    }

    int getFrameCount() {
        return this.webpDecoder.getFrameCount();
    }

    Transformation<Bitmap> getFrameTransformation() {
        return this.transformation;
    }

    int getHeight() {
        return this.height;
    }

    int getLoopCount() {
        return this.webpDecoder.getTotalIterationCount();
    }

    int getSize() {
        return this.webpDecoder.getByteSize() + this.firstFrameSize;
    }

    int getWidth() {
        return this.width;
    }

    void onFrameReady(DelayTarget delayTarget) {
        OnEveryFrameListener onEveryFrameListener = this.onEveryFrameListener;
        if (onEveryFrameListener != null) {
            onEveryFrameListener.onFrameReady();
        }
        this.isLoadPending = false;
        if (this.isCleared) {
            this.handler.obtainMessage(2, delayTarget).sendToTarget();
            return;
        }
        if (!this.isRunning) {
            if (this.startFromFirstFrame) {
                this.handler.obtainMessage(2, delayTarget).sendToTarget();
                return;
            } else {
                this.pendingTarget = delayTarget;
                return;
            }
        }
        if (delayTarget.getResource() != null) {
            recycleFirstFrame();
            DelayTarget delayTarget2 = this.current;
            this.current = delayTarget;
            for (int size = this.callbacks.size() - 1; size >= 0; size--) {
                this.callbacks.get(size).onFrameReady();
            }
            if (delayTarget2 != null) {
                this.handler.obtainMessage(2, delayTarget2).sendToTarget();
            }
        }
        loadNextFrame();
    }

    void setFrameTransformation(Transformation<Bitmap> transformation, Bitmap bitmap) {
        this.transformation = (Transformation) Preconditions.checkNotNull(transformation);
        this.firstFrame = (Bitmap) Preconditions.checkNotNull(bitmap);
        this.requestBuilder = this.requestBuilder.apply((BaseRequestOptions<?>) new RequestOptions().transform(transformation));
        this.firstFrameSize = Util.getBitmapByteSize(bitmap);
        this.width = bitmap.getWidth();
        this.height = bitmap.getHeight();
    }

    void setNextStartFromFirstFrame() {
        Preconditions.checkArgument(!this.isRunning, "Can't restart a running animation");
        this.startFromFirstFrame = true;
        DelayTarget delayTarget = this.pendingTarget;
        if (delayTarget != null) {
            this.requestManager.clear(delayTarget);
            this.pendingTarget = null;
        }
    }

    void setOnEveryFrameReadyListener(@Nullable OnEveryFrameListener onEveryFrameListener) {
        this.onEveryFrameListener = onEveryFrameListener;
    }

    void subscribe(FrameCallback frameCallback) {
        if (this.isCleared) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        if (this.callbacks.contains(frameCallback)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        boolean zIsEmpty = this.callbacks.isEmpty();
        this.callbacks.add(frameCallback);
        if (zIsEmpty) {
            start();
        }
    }

    void unsubscribe(FrameCallback frameCallback) {
        this.callbacks.remove(frameCallback);
        if (this.callbacks.isEmpty()) {
            stop();
        }
    }
}
