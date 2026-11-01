package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AnimatorSet f30160b;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ExpandableTransformationBehavior.this.f30160b = null;
        }
    }

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior
    protected boolean H(View view, View view2, boolean z10, boolean z11) {
        AnimatorSet animatorSet = this.f30160b;
        boolean z12 = animatorSet != null;
        if (z12) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSetJ = J(view, view2, z10, z12);
        this.f30160b = animatorSetJ;
        animatorSetJ.addListener(new a());
        this.f30160b.start();
        if (!z11) {
            this.f30160b.end();
        }
        return true;
    }

    protected abstract AnimatorSet J(View view, View view2, boolean z10, boolean z11);
}
