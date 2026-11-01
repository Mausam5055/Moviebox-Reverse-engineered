package com.transsion.postdetail.layer.local;

import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.postdetail.ui.view.AdCountDownView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes6.dex */
public final class i0 {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final a f49039v = new a(null);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final Lazy f49040w = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.layer.local.d0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return i0.j();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f49041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f49042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f49043c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f49044d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f49045e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f49046f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f49047g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f49048h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f49049i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AdCountDownView f49050j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private AppCompatImageView f49051k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Function1 f49052l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Function0 f49053m;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f49057q;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f49054n = 15;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f49055o = 15;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f49056p = 180000;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Handler f49058r = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f49059s = 1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f49060t = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Runnable f49061u = new Runnable() { // from class: com.transsion.postdetail.layer.local.e0
        @Override // java.lang.Runnable
        public final void run() {
            i0.i(this.f49029a);
        }
    };

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final i0 a() {
            return (i0) i0.f49040w.getValue();
        }
    }

    private final void h() {
        this.f49058r.postDelayed(this.f49061u, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(i0 i0Var) {
        int i11;
        if (i0Var.f49057q < 1) {
            i0Var.m();
            return;
        }
        int i12 = i0Var.f49049i == 1 ? i0Var.f49059s : i0Var.f49060t;
        if (com.transsion.ad.scene.b.f42202a.l() && i0Var.f49055o - i0Var.f49057q >= i12 && ((i11 = i0Var.f49049i) == 1 || i11 == 3)) {
            AppCompatImageView appCompatImageView = i0Var.f49051k;
            if (appCompatImageView != null) {
                jg.c.k(appCompatImageView);
            }
            lg.a.C0828a.f(lg.a.f68839a, "LocalVideoLandAdControl", "countdownRunnable, show adCloseView", false, 4, null);
        }
        AdCountDownView adCountDownView = i0Var.f49050j;
        if (adCountDownView != null) {
            int i13 = i0Var.f49057q;
            i0Var.f49057q = i13 - 1;
            adCountDownView.refreshCountDown(i13);
        }
        i0Var.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final i0 j() {
        return new i0();
    }

    private final boolean l() {
        return this.f49045e;
    }

    private final void m() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "LocalVideoLandAdControl", "onCountdownFinish, curAdType = " + this.f49049i, false, 4, null);
        int i11 = this.f49049i;
        if (i11 == 1) {
            this.f49043c = this.f49044d;
            Function0 function0 = this.f49053m;
            if (function0 != null) {
                function0.invoke();
            }
            AdCountDownView adCountDownView = this.f49050j;
            if (adCountDownView != null) {
                adCountDownView.setVisibility(8);
            }
            if (k()) {
                lg.a.C0828a.f(c0828a, "LocalVideoLandAdControl", "onCountdownFinish, start finish, show end", false, 4, null);
                g(this.f49049i);
                v(3, new Function1() { // from class: com.transsion.postdetail.layer.local.f0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return i0.n(((Integer) obj).intValue());
                    }
                });
                return;
            } else if (l()) {
                lg.a.C0828a.f(c0828a, "LocalVideoLandAdControl", "onCountdownFinish, start finish, show pause", false, 4, null);
                g(this.f49049i);
                v(2, new Function1() { // from class: com.transsion.postdetail.layer.local.g0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return i0.o(((Integer) obj).intValue());
                    }
                });
                return;
            } else {
                lg.a.C0828a.f(c0828a, "LocalVideoLandAdControl", "onCountdownFinish, start finish now", false, 4, null);
                Function1 function1 = this.f49052l;
                if (function1 != null) {
                    function1.invoke(Integer.valueOf(this.f49049i));
                    return;
                }
                return;
            }
        }
        if (i11 == 2) {
            lg.a.C0828a.f(c0828a, "LocalVideoLandAdControl", "onCountdownFinish, pause finish now", false, 4, null);
            Function1 function2 = this.f49052l;
            if (function2 != null) {
                function2.invoke(Integer.valueOf(this.f49049i));
                return;
            }
            return;
        }
        if (i11 != 3) {
            return;
        }
        this.f49046f = true;
        this.f49047g = false;
        AdCountDownView adCountDownView2 = this.f49050j;
        if (adCountDownView2 != null) {
            adCountDownView2.setVisibility(8);
        }
        if (l()) {
            lg.a.C0828a.f(c0828a, "LocalVideoLandAdControl", "onCountdownFinish, end finish , show pause", false, 4, null);
            g(this.f49049i);
            v(2, new Function1() { // from class: com.transsion.postdetail.layer.local.h0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return i0.p(((Integer) obj).intValue());
                }
            });
        } else {
            lg.a.C0828a.f(c0828a, "LocalVideoLandAdControl", "onCountdownFinish, end finish now", false, 4, null);
            Function1 function3 = this.f49052l;
            if (function3 != null) {
                function3.invoke(Integer.valueOf(this.f49049i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n(int i11) {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o(int i11) {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p(int i11) {
        return Unit.f67061a;
    }

    private final void q(Function1 function1) {
        w(this.f49055o);
    }

    private final void r(Function1 function1) {
        AdCountDownView adCountDownView = this.f49050j;
        if (adCountDownView != null) {
            adCountDownView.refreshCountDown(-1);
        }
        AdCountDownView adCountDownView2 = this.f49050j;
        if (adCountDownView2 != null) {
            adCountDownView2.setVisibility(0);
        }
        lg.a.C0828a.f(lg.a.f68839a, "LocalVideoLandAdControl", "onShowPauseAd", false, 4, null);
    }

    private final void s(Function1 function1) {
        lg.a.C0828a.f(lg.a.f68839a, "LocalVideoLandAdControl", "onShowStartAd", false, 4, null);
        w(this.f49054n);
    }

    private final void u() {
        this.f49058r.removeCallbacksAndMessages(this.f49061u);
    }

    private final void w(int i11) {
        lg.a.C0828a.f(lg.a.f68839a, "LocalVideoLandAdControl", "startCountdown, countdownTime = " + i11, false, 4, null);
        this.f49057q = i11;
        AdCountDownView adCountDownView = this.f49050j;
        if (adCountDownView != null) {
            adCountDownView.setVisibility(0);
        }
        this.f49058r.post(this.f49061u);
    }

    public final void g(int i11) {
        lg.a.C0828a.f(lg.a.f68839a, "LocalVideoLandAdControl", "----closeLandAd, adType = " + i11, false, 4, null);
        this.f49049i = 0;
        u();
        AppCompatImageView appCompatImageView = this.f49051k;
        if (appCompatImageView != null) {
            jg.c.g(appCompatImageView);
        }
    }

    public final boolean k() {
        if (this.f49046f || this.f49047g || this.f49041a - this.f49042b > this.f49056p) {
            return false;
        }
        if (!this.f49048h) {
            this.f49048h = true;
        }
        return true;
    }

    public final void t(long j11, long j12) {
        this.f49042b = j11;
        this.f49041a = j12;
    }

    public final void v(int i11, Function1 function1) {
        lg.a.C0828a.f(lg.a.f68839a, "LocalVideoLandAdControl", "----showLandAd, adType = " + i11, false, 4, null);
        this.f49049i = i11;
        if (i11 == 1) {
            s(function1);
        } else if (i11 == 2) {
            r(function1);
        } else {
            if (i11 != 3) {
                return;
            }
            q(function1);
        }
    }
}
