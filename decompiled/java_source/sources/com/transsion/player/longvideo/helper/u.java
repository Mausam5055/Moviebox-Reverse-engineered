package com.transsion.player.longvideo.helper;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import com.noober.background.view.BLLinearLayout;
import com.noober.background.view.BLTextView;
import com.transsion.mb.config.manager.ConfigBean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class u {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f48018l = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ho.j f48019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function0 f48020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f48021c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ho.e f48022d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f48023e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f48024f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f48025g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Handler f48026h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Handler f48027i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Handler f48028j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Lazy f48029k;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public u(ho.j viewBinding, Function0 continuePlaCallback) {
        String value;
        Object objM454constructorimpl;
        Intrinsics.h(viewBinding, "viewBinding");
        Intrinsics.h(continuePlaCallback, "continuePlaCallback");
        this.f48019a = viewBinding;
        this.f48020b = continuePlaCallback;
        this.f48026h = new Handler(Looper.getMainLooper());
        this.f48027i = new Handler(Looper.getMainLooper());
        this.f48028j = new Handler(Looper.getMainLooper());
        this.f48029k = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.helper.o
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Long.valueOf(u.A());
            }
        });
        ConfigBean configBeanD = sm.f.d(sm.f.f75407c.a(), "sa_data_operator_config", false, 2, null);
        if (configBeanD != null && (value = configBeanD.getValue()) != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                this.f48021c = (b) com.blankj.utilcode.util.o.d(value, b.class);
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Result.m453boximpl(objM454constructorimpl);
        }
        b bVar = this.f48021c;
        if (bVar != null) {
            ho.f fVar = this.f48019a.f64618h.f64654s;
            fVar.f64581e.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.helper.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    u.y(this.f48013a, view);
                }
            });
            fVar.f64579c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.helper.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    u.z(this.f48014a, view);
                }
            });
            String strL = bVar.l();
            if (strL != null) {
                fVar.f64583g.setText(strL);
            }
            String strK = bVar.k();
            if (strK != null) {
                fVar.f64582f.setText(strK);
            }
            String strA = bVar.a();
            if (strA != null) {
                fVar.f64580d.setText(strA);
            }
            String strB = bVar.b();
            if (strB != null) {
                ej.f.a aVar = ej.f.f61882a;
                Context context = fVar.f64578b.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarC = aVar.m(context).g(strB).m(dk.a.b(16)).c(dk.a.b(16));
                AppCompatImageView ivMore = fVar.f64578b;
                Intrinsics.g(ivMore, "ivMore");
                bVarC.d(ivMore);
            }
            ho.f fVar2 = this.f48019a.f64619i.f64674m;
            fVar2.f64581e.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.helper.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    u.w(this.f48015a, view);
                }
            });
            fVar2.f64579c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.helper.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    u.x(this.f48016a, view);
                }
            });
            String strL2 = bVar.l();
            if (strL2 != null) {
                fVar2.f64583g.setText(strL2);
            }
            String strK2 = bVar.k();
            if (strK2 != null) {
                fVar2.f64582f.setText(strK2);
            }
            String strA2 = bVar.a();
            if (strA2 != null) {
                fVar2.f64580d.setText(strA2);
            }
            String strB2 = bVar.b();
            if (strB2 != null) {
                ej.f.a aVar2 = ej.f.f61882a;
                Context context2 = fVar2.f64578b.getContext();
                Intrinsics.g(context2, "getContext(...)");
                ej.f.b bVarC2 = aVar2.m(context2).g(strB2).m(dk.a.b(16)).c(dk.a.b(16));
                AppCompatImageView ivMore2 = fVar2.f64578b;
                Intrinsics.g(ivMore2, "ivMore");
                bVarC2.d(ivMore2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long A() {
        String value;
        Long lX;
        ConfigBean configBeanD = sm.f.d(sm.f.f75407c.a(), "sa_data_switch", false, 2, null);
        if (configBeanD == null || (value = configBeanD.getValue()) == null || (lX = StringsKt.x(value)) == null) {
            return 720L;
        }
        return lX.longValue();
    }

    private final void B() {
        String strH;
        t();
        lg.a.C0828a c0828a = lg.a.f68839a;
        b bVar = this.f48021c;
        lg.a.C0828a.f(c0828a, "LongVodMobileData", "onOperatorClick link:" + (bVar != null ? bVar.h() : null), false, 4, null);
        b bVar2 = this.f48021c;
        if (bVar2 != null && (strH = bVar2.h()) != null) {
            ak.k.h(strH, null, 1, null);
        }
        com.transsion.baselib.report.launch.b.f43370a.b().putLong("key_video_operator_last_open_time", System.currentTimeMillis());
    }

    private final void F(boolean z10) {
        try {
            Result.Companion companion = Result.INSTANCE;
            lg.a.C0828a.f(lg.a.f68839a, "LongVodMobileData", "showOperatorLayout", false, 4, null);
            if (z10) {
                BLLinearLayout root = this.f48019a.f64618h.f64654s.getRoot();
                Intrinsics.g(root, "getRoot(...)");
                jg.c.k(root);
            } else {
                BLLinearLayout root2 = this.f48019a.f64619i.f64674m.getRoot();
                Intrinsics.g(root2, "getRoot(...)");
                jg.c.k(root2);
            }
            b bVar = this.f48021c;
            int iJ = bVar != null ? bVar.j() : 10;
            this.f48028j.removeCallbacksAndMessages(null);
            Result.m454constructorimpl(Boolean.valueOf(this.f48028j.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.helper.t
                @Override // java.lang.Runnable
                public final void run() {
                    u.G(this.f48017a);
                }
            }, ((long) iJ) * 1000)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(u uVar) {
        try {
            Result.Companion companion = Result.INSTANCE;
            uVar.t();
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final void k() {
        ConstraintLayout root;
        ho.e eVar = this.f48022d;
        if (eVar != null && (root = eVar.getRoot()) != null && root.getVisibility() == 0) {
            lg.a.C0828a.v(lg.a.f68839a, "LongVodMobileData", "checkFullscreenPageShowOperator, mobile ui show~~", false, 4, null);
            return;
        }
        if (this.f48024f) {
            lg.a.C0828a.v(lg.a.f68839a, "LongVodMobileData", "checkFullscreenPageShowOperator shown return", false, 4, null);
            return;
        }
        if (!u()) {
            lg.a.C0828a.v(lg.a.f68839a, "LongVodMobileData", "checkFullscreenPageShowOperator intercept--", false, 4, null);
            return;
        }
        this.f48024f = true;
        b bVar = this.f48021c;
        int iD = bVar != null ? bVar.d() : 3;
        lg.a.C0828a.v(lg.a.f68839a, "LongVodMobileData", "checkFullscreenPageShowOperator delay show:" + iD + "s", false, 4, null);
        this.f48026h.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.helper.l
            @Override // java.lang.Runnable
            public final void run() {
                u.l(this.f48004a);
            }
        }, ((long) iD) * 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(u uVar) {
        uVar.F(true);
    }

    private final void m() {
        if (this.f48025g) {
            return;
        }
        if (this.f48023e) {
            lg.a.C0828a.v(lg.a.f68839a, "LongVodMobileData", "checkMiddlePageShowOperator shown return", false, 4, null);
            return;
        }
        if (!u()) {
            lg.a.C0828a.v(lg.a.f68839a, "LongVodMobileData", "checkMiddlePageShowOperator config--", false, 4, null);
            return;
        }
        this.f48023e = true;
        b bVar = this.f48021c;
        int i11 = bVar != null ? bVar.i() : 3;
        lg.a.C0828a.v(lg.a.f68839a, "LongVodMobileData", "checkMiddlePageShowOperator delay show:" + i11 + "s", false, 4, null);
        this.f48027i.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.helper.k
            @Override // java.lang.Runnable
            public final void run() {
                u.n(this.f48003a);
            }
        }, ((long) i11) * 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(u uVar) {
        uVar.F(false);
    }

    private final void o() {
        if (this.f48025g) {
            k();
        } else {
            m();
        }
    }

    private final long p() {
        return ((Number) this.f48029k.getValue()).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(u uVar, View view) {
        lg.a.C0828a.f(lg.a.f68839a, "LongVodMobileData", "click-- play with mobile data", false, 4, null);
        io.a.f65273a.c(true);
        uVar.f48020b.invoke();
        uVar.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(u uVar, View view) {
        lg.a.C0828a.f(lg.a.f68839a, "LongVodMobileData", "click-- page openDeeplink", false, 4, null);
        uVar.B();
    }

    private final void t() {
        lg.a.C0828a.f(lg.a.f68839a, "LongVodMobileData", "hideOperatorLayout", false, 4, null);
        BLLinearLayout root = this.f48019a.f64618h.f64654s.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        jg.c.g(root);
        BLLinearLayout root2 = this.f48019a.f64619i.f64674m.getRoot();
        Intrinsics.g(root2, "getRoot(...)");
        jg.c.g(root2);
    }

    private final boolean u() {
        b bVar = this.f48021c;
        if (bVar != null) {
            String strH = bVar != null ? bVar.h() : null;
            if (strH != null && strH.length() != 0) {
                long jCurrentTimeMillis = System.currentTimeMillis() - com.transsion.baselib.report.launch.b.f43370a.b().getLong("key_video_operator_last_open_time", 0L);
                b bVar2 = this.f48021c;
                boolean z10 = jCurrentTimeMillis >= ((long) ((bVar2 != null ? bVar2.c() : 0) * TimeConstants.HOUR));
                lg.a.f68839a.c("LongVodMobileData", "isShowDataOperator time :" + z10, true);
                return z10;
            }
        }
        lg.a.C0828a.f(lg.a.f68839a, "LongVodMobileData", "isShowDataOperator config is null", false, 4, null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(u uVar, View view) {
        uVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(u uVar, View view) {
        lg.a.C0828a.f(lg.a.f68839a, "LongVodMobileData", "click-- float openDeeplink", false, 4, null);
        uVar.B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(u uVar, View view) {
        uVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(u uVar, View view) {
        lg.a.C0828a.f(lg.a.f68839a, "LongVodMobileData", "click-- float openDeeplink", false, 4, null);
        uVar.B();
    }

    public final void C(boolean z10) {
        this.f48025g = z10;
        t();
        if (z10) {
            this.f48027i.removeCallbacksAndMessages(null);
            lg.a.C0828a.v(lg.a.f68839a, "LongVodMobileData", "onScreenChange enter full", false, 4, null);
            k();
        } else {
            this.f48026h.removeCallbacksAndMessages(null);
            lg.a.C0828a.v(lg.a.f68839a, "LongVodMobileData", "onScreenChange exit full to middle page", false, 4, null);
            m();
        }
    }

    public final void D() {
        lg.a.C0828a.f(lg.a.f68839a, "LongVodMobileData", "onVideoStart", false, 4, null);
        o();
    }

    public final void E() {
        ConstraintLayout root;
        ho.e eVar = this.f48022d;
        if (eVar == null || (root = eVar.getRoot()) == null) {
            return;
        }
        jg.c.g(root);
    }

    public final void q() {
        BLTextView bLTextView;
        BLTextView bLTextView2;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        ho.e eVar;
        AppCompatTextView appCompatTextView3;
        BLTextView bLTextView3;
        AppCompatTextView appCompatTextView4;
        ConstraintLayout root;
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.c("LongVodMobileData", "onPrepare2PlayVideo, is mobile , pause video. show layout", true);
        if (this.f48022d == null) {
            this.f48022d = ho.e.a(this.f48019a.f64633w.inflate());
        }
        com.transsion.baselib.report.launch.b.f43370a.b().putLong("key_mobile_data_switch_time", System.currentTimeMillis());
        ho.e eVar2 = this.f48022d;
        if (eVar2 != null && (root = eVar2.getRoot()) != null) {
            jg.c.k(root);
        }
        ho.e eVar3 = this.f48022d;
        if (eVar3 != null) {
            if (eVar3 != null && (appCompatTextView4 = eVar3.f64575d) != null) {
                jg.c.g(appCompatTextView4);
            }
            ho.e eVar4 = this.f48022d;
            if (eVar4 != null && (bLTextView3 = eVar4.f64573b) != null) {
                jg.c.g(bLTextView3);
            }
            if (u()) {
                lg.a.C0828a.f(c0828a, "LongVodMobileData", "mobile data layout, show operator ui--------", false, 4, null);
                b bVar = this.f48021c;
                if (bVar != null) {
                    String strG = bVar.g();
                    if (strG != null && (eVar = this.f48022d) != null && (appCompatTextView3 = eVar.f64576e) != null) {
                        appCompatTextView3.setText(strG);
                    }
                    String strF = bVar.f();
                    if (strF != null) {
                        ho.e eVar5 = this.f48022d;
                        if (eVar5 != null && (appCompatTextView2 = eVar5.f64575d) != null) {
                            appCompatTextView2.setText(strF);
                        }
                        ho.e eVar6 = this.f48022d;
                        if (eVar6 != null && (appCompatTextView = eVar6.f64575d) != null) {
                            jg.c.k(appCompatTextView);
                        }
                    }
                    String strE = bVar.e();
                    if (strE != null) {
                        ho.e eVar7 = this.f48022d;
                        if (eVar7 != null && (bLTextView2 = eVar7.f64573b) != null) {
                            bLTextView2.setText(strE);
                        }
                        ho.e eVar8 = this.f48022d;
                        if (eVar8 != null && (bLTextView = eVar8.f64573b) != null) {
                            jg.c.k(bLTextView);
                        }
                    }
                }
            }
            eVar3.f64574c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.helper.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    u.r(this.f48006a, view);
                }
            });
            BLTextView longVdTvOperator = eVar3.f64573b;
            Intrinsics.g(longVdTvOperator, "longVdTvOperator");
            longVdTvOperator.setVisibility(u() ? 0 : 8);
            eVar3.f64573b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.helper.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    u.s(this.f48008a, view);
                }
            });
        }
    }

    public final boolean v() {
        long j11 = 60;
        return System.currentTimeMillis() - com.transsion.baselib.report.launch.b.f43370a.b().getLong("key_mobile_data_switch_time", 0L) >= ((p() * j11) * j11) * ((long) 1000);
    }
}
