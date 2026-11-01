package com.transsion.player.longvideo.helper;

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
public final class i implements Animator.AnimatorListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f47994b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f47995c = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.helper.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return i.c();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ho.c f47996a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public i(ho.c bind) {
        Intrinsics.h(bind, "bind");
        this.f47996a = bind;
        bind.f64563b.addAnimatorListener(this);
        bind.f64564c.addAnimatorListener(this);
    }

    private final void b() {
        ho.c cVar = this.f47996a;
        VideoDoubleClickBackgroundView vDoubleClick = cVar.f64567f;
        Intrinsics.g(vDoubleClick, "vDoubleClick");
        jg.c.g(vDoubleClick);
        AppCompatTextView tvDoubleClickLeft = cVar.f64565d;
        Intrinsics.g(tvDoubleClickLeft, "tvDoubleClickLeft");
        jg.c.g(tvDoubleClickLeft);
        AppCompatTextView tvDoubleClickRight = cVar.f64566e;
        Intrinsics.g(tvDoubleClickRight, "tvDoubleClickRight");
        jg.c.g(tvDoubleClickRight);
        LottieAnimationView lottieDoubleClickLeft = cVar.f64563b;
        Intrinsics.g(lottieDoubleClickLeft, "lottieDoubleClickLeft");
        jg.c.g(lottieDoubleClickLeft);
        LottieAnimationView lottieDoubleClickRight = cVar.f64564c;
        Intrinsics.g(lottieDoubleClickRight, "lottieDoubleClickRight");
        jg.c.g(lottieDoubleClickRight);
        cVar.f64563b.pauseAnimation();
        cVar.f64564c.pauseAnimation();
        ConstraintLayout root = cVar.getRoot();
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
        boolean z11;
        ho.c cVar = this.f47996a;
        VideoDoubleClickBackgroundView vDoubleClick = cVar.f64567f;
        Intrinsics.g(vDoubleClick, "vDoubleClick");
        jg.c.k(vDoubleClick);
        boolean zF = jg.c.f();
        if (zF) {
            z11 = z10;
        } else {
            z11 = !z10;
        }
        cVar.f64567f.setLeftStyle(z11);
        if (z10) {
            if (zF) {
                cVar.f64564c.setScaleX(-1.0f);
            }
            AppCompatTextView tvDoubleClickRight = cVar.f64566e;
            Intrinsics.g(tvDoubleClickRight, "tvDoubleClickRight");
            jg.c.k(tvDoubleClickRight);
            LottieAnimationView lottieDoubleClickRight = cVar.f64564c;
            Intrinsics.g(lottieDoubleClickRight, "lottieDoubleClickRight");
            jg.c.k(lottieDoubleClickRight);
            cVar.f64564c.playAnimation();
        } else {
            if (zF) {
                cVar.f64563b.setScaleX(-1.0f);
            }
            AppCompatTextView tvDoubleClickLeft = cVar.f64565d;
            Intrinsics.g(tvDoubleClickLeft, "tvDoubleClickLeft");
            jg.c.k(tvDoubleClickLeft);
            LottieAnimationView lottieDoubleClickLeft = cVar.f64563b;
            Intrinsics.g(lottieDoubleClickLeft, "lottieDoubleClickLeft");
            jg.c.k(lottieDoubleClickLeft);
            cVar.f64563b.playAnimation();
        }
        ConstraintLayout root = cVar.getRoot();
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
