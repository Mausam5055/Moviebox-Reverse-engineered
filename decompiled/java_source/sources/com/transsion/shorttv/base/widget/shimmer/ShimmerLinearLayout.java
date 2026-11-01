package com.transsion.shorttv.base.widget.shimmer;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.transsion.shorttv.R$styleable;

/* JADX INFO: loaded from: classes6.dex */
public class ShimmerLinearLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f52931a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f52932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f52933c;

    public ShimmerLinearLayout(Context context) {
        super(context);
        this.f52931a = new Paint();
        this.f52932b = new b();
        this.f52933c = true;
        a(context, null);
    }

    public ShimmerLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f52931a = new Paint();
        this.f52932b = new b();
        this.f52933c = true;
        a(context, attributeSet);
    }

    public ShimmerLinearLayout(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f52931a = new Paint();
        this.f52932b = new b();
        this.f52933c = true;
        a(context, attributeSet);
    }

    @TargetApi(21)
    public ShimmerLinearLayout(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        this.f52931a = new Paint();
        this.f52932b = new b();
        this.f52933c = true;
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        setLayerType(1, null);
        setWillNotDraw(false);
        this.f52932b.setCallback(this);
        if (attributeSet == null) {
            setShimmer(new a.C0660a().a());
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ShortTvShimmerFrameLayout, 0, 0);
        try {
            setShimmer(((typedArrayObtainStyledAttributes.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_colored) && typedArrayObtainStyledAttributes.getBoolean(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_colored, false)) ? new a.c() : new a.C0660a()).c(typedArrayObtainStyledAttributes).a());
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f52933c) {
            this.f52932b.draw(canvas);
        }
    }

    public void hideShimmer() {
        stopShimmer();
        this.f52933c = false;
        invalidate();
    }

    public boolean isShimmerStarted() {
        return this.f52932b.a();
    }

    public boolean isShimmerVisible() {
        return this.f52933c;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f52933c && getVisibility() == 0) {
            this.f52932b.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopShimmer();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        this.f52932b.setBounds(0, 0, getWidth(), getHeight());
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i11) {
        super.onVisibilityChanged(view, i11);
        if (i11 != 0) {
            stopShimmer();
        } else if (this.f52933c && isAttachedToWindow()) {
            this.f52932b.b();
        }
    }

    public ShimmerLinearLayout setShimmer(@Nullable a aVar) {
        this.f52932b.d(aVar);
        if (aVar == null || !aVar.f52948o) {
            setLayerType(0, null);
        } else {
            setLayerType(2, this.f52931a);
        }
        return this;
    }

    public void setShimmerListener(Animator.AnimatorListener animatorListener) {
        this.f52932b.e(animatorListener);
    }

    public void showShimmer(boolean z10) {
        this.f52933c = true;
        if (z10) {
            startShimmer();
        }
        invalidate();
    }

    public void startShimmer() {
        this.f52932b.f();
    }

    public void stopShimmer() {
        this.f52932b.h();
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f52932b;
    }
}
