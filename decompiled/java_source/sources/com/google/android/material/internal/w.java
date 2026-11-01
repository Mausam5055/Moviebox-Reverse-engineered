package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f29271a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f29272b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ValueAnimator f29273c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Animator.AnimatorListener f29274d = new a();

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            w wVar = w.this;
            if (wVar.f29273c == animator) {
                wVar.f29273c = null;
            }
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int[] f29276a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ValueAnimator f29277b;

        b(int[] iArr, ValueAnimator valueAnimator) {
            this.f29276a = iArr;
            this.f29277b = valueAnimator;
        }
    }

    public void a(int[] iArr, ValueAnimator valueAnimator) {
        b bVar = new b(iArr, valueAnimator);
        valueAnimator.addListener(this.f29274d);
        this.f29271a.add(bVar);
    }
}
