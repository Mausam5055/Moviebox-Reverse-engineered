package com.transsion.shorttv_pugc.base.widget.shimmer;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.transsion.shorttv.R$styleable;

/* JADX INFO: loaded from: classes6.dex */
public class ShimmerFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f53908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f53909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f53910c;

    public ShimmerFrameLayout(Context context) {
        super(context);
        this.f53908a = new Paint();
        this.f53909b = new b();
        this.f53910c = true;
        a(context, null);
    }

    public ShimmerFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f53908a = new Paint();
        this.f53909b = new b();
        this.f53910c = true;
        a(context, attributeSet);
    }

    public ShimmerFrameLayout(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f53908a = new Paint();
        this.f53909b = new b();
        this.f53910c = true;
        a(context, attributeSet);
    }

    @TargetApi(21)
    public ShimmerFrameLayout(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        this.f53908a = new Paint();
        this.f53909b = new b();
        this.f53910c = true;
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        setLayerType(1, null);
        setWillNotDraw(false);
        this.f53909b.setCallback(this);
        if (attributeSet == null) {
            setShimmer(new a.C0669a().a());
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ShortTvShimmerFrameLayout, 0, 0);
        try {
            setShimmer(((typedArrayObtainStyledAttributes.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_colored) && typedArrayObtainStyledAttributes.getBoolean(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_colored, false)) ? new a.c() : new a.C0669a()).c(typedArrayObtainStyledAttributes).a());
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f53910c) {
            this.f53909b.draw(canvas);
        }
    }

    public void hideShimmer() {
        stopShimmer();
        this.f53910c = false;
        invalidate();
    }

    public boolean isShimmerStarted() {
        return this.f53909b.a();
    }

    public boolean isShimmerVisible() {
        return this.f53910c;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f53910c && getVisibility() == 0) {
            this.f53909b.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopShimmer();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        this.f53909b.setBounds(0, 0, getWidth(), getHeight());
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i11) {
        super.onVisibilityChanged(view, i11);
        if (i11 != 0) {
            stopShimmer();
        } else if (this.f53910c && isAttachedToWindow()) {
            this.f53909b.b();
        }
    }

    public ShimmerFrameLayout setShimmer(@Nullable a aVar) {
        this.f53909b.d(aVar);
        if (aVar == null || !aVar.f53928o) {
            setLayerType(0, null);
        } else {
            setLayerType(2, this.f53908a);
        }
        return this;
    }

    public void setShimmerListener(Animator.AnimatorListener animatorListener) {
        this.f53909b.e(animatorListener);
    }

    public void showShimmer(boolean z10) {
        this.f53910c = true;
        if (z10) {
            startShimmer();
        }
        invalidate();
    }

    public void startShimmer() {
        this.f53909b.f();
    }

    public void startShimmer(int i11, AnimatorListenerAdapter animatorListenerAdapter) {
        this.f53909b.g(i11, animatorListenerAdapter);
    }

    public void stopShimmer() {
        this.f53909b.h();
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f53909b;
    }
}
