package com.transsion.postdetail.layer.local;

import android.R;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.Html;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.music.MusicFloatManager;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.layer.BaseLayer;
import com.transsion.postdetail.layer.SystemTimeManager;
import com.transsion.postdetail.layer.listener.LayerFlag;
import com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment;
import com.transsion.postdetail.util.LocalFloatManager;
import com.transsion.postdetail.viewmodel.LocalVideoDetailViewModel;
import com.transsion.push.api.IPushProvider;
import com.transsion.subtitle.VideoSubtitleControl;
import com.transsion.usercenter.setting.labelsfeedback.model.FbTvData;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.bean.FloatPlayType;
import com.transsnet.downloader.util.LocalVideoNotExistUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.StringCompanionObject;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a0 extends BaseLayer implements vo.d, com.transsion.player.orplayer.f, com.transsion.baselib.report.l.a, com.transsion.ad.strategy.b.a {
    private boolean A;
    private View B;
    private View C;
    private float D;
    private long E;
    private final Lazy F;
    private final Lazy G;
    private DownloadBean H;
    private String I;
    private String J;
    private String K;
    private boolean L;
    private vo.c M;
    private boolean N;
    private boolean O;
    private boolean P;
    private int Q;
    private int R;
    private int S;
    private int T;
    private final Lazy U;
    private final Runnable V;
    private String[] W;
    private int X;
    private final Runnable Y;
    private final Runnable Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private long f48953a0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f48954j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Fragment f48955k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f48956l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Lazy f48957m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Lazy f48958n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Lazy f48959o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f48960p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f48961q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f48962r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private SystemTimeManager f48963s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private vo.b f48964t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private VideoSubtitleControl f48965u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private eo.n f48966v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private j1 f48967w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f48968x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f48969y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f48970z;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48971a;

        static {
            int[] iArr = new int[LocalUiType.values().length];
            try {
                iArr[LocalUiType.MIDDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LocalUiType.LAND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LocalUiType.PORTRAIT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f48971a = iArr;
        }
    }

    public static final class b implements com.transsion.baseui.widget.f.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f48972a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f48973b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f48974c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f48975d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f48976e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f48977f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f48978g;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ boolean f48980i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ int f48981j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ int f48982k;

        b(boolean z10, int i11, int i12) {
            this.f48980i = z10;
            this.f48981j = i11;
            this.f48982k = i12;
        }

        @Override // com.transsion.baseui.widget.f.a
        public void a() {
            Group groupZ2 = a0.this.Z2();
            if (groupZ2 == null || groupZ2.getVisibility() != 8) {
                a0.this.v1(true);
            } else {
                a0.B2(a0.this, false, 1, null);
            }
        }

        @Override // com.transsion.baseui.widget.f.a
        public void b(float f11, float f12) {
            long j11 = 0;
            if (!this.f48974c) {
                SecondariesSeekBar secondariesSeekBarQ2 = a0.this.q2();
                this.f48977f = secondariesSeekBarQ2 != null ? secondariesSeekBarQ2.getCurrentProgress() : 0L;
                a0.this.A2(false);
            }
            a0.this.f48962r = true;
            this.f48974c = true;
            a0.this.X0().removeCallbacks(a0.this.V);
            float f13 = this.f48980i ? f11 - f12 : f12 - f11;
            float f14 = 10000L;
            long j12 = (long) (this.f48977f + ((f13 * f14) / (this.f48981j * 4)));
            if (j12 >= 0) {
                j11 = j12 > 10000 ? 10000L : j12;
            }
            SecondariesSeekBar secondariesSeekBarQ3 = a0.this.q2();
            if (secondariesSeekBarQ3 != null) {
                secondariesSeekBarQ3.setProgress(j11);
            }
            this.f48973b = (j11 * 1.0f) / f14;
            long jN1 = (long) (a0.this.n1() * this.f48973b);
            this.f48972a = jN1;
            a0.this.E = jN1;
            a0.this.c3(true, this.f48972a);
        }

        @Override // com.transsion.baseui.widget.f.a
        public void c(float f11, float f12) {
            eo.n nVar = null;
            if (!this.f48976e) {
                eo.n nVar2 = a0.this.f48966v;
                if (nVar2 == null) {
                    Intrinsics.z("volumeControl");
                    nVar2 = null;
                }
                nVar2.f(false);
                eo.n nVar3 = a0.this.f48966v;
                if (nVar3 == null) {
                    Intrinsics.z("volumeControl");
                    nVar3 = null;
                }
                this.f48978g = nVar3.b();
                this.f48976e = true;
            }
            float f13 = ((f11 - f12) * 2) / this.f48982k;
            eo.n nVar4 = a0.this.f48966v;
            if (nVar4 == null) {
                Intrinsics.z("volumeControl");
            } else {
                nVar = nVar4;
            }
            nVar.a(this.f48978g, f13);
        }

        @Override // com.transsion.baseui.widget.f.a
        public void d(float f11, float f12) {
            eo.n nVar = null;
            if (!this.f48975d) {
                eo.n nVar2 = a0.this.f48966v;
                if (nVar2 == null) {
                    Intrinsics.z("volumeControl");
                    nVar2 = null;
                }
                nVar2.f(false);
                this.f48975d = true;
            }
            eo.n nVar3 = a0.this.f48966v;
            if (nVar3 == null) {
                Intrinsics.z("volumeControl");
            } else {
                nVar = nVar3;
            }
            nVar.d(f11, f12, this.f48982k);
        }

        @Override // com.transsion.baseui.widget.f.a
        public void e() {
            com.transsion.player.orplayer.g gVarH;
            if (this.f48974c) {
                com.transsion.player.orplayer.g gVarH2 = a0.this.H();
                if (gVarH2 != null) {
                    gVarH2.seekTo(this.f48972a);
                }
                com.transsion.player.orplayer.g gVarH3 = a0.this.H();
                if (gVarH3 != null && !gVarH3.isPlaying() && (gVarH = a0.this.H()) != null) {
                    gVarH.play();
                }
                Fragment fragment = a0.this.f48955k;
                LocalVideoDetailFragment localVideoDetailFragment = fragment instanceof LocalVideoDetailFragment ? (LocalVideoDetailFragment) fragment : null;
                if (localVideoDetailFragment != null) {
                    localVideoDetailFragment.z3(this.f48972a, this.f48973b);
                }
                a0.this.c3(false, 0L);
                a0.this.v1(false);
            }
            a0.this.f48962r = false;
            this.f48974c = false;
            this.f48975d = false;
            this.f48976e = false;
            a0.this.M0();
        }

        @Override // com.transsion.baseui.widget.f.a
        public void onDoubleTap(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            View viewB1 = a0.this.b1();
            if (viewB1 == null || !viewB1.isSelected()) {
                a0.this.d2(e11, true);
            }
        }

        @Override // com.transsion.baseui.widget.f.a
        public void onLongPress(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            View viewB1 = a0.this.b1();
            if (viewB1 == null || !viewB1.isSelected()) {
                a0.this.L2();
            }
        }
    }

    public static final class c implements com.tn.lib.view.v {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.LongRef f48984b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Ref.FloatRef f48985c;

        c(Ref.LongRef longRef, Ref.FloatRef floatRef) {
            this.f48984b = longRef;
            this.f48985c = floatRef;
        }

        @Override // com.tn.lib.view.v
        public void a(SecondariesSeekBar seekBar) {
            com.transsion.player.orplayer.g gVarH;
            Intrinsics.h(seekBar, "seekBar");
            lg.a.C0828a c0828a = lg.a.f68839a;
            String strM1 = a0.this.m1();
            Intrinsics.g(strM1, "<get-TAG>(...)");
            lg.a.C0828a.f(c0828a, strM1, "onStopTrackingTouch targetProgress:" + this.f48984b.element + " ", false, 4, null);
            a0.this.f48962r = false;
            com.transsion.player.orplayer.g gVarH2 = a0.this.H();
            if (gVarH2 != null) {
                gVarH2.seekTo(this.f48984b.element);
            }
            com.transsion.player.orplayer.g gVarH3 = a0.this.H();
            if (gVarH3 != null && !gVarH3.isPlaying() && (gVarH = a0.this.H()) != null) {
                gVarH.play();
            }
            Fragment fragment = a0.this.f48955k;
            LocalVideoDetailFragment localVideoDetailFragment = fragment instanceof LocalVideoDetailFragment ? (LocalVideoDetailFragment) fragment : null;
            if (localVideoDetailFragment != null) {
                localVideoDetailFragment.z3(this.f48984b.element, this.f48985c.element);
            }
            a0.this.E = seekBar.getCurrentProgress();
            a0.this.c3(false, 0L);
            a0.this.v1(false);
        }

        @Override // com.tn.lib.view.v
        public void b(SecondariesSeekBar seekBar, long j11, boolean z10) {
            View viewG1;
            Intrinsics.h(seekBar, "seekBar");
            if (z10) {
                View viewG2 = a0.this.g1();
                if (viewG2 != null && jg.c.i(viewG2) && (viewG1 = a0.this.g1()) != null) {
                    jg.c.g(viewG1);
                }
                a0.this.f48962r = z10;
                a0.this.X0().removeCallbacks(a0.this.V);
                float f11 = j11 / 10000;
                if (a0.this.n1() > 0) {
                    this.f48984b.element = (long) (a0.this.n1() * f11);
                } else {
                    this.f48985c.element = f11;
                }
                a0.this.E = this.f48984b.element;
                a0.this.c3(true, this.f48984b.element);
            }
        }

        @Override // com.tn.lib.view.v
        public void c(SecondariesSeekBar seekBar) {
            Intrinsics.h(seekBar, "seekBar");
            lg.a.C0828a c0828a = lg.a.f68839a;
            String strM1 = a0.this.m1();
            Intrinsics.g(strM1, "<get-TAG>(...)");
            lg.a.C0828a.f(c0828a, strM1, "onStartTrackingTouch ", false, 4, null);
        }
    }

    public static final class d implements SystemTimeManager.a {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(a0 a0Var) {
            a0Var.d3();
        }

        @Override // com.transsion.postdetail.layer.SystemTimeManager.a
        public long a() {
            FragmentActivity activity = a0.this.f48955k.getActivity();
            if (activity == null) {
                return 30000L;
            }
            final a0 a0Var = a0.this;
            activity.runOnUiThread(new Runnable() { // from class: com.transsion.postdetail.layer.local.b0
                @Override // java.lang.Runnable
                public final void run() {
                    a0.d.c(a0Var);
                }
            });
            return 30000L;
        }
    }

    static final class e implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f48987a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f48987a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f48987a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f48987a.invoke(obj);
        }
    }

    public static final class f implements sx.a {
        f() {
        }

        @Override // sx.a
        public boolean a(px.a aVar) {
            return LocalFloatManager.f50142b.l(aVar);
        }

        @Override // sx.a
        public void b(px.a aVar) {
            LocalFloatManager.f50142b.j(aVar);
        }

        @Override // sx.a
        public void c(px.a aVar) {
            LocalFloatManager localFloatManager = LocalFloatManager.f50142b;
            localFloatManager.i();
            localFloatManager.m(aVar);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(final Fragment fragment) {
        super(fragment);
        Intrinsics.h(fragment, "fragment");
        this.f48954j = getClass().getSimpleName();
        this.f48955k = fragment;
        this.f48957m = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.layer.local.y
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a0.t1();
            }
        });
        this.f48958n = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.layer.local.z
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a0.R1();
            }
        });
        this.f48959o = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.layer.local.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a0.N0();
            }
        });
        this.f48968x = "";
        this.F = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.layer.local.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a0.l3(fragment);
            }
        });
        this.G = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.layer.local.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a0.L0();
            }
        });
        this.I = "";
        this.J = "";
        this.K = "";
        this.Q = 1;
        this.R = 8;
        this.S = 1;
        this.T = 1;
        this.U = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.layer.local.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a0.P0(fragment, this);
            }
        });
        this.V = new Runnable() { // from class: com.transsion.postdetail.layer.local.f
            @Override // java.lang.Runnable
            public final void run() {
                a0.o2(this.f49031a);
            }
        };
        this.W = new String[]{".", "..", "..."};
        this.Y = new Runnable() { // from class: com.transsion.postdetail.layer.local.g
            @Override // java.lang.Runnable
            public final void run() {
                a0.S1(this.f49033a);
            }
        };
        this.Z = new Runnable() { // from class: com.transsion.postdetail.layer.local.h
            @Override // java.lang.Runnable
            public final void run() {
                a0.F2(this.f49036a);
            }
        };
    }

    private final void A1() {
        View viewA0 = A0();
        if (viewA0 != null) {
            viewA0.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.layer.local.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a0.F1(this.f48952a, view);
                }
            });
        }
        ImageView imageViewF2 = f2();
        if (imageViewF2 != null) {
            imageViewF2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.layer.local.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a0.G1(this.f49077a, view);
                }
            });
        }
        View viewP2 = p2();
        if (viewP2 != null) {
            viewP2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.layer.local.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a0.H1(this.f49103a, view);
                }
            });
        }
        ImageView imageViewO0 = O0();
        if (imageViewO0 != null) {
            imageViewO0.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.layer.local.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a0.B1(this.f49105a, view);
                }
            });
        }
        View viewI2 = i2();
        if (viewI2 != null) {
            viewI2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.layer.local.u
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a0.C1(this.f49106a, view);
                }
            });
        }
        View viewP1 = P1();
        if (viewP1 != null) {
            viewP1.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.layer.local.v
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a0.D1(this.f49132a, view);
                }
            });
        }
        View viewJ1 = j1();
        if (viewJ1 != null) {
            viewJ1.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.layer.local.w
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a0.E1(this.f49133a, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B1(a0 a0Var, View view) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_PLAY").K("subject_id", a0Var.K);
        DownloadBean downloadBean = a0Var.H;
        if (downloadBean != null && downloadBean.getType() == 3) {
            navigatorK.I("TV_DATA", new FbTvData(a0Var.K, downloadBean.getSe(), downloadBean.getEp()));
        }
        Navigator.x(navigatorK, a0Var.f48955k.getContext(), null, 2, null);
    }

    public static /* synthetic */ void B2(a0 a0Var, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showBottomController");
        }
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        a0Var.A2(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C1(a0 a0Var, View view) {
        hj.i.f64505a.p("local_video_detail", a0Var.h1());
        a0Var.j2();
    }

    private final void C2(int i11) {
        com.transsion.player.orplayer.g gVarH;
        if (this.B == null) {
            ViewStub viewStubM3 = m3();
            this.B = viewStubM3 != null ? viewStubM3.inflate() : null;
        }
        View view = this.C;
        if (view != null) {
            jg.c.g(view);
        }
        if (a3() == LocalUiType.MIDDLE) {
            u2(false);
        }
        if (isVisible() && (gVarH = H()) != null) {
            gVarH.pause();
        }
        View view2 = this.B;
        if (view2 != null) {
            jg.c.k(view2);
        }
        View view3 = this.B;
        if (view3 != null) {
            view3.setTag(Integer.valueOf(i11));
        }
        View view4 = this.B;
        if (view4 != null) {
            ((TextView) view4.findViewById(R$id.tv_fail_left_btn)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.layer.local.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view5) {
                    a0.D2(this.f49063a, view5);
                }
            });
            ((TextView) view4.findViewById(R$id.tv_fail_right_btn)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.layer.local.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view5) {
                    a0.E2(this.f49073a, view5);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(a0 a0Var, View view) {
        a0Var.e(FloatActionType.ICON);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D2(a0 a0Var, View view) {
        a0Var.c2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E1(a0 a0Var, View view) {
        a0Var.Y1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E2(a0 a0Var, View view) {
        lg.a.f68839a.x("long_video_play", "video error，reload~~ from errorLayout click", true);
        Fragment fragment = a0Var.f48955k;
        LocalVideoDetailFragment localVideoDetailFragment = fragment instanceof LocalVideoDetailFragment ? (LocalVideoDetailFragment) fragment : null;
        if (localVideoDetailFragment != null) {
            localVideoDetailFragment.r3(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F1(a0 a0Var, View view) {
        a0Var.V1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F2(a0 a0Var) {
        a0Var.f48968x = "";
        a0Var.C2(0);
        a0Var.f48969y = true;
        a0Var.v1(true);
        Group groupZ2 = a0Var.Z2();
        if (groupZ2 != null) {
            groupZ2.setVisibility(0);
        }
        a0Var.w1(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G1(a0 a0Var, View view) {
        Fragment fragment = a0Var.f48955k;
        Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment");
        bo.c cVar = bo.c.f16641a;
        hj.b logViewConfig = ((LocalVideoDetailFragment) fragment).getLogViewConfig();
        String strF = logViewConfig != null ? logViewConfig.f() : null;
        String str = a0Var.K;
        DownloadBean downloadBean = a0Var.H;
        cVar.a(strF, str, downloadBean != null ? downloadBean.getOps() : null, false);
        e2(a0Var, null, false, 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G2(a0 a0Var, boolean z10) {
        if (z10) {
            vo.b bVar = a0Var.f48964t;
            if (bVar != null) {
                bVar.c(a0Var.H);
            }
            FragmentActivity activity = a0Var.f48955k.getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H1(a0 a0Var, View view) {
        a0Var.Y1();
    }

    private final void H2() {
        vo.b bVar;
        View view = this.B;
        if (view == null || view.getVisibility() != 0) {
            if (a3() == LocalUiType.MIDDLE) {
                v1(true);
            } else {
                A2(false);
            }
            u2(false);
            j1 j1Var = this.f48967w;
            if (j1Var != null) {
                j1Var.d();
            }
            if (isVisible() && (bVar = this.f48964t) != null) {
                bVar.d(this.H);
            }
            if (this.C == null) {
                ViewStub viewStubN3 = n3();
                this.C = viewStubN3 != null ? viewStubN3.inflate() : null;
            }
            View view2 = this.C;
            if (view2 != null) {
                jg.c.k(view2);
            }
            View view3 = this.C;
            if (view3 != null) {
                Z1();
                ((TextView) view3.findViewById(R$id.tv_replay)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.layer.local.r
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view4) {
                        a0.I2(this.f49100a, view4);
                    }
                });
            }
        }
    }

    private final void I1() {
        this.f48967w = new j1(X2(), Y2());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I2(a0 a0Var, View view) {
        a0Var.i3();
    }

    private final void J0() {
        ViewGroup viewGroupD0;
        boolean zU1 = u1();
        View viewI2 = i2();
        if (viewI2 != null) {
            viewI2.setVisibility(zU1 ? 0 : 8);
        }
        if (zU1 && (viewGroupD0 = D0()) != null && viewGroupD0.getVisibility() == 0) {
            hj.i.f64505a.D("local_video_detail", h1());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("vis = ");
        sb2.append(zU1);
    }

    private final void J1() {
        Ref.LongRef longRef = new Ref.LongRef();
        Ref.FloatRef floatRef = new Ref.FloatRef();
        SecondariesSeekBar secondariesSeekBarQ2 = q2();
        if (secondariesSeekBarQ2 != null) {
            secondariesSeekBarQ2.setMax(10000L);
        }
        SecondariesSeekBar secondariesSeekBarQ3 = q2();
        if (secondariesSeekBarQ3 != null) {
            secondariesSeekBarQ3.setOnSeekBarChangeListener(new c(longRef, floatRef));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K1(a0 a0Var, List list) {
        if (list == null || list.isEmpty()) {
            return Unit.f67061a;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = a0Var.f48954j;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "2--fragment, on get series from local, size = " + list.size() + ", uiType = " + a0Var.a3(), false, 4, null);
        a0Var.J0();
        return Unit.f67061a;
    }

    private final void K2() {
        M2();
        a1().post(this.Y);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsnet.downloader.manager.g L0() {
        return com.transsnet.downloader.manager.p.f59500a.a(Utils.a());
    }

    private final void L1() {
        this.f48963s = new SystemTimeManager(new d());
    }

    private final void M2() {
        a1().removeCallbacks(this.Y);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler N0() {
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        return new Handler(looperMyLooper);
    }

    private final boolean N1() {
        Fragment fragment = this.f48955k;
        Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment");
        return ((LocalVideoDetailFragment) fragment).getIsAdShowing();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.baseui.widget.f P0(Fragment fragment, a0 a0Var) {
        return new com.transsion.baseui.widget.f(fragment.requireContext(), a0Var.Q0());
    }

    private final void Q1() {
        a1().postDelayed(this.Y, 1000L);
    }

    private final Intent R0() {
        Intent intent = new Intent();
        intent.putExtra("path", "/video/detail");
        intent.putExtra("id", this.K);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler R1() {
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        return new Handler(looperMyLooper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S1(a0 a0Var) {
        int i11 = a0Var.X;
        boolean zA = false;
        if (i11 >= 2) {
            a0Var.X = 0;
        } else {
            a0Var.X = i11 + 1;
        }
        TextView textViewH0 = a0Var.H0();
        if (textViewH0 != null) {
            textViewH0.setText(Utils.a().getString(R$string.play_loading) + a0Var.W[a0Var.X]);
        }
        if (a0Var.H != null) {
            com.transsnet.downloader.manager.g gVarT0 = a0Var.T0();
            DownloadBean downloadBean = a0Var.H;
            Intrinsics.e(downloadBean);
            zA = gVarT0.A(downloadBean);
        }
        if (a0Var.f48968x.length() > 0 && !zA) {
            a0Var.f48968x = "";
        }
        TextView textViewG0 = a0Var.G0();
        if (textViewG0 != null) {
            String str = a0Var.f48968x;
            textViewG0.setText(str.length() != 0 ? str : "");
        }
        a0Var.Q1();
    }

    private final Handler U0() {
        return (Handler) this.f48959o.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U1(a0 a0Var) {
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.player.orplayer.g gVarH = a0Var.H();
            if (gVarH != null && gVarH.isPlaying()) {
                lg.a.C0828a.f(lg.a.f68839a, "VideoFloat-pip", "onAdClick resume auto pip", false, 4, null);
                a0Var.b3(true);
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final px.a V0() {
        DownloadBean downloadBean = this.H;
        px.a aVar = null;
        if (downloadBean == null) {
            return null;
        }
        if (I() != null && H() != null) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            c0828a.c("VideoFloat", "local--showFloat, name:" + downloadBean.getTotalTitleName(), true);
            ArrayList arrayList = new ArrayList();
            if (downloadBean.isSeries()) {
                List arrayList2 = (List) o1().i().f();
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                Iterator it = arrayList2.iterator();
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i12 = -1;
                        break;
                    }
                    if (Intrinsics.c(((DownloadBean) it.next()).getResourceId(), downloadBean.getResourceId())) {
                        break;
                    }
                    i12++;
                }
                lg.a.f68839a.c("VideoFloat", "local--showFloat, 电视剧:" + i12, true);
                if (i12 >= 0) {
                    arrayList.addAll(arrayList2);
                } else {
                    List list = arrayList2;
                    int size = list.size();
                    int i13 = 0;
                    while (i11 < size && ((DownloadBean) arrayList2.get(i11)).getEp() < downloadBean.getEp()) {
                        i13 = i11 + 1;
                        i11 = i13;
                    }
                    arrayList.addAll(list);
                    if (arrayList2.size() <= i13) {
                        arrayList.add(downloadBean);
                    } else {
                        arrayList.add(i13, downloadBean);
                    }
                }
            } else {
                c0828a.c("VideoFloat", "local--showFloat, 电影", true);
                arrayList.add(downloadBean);
            }
            LocalFloatManager.f50142b.p(arrayList);
            ORPlayerView oRPlayerViewI = I();
            Intrinsics.e(oRPlayerViewI);
            com.transsion.player.orplayer.g gVarH = H();
            Intrinsics.e(gVarH);
            ViewGroup viewGroupU2 = U2();
            Intrinsics.e(viewGroupU2);
            FloatPlayType floatPlayType = FloatPlayType.LOCAL;
            String subjectId = downloadBean.getSubjectId();
            if (subjectId == null) {
                subjectId = "";
            }
            aVar = new px.a(oRPlayerViewI, gVarH, viewGroupU2, floatPlayType, subjectId, downloadBean.getSe(), downloadBean.getEp(), "", "local_video_detail");
            aVar.G(downloadBean.getResourceId());
            aVar.J(Integer.valueOf(downloadBean.getSubjectType()));
            aVar.C(com.transsion.postdetail.util.u.b(aVar.b()));
            aVar.A(downloadBean.getOps());
            aVar.E(downloadBean.getPostId());
            aVar.B(downloadBean.getPageFrom());
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler X0() {
        return (Handler) this.f48957m.getValue();
    }

    private final void X1(long j11) {
        List list;
        long j12 = this.f48956l;
        if (j12 <= 0 || j12 - j11 >= 5000) {
            return;
        }
        List list2 = (List) o1().i().f();
        if (!this.L || (list = list2) == null || list.isEmpty() || this.N) {
            return;
        }
        this.N = true;
        int size = list.size();
        boolean z10 = false;
        for (int i11 = 0; i11 < size; i11++) {
            DownloadBean downloadBean = (DownloadBean) list2.get(i11);
            String resourceId = downloadBean.getResourceId();
            DownloadBean downloadBean2 = this.H;
            if (Intrinsics.c(resourceId, downloadBean2 != null ? downloadBean2.getResourceId() : null)) {
                z10 = true;
            } else if (z10) {
                l2(downloadBean);
                return;
            }
        }
    }

    private final Intent Z0() {
        IPushProvider iPushProvider = (IPushProvider) TheRouter.d(IPushProvider.class, new Object[0]);
        DownloadBean downloadBean = this.H;
        boolean zIsCompleted = downloadBean != null ? downloadBean.isCompleted() : false;
        StringBuilder sb2 = new StringBuilder("oneroom://com.community.oneroom?type=");
        sb2.append("/video/detail");
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_resource_id");
        sb2.append(UrlUtils.EQUAL_MARK);
        DownloadBean downloadBean2 = this.H;
        sb2.append(downloadBean2 != null ? downloadBean2.getResourceId() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_local_path");
        sb2.append(UrlUtils.EQUAL_MARK);
        DownloadBean downloadBean3 = this.H;
        sb2.append(downloadBean3 != null ? downloadBean3.getPath() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_url");
        sb2.append(UrlUtils.EQUAL_MARK);
        DownloadBean downloadBean4 = this.H;
        sb2.append(downloadBean4 != null ? downloadBean4.getUrl() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_page_from");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append("media_notification");
        sb2.append("&channel=media_notification");
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_completed");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(zIsCompleted);
        if (iPushProvider == null) {
            return null;
        }
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Intent intentA = iPushProvider.a(applicationA);
        if (intentA == null) {
            return null;
        }
        intentA.addFlags(603979776);
        intentA.setData(Uri.parse(sb2.toString()));
        return intentA;
    }

    private final Handler a1() {
        return (Handler) this.f48958n.getValue();
    }

    private final MediaItem c1() {
        DownloadBean downloadBean = this.H;
        String totalTitleName = downloadBean != null ? downloadBean.getTotalTitleName() : null;
        DownloadBean downloadBean2 = this.H;
        String subjectId = downloadBean2 != null ? downloadBean2.getSubjectId() : null;
        DownloadBean downloadBean3 = this.H;
        String cover = downloadBean3 != null ? downloadBean3.getCover() : null;
        DownloadBean downloadBean4 = this.H;
        String resourceId = downloadBean4 != null ? downloadBean4.getResourceId() : null;
        PendingIntent pendingIntentD1 = d1();
        Intent intentR0 = R0();
        DownloadBean downloadBean5 = this.H;
        boolean z10 = false;
        if (downloadBean5 != null && downloadBean5.getType() == 6) {
            z10 = true;
        }
        return new MediaItem(totalTitleName, "", cover, null, null, null, pendingIntentD1, intentR0, subjectId, resourceId, Boolean.valueOf(z10), null, null, null, 14392, null);
    }

    private final void c2() {
        Utils.a().startActivity(new Intent("android.settings.WIFI_SETTINGS").setFlags(ASTNode.DEOP));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c3(boolean z10, long j11) {
        this.A = z10;
        View view = this.B;
        if (view == null || view.getVisibility() != 0) {
            if (!z10) {
                VideoSubtitleControl videoSubtitleControl = this.f48965u;
                if (videoSubtitleControl != null) {
                    videoSubtitleControl.U();
                }
                TextView textViewI0 = I0();
                if (textViewI0 != null) {
                    textViewI0.setVisibility(8);
                }
                View viewF0 = F0();
                if (viewF0 != null) {
                    viewF0.setVisibility(this.f48970z ? 0 : 8);
                    return;
                }
                return;
            }
            TextView textViewI1 = I0();
            if (textViewI1 != null) {
                textViewI1.setVisibility(0);
            }
            TextView textViewI2 = I0();
            if (textViewI2 != null) {
                FragmentActivity activity = this.f48955k.getActivity();
                textViewI2.setText(Html.fromHtml(activity != null ? activity.getString(R$string.post_progress_tx_style, com.transsion.postdetail.util.n.d(j11), com.transsion.postdetail.util.n.d(this.f48956l)) : null));
            }
            VideoSubtitleControl videoSubtitleControl2 = this.f48965u;
            if (videoSubtitleControl2 != null) {
                videoSubtitleControl2.s0(j11);
            }
            View viewF1 = F0();
            if (viewF1 != null) {
                viewF1.setVisibility(8);
            }
        }
    }

    private final PendingIntent d1() {
        return PendingIntent.getActivity(Utils.a(), 0, Z0(), f1());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d3() {
        TextView textViewH2 = h2();
        if (textViewH2 != null) {
            textViewH2.setText(com.transsion.postdetail.util.u.d());
        }
    }

    public static /* synthetic */ void e2(a0 a0Var, MotionEvent motionEvent, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: pause");
        }
        if ((i11 & 1) != 0) {
            motionEvent = null;
        }
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        a0Var.d2(motionEvent, z10);
    }

    private final void e3(long j11) {
        SecondariesSeekBar secondariesSeekBarQ2;
        VideoSubtitleControl videoSubtitleControl = this.f48965u;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.s0(j11);
        }
        if (this.f48956l <= 0) {
            com.transsion.player.orplayer.g gVarH = H();
            if (gVarH == null) {
                return;
            } else {
                this.f48956l = gVarH.getDuration();
            }
        }
        if (!this.f48962r) {
            long j12 = this.f48956l;
            if (j12 > 0) {
                long j13 = (int) ((j11 / j12) * 10000);
                if (j13 >= this.E && (secondariesSeekBarQ2 = q2()) != null) {
                    secondariesSeekBarQ2.setProgress(j13);
                }
            }
        }
        f3(j11, this.f48956l);
    }

    private final int f1() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    private final void f3(long j11, long j12) {
        TextView textViewH3 = h3();
        if (textViewH3 != null) {
            textViewH3.setText(com.transsion.postdetail.util.n.d(this.f48956l));
            TextView textViewK3 = k3();
            if (textViewK3 != null) {
                textViewK3.setText(com.transsion.postdetail.util.n.d(j11));
                return;
            }
            return;
        }
        String str = com.transsion.postdetail.util.n.d(j11) + "/" + com.transsion.postdetail.util.n.d(j12);
        TextView textViewK4 = k3();
        if (textViewK4 != null) {
            textViewK4.setText(str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0093  */
    /* JADX WARN: Code duplicated, block: B:48:0x009d  */
    private final void g3() {
        DownloadBean downloadBean;
        String name;
        String subjectName;
        DownloadBean downloadBean2;
        String subjectName2;
        DownloadBean downloadBean3 = this.H;
        boolean z10 = false;
        if (downloadBean3 == null || !downloadBean3.isSeries() || (downloadBean2 = this.H) == null || (subjectName2 = downloadBean2.getSubjectName()) == null || subjectName2.length() <= 0) {
            DownloadBean downloadBean4 = this.H;
            if ((downloadBean4 != null ? downloadBean4.getResolution() : 0) <= 0) {
                downloadBean = this.H;
                if (downloadBean != null || (name = downloadBean.getName()) == null) {
                    name = "";
                }
            } else {
                DownloadBean downloadBean5 = this.H;
                if (downloadBean5 != null && (subjectName = downloadBean5.getSubjectName()) != null) {
                    if (subjectName.length() > 0) {
                        z10 = true;
                    }
                }
                if (z10) {
                    DownloadBean downloadBean6 = this.H;
                    Integer numValueOf = downloadBean6 != null ? Integer.valueOf(downloadBean6.getResolution()) : null;
                    DownloadBean downloadBean7 = this.H;
                    name = numValueOf + "P " + (downloadBean7 != null ? downloadBean7.getSubjectName() : null);
                } else {
                    downloadBean = this.H;
                    if (downloadBean != null) {
                        name = "";
                    } else {
                        name = "";
                    }
                }
            }
        } else {
            DownloadBean downloadBean8 = this.H;
            String subjectName3 = downloadBean8 != null ? downloadBean8.getSubjectName() : null;
            DownloadBean downloadBean9 = this.H;
            name = subjectName3 + " " + (downloadBean9 != null ? DownloadBean.getEpTitleName$default(downloadBean9, false, 1, null) : null);
        }
        updateTitle(name);
    }

    private final Map h1() {
        Pair pair = new Pair("module_name", "play_next");
        Pair pair2 = new Pair("subject_id", this.K);
        DownloadBean downloadBean = this.H;
        return MapsKt.l(pair, pair2, new Pair("ops", downloadBean != null ? downloadBean.getOps() : null), new Pair("resource_id", this.J));
    }

    private final boolean j2() {
        if (this.O) {
            return true;
        }
        List list = (List) o1().i().f();
        if (list != null && this.L) {
            List list2 = list;
            if (!list2.isEmpty()) {
                int size = list2.size();
                boolean z10 = false;
                for (int i11 = 0; i11 < size; i11++) {
                    DownloadBean downloadBean = (DownloadBean) list.get(i11);
                    String resourceId = downloadBean.getResourceId();
                    DownloadBean downloadBean2 = this.H;
                    if (Intrinsics.c(resourceId, downloadBean2 != null ? downloadBean2.getResourceId() : null)) {
                        z10 = true;
                    } else if (z10 && downloadBean.getCanPlay()) {
                        if (downloadBean.isCompleted() && !downloadBean.isFileExist()) {
                            return false;
                        }
                        r2(downloadBean, false);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private final void l2(DownloadBean downloadBean) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f48954j;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "onPlayProgress next tips name = " + downloadBean.getName() + ", epse = " + downloadBean.getEpse() + ", status = " + downloadBean.getStatus() + " ", false, 4, null);
        if (downloadBean.getCanPlay()) {
            DownloadBean downloadBean2 = this.H;
            if (downloadBean2 != null && downloadBean2.getStatus() == 5 && downloadBean.getStatus() != 5) {
                T0().k(downloadBean);
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String string = Utils.a().getString(R$string.series_next_play_tips);
            Intrinsics.g(string, "getString(...)");
            String subjectName = downloadBean.getSubjectName();
            if (subjectName == null) {
                subjectName = "";
            }
            String str = String.format(string, Arrays.copyOf(new Object[]{subjectName, downloadBean.getEp() > 0 ? com.transsion.baseui.util.n.b(downloadBean.getEp(), downloadBean.getSe(), true) : com.transsion.baseui.util.n.c(downloadBean.getEpse(), true)}, 2));
            Intrinsics.g(str, "format(...)");
            i(str, 3000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LocalVideoDetailViewModel l3(Fragment fragment) {
        FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        return (LocalVideoDetailViewModel) new androidx.p009lifecycle.v0(fragmentActivityRequireActivity, new androidx.lifecycle.v0.d()).a(LocalVideoDetailViewModel.class);
    }

    private final void m2(ORPlayerView oRPlayerView) {
        ViewParent parent = oRPlayerView.getParent();
        if (parent instanceof FrameLayout) {
            ((FrameLayout) parent).removeView(oRPlayerView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o2(a0 a0Var) {
        a0Var.x1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler t1() {
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        return new Handler(looperMyLooper);
    }

    private final boolean u1() {
        List list = (List) o1().i().f();
        if (list != null && this.L) {
            List list2 = list;
            if (!list2.isEmpty()) {
                int size = list2.size();
                boolean z10 = false;
                for (int i11 = 0; i11 < size; i11++) {
                    DownloadBean downloadBean = (DownloadBean) list.get(i11);
                    String resourceId = downloadBean.getResourceId();
                    DownloadBean downloadBean2 = this.H;
                    if (Intrinsics.c(resourceId, downloadBean2 != null ? downloadBean2.getResourceId() : null)) {
                        z10 = true;
                    } else if (z10 && downloadBean.getCanPlay()) {
                        return !downloadBean.isCompleted() || downloadBean.isFileExist();
                    }
                }
            }
        }
        return false;
    }

    private final void w1(boolean z10) {
        if (!z10) {
            FrameLayout frameLayoutJ3 = j3();
            if (frameLayoutJ3 != null) {
                jg.c.k(frameLayoutJ3);
                return;
            }
            return;
        }
        SimpleSubtitleView simpleSubtitleViewS2 = S2();
        if (simpleSubtitleViewS2 != null) {
            jg.c.h(simpleSubtitleViewS2);
        }
        FrameLayout frameLayoutJ4 = j3();
        if (frameLayoutJ4 != null) {
            jg.c.g(frameLayoutJ4);
        }
        J2(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w2(a0 a0Var, boolean z10) {
        ProgressBar progressBarP2 = a0Var.P2();
        if (progressBarP2 != null) {
            progressBarP2.setVisibility(z10 ? 0 : 8);
        }
        ImageView imageViewO2 = a0Var.O2();
        if (imageViewO2 != null) {
            imageViewO2.setVisibility(z10 ? 8 : 0);
        }
        TextView textViewQ2 = a0Var.Q2();
        if (textViewQ2 != null) {
            textViewQ2.setText(Utils.a().getString(z10 ? R$string.play_loading : R$string.turn_on_short));
        }
        return Unit.f67061a;
    }

    private final void x1() {
        Group groupZ2;
        ViewGroup viewGroupD0;
        if (!C0() && (viewGroupD0 = D0()) != null) {
            viewGroupD0.setVisibility(8);
        }
        if (!this.f48969y && (groupZ2 = Z2()) != null) {
            groupZ2.setVisibility(8);
        }
        View viewA0 = A0();
        if (viewA0 != null) {
            viewA0.setVisibility(8);
        }
        ViewGroup viewGroupE0 = E0();
        if (viewGroupE0 != null) {
            viewGroupE0.setVisibility(8);
        }
        ViewGroup viewGroupG2 = g2();
        if (viewGroupG2 != null) {
            viewGroupG2.setVisibility(8);
        }
        View viewR1 = r1();
        if (viewR1 != null) {
            viewR1.setVisibility(8);
        }
        View viewQ1 = q1();
        if (viewQ1 != null) {
            viewQ1.setVisibility(8);
        }
        View viewB1 = b1();
        if (viewB1 != null) {
            viewB1.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x2(a0 a0Var, View switchView, boolean z10) {
        Intrinsics.h(switchView, "switchView");
        a0Var.b2(switchView, z10);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y1(a0 a0Var, Subject subject) {
        a0Var.B0(subject);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y2(a0 a0Var, View settingView) {
        Intrinsics.h(settingView, "settingView");
        a0Var.a2(settingView);
        return Unit.f67061a;
    }

    private final void z1() {
        eo.n.a aVar = eo.n.f61970a;
        Context contextRequireContext = this.f48955k.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        eo.n nVarA = aVar.a(contextRequireContext, n2());
        this.f48966v = nVarA;
        if (nVarA == null) {
            Intrinsics.z("volumeControl");
            nVarA = null;
        }
        nVarA.g();
        boolean zF = jg.c.f();
        int iC = com.blankj.utilcode.util.y.c();
        int iE = com.blankj.utilcode.util.y.e();
        int i11 = a.f48971a[a3().ordinal()];
        if (i11 != 1) {
            if (i11 == 3) {
            }
            W0().s(new b(zF, iC, iE));
        }
        iC = (iE * 9) / 16;
        iE = iC;
        iC = iE;
        W0().s(new b(zF, iC, iE));
    }

    @Override // vo.d
    public void A(VideoSubtitleControl control) {
        Intrinsics.h(control, "control");
        this.f48965u = control;
        control.b0(com.transsion.postdetail.util.u.c(a3()), R2(), V2(), T2(), N2(), true);
        control.k0(new Function1() { // from class: com.transsion.postdetail.layer.local.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return a0.w2(this.f49086a, ((Boolean) obj).booleanValue());
            }
        });
        control.F(com.transsion.postdetail.util.u.c(a3()), new Function2() { // from class: com.transsion.postdetail.layer.local.o
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return a0.x2(this.f49089a, (View) obj, ((Boolean) obj2).booleanValue());
            }
        }, new Function1() { // from class: com.transsion.postdetail.layer.local.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return a0.y2(this.f49092a, (View) obj);
            }
        });
    }

    public abstract View A0();

    public void A2(boolean z10) {
        View viewFindViewById;
        if (this.f48969y || this.P || !com.blankj.utilcode.util.c.l()) {
            return;
        }
        View viewB1 = b1();
        if (viewB1 != null) {
            if (viewB1.isSelected()) {
                viewB1.setVisibility(viewB1.getVisibility() == 0 ? 8 : 0);
                return;
            }
            viewB1.setVisibility(0);
        }
        X0().removeCallbacks(this.V);
        if (z10) {
            v1(false);
        }
        ViewGroup viewGroupD0 = D0();
        if (viewGroupD0 != null) {
            viewGroupD0.setVisibility(0);
        }
        Group groupZ2 = Z2();
        if (groupZ2 != null) {
            groupZ2.setVisibility(0);
        }
        ViewGroup viewGroupG2 = g2();
        if (viewGroupG2 != null) {
            viewGroupG2.setVisibility(0);
        }
        View viewR1 = r1();
        if (viewR1 != null) {
            viewR1.setVisibility(0);
        }
        View viewA0 = A0();
        if (viewA0 != null) {
            viewA0.setVisibility(0);
        }
        View viewQ1 = q1();
        if (viewQ1 != null) {
            viewQ1.setVisibility(0);
        }
        ViewGroup viewGroupE0 = E0();
        if (viewGroupE0 != null) {
            viewGroupE0.setVisibility(0);
        }
        ConstraintLayout constraintLayoutN2 = n2();
        if (constraintLayoutN2 == null || (viewFindViewById = constraintLayoutN2.findViewById(R.id.message)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    @Override // vo.d
    public void B(int i11) {
        vo.d.a.n(this, i11);
    }

    protected void B0(Subject subject) {
    }

    @Override // vo.d
    public void C(vo.c event) {
        Intrinsics.h(event, "event");
        this.M = event;
    }

    public abstract boolean C0();

    @Override // vo.d
    public void D(vo.b event) {
        Intrinsics.h(event, "event");
        this.f48964t = event;
    }

    public abstract ViewGroup D0();

    public void E(DownloadBean downloadBean) {
        vo.d.a.c(this, downloadBean);
    }

    public abstract ViewGroup E0();

    public abstract View F0();

    public abstract TextView G0();

    public abstract TextView H0();

    public abstract TextView I0();

    protected void J2(boolean z10) {
        View viewF0;
        if (this.f48970z == z10) {
            return;
        }
        this.f48970z = z10;
        if (z10) {
            if (!this.A && (viewF0 = F0()) != null) {
                viewF0.setVisibility(0);
            }
            K2();
            return;
        }
        M2();
        View viewF1 = F0();
        if (viewF1 != null) {
            viewF1.setVisibility(8);
        }
    }

    protected final void K0() {
        if (j2()) {
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f48954j;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "onCompletion, showReplay", false, 4, null);
        H2();
    }

    public final void L2() {
        com.transsion.player.orplayer.g gVarH = H();
        if (gVarH == null || gVarH.isPlaying()) {
            this.f48953a0 = SystemClock.elapsedRealtime();
            this.D = com.transsion.baselib.helper.d.f43265a.d();
            com.transsion.player.orplayer.g gVarH2 = H();
            if (gVarH2 != null) {
                gVarH2.setSpeed(this.D * 2.0f);
            }
            x1();
            v1(true);
            View viewK2 = k2();
            if (viewK2 != null) {
                jg.c.k(viewK2);
            }
            String str = this.K;
            DownloadBean downloadBean = this.H;
            ak.p.a("local_video_detail", str, downloadBean != null ? downloadBean.getOps() : null, Float.valueOf(this.D));
        }
    }

    @Override // com.transsion.postdetail.layer.BaseLayer
    public void M(com.transsion.player.orplayer.g orPlayer, ORPlayerView orPlayerView) {
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(orPlayerView, "orPlayerView");
        super.M(orPlayer, orPlayerView);
        eo.n nVar = this.f48966v;
        if (nVar == null) {
            Intrinsics.z("volumeControl");
            nVar = null;
        }
        nVar.e(orPlayer);
    }

    public final void M0() {
        if (this.D > 0.0f) {
            com.transsion.player.orplayer.g gVarH = H();
            if (gVarH != null) {
                gVarH.setSpeed(this.D);
            }
            View viewK2 = k2();
            if (viewK2 != null) {
                jg.c.g(viewK2);
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f48953a0;
            String str = this.K;
            DownloadBean downloadBean = this.H;
            ak.p.b("local_video_detail", jElapsedRealtime, str, downloadBean != null ? downloadBean.getOps() : null, Float.valueOf(this.D));
            this.D = 0.0f;
        }
    }

    public boolean M1() {
        return false;
    }

    public abstract ViewGroup N2();

    public abstract ImageView O0();

    protected final boolean O1() {
        Function0 function0P;
        DownloadBean downloadBean = this.H;
        return (downloadBean == null || !downloadBean.isMusic()) && (function0P = ko.l0.f66968a.p()) != null && ((Boolean) function0P.invoke()).booleanValue();
    }

    public abstract ImageView O2();

    public abstract View P1();

    public abstract ProgressBar P2();

    public abstract View Q0();

    public abstract TextView Q2();

    public abstract TextView R2();

    protected final DownloadBean S0() {
        return this.H;
    }

    public abstract SimpleSubtitleView S2();

    protected final com.transsnet.downloader.manager.g T0() {
        return (com.transsnet.downloader.manager.g) this.G.getValue();
    }

    protected final void T1(boolean z10) {
        ConstraintLayout constraintLayoutN2;
        ConstraintLayout constraintLayoutN3 = n2();
        if (constraintLayoutN3 != null) {
            constraintLayoutN3.setVisibility(z10 ? 0 : 8);
        }
        if (!z10 || (constraintLayoutN2 = n2()) == null) {
            return;
        }
        constraintLayoutN2.setFocusableInTouchMode(true);
        constraintLayoutN2.requestFocus();
    }

    public abstract SimpleSubtitleView T2();

    public abstract ViewGroup U2();

    public abstract void V1();

    public abstract SimpleSubtitleView V2();

    protected final com.transsion.baseui.widget.f W0() {
        return (com.transsion.baseui.widget.f) this.U.getValue();
    }

    public void W1(boolean z10) {
    }

    public abstract TextView W2();

    public abstract TextView X2();

    protected final int Y0() {
        return this.f48961q;
    }

    public void Y1() {
        FragmentActivity activity;
        int i11;
        com.transsion.player.orplayer.g gVarH;
        View view;
        com.transsion.player.orplayer.g gVarH2 = H();
        if (gVarH2 != null && !gVarH2.isPlaying() && (gVarH = H()) != null && !gVarH.isComplete() && !N1()) {
            com.transsion.player.orplayer.g gVarH3 = H();
            if (gVarH3 != null) {
                gVarH3.play();
            }
            View view2 = this.C;
            if (view2 != null && jg.c.i(view2) && (view = this.C) != null) {
                jg.c.g(view);
            }
        }
        com.transsion.player.orplayer.g gVarH4 = H();
        if (gVarH4 != null) {
            gVarH4.setScaleMode(com.transsion.baselib.helper.d.f43265a.c());
        }
        int i12 = this.f48960p;
        LocalUiType localUiType = (i12 <= 0 || (i11 = this.f48961q) <= 0 || i11 <= i12) ? LocalUiType.LAND : LocalUiType.PORTRAIT;
        if (localUiType == LocalUiType.LAND && (activity = this.f48955k.getActivity()) != null) {
            activity.setRequestedOrientation(6);
        }
        ox.c.f72196a.a();
        F(LayerFlag.LOCAL_UI_CHANGED, localUiType);
    }

    public abstract TextView Y2();

    public void Z1() {
    }

    public abstract Group Z2();

    public void a(LocalUiType uiType) {
        vo.b bVar;
        Intrinsics.h(uiType, "uiType");
        if (!isVisible() || (bVar = this.f48964t) == null) {
            return;
        }
        bVar.a(uiType);
    }

    public void a2(View view) {
        Intrinsics.h(view, "view");
    }

    public abstract LocalUiType a3();

    @Override // vo.d
    public void b(boolean z10, boolean z11) {
        if (z10) {
            A2(z11);
        } else {
            v1(z11);
        }
    }

    public View b1() {
        return vo.d.a.a(this);
    }

    public void b2(View view, boolean z10) {
        Intrinsics.h(view, "view");
        A2(true);
        String string = Utils.a().getString(z10 ? com.transsion.subtitle.R$string.subtitle_turn_on_toast : com.transsion.subtitle.R$string.subtitle_turn_off_toast);
        Intrinsics.g(string, "getString(...)");
        vo.d.a.l(this, string, 0L, 2, null);
    }

    public void b3(boolean z10) {
        try {
            Result.Companion companion = Result.INSTANCE;
            FragmentActivity activity = this.f48955k.getActivity();
            if (activity == null || activity.isDestroyed() || activity.isFinishing() || !com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_pip_enable", true)) {
                return;
            }
            ox.e eVarB = ox.e.f72197a.b();
            ORPlayerView oRPlayerViewI = I();
            ViewParent parent = oRPlayerViewI != null ? oRPlayerViewI.getParent() : null;
            Result.m454constructorimpl(eVarB.a(activity, false, z10, parent instanceof ViewGroup ? (ViewGroup) parent : null));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public void c() {
        DownloadBean downloadBean = this.H;
        if (downloadBean != null) {
            downloadBean.setPlaying(false);
        }
        SystemTimeManager systemTimeManager = this.f48963s;
        if (systemTimeManager != null) {
            systemTimeManager.c();
        }
        X0().removeCallbacksAndMessages(null);
        a1().removeCallbacksAndMessages(null);
        U0().removeCallbacksAndMessages(null);
        com.transsion.ad.strategy.b.f42227a.m(this);
        com.transsion.baselib.report.l.f43359a.u(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
    }

    @Override // vo.d
    public void d() {
        vo.d.a.i(this);
    }

    protected final void d2(MotionEvent motionEvent, boolean z10) {
        com.transsion.baseui.util.c cVar = com.transsion.baseui.util.c.f43504a;
        ImageView imageViewF2 = f2();
        if (cVar.a(imageViewF2 != null ? imageViewF2.getId() : 9527, 500L)) {
            return;
        }
        View view = this.B;
        if (view != null && view.getVisibility() == 0) {
            View view2 = this.B;
            if (!(view2 != null ? Intrinsics.c(view2.getTag(), 1) : false)) {
                if (nh.m.f70474a.e()) {
                    return;
                }
                com.tn.lib.widget.toast.core.h.f41479a.k(com.transsion.baseui.R$string.base_network_fail);
                return;
            } else {
                lg.a.f68839a.x("long_video_play", "video error，reload~~ from errorLayout", true);
                Fragment fragment = this.f48955k;
                LocalVideoDetailFragment localVideoDetailFragment = fragment instanceof LocalVideoDetailFragment ? (LocalVideoDetailFragment) fragment : null;
                if (localVideoDetailFragment != null) {
                    LocalVideoDetailFragment.s3(localVideoDetailFragment, false, 1, null);
                    return;
                }
                return;
            }
        }
        com.transsion.player.orplayer.g gVarH = H();
        if (gVarH != null && gVarH.isComplete()) {
            if (M1()) {
                return;
            }
            i3();
            return;
        }
        com.transsion.player.orplayer.g gVarH2 = H();
        if (gVarH2 != null && gVarH2.isPlaying()) {
            s1(motionEvent, z10);
            return;
        }
        P(false);
        u2(true);
        ox.c.f72196a.a();
        com.transsion.player.orplayer.g gVarH3 = H();
        if (gVarH3 != null) {
            gVarH3.play();
        }
    }

    @Override // vo.d
    public boolean e(FloatActionType actionType) {
        FragmentActivity activity;
        Intrinsics.h(actionType, "actionType");
        DownloadBean downloadBean = this.H;
        if ((downloadBean == null || !downloadBean.isMusic()) && (activity = this.f48955k.getActivity()) != null && !activity.isDestroyed() && !activity.isFinishing()) {
            FloatActionType floatActionType = FloatActionType.ICON;
            if (actionType != floatActionType && !com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_pip_enable", true)) {
                lg.a.f68839a.c("VideoFloat", "local 设置页pip开关被关闭了", true);
                return false;
            }
            px.a aVarV0 = V0();
            if (aVarV0 != null) {
                if (actionType != floatActionType && !aVarV0.f().isPlaying()) {
                    lg.a.f68839a.c("VideoFloat-pip", "local 视频暂停，无需触发画中画", true);
                    return false;
                }
                ox.e.a aVar = ox.e.f72197a;
                if (aVar.b().c()) {
                    v1(true);
                    lg.a.C0828a.f(lg.a.f68839a, "VideoFloat-pip", "local 当前可用画中画，使用画中画播放", false, 4, null);
                    aVar.b().k(activity, aVarV0, actionType, a3() == LocalUiType.LAND);
                    return true;
                }
                ox.b.f72191a.c().g(activity, aVarV0, actionType == floatActionType, a3() == LocalUiType.LAND, new Function1() { // from class: com.transsion.postdetail.layer.local.i
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return a0.G2(this.f49038a, ((Boolean) obj).booleanValue());
                    }
                }, new f());
            }
        }
        return false;
    }

    protected final String e1() {
        return this.I;
    }

    public void f(boolean z10, String str) {
        vo.d.a.h(this, z10, str);
    }

    public abstract ImageView f2();

    @Override // vo.d
    public void g() {
        J2(false);
        C2(1);
        this.f48968x = "";
        this.f48969y = true;
        v1(true);
        Group groupZ2 = Z2();
        if (groupZ2 != null) {
            groupZ2.setVisibility(0);
        }
        w1(true);
    }

    protected final View g1() {
        return this.C;
    }

    public abstract ViewGroup g2();

    public void h(String subjectId, String resourceId) {
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(resourceId, "resourceId");
        this.K = subjectId;
        this.L = true;
        FragmentActivity activity = this.f48955k.getActivity();
        if (activity != null) {
            o1().i().j(activity, new e(new Function1() { // from class: com.transsion.postdetail.layer.local.m
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return a0.K1(this.f49082a, (List) obj);
                }
            }));
        }
    }

    public abstract TextView h2();

    public abstract TextView h3();

    @Override // vo.d
    public void i(String content, long j11) {
        Intrinsics.h(content, "content");
        j1 j1Var = this.f48967w;
        if (j1Var != null) {
            j1Var.h(content, j11);
        }
    }

    protected final String i1() {
        return this.J;
    }

    public abstract View i2();

    public void i3() {
        vo.b bVar = this.f48964t;
        if (bVar != null) {
            bVar.b(this.H);
        }
        View view = this.C;
        if (view != null) {
            jg.c.g(view);
        }
        this.E = 0L;
        com.transsion.player.orplayer.g gVarH = H();
        if (gVarH != null) {
            gVarH.seekTo(0L);
        }
        com.transsion.player.orplayer.g gVarH2 = H();
        if (gVarH2 != null) {
            gVarH2.play();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        com.transsion.player.orplayer.g gVarH;
        com.transsion.player.orplayer.f.a.b(this);
        View view = this.C;
        if (view != null) {
            jg.c.g(view);
        }
        if (this.f48956l > 0 || (gVarH = H()) == null) {
            return;
        }
        long duration = gVarH.getDuration();
        this.f48956l = duration;
        if (duration > 0) {
            f3(0L, duration);
        }
    }

    public boolean isVisible() {
        ConstraintLayout constraintLayoutN2 = n2();
        return constraintLayoutN2 != null && constraintLayoutN2.getVisibility() == 0;
    }

    public void j(boolean z10) {
        vo.d.a.k(this, z10);
    }

    public abstract View j1();

    public abstract FrameLayout j3();

    public void k(DownloadBean downloadBean, String pageFrom, boolean z10) {
        Long duration;
        Long duration2;
        Intrinsics.h(pageFrom, "pageFrom");
        this.H = downloadBean;
        o1().e().q(downloadBean);
        this.I = pageFrom;
        if (((downloadBean == null || (duration2 = downloadBean.getDuration()) == null) ? 0L : duration2.longValue()) > 30000) {
            f3(0L, (downloadBean == null || (duration = downloadBean.getDuration()) == null) ? 0L : duration.longValue());
        }
        View viewP1 = P1();
        if (viewP1 != null) {
            viewP1.setVisibility(O1() ? 0 : 8);
        }
        if (downloadBean != null) {
            downloadBean.setPlaying(true);
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f48954j;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "updateInfo,name = " + (downloadBean != null ? downloadBean.getName() : null) + ", epse = " + (downloadBean != null ? Integer.valueOf(downloadBean.getEpse()) : null), false, 4, null);
        g3();
    }

    protected final String k1() {
        return this.K;
    }

    public abstract View k2();

    public abstract TextView k3();

    @Override // vo.d
    public void l(Map progress) {
        Intrinsics.h(progress, "progress");
        SecondariesSeekBar secondariesSeekBarQ2 = q2();
        if (secondariesSeekBarQ2 != null) {
            secondariesSeekBarQ2.setSecondariesProgress(progress);
        }
    }

    protected final SystemTimeManager l1() {
        return this.f48963s;
    }

    public void m(LocalUiType localUiType) {
        vo.d.a.f(this, localUiType);
    }

    protected final String m1() {
        return this.f48954j;
    }

    public abstract ViewStub m3();

    @Override // vo.d
    public void n() {
        com.transsion.player.orplayer.g gVarH;
        if (ox.c.f72196a.c(H()) || (gVarH = H()) == null) {
            return;
        }
        gVarH.pause();
    }

    protected final long n1() {
        return this.f48956l;
    }

    public abstract ConstraintLayout n2();

    public abstract ViewStub n3();

    @Override // vo.d
    public void o(float f11) {
        vo.d.a.o(this, f11);
        VideoSubtitleControl videoSubtitleControl = this.f48965u;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.t0(f11);
        }
    }

    protected final LocalVideoDetailViewModel o1() {
        return (LocalVideoDetailViewModel) this.F.getValue();
    }

    @Override // com.transsion.ad.strategy.b.a
    public void onAdClick(AdPlans adPlans) {
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat-pip", "onAdClick stop auto pip", false, 4, null);
        b3(false);
        ConstraintLayout constraintLayoutN2 = n2();
        if (constraintLayoutN2 != null) {
            constraintLayoutN2.postDelayed(new Runnable() { // from class: com.transsion.postdetail.layer.local.q
                @Override // java.lang.Runnable
                public final void run() {
                    a0.U1(this.f49095a);
                }
            }, 3000L);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onAliyunDecodeErrorChangeSoftwareDecoder(ao.e eVar) {
        com.transsion.player.orplayer.f.a.c(this, eVar);
    }

    @Override // com.transsion.baselib.report.l.a
    public void onBackgroundStatusChange(boolean z10) {
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long j11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.d(this, j11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(ao.e eVar) {
        com.transsion.player.orplayer.f.a.e(this, eVar);
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f48954j;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "onCompletion, uiType = " + a3(), false, 4, null);
        if (M1()) {
            u2(false);
        } else {
            K0();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.f.a.g(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.f.a.h(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingBegin(ao.e eVar) {
        this.f48969y = false;
        J2(true);
        View view = this.B;
        if (view != null) {
            jg.c.g(view);
        }
        w1(false);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(ao.e eVar) {
        J2(false);
        U0().removeCallbacksAndMessages(null);
        this.f48969y = false;
        View view = this.B;
        if (view != null) {
            jg.c.g(view);
        }
        w1(false);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.m(this, i11, f11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
        com.transsion.player.orplayer.f.a.o(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.f.a.p(this, str);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError errorInfo, ao.e eVar) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.E = 0L;
        Integer errorCode = errorInfo.getErrorCode();
        if (errorCode != null && errorCode.intValue() == 537067524) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String TAG = this.f48954j;
            Intrinsics.g(TAG, "TAG");
            lg.a.C0828a.f(c0828a, TAG, "--onPlayError，net time out ,", false, 4, null);
            if (nh.m.f70474a.e()) {
                g();
            } else {
                U0().postDelayed(this.Z, 500L);
            }
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerRelease(ao.e eVar) {
        com.transsion.player.orplayer.f.a.t(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerReset() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f48954j;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "onPlayerReset", false, 4, null);
        this.f48969y = false;
        this.f48956l = 0L;
        this.E = 0L;
    }

    @Override // com.transsion.player.orplayer.f
    public void onPrepare(ao.e eVar) {
        com.transsion.player.orplayer.f.a.w(this, eVar);
        this.E = 0L;
    }

    public void onProgress(long j11, ao.e eVar) {
        e3(j11);
        if (a3() == LocalUiType.MIDDLE) {
            ImageView imageViewF2 = f2();
            if (imageViewF2 != null ? Intrinsics.c(imageViewF2.getTag(), Boolean.FALSE) : false) {
                u2(true);
            }
        }
        if (this.f48970z) {
            J2(false);
        }
        X1(j11);
        VideoSubtitleControl videoSubtitleControl = this.f48965u;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.S(j11);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.f.a.A(this);
        if (a3() == LocalUiType.MIDDLE) {
            ImageView imageViewF2 = f2();
            if (imageViewF2 != null ? Intrinsics.c(imageViewF2.getTag(), Boolean.FALSE) : false) {
                u2(true);
            }
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        com.transsion.player.orplayer.f.a.B(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksAudioBitrateChange(int i11) {
        com.transsion.player.orplayer.f.a.C(this, i11);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksChange(mo.c cVar) {
        com.transsion.player.orplayer.f.a.D(this, cVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksVideoBitrateChange(int i11) {
        com.transsion.player.orplayer.f.a.E(this, i11);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoPause(ao.e eVar) {
        b3(false);
        u2(false);
        if (!N1()) {
            B2(this, false, 1, null);
        }
        VideoSubtitleControl videoSubtitleControl = this.f48965u;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.R();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        com.transsion.player.orplayer.f.a.H(this, i11, i12);
        if ((i11 <= 0 || this.f48960p == i11) && (i12 <= 0 || this.f48961q == i12)) {
            return;
        }
        this.f48961q = i12;
        this.f48960p = i11;
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e eVar) {
        b3(true);
        u2(true);
        v1(false);
        VideoSubtitleControl videoSubtitleControl = this.f48965u;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.T();
        }
        J2(false);
        this.O = false;
        View view = this.C;
        if (view != null) {
            jg.c.g(view);
        }
        J0();
    }

    @Override // vo.d
    public void onViewPause() {
        vo.d.a.g(this);
    }

    @Override // vo.d
    public void onViewResume() {
        com.transsion.player.orplayer.g gVarH;
        if (J() || !nh.m.f70474a.e() || ox.c.f72196a.d() || N1() || (gVarH = H()) == null) {
            return;
        }
        gVarH.play();
    }

    @Override // vo.d
    public void p(String resourceId, String subjectId, String postId, boolean z10, boolean z11) {
        Intrinsics.h(resourceId, "resourceId");
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(postId, "postId");
        this.J = resourceId;
        this.K = subjectId;
        O(postId);
        FragmentActivity activity = this.f48955k.getActivity();
        if (activity != null) {
            o1().g().j(activity, new e(new Function1() { // from class: com.transsion.postdetail.layer.local.x
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return a0.y1(this.f49137a, (Subject) obj);
                }
            }));
        }
    }

    protected final int p1() {
        return this.f48960p;
    }

    public abstract View p2();

    @Override // vo.d
    public void q(int i11, int i12) {
        this.f48961q = i12;
        this.f48960p = i11;
    }

    public abstract View q1();

    public abstract SecondariesSeekBar q2();

    public void r(View rootView, LocalUiType uiType) {
        Intrinsics.h(rootView, "rootView");
        Intrinsics.h(uiType, "uiType");
        this.L = false;
        this.N = false;
        T1(false);
        com.transsion.baselib.report.l.f43359a.g(this);
        View viewF0 = F0();
        if (viewF0 != null) {
            viewF0.setVisibility(8);
        }
        A1();
        J1();
        L1();
        I1();
        z1();
        com.transsion.ad.strategy.b.f42227a.c(this);
    }

    public abstract View r1();

    protected final void r2(DownloadBean nextVideoBean, boolean z10) {
        Intrinsics.h(nextVideoBean, "nextVideoBean");
        if (z10 && nextVideoBean.isCompleted() && !nextVideoBean.isFileExist()) {
            FragmentActivity activity = this.f48955k.getActivity();
            if (activity != null) {
                LocalVideoNotExistUtil.f59904a.v(activity, nextVideoBean, -1);
                return;
            }
            return;
        }
        View view = this.C;
        if (view != null) {
            jg.c.g(view);
        }
        DownloadBean downloadBean = this.H;
        if (downloadBean != null) {
            downloadBean.setPlaying(false);
        }
        o1().f().q(this.H);
        this.O = true;
        SecondariesSeekBar secondariesSeekBarQ2 = q2();
        if (secondariesSeekBarQ2 != null) {
            secondariesSeekBarQ2.setProgress(0L);
        }
        e3(0L);
        if (isVisible()) {
            vo.c cVar = this.M;
            if (cVar != null) {
                cVar.a(nextVideoBean, !z10);
            }
            com.transsion.player.orplayer.g gVarH = H();
            if (gVarH != null) {
                gVarH.clearScreen();
            }
            com.transsion.player.orplayer.g gVarH2 = H();
            if (gVarH2 != null) {
                gVarH2.stop();
            }
            com.transsion.player.orplayer.g gVarH3 = H();
            if (gVarH3 != null) {
                gVarH3.reset();
            }
        }
        this.N = false;
        s();
        String postId = nextVideoBean.getPostId();
        if (postId == null) {
            postId = "";
        }
        O(postId);
        String subjectId = nextVideoBean.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        this.K = subjectId;
        this.H = nextVideoBean;
        nextVideoBean.setPlaying(true);
        l(new LinkedHashMap());
        boolean z11 = nextVideoBean.getStatus() != 5;
        com.transsion.player.orplayer.f.a.j(this, null, 1, null);
        if (isVisible()) {
            com.transsnet.downloader.util.i.f59939a.d("1");
            if (z11) {
                vo.c cVar2 = this.M;
                if (cVar2 != null) {
                    cVar2.b(nextVideoBean);
                    return;
                }
                return;
            }
            lg.a.f68839a.c("long_video_play", "series playerSetDataSource, subjectId = " + nextVideoBean.getSubjectId() + ",resourceId = " + nextVideoBean.getResourceId() + ", path = " + nextVideoBean.getPath(), true);
            com.transsion.player.orplayer.g gVarH4 = H();
            if (gVarH4 != null) {
                gVarH4.clearScreen();
            }
            com.transsion.player.orplayer.g gVarH5 = H();
            if (gVarH5 != null) {
                DownloadBean downloadBean2 = this.H;
                String resourceId = downloadBean2 != null ? downloadBean2.getResourceId() : null;
                String path = nextVideoBean.getPath();
                ao.e eVar = new ao.e(resourceId, path == null ? "" : path, 0, null, c1(), 12, null);
                MusicFloatManager.a aVar = MusicFloatManager.f43454h;
                aVar.b().C(eVar.e());
                aVar.b().B(eVar.i());
                gVarH5.setDataSource(eVar);
            }
            com.transsion.player.orplayer.g gVarH6 = H();
            if (gVarH6 != null) {
                gVarH6.prepare();
            }
        }
    }

    @Override // vo.d
    public void s() {
        j1 j1Var = this.f48967w;
        if (j1Var != null) {
            j1Var.d();
        }
    }

    public void s1(MotionEvent motionEvent, boolean z10) {
        this.P = false;
        P(true);
        u2(false);
        com.transsion.player.orplayer.g gVarH = H();
        if (gVarH != null) {
            gVarH.pause();
        }
        Fragment fragment = this.f48955k;
        LocalVideoDetailFragment localVideoDetailFragment = fragment instanceof LocalVideoDetailFragment ? (LocalVideoDetailFragment) fragment : null;
        if (localVideoDetailFragment != null) {
            localVideoDetailFragment.d3();
        }
        J2(false);
    }

    public final void s2(String str) {
        ImageView imageView;
        FrameLayout frameLayoutJ3 = j3();
        if (frameLayoutJ3 == null || (imageView = (ImageView) frameLayoutJ3.findViewById(R$id.id_local_video_cover)) == null) {
            imageView = new ImageView(this.f48955k.requireContext());
            FrameLayout frameLayoutJ4 = j3();
            if (frameLayoutJ4 != null) {
                frameLayoutJ4.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
            }
        }
        K(imageView);
        ImageView imageViewG = G();
        if (imageViewG != null) {
            int iF = com.transsion.core.utils.e.f();
            ej.f.a aVar = ej.f.f61882a;
            if (str == null) {
                str = "";
            }
            ej.a.a(imageViewG).load(ej.f.a.e(aVar, str, iF, false, false, 12, null)).into(imageViewG);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
    }

    @Override // vo.d
    public void t(boolean z10) {
        FragmentActivity activity;
        px.a aVarV0;
        vo.d.a.d(this, z10);
        if (!z10 || (activity = this.f48955k.getActivity()) == null || activity.isDestroyed() || activity.isFinishing() || (aVarV0 = V0()) == null || Build.VERSION.SDK_INT < 31) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat-pip", "onPictureInPictureModeChanged local--- updateData", false, 4, null);
        ox.e.f72197a.b().h(activity, aVarV0);
    }

    protected final void t2(int i11) {
        this.f48961q = i11;
    }

    public void u(String str, String str2) {
        vo.d.a.j(this, str, str2);
    }

    public void u2(boolean z10) {
        W1(z10);
        ImageView imageViewF2 = f2();
        if (imageViewF2 != null) {
            imageViewF2.setTag(Boolean.valueOf(z10));
        }
        if (z10) {
            ImageView imageViewF3 = f2();
            if (imageViewF3 != null) {
                imageViewF3.setImageResource(R$mipmap.icon_player_pause);
                return;
            }
            return;
        }
        ImageView imageViewF4 = f2();
        if (imageViewF4 != null) {
            imageViewF4.setImageResource(R$mipmap.icon_player_play);
        }
    }

    @Override // vo.d
    public void updateTitle(String title) {
        Intrinsics.h(title, "title");
        TextView textViewW2 = W2();
        if (textViewW2 != null) {
            textViewW2.setText(title);
        }
    }

    public void v(boolean z10) {
        com.transsion.player.orplayer.g gVarH;
        if (!z10) {
            U0().postDelayed(this.Z, 1000L);
            return;
        }
        w1(false);
        this.f48969y = false;
        View view = this.B;
        if (view != null && view.getVisibility() == 0 && !J() && (gVarH = H()) != null) {
            gVarH.play();
        }
        View view2 = this.B;
        if (view2 != null) {
            jg.c.g(view2);
        }
    }

    protected final void v1(boolean z10) {
        if (com.blankj.utilcode.util.c.l()) {
            if (z10) {
                x1();
                return;
            }
            com.transsion.player.orplayer.g gVarH = H();
            if (gVarH == null || !gVarH.isPlaying()) {
                return;
            }
            X0().removeCallbacks(this.V);
            X0().postDelayed(this.V, 3000L);
        }
    }

    protected final void v2(String str) {
        Intrinsics.h(str, "<set-?>");
        this.K = str;
    }

    @Override // vo.d
    public void w(PostSubjectItem postSubjectItem) {
        vo.d.a.m(this, postSubjectItem);
    }

    @Override // vo.d
    public void x(String speed) {
        Intrinsics.h(speed, "speed");
        this.f48968x = speed;
    }

    @Override // vo.d
    public void y(View view, boolean z10) {
        vo.d.a.b(this, view, z10);
    }

    @Override // vo.d
    public void z() {
        String playingUrl;
        vo.d.a.e(this);
        if (ox.c.f72196a.c(H())) {
            return;
        }
        if (com.transsion.videofloat.manager.a0.f57933a.c(H())) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String TAG = this.f48954j;
            Intrinsics.g(TAG, "TAG");
            c0828a.c(TAG, "local 播放器在缓存中，这里不能release", true);
            return;
        }
        com.transsion.player.orplayer.g gVarH = H();
        if (gVarH != null) {
            DownloadBean downloadBean = this.H;
            gVarH.release((downloadBean == null || (playingUrl = downloadBean.getPlayingUrl()) == null) ? null : Integer.valueOf(playingUrl.hashCode()).toString());
        }
    }

    protected final void z0() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f48954j;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "addLandSurface 宽:" + this.f48960p + ",高:" + this.f48961q, false, 4, null);
        ORPlayerView oRPlayerViewI = I();
        if (oRPlayerViewI != null) {
            m2(oRPlayerViewI);
        }
        FrameLayout frameLayoutJ3 = j3();
        if (frameLayoutJ3 != null) {
            frameLayoutJ3.addView(I(), 0, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    protected final void z2(int i11) {
        this.f48960p = i11;
    }
}
