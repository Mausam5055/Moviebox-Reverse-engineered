package com.google.android.material.internal;

import android.animation.ValueAnimator;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public class i implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f29225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f29226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float[] f29227c = new float[2];

    public i(View view, View view2) {
        this.f29225a = view;
        this.f29226b = view2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        j.a(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.f29227c);
        View view = this.f29225a;
        if (view != null) {
            view.setAlpha(this.f29227c[0]);
        }
        View view2 = this.f29226b;
        if (view2 != null) {
            view2.setAlpha(this.f29227c[1]);
        }
    }
}
