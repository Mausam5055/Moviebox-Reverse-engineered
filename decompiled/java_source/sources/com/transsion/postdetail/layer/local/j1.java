package com.transsion.postdetail.layer.local;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f49064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TextView f49065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f49066c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f49067d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f49068e = new Runnable() { // from class: com.transsion.postdetail.layer.local.h1
        @Override // java.lang.Runnable
        public final void run() {
            j1.e(this.f49037a);
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Runnable f49069f = new Runnable() { // from class: com.transsion.postdetail.layer.local.i1
        @Override // java.lang.Runnable
        public final void run() {
            j1.f(this.f49062a);
        }
    };

    public static final class a implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TextView f49071b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f49072c;

        a(TextView textView, String str) {
            this.f49071b = textView;
            this.f49072c = str;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            Intrinsics.h(animation, "animation");
            j1.this.f49066c = System.currentTimeMillis();
            TextView textView = this.f49071b;
            if (textView != null) {
                jg.c.k(textView);
            }
            TextView textView2 = this.f49071b;
            if (textView2 != null) {
                textView2.setText(this.f49072c);
            }
        }
    }

    public j1(TextView textView, TextView textView2) {
        this.f49064a = textView;
        this.f49065b = textView2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(j1 j1Var) {
        TextView textView = j1Var.f49064a;
        if (textView != null) {
            jg.c.g(textView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(j1 j1Var) {
        TextView textView = j1Var.f49065b;
        if (textView != null) {
            jg.c.g(textView);
        }
    }

    private final void g(String str, long j11, TextView textView, long j12, Runnable runnable) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(500L);
        if (textView != null) {
            jg.c.g(textView);
        }
        objectAnimatorOfFloat.addListener(new a(textView, str));
        objectAnimatorOfFloat.setStartDelay(j11);
        objectAnimatorOfFloat.start();
        if (j12 <= 0 || textView == null) {
            return;
        }
        textView.postDelayed(runnable, j12);
    }

    public static /* synthetic */ void i(j1 j1Var, String str, long j11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            j11 = 3000;
        }
        j1Var.h(str, j11);
    }

    public final void d() {
        TextView textView = this.f49064a;
        if (textView != null) {
            jg.c.g(textView);
        }
        TextView textView2 = this.f49065b;
        if (textView2 != null) {
            jg.c.g(textView2);
        }
    }

    public final void h(String content, long j11) {
        TextView textView;
        Intrinsics.h(content, "content");
        TextView textView2 = this.f49064a;
        if (textView2 != null && jg.c.i(textView2) && (textView = this.f49065b) != null && jg.c.i(textView)) {
            int i11 = this.f49067d;
            TextView textView3 = i11 == 1 ? this.f49065b : this.f49064a;
            Runnable runnable = i11 == 1 ? this.f49069f : this.f49068e;
            textView3.removeCallbacks(runnable);
            g(content, 0L, textView3, j11, runnable);
            this.f49067d = this.f49067d != 1 ? 1 : 2;
            return;
        }
        TextView textView4 = this.f49064a;
        if (textView4 == null || !jg.c.i(textView4)) {
            this.f49067d = 1;
            g(content, 0L, this.f49064a, j11, this.f49068e);
        } else {
            long j12 = System.currentTimeMillis() - this.f49066c < 500 ? 500L : 0L;
            this.f49067d = 2;
            g(content, j12, this.f49065b, j11, this.f49069f);
        }
    }
}
