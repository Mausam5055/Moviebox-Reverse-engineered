package com.transsion.postdetail.layer.local;

import android.animation.Animator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.ViewStub;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.tencent.mmkv.MMKV;
import com.transsion.postdetail.ui.view.VideoDoubleClickBackgroundView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class q1 implements Animator.AnimatorListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f49097b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f49098c = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.layer.local.k1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return q1.d();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ho.c f49099a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit g(View view) {
            q1.f49097b.l(view);
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void h(View view, final Function0 function0, View view2) {
            q1.f49097b.l(view);
            view.removeCallbacks(new Runnable() { // from class: com.transsion.postdetail.layer.local.o1
                @Override // java.lang.Runnable
                public final void run() {
                    q1.a.i(function0);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void i(Function0 function0) {
            function0.invoke();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void j(Function0 function0) {
            function0.invoke();
        }

        private final void l(final View view) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
            viewPropertyAnimatorAnimate.setDuration(300L);
            viewPropertyAnimatorAnimate.alpha(0.0f);
            viewPropertyAnimatorAnimate.withEndAction(new Runnable() { // from class: com.transsion.postdetail.layer.local.p1
                @Override // java.lang.Runnable
                public final void run() {
                    q1.a.m(view);
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void m(View view) {
            jg.c.g(view);
        }

        public final void f(ho.j jVar) {
            final View viewInflate;
            ho.l lVar;
            ViewStub viewStub;
            if (k().getBoolean("video_show_guide", false)) {
                return;
            }
            if (((jVar == null || (lVar = jVar.f64619i) == null || (viewStub = lVar.f64677p) == null) ? null : viewStub.getParent()) == null || (viewInflate = jVar.f64619i.f64677p.inflate()) == null) {
                return;
            }
            q1.f49097b.k().putBoolean("video_show_guide", true);
            final Function0 function0 = new Function0() { // from class: com.transsion.postdetail.layer.local.l1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return q1.a.g(viewInflate);
                }
            };
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.layer.local.m1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    q1.a.h(viewInflate, function0, view);
                }
            });
            viewInflate.postDelayed(new Runnable() { // from class: com.transsion.postdetail.layer.local.n1
                @Override // java.lang.Runnable
                public final void run() {
                    q1.a.j(function0);
                }
            }, 3000L);
        }

        public final MMKV k() {
            return (MMKV) q1.f49098c.getValue();
        }
    }

    public q1(ho.c bind) {
        Intrinsics.h(bind, "bind");
        this.f49099a = bind;
        bind.f64563b.addAnimatorListener(this);
        bind.f64564c.addAnimatorListener(this);
    }

    private final void c() {
        ho.c cVar = this.f49099a;
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
    public static final MMKV d() {
        MMKV mmkvI = MMKV.I("kv_video_double");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final void e(boolean z10) {
        boolean z11;
        ho.c cVar = this.f49099a;
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
        c();
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animation) {
        Intrinsics.h(animation, "animation");
        c();
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
