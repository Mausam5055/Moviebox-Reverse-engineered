package com.transsion.audio.view;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes5.dex */
public abstract class FloatingMagnetView extends FrameLayout {
    public static final int MARGIN_EDGE = 13;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected MoveAnimator f42942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f42943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f42944c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f42945d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f42946e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    float f42947f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float f42948g;

    protected class MoveAnimator implements Runnable {
        private float destinationX;
        private float destinationY;
        private final Handler handler = new Handler(Looper.getMainLooper());
        private long startingTime;

        protected MoveAnimator() {
        }

        private void stop() {
            this.handler.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (FloatingMagnetView.this.getRootView() == null || FloatingMagnetView.this.getRootView().getParent() == null) {
                return;
            }
            float fMin = Math.min(1.0f, (System.currentTimeMillis() - this.startingTime) / 400.0f);
            FloatingMagnetView.this.g((this.destinationX - FloatingMagnetView.this.getX()) * fMin, (this.destinationY - FloatingMagnetView.this.getY()) * fMin);
            if (fMin < 1.0f) {
                this.handler.post(this);
            }
        }

        void start(float f11, float f12) {
            this.destinationX = f11;
            this.destinationY = f12;
            this.startingTime = System.currentTimeMillis();
            this.handler.post(this);
        }
    }

    protected FloatingMagnetView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    protected FloatingMagnetView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f42945d = true;
        this.f42947f = 0.0f;
        this.f42948g = 0.0f;
        d();
    }

    private void c() {
        this.f42946e = 0.0f;
    }

    private void d() {
        this.f42942a = new MoveAnimator();
        setClickable(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(boolean z10) {
        i();
        h(this.f42945d, z10);
    }

    private void f(boolean z10) {
        if (z10) {
            this.f42946e = getY();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(float f11, float f12) {
        setX(getX() + f11);
        setY(getY() + f12);
    }

    private void h(boolean z10, boolean z11) {
        float f11 = z10 ? 13.0f : this.f42943b - 13;
        float y10 = getY();
        if (!z11) {
            float f12 = this.f42946e;
            if (f12 != 0.0f) {
                c();
                y10 = f12;
            }
        }
        this.f42942a.start(f11, Math.min(Math.max(0.0f, y10), this.f42944c - getHeight()));
    }

    private void i() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            this.f42943b = viewGroup.getWidth() - getWidth();
            this.f42944c = viewGroup.getHeight();
        }
    }

    abstract void attach(Context context);

    abstract void expanded();

    abstract boolean isPackUp();

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (getParent() != null) {
            final boolean z10 = configuration.orientation == 2;
            f(z10);
            ((ViewGroup) getParent()).post(new Runnable() { // from class: com.transsion.audio.view.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f42951a.e(z10);
                }
            });
        }
    }

    abstract void onProgress(int i11);

    abstract void onSlideTheLeft();

    abstract void onStateChanged(int i11);

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f42947f = motionEvent.getRawX();
        } else if (action == 2) {
            float rawX = motionEvent.getRawX();
            this.f42948g = rawX;
            float f11 = this.f42947f;
            if (rawX < f11 && Math.abs(rawX - f11) > 50.0f) {
                onSlideTheLeft();
                return true;
            }
        } else if ((action == 1 || action == 3) && Math.abs(motionEvent.getRawX() - this.f42947f) < 10.0f) {
            onViewClick();
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    abstract void onViewClick();

    abstract void packUp();

    abstract void packUpAnimation();

    abstract void prepare();

    abstract void setOnOptionListener(EnFloatingView.f fVar);
}
