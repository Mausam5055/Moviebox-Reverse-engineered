package com.bumptech.glide.integration.webp.decoder;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.vectordrawable.graphics.drawable.b;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class WebpDrawable extends Drawable implements WebpFrameLoader.FrameCallback, Animatable {
    private static final int GRAVITY = 119;
    public static final int LOOP_FOREVER = -1;
    public static final int LOOP_INTRINSIC = 0;
    private List<b> animationCallbacks;
    private boolean applyGravity;
    private Rect destRect;
    private boolean isRecycled;
    private boolean isRunning;
    private boolean isStarted;
    private boolean isVisible;
    private int loopCount;
    private int maxLoopCount;
    private Paint paint;
    private final WebpState state;

    static class WebpState extends Drawable.ConstantState {
        final BitmapPool bitmapPool;
        final WebpFrameLoader frameLoader;

        public WebpState(BitmapPool bitmapPool, WebpFrameLoader webpFrameLoader) {
            this.bitmapPool = bitmapPool;
            this.frameLoader = webpFrameLoader;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new WebpDrawable(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }
    }

    public WebpDrawable(Context context, WebpDecoder webpDecoder, BitmapPool bitmapPool, Transformation<Bitmap> transformation, int i11, int i12, Bitmap bitmap) {
        this(new WebpState(bitmapPool, new WebpFrameLoader(Glide.get(context), webpDecoder, i11, i12, transformation, bitmap)));
    }

    WebpDrawable(WebpState webpState) {
        this.isVisible = true;
        this.maxLoopCount = -1;
        this.state = (WebpState) Preconditions.checkNotNull(webpState);
    }

    WebpDrawable(WebpFrameLoader webpFrameLoader, BitmapPool bitmapPool, Paint paint) {
        this(new WebpState(bitmapPool, webpFrameLoader));
        this.paint = paint;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Drawable.Callback findCallback() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        return callback;
    }

    private Rect getDestRect() {
        if (this.destRect == null) {
            this.destRect = new Rect();
        }
        return this.destRect;
    }

    private Paint getPaint() {
        if (this.paint == null) {
            this.paint = new Paint(2);
        }
        return this.paint;
    }

    private void notifyAnimationEndToListeners() {
        List<b> list = this.animationCallbacks;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                this.animationCallbacks.get(i11).onAnimationEnd(this);
            }
        }
    }

    private void resetLoopCount() {
        this.loopCount = 0;
    }

    private void startRunning() {
        Preconditions.checkArgument(!this.isRecycled, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.state.frameLoader.getFrameCount() == 1) {
            invalidateSelf();
        } else {
            if (this.isRunning) {
                return;
            }
            this.isRunning = true;
            this.state.frameLoader.subscribe(this);
            invalidateSelf();
        }
    }

    private void stopRunning() {
        this.isRunning = false;
        this.state.frameLoader.unsubscribe(this);
    }

    public void clearAnimationCallbacks() {
        List<b> list = this.animationCallbacks;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (isRecycled()) {
            return;
        }
        if (this.applyGravity) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), getDestRect());
            this.applyGravity = false;
        }
        canvas.drawBitmap(this.state.frameLoader.getCurrentFrame(), (Rect) null, getDestRect(), getPaint());
    }

    public ByteBuffer getBuffer() {
        return this.state.frameLoader.getBuffer();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.state;
    }

    public Bitmap getFirstFrame() {
        return this.state.frameLoader.getFirstFrame();
    }

    public int getFrameCount() {
        return this.state.frameLoader.getFrameCount();
    }

    public int getFrameIndex() {
        return this.state.frameLoader.getCurrentIndex();
    }

    public Transformation<Bitmap> getFrameTransformation() {
        return this.state.frameLoader.getFrameTransformation();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.state.frameLoader.getHeight();
    }

    public int getIntrinsicLoopCount() {
        return this.state.frameLoader.getLoopCount();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.state.frameLoader.getWidth();
    }

    public int getLoopCount() {
        return this.maxLoopCount;
    }

    @Override // android.graphics.drawable.Drawable
    @Deprecated
    public int getOpacity() {
        return -2;
    }

    public int getSize() {
        return this.state.frameLoader.getSize();
    }

    boolean isRecycled() {
        return this.isRecycled;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.isRunning;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.applyGravity = true;
    }

    @Override // com.bumptech.glide.integration.webp.decoder.WebpFrameLoader.FrameCallback
    public void onFrameReady() {
        if (findCallback() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (getFrameIndex() == getFrameCount() - 1) {
            this.loopCount++;
        }
        int i11 = this.maxLoopCount;
        if (i11 == -1 || this.loopCount < i11) {
            return;
        }
        stop();
        notifyAnimationEndToListeners();
    }

    public void recycle() {
        this.isRecycled = true;
        this.state.frameLoader.clear();
    }

    public void registerAnimationCallback(@NonNull b bVar) {
        if (bVar == null) {
            return;
        }
        if (this.animationCallbacks == null) {
            this.animationCallbacks = new ArrayList();
        }
        this.animationCallbacks.add(bVar);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        getPaint().setAlpha(i11);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        getPaint().setColorFilter(colorFilter);
    }

    public void setFrameTransformation(Transformation<Bitmap> transformation, Bitmap bitmap) {
        this.state.frameLoader.setFrameTransformation(transformation, bitmap);
    }

    void setIsRunning(boolean z10) {
    }

    public void setLoopCount(int i11) {
        if (i11 <= 0 && i11 != -1 && i11 != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to LOOP_FOREVER, or equal to LOOP_INTRINSIC");
        }
        if (i11 != 0) {
            this.maxLoopCount = i11;
        } else {
            int loopCount = this.state.frameLoader.getLoopCount();
            this.maxLoopCount = loopCount != 0 ? loopCount : -1;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        Preconditions.checkArgument(!this.isRecycled, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.isVisible = z10;
        if (!z10) {
            stopRunning();
        } else if (this.isStarted) {
            startRunning();
        }
        return super.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.isStarted = true;
        resetLoopCount();
        if (this.isVisible) {
            startRunning();
        }
    }

    public void startFromFirstFrame() {
        Preconditions.checkArgument(!this.isRunning, "You cannot restart a currently running animation.");
        this.state.frameLoader.setNextStartFromFirstFrame();
        start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.isStarted = false;
        stopRunning();
    }

    public boolean unregisterAnimationCallback(@NonNull b bVar) {
        List<b> list = this.animationCallbacks;
        if (list == null || bVar == null) {
            return false;
        }
        return list.remove(bVar);
    }
}
