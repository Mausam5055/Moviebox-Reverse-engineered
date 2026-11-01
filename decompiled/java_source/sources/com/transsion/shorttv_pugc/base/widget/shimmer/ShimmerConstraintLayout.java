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
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.shorttv.R$styleable;

/* JADX INFO: loaded from: classes6.dex */
public class ShimmerConstraintLayout extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f53905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f53906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f53907c;

    public ShimmerConstraintLayout(Context context) {
        super(context);
        this.f53905a = new Paint();
        this.f53906b = new b();
        this.f53907c = true;
        init(context, null);
    }

    public ShimmerConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f53905a = new Paint();
        this.f53906b = new b();
        this.f53907c = true;
        init(context, attributeSet);
    }

    public ShimmerConstraintLayout(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f53905a = new Paint();
        this.f53906b = new b();
        this.f53907c = true;
        init(context, attributeSet);
    }

    @TargetApi(21)
    public ShimmerConstraintLayout(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        this.f53905a = new Paint();
        this.f53906b = new b();
        this.f53907c = true;
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        setLayerType(1, null);
        setWillNotDraw(false);
        this.f53906b.setCallback(this);
        if (attributeSet == null) {
            setShimmer(new a.C0669a().a());
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ShortTvShimmerConstraintLayout, 0, 0);
        try {
            setShimmer(((typedArrayObtainStyledAttributes.hasValue(R$styleable.ShortTvShimmerConstraintLayout_short_tv_shimmer_colored) && typedArrayObtainStyledAttributes.getBoolean(R$styleable.ShortTvShimmerConstraintLayout_short_tv_shimmer_colored, false)) ? new a.c() : new a.C0669a()).c(typedArrayObtainStyledAttributes).a());
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f53907c) {
            this.f53906b.draw(canvas);
        }
    }

    public void hideShimmer() {
        stopShimmer();
        this.f53907c = false;
        invalidate();
    }

    public boolean isShimmerStarted() {
        return this.f53906b.a();
    }

    public boolean isShimmerVisible() {
        return this.f53907c;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f53907c && getVisibility() == 0) {
            this.f53906b.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopShimmer();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        this.f53906b.setBounds(0, 0, getWidth(), getHeight());
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i11) {
        super.onVisibilityChanged(view, i11);
        if (i11 != 0) {
            stopShimmer();
        } else if (this.f53907c && isAttachedToWindow()) {
            this.f53906b.b();
        }
    }

    public ShimmerConstraintLayout setShimmer(@Nullable a aVar) {
        this.f53906b.d(aVar);
        if (aVar == null || !aVar.f53928o) {
            setLayerType(0, null);
        } else {
            setLayerType(2, this.f53905a);
        }
        return this;
    }

    public void setShimmerListener(Animator.AnimatorListener animatorListener) {
        this.f53906b.e(animatorListener);
    }

    public void showShimmer(boolean z10) {
        this.f53907c = true;
        if (z10) {
            startShimmer();
        }
        invalidate();
    }

    public void startShimmer() {
        this.f53906b.f();
    }

    public void startShimmer(int i11, AnimatorListenerAdapter animatorListenerAdapter) {
        this.f53906b.g(i11, animatorListenerAdapter);
    }

    public void stopShimmer() {
        this.f53906b.h();
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f53906b;
    }
}
