package com.transsion.postdetail.layer.local;

import android.animation.Animator;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.tencent.mmkv.MMKV;
import com.transsion.postdetail.ui.view.VideoDoubleClickBackgroundView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class w0 implements Animator.AnimatorListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f49134b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f49135c = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.layer.local.v0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return w0.c();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final so.a0 f49136a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public w0(so.a0 bind) {
        Intrinsics.h(bind, "bind");
        this.f49136a = bind;
        bind.f75419b.addAnimatorListener(this);
        bind.f75420c.addAnimatorListener(this);
    }

    private final void b() {
        so.a0 a0Var = this.f49136a;
        VideoDoubleClickBackgroundView vDoubleClick = a0Var.f75423f;
        Intrinsics.g(vDoubleClick, "vDoubleClick");
        jg.c.g(vDoubleClick);
        AppCompatTextView tvDoubleClickLeft = a0Var.f75421d;
        Intrinsics.g(tvDoubleClickLeft, "tvDoubleClickLeft");
        jg.c.g(tvDoubleClickLeft);
        AppCompatTextView tvDoubleClickRight = a0Var.f75422e;
        Intrinsics.g(tvDoubleClickRight, "tvDoubleClickRight");
        jg.c.g(tvDoubleClickRight);
        LottieAnimationView lottieDoubleClickLeft = a0Var.f75419b;
        Intrinsics.g(lottieDoubleClickLeft, "lottieDoubleClickLeft");
        jg.c.g(lottieDoubleClickLeft);
        LottieAnimationView lottieDoubleClickRight = a0Var.f75420c;
        Intrinsics.g(lottieDoubleClickRight, "lottieDoubleClickRight");
        jg.c.g(lottieDoubleClickRight);
        a0Var.f75419b.pauseAnimation();
        a0Var.f75420c.pauseAnimation();
        ConstraintLayout root = a0Var.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        jg.c.g(root);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV c() {
        MMKV mmkvI = MMKV.I("kv_video_double");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final void d(boolean z10) {
        so.a0 a0Var = this.f49136a;
        VideoDoubleClickBackgroundView vDoubleClick = a0Var.f75423f;
        Intrinsics.g(vDoubleClick, "vDoubleClick");
        jg.c.k(vDoubleClick);
        a0Var.f75423f.setLeftStyle(!z10);
        if (z10) {
            AppCompatTextView tvDoubleClickRight = a0Var.f75422e;
            Intrinsics.g(tvDoubleClickRight, "tvDoubleClickRight");
            jg.c.k(tvDoubleClickRight);
            LottieAnimationView lottieDoubleClickRight = a0Var.f75420c;
            Intrinsics.g(lottieDoubleClickRight, "lottieDoubleClickRight");
            jg.c.k(lottieDoubleClickRight);
            a0Var.f75420c.playAnimation();
        } else {
            AppCompatTextView tvDoubleClickLeft = a0Var.f75421d;
            Intrinsics.g(tvDoubleClickLeft, "tvDoubleClickLeft");
            jg.c.k(tvDoubleClickLeft);
            LottieAnimationView lottieDoubleClickLeft = a0Var.f75419b;
            Intrinsics.g(lottieDoubleClickLeft, "lottieDoubleClickLeft");
            jg.c.k(lottieDoubleClickLeft);
            a0Var.f75419b.playAnimation();
        }
        ConstraintLayout root = a0Var.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        jg.c.k(root);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animation) {
        Intrinsics.h(animation, "animation");
        b();
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animation) {
        Intrinsics.h(animation, "animation");
        b();
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animation) {
        Intrinsics.h(animation, "animation");
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animation) {
        Intrinsics.h(animation, "animation");
    }
}
