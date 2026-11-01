package com.transsion.subroom.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.animation.DecelerateInterpolator;
import com.cloud.hisavana.sdk.common.util.l0;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout;
import com.transsion.wrapperad.view.secondfloor.SecondFloorArcCoverView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class SecondFloorHelper {
    private Function0 A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private au.a f54587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f54588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f54589c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f54590d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f54591e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f54592f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f54593g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AnimatorSet f54594h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AnimatorSet f54595i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Function1 f54596j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f54597k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final n0 f54598l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private t1 f54599m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private t1 f54600n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private t1 f54601o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private t1 f54602p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f54603q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f54604r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f54605s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f54606t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f54607u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f54608v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f54609w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final String f54610x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f54611y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final Lazy f54612z;

    public static final class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f54614b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f54615c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f54616d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f54617e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f54618f;

        a(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
            this.f54614b = z10;
            this.f54615c = z11;
            this.f54616d = z12;
            this.f54617e = z13;
            this.f54618f = z14;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            Intrinsics.h(animation, "animation");
            super.onAnimationCancel(animation);
            SecondFloorHelper.this.f54608v = false;
            SecondFloorHelper.this.P(this.f54614b, this.f54615c, this.f54616d, this.f54617e, this.f54618f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
            super.onAnimationEnd(animation);
            SecondFloorHelper.this.f54608v = false;
            SecondFloorHelper.this.P(this.f54614b, this.f54615c, this.f54616d, this.f54617e, this.f54618f);
        }
    }

    public SecondFloorHelper(au.a viewBinding) {
        Intrinsics.h(viewBinding, "viewBinding");
        this.f54587a = viewBinding;
        this.f54588b = 400L;
        this.f54589c = 500L;
        this.f54590d = "TrendingTwoLevelloftScene";
        this.f54591e = LazyKt.b(new Function0() { // from class: com.transsion.subroom.activity.d0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Float.valueOf(SecondFloorHelper.A(this.f54636a));
            }
        });
        this.f54592f = LazyKt.b(new Function0() { // from class: com.transsion.subroom.activity.e0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Float.valueOf(SecondFloorHelper.B(this.f54638a));
            }
        });
        this.f54593g = LazyKt.b(new Function0() { // from class: com.transsion.subroom.activity.f0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Long.valueOf(SecondFloorHelper.R(this.f54639a));
            }
        });
        this.f54597k = CustomSwipeRefreshLayout.IDLE;
        this.f54598l = o0.a(y0.c().plus(l2.b(null, 1, null)));
        this.f54610x = "show_guide";
        this.f54612z = LazyKt.b(new Function0() { // from class: com.transsion.subroom.activity.g0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(SecondFloorHelper.O(this.f54640a));
            }
        });
        this.f54587a.f16136k.setLoadCallback(new Function1() { // from class: com.transsion.subroom.activity.h0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SecondFloorHelper.g(this.f54642a, ((Boolean) obj).booleanValue());
            }
        });
        this.f54587a.f16136k.setClickCallback(new Function0() { // from class: com.transsion.subroom.activity.i0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SecondFloorHelper.h(this.f54644a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float A(SecondFloorHelper secondFloorHelper) {
        return (secondFloorHelper.f54587a.getRoot().getContext().getResources().getDisplayMetrics().widthPixels * 9) / 16.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float B(SecondFloorHelper secondFloorHelper) {
        return ((secondFloorHelper.f54587a.getRoot().getContext().getResources().getDisplayMetrics().widthPixels * 9) / 16) / 2.0f;
    }

    private final void C() {
        t1 t1Var = this.f54600n;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        t1 t1Var2 = this.f54601o;
        if (t1Var2 != null) {
            t1.a.b(t1Var2, null, 1, null);
        }
        t1 t1Var3 = this.f54602p;
        if (t1Var3 != null) {
            t1.a.b(t1Var3, null, 1, null);
        }
        t1 t1Var4 = this.f54599m;
        if (t1Var4 != null) {
            t1.a.b(t1Var4, null, 1, null);
        }
        this.f54600n = null;
        this.f54601o = null;
        this.f54602p = null;
        this.f54599m = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E() {
        f0();
        d0(this, J(), true, false, false, true, false, 44, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F() {
        f0();
        d0(this, K(), true, false, true, false, false, 52, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G(boolean z10) {
        if (this.f54587a.f16129d.getTranslationY() <= 0.0f) {
            SecondFloorArcCoverView arcCover = this.f54587a.f16127b;
            Intrinsics.g(arcCover, "arcCover");
            jg.c.g(arcCover);
        } else {
            if (this.f54608v) {
                return;
            }
            this.f54608v = true;
            f0();
            d0(this, 0.0f, true, true, false, false, z10, 24, null);
            this.f54587a.f16136k.idleTrigger();
        }
    }

    static /* synthetic */ void H(SecondFloorHelper secondFloorHelper, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        secondFloorHelper.G(z10);
    }

    private final void I() {
        f0();
        d0(this, J(), false, false, false, false, false, 62, null);
    }

    private final float J() {
        return ((Number) this.f54591e.getValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float K() {
        return ((Number) this.f54592f.getValue()).floatValue();
    }

    private final int L() {
        return ((Number) this.f54612z.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long M() {
        return ((Number) this.f54593g.getValue()).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int O(SecondFloorHelper secondFloorHelper) {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b(secondFloorHelper.f54590d);
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("guideShowMax")) == null) {
            return 1;
        }
        return jsonElement.getAsInt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        if (z10) {
            this.f54587a.f16127b.setAlpha(0.0f);
            SecondFloorArcCoverView arcCover = this.f54587a.f16127b;
            Intrinsics.g(arcCover, "arcCover");
            jg.c.g(arcCover);
        }
        if (z11) {
            Y(CustomSwipeRefreshLayout.IDLE);
            ii.b.f65248a.e(this.f54590d, this.f54607u);
            this.f54607u = false;
            if (z14) {
                W();
            } else if (this.f54606t) {
                this.f54587a.f16136k.resetAd();
                this.f54606t = false;
                V(this, false, true, 1, null);
            }
        }
        if (z12) {
            Y(CustomSwipeRefreshLayout.HOVER_HALF);
        }
        if (z13) {
            Y(CustomSwipeRefreshLayout.HOVER_FULL);
        }
        this.f54595i = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long R(SecondFloorHelper secondFloorHelper) {
        int iE = com.transsion.ad.scene.a.f42201a.e(secondFloorHelper.f54590d);
        if (iE > 0) {
            return ((long) iE) * 1000;
        }
        return 5000L;
    }

    public static /* synthetic */ void V(SecondFloorHelper secondFloorHelper, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        if ((i11 & 2) != 0) {
            z11 = false;
        }
        secondFloorHelper.U(z10, z11);
    }

    private final void c0(float f11, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        AnimatorSet animatorSet = this.f54595i;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f54587a.f16129d, "translationY", f11);
        objectAnimatorOfFloat.setDuration(this.f54588b);
        objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f54587a.f16127b, "alpha", z10 ? 0.0f : 1.0f);
        objectAnimatorOfFloat2.setDuration(this.f54588b);
        objectAnimatorOfFloat2.setInterpolator(new DecelerateInterpolator());
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f54587a.f16127b, "translationY", f11);
        objectAnimatorOfFloat3.setDuration(this.f54588b);
        objectAnimatorOfFloat3.setInterpolator(new DecelerateInterpolator());
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat3);
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playTogether(objectAnimatorOfFloat, animatorSet2);
        animatorSet3.addListener(new a(z10, z11, z12, z13, z14));
        this.f54595i = animatorSet3;
        animatorSet3.start();
    }

    static /* synthetic */ void d0(SecondFloorHelper secondFloorHelper, float f11, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, int i11, Object obj) {
        secondFloorHelper.c0(f11, (i11 & 2) != 0 ? false : z10, (i11 & 4) != 0 ? false : z11, (i11 & 8) != 0 ? false : z12, (i11 & 16) != 0 ? false : z13, (i11 & 32) == 0 ? z14 : false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e0() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f54587a.f16129d, "translationY", K());
        objectAnimatorOfFloat.setDuration(this.f54589c);
        objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f54587a.f16127b, "translationY", K());
        objectAnimatorOfFloat2.setDuration(this.f54589c);
        objectAnimatorOfFloat2.setInterpolator(new DecelerateInterpolator());
        this.f54587a.f16127b.setAlpha(0.0f);
        SecondFloorArcCoverView arcCover = this.f54587a.f16127b;
        Intrinsics.g(arcCover, "arcCover");
        jg.c.k(arcCover);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f54587a.f16127b, "alpha", 1.0f);
        objectAnimatorOfFloat3.setDuration(this.f54589c);
        objectAnimatorOfFloat3.setInterpolator(new DecelerateInterpolator());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat3);
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(objectAnimatorOfFloat, animatorSet);
        animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: com.transsion.subroom.activity.SecondFloorHelper$startGuideAnimation$1$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                Intrinsics.h(animation, "animation");
                super.onAnimationEnd(animation);
                this.f54619a.f54594h = null;
                SecondFloorHelper secondFloorHelper = this.f54619a;
                secondFloorHelper.f54599m = kotlinx.coroutines.k.d(secondFloorHelper.f54598l, null, null, new SecondFloorHelper$startGuideAnimation$1$1$onAnimationEnd$1(this.f54619a, null), 3, null);
            }
        });
        this.f54594h = animatorSet2;
        animatorSet2.start();
    }

    private final void f0() {
        AnimatorSet animatorSet = this.f54594h;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.f54594h = null;
        AnimatorSet animatorSet2 = this.f54595i;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        this.f54595i = null;
        C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(SecondFloorHelper secondFloorHelper, boolean z10) {
        if (z10) {
            secondFloorHelper.b0();
        } else {
            ii.b.d(ii.b.f65248a, secondFloorHelper.f54590d, false, 2, null);
            if (secondFloorHelper.f54603q) {
                secondFloorHelper.W();
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(SecondFloorHelper secondFloorHelper) {
        secondFloorHelper.f54609w = true;
        secondFloorHelper.Y(CustomSwipeRefreshLayout.IDLE);
        H(secondFloorHelper, false, 1, null);
        return Unit.f67061a;
    }

    public final void D() {
        ii.b.f65248a.e(this.f54590d, false);
        this.f54607u = false;
        o0.d(this.f54598l, null, 1, null);
        f0();
        this.f54587a.f16136k.destroy();
        this.A = null;
    }

    public final void N() {
        this.f54611y++;
        com.transsion.baselib.report.launch.b.f43370a.b().putInt(this.f54610x, this.f54611y);
    }

    public final boolean Q() {
        return this.f54587a.f16136k.hasAd();
    }

    public final boolean S() {
        int i11 = T() ? 0 : com.transsion.baselib.report.launch.b.f43370a.b().getInt(this.f54610x, 0);
        this.f54611y = i11;
        boolean z10 = i11 < L();
        if (!z10) {
            ii.b.d(ii.b.f65248a, this.f54590d, false, 2, null);
        }
        return z10;
    }

    public final boolean T() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        long j11 = bVar.b().getLong("zero_clock_timestamp_SecondFloorGuide", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z10 = jCurrentTimeMillis - j11 >= 86400000;
        if (z10) {
            bVar.b().putLong("zero_clock_timestamp_SecondFloorGuide", l0.c(jCurrentTimeMillis));
        }
        return z10;
    }

    public final void U(boolean z10, boolean z11) {
        this.f54603q = z10;
        this.f54587a.f16136k.loadAd(z11);
    }

    public final void W() {
        Function0 function0;
        if (this.f54609w || (function0 = this.A) == null) {
            return;
        }
        function0.invoke();
        this.A = null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void X(String action, float f11, float f12) {
        Intrinsics.h(action, "action");
        switch (action.hashCode()) {
            case -1435393951:
                if (action.equals(CustomSwipeRefreshLayout.SECOND_FLOOR)) {
                    this.f54587a.f16136k.adClick();
                    this.f54606t = true;
                    this.f54602p = kotlinx.coroutines.k.d(this.f54598l, null, null, new SecondFloorHelper$onAction$4(this, null), 3, null);
                    break;
                }
                break;
            case -1294619603:
                if (action.equals(CustomSwipeRefreshLayout.IDLE_TRIGGER)) {
                    this.f54587a.f16127b.idleTrigger();
                    break;
                }
                break;
            case -659833836:
                if (action.equals(CustomSwipeRefreshLayout.REFRESH_TRIGGER)) {
                    this.f54587a.f16127b.refreshTrigger();
                    break;
                }
                break;
            case 2715:
                if (action.equals(CustomSwipeRefreshLayout.UP)) {
                    this.f54605s = false;
                    break;
                }
                break;
            case 2104482:
                if (action.equals(CustomSwipeRefreshLayout.DOWN)) {
                    f0();
                    break;
                }
                break;
            case 2242516:
                if (action.equals(CustomSwipeRefreshLayout.IDLE)) {
                    this.f54604r = true;
                    H(this, false, 1, null);
                    ii.b.d(ii.b.f65248a, this.f54590d, false, 2, null);
                    break;
                }
                break;
            case 2372561:
                if (action.equals(CustomSwipeRefreshLayout.MOVE)) {
                    if (!this.f54605s) {
                        ii.b bVar = ii.b.f65248a;
                        if (bVar.a(this.f54590d)) {
                            this.f54587a.f16136k.showAd();
                            ii.b.g(bVar, this.f54590d, null, 2, null);
                            this.f54607u = true;
                            this.f54605s = true;
                        }
                    }
                    this.f54587a.f16129d.setTranslationY(f11);
                    SecondFloorArcCoverView secondFloorArcCoverView = this.f54587a.f16127b;
                    secondFloorArcCoverView.setAbMode(CustomSwipeRefreshLayout.INSTANCE.b());
                    secondFloorArcCoverView.setTranslationY(f11);
                    secondFloorArcCoverView.setAlpha(f12);
                    Intrinsics.e(secondFloorArcCoverView);
                    jg.c.k(secondFloorArcCoverView);
                    break;
                }
                break;
            case 351156154:
                if (action.equals(CustomSwipeRefreshLayout.SECOND_FLOOR_TRIGGER)) {
                    this.f54587a.f16127b.secondFloorTrigger();
                    break;
                }
                break;
            case 784487378:
                if (action.equals(CustomSwipeRefreshLayout.HOVER_FULL)) {
                    this.f54600n = kotlinx.coroutines.k.d(this.f54598l, null, null, new SecondFloorHelper$onAction$3(this, null), 3, null);
                    break;
                }
                break;
            case 784527734:
                if (action.equals(CustomSwipeRefreshLayout.HOVER_HALF)) {
                    this.f54600n = kotlinx.coroutines.k.d(this.f54598l, null, null, new SecondFloorHelper$onAction$2(this, null), 3, null);
                    break;
                }
                break;
            case 1803427515:
                if (action.equals(CustomSwipeRefreshLayout.REFRESH)) {
                    this.f54606t = true;
                    I();
                    this.f54587a.f16127b.refreshing();
                    this.f54587a.f16136k.refreshing();
                    break;
                }
                break;
        }
    }

    public final void Y(String state) {
        Intrinsics.h(state, "state");
        this.f54597k = state;
        Function1 function1 = this.f54596j;
        if (function1 != null) {
            function1.invoke(state);
        }
    }

    public final void Z(Function0 function0) {
        this.A = function0;
    }

    public final void a0(Function1 function1) {
        this.f54596j = function1;
    }

    public final void b0() {
        if (this.f54603q) {
            if (!ii.b.f65248a.a(this.f54590d)) {
                W();
                return;
            }
            t1 t1Var = this.f54599m;
            if (t1Var != null) {
                t1.a.b(t1Var, null, 1, null);
            }
            this.f54599m = kotlinx.coroutines.k.d(this.f54598l, null, null, new SecondFloorHelper$showGuide$1(this, null), 3, null);
        }
    }
}
