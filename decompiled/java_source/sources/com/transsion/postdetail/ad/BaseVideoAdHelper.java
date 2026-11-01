package com.transsion.postdetail.ad;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import com.blankj.utilcode.util.a0;
import com.cloud.hisavana.sdk.common.util.l0;
import com.google.android.material.card.MaterialCardView;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.mediation.ad.TAdChoicesView;
import com.hisavana.mediation.ad.TMediaView;
import com.therouter.TheRouter;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.icon.BiddingIconAdManager;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.baseui.R$mipmap;
import com.transsion.commercializationapi.IInterceptReportApi;
import com.transsion.gslb.GslbSdk;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberSource;
import com.transsion.postdetail.ui.view.AdCountDownView;
import com.transsion.wrapperad.R$id;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import so.q0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BaseVideoAdHelper {
    public static final a R = new a(null);
    private BubbleTextView C;
    private AnimatorSet D;
    private int E;
    private int F;
    private int L;
    private g4.a N;
    private VideoFloatingView O;
    private boolean Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LifecycleCoroutineScope f48594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f48595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Function1 f48596c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Function0 f48597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BiddingNativeManager f48598e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BiddingInterstitialManager f48599f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f48601h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f48602i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f48603j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f48604k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f48605l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f48606m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f48607n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f48608o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f48609p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f48610q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f48611r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f48612s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private CountDownTimer f48613t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private CountDownTimer f48614u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f48615v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f48616w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f48617x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f48618y;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f48600g = "";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final String f48619z = "bubble_tip_video_start";
    private final String A = "bubble_tip_interpolate";
    private final String B = "floating_show_time";
    private final Lazy G = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ad.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(BaseVideoAdHelper.K(this.f48661a));
        }
    });
    private final Lazy H = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ad.r
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(BaseVideoAdHelper.J(this.f48662a));
        }
    });
    private final Lazy I = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ad.s
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(BaseVideoAdHelper.J0(this.f48663a));
        }
    });
    private final Lazy J = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ad.t
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(BaseVideoAdHelper.H0(this.f48664a));
        }
    });
    private final Lazy K = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ad.u
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(BaseVideoAdHelper.I0(this.f48665a));
        }
    });
    private final Lazy M = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ad.v
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(BaseVideoAdHelper.S());
        }
    });
    private String P = "";

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b extends CountDownTimer {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f48621b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f48622c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Ref.IntRef intRef, String str, long j11) {
            super(j11, 1000L);
            this.f48621b = intRef;
            this.f48622c = str;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (Intrinsics.c(this.f48622c, "VideoStartBidScene")) {
                BaseVideoAdHelper.this.f2();
            }
            BaseVideoAdHelper.this.y1(0);
            BaseVideoAdHelper.this.P();
            BaseVideoAdHelper.this.Q();
            BaseVideoAdHelper.this.Z1(this.f48622c);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j11) {
            BaseVideoAdHelper baseVideoAdHelper = BaseVideoAdHelper.this;
            Ref.IntRef intRef = this.f48621b;
            int i11 = intRef.element;
            intRef.element = i11 - 1;
            baseVideoAdHelper.y1(i11);
            AdCountDownView adCountDownViewW = BaseVideoAdHelper.this.W();
            if (adCountDownViewW != null) {
                adCountDownViewW.refreshCountDown(BaseVideoAdHelper.this.x0());
            }
        }
    }

    public static final class c implements zm.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function0 f48624b;

        c(Function0 function0) {
            this.f48624b = function0;
        }

        @Override // zm.b
        public void a() {
        }

        @Override // zm.b
        public void onSuccess() {
            BaseVideoAdHelper.this.P();
            Function0 function0 = this.f48624b;
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    public static final class d extends CountDownTimer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ BaseVideoAdHelper f48625a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.LongRef f48626b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(long j11, BaseVideoAdHelper baseVideoAdHelper, Ref.LongRef longRef) {
            super(j11, 1000L);
            this.f48625a = baseVideoAdHelper;
            this.f48626b = longRef;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            this.f48625a.R();
            if (this.f48625a.Q0()) {
                return;
            }
            this.f48625a.n1(this.f48625a.r0() + 1);
            BaseVideoAdHelper baseVideoAdHelper = this.f48625a;
            BiddingNativeManager biddingNativeManagerT0 = baseVideoAdHelper.t0();
            baseVideoAdHelper.M1("VideoInterpolateBidScene", biddingNativeManagerT0 != null ? biddingNativeManagerT0.n0() : null);
            this.f48625a.F1("VideoInterpolateBidScene");
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j11) {
            so.f bind;
            TextView textView;
            AdInterceptTimerView adInterceptTimerViewD0 = this.f48625a.d0();
            if (adInterceptTimerViewD0 == null || (bind = adInterceptTimerViewD0.getBind()) == null || (textView = bind.f75512d) == null) {
                return;
            }
            BaseVideoAdHelper baseVideoAdHelper = this.f48625a;
            Ref.LongRef longRef = this.f48626b;
            long j12 = longRef.element;
            longRef.element = (-1) + j12;
            textView.setText(baseVideoAdHelper.a0(j12));
        }
    }

    private final void E1(ViewGroup viewGroup, boolean z10) {
        ImageView imageView = viewGroup != null ? (ImageView) viewGroup.findViewWithTag("adVolumeImage") : null;
        if (imageView != null) {
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
            if (layoutParams2 != null) {
                layoutParams2.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
                if (!z10) {
                    layoutParams2.leftMargin = a0.a(this.f48601h ? 16.0f : 12.0f);
                    layoutParams2.bottomMargin = a0.a(this.f48601h ? 16.0f : 10.0f);
                    int iA = a0.a(this.f48601h ? 44.0f : 28.0f);
                    layoutParams2.width = iA;
                    layoutParams2.height = iA;
                    return;
                }
                int iA2 = a0.a(8.0f);
                layoutParams2.leftMargin = iA2;
                layoutParams2.bottomMargin = iA2;
                int iA3 = a0.a(20.0f);
                layoutParams2.width = iA3;
                layoutParams2.height = iA3;
            }
        }
    }

    private final void F0() {
        AdCountDownView adCountDownViewW = W();
        if (adCountDownViewW != null) {
            adCountDownViewW.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ad.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseVideoAdHelper.G0(this.f48647a, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(BaseVideoAdHelper baseVideoAdHelper, View view) {
        M(baseVideoAdHelper, false, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G1(BaseVideoAdHelper baseVideoAdHelper) {
        baseVideoAdHelper.b2();
        baseVideoAdHelper.E++;
        com.transsion.baselib.report.launch.b.f43370a.b().putInt(baseVideoAdHelper.f48619z, baseVideoAdHelper.E);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int H0(BaseVideoAdHelper baseVideoAdHelper) {
        return baseVideoAdHelper.k0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H1(BaseVideoAdHelper baseVideoAdHelper) {
        baseVideoAdHelper.b2();
        baseVideoAdHelper.F++;
        com.transsion.baselib.report.launch.b.f43370a.b().putInt(baseVideoAdHelper.A, baseVideoAdHelper.F);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int I0(BaseVideoAdHelper baseVideoAdHelper) {
        return baseVideoAdHelper.l0();
    }

    private final void I1() {
        if (this.f48608o || this.f48612s || !O0()) {
            return;
        }
        this.f48608o = true;
        U0(new Function0() { // from class: com.transsion.postdetail.ad.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BaseVideoAdHelper.J1(this.f48650a);
            }
        }, new Function0() { // from class: com.transsion.postdetail.ad.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BaseVideoAdHelper.K1(this.f48651a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int J(BaseVideoAdHelper baseVideoAdHelper) {
        return baseVideoAdHelper.X("VideoInterpolateBidScene");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int J0(BaseVideoAdHelper baseVideoAdHelper) {
        return baseVideoAdHelper.m0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J1(BaseVideoAdHelper baseVideoAdHelper) {
        baseVideoAdHelper.c2();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int K(BaseVideoAdHelper baseVideoAdHelper) {
        return baseVideoAdHelper.X("VideoStartBidScene");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K1(BaseVideoAdHelper baseVideoAdHelper) {
        baseVideoAdHelper.f48608o = false;
        baseVideoAdHelper.f48615v = 0L;
        baseVideoAdHelper.f48616w = System.currentTimeMillis();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L1(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        Context context;
        BiddingInterstitialManager biddingInterstitialManager;
        if (!this.f48601h || this.f48610q) {
            return;
        }
        H(true);
        this.f48604k = true;
        this.f48611r = true;
        ViewGroup viewGroupF0 = f0();
        if (viewGroupF0 != null && (context = viewGroupF0.getContext()) != null && (biddingInterstitialManager = this.f48599f) != null) {
            AbsAdBidding.R0(biddingInterstitialManager, (AppCompatActivity) context, biddingIntermediateMaterialBean, false, 4, null);
        }
        R();
    }

    public static /* synthetic */ void M(BaseVideoAdHelper baseVideoAdHelper, boolean z10, Function0 function0, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkMember");
        }
        if ((i11 & 2) != 0) {
            function0 = null;
        }
        baseVideoAdHelper.L(z10, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M1(String str, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        Context context;
        this.P = str;
        H(true);
        this.f48606m = true;
        this.f48605l = System.currentTimeMillis();
        ViewGroup viewGroupF0 = f0();
        if (viewGroupF0 != null && (context = viewGroupF0.getContext()) != null) {
            cy.b bVar = cy.b.f60940a;
            BiddingNativeManager biddingNativeManager = this.f48598e;
            com.transsion.ad.bidding.base.r rVarA = bVar.a(context, biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
            NativeWrapperAdView nativeWrapperAdViewE0 = e0();
            if (nativeWrapperAdViewE0 != null) {
                nativeWrapperAdViewE0.bindNativeView(this.f48598e, rVarA, biddingIntermediateMaterialBean);
            }
        }
        g1(false);
        ViewGroup viewGroupF1 = f0();
        if (viewGroupF1 != null) {
            viewGroupF1.setVisibility(0);
        }
        I(str);
        R0();
    }

    private final boolean N0(int i11, long j11) {
        return Math.abs(System.currentTimeMillis() - j11) > ((long) i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O1(BaseVideoAdHelper baseVideoAdHelper) {
        baseVideoAdHelper.H(false);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P1(BaseVideoAdHelper baseVideoAdHelper) {
        baseVideoAdHelper.H(false);
        return Unit.f67061a;
    }

    private final void Q1(String str, Function0 function0, Function0 function1) {
        LifecycleCoroutineScope lifecycleCoroutineScope = this.f48594a;
        if (lifecycleCoroutineScope != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScope, null, null, new BaseVideoAdHelper$showSceneAd$1(str, this, function0, function1, null), 3, null);
        }
    }

    static /* synthetic */ void R1(BaseVideoAdHelper baseVideoAdHelper, String str, Function0 function0, Function0 function1, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showSceneAd");
        }
        if ((i11 & 2) != 0) {
            function0 = null;
        }
        if ((i11 & 4) != 0) {
            function1 = null;
        }
        baseVideoAdHelper.Q1(str, function0, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int S() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b("VideoFloatingNativeScene");
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("showMax")) == null) {
            return 10;
        }
        return jsonElement.getAsInt();
    }

    private final boolean S0() {
        return this.f48607n < p0();
    }

    private final int T(String str) {
        JsonElement jsonElement;
        JsonElement jsonElement2;
        JsonElement jsonElement3;
        int iHashCode = str.hashCode();
        if (iHashCode != -172473003) {
            if (iHashCode != -73588874) {
                if (iHashCode == 2049503279 && str.equals("VideoEndBidScene")) {
                    JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b("VideoEndBidScene");
                    if (jsonObjectB == null || (jsonElement3 = jsonObjectB.get("videoEndAdCountdownTime")) == null) {
                        return 10;
                    }
                    return jsonElement3.getAsInt();
                }
            } else if (str.equals("VideoStartBidScene")) {
                JsonObject jsonObjectB2 = com.transsion.ad.scene.d.f42204a.b("VideoStartBidScene");
                if (jsonObjectB2 == null || (jsonElement2 = jsonObjectB2.get("videoStartAdCountdownTime")) == null) {
                    return 10;
                }
                return jsonElement2.getAsInt();
            }
        } else if (str.equals("VideoInterpolateBidScene")) {
            JsonObject jsonObjectB3 = com.transsion.ad.scene.d.f42204a.b("VideoInterpolateBidScene");
            if (jsonObjectB3 == null || (jsonElement = jsonObjectB3.get("videoInterpolateAdCountdownTime")) == null) {
                return 10;
            }
            return jsonElement.getAsInt();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T1() {
        return Unit.f67061a;
    }

    private final void U0(final Function0 function0, final Function0 function1) {
        Q1("VideoInterpolateBidScene", new Function0() { // from class: com.transsion.postdetail.ad.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BaseVideoAdHelper.V0(function0);
            }
        }, new Function0() { // from class: com.transsion.postdetail.ad.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BaseVideoAdHelper.W0(this.f48656a, function1);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit U1(BaseVideoAdHelper baseVideoAdHelper) {
        Function1 function1 = baseVideoAdHelper.f48596c;
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
        baseVideoAdHelper.b1();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V0(Function0 function0) {
        function0.invoke();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V1(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        Context context;
        if (this.f48601h) {
            return;
        }
        H(true);
        this.f48604k = true;
        NativeWrapperAdView nativeWrapperAdViewE0 = e0();
        if (nativeWrapperAdViewE0 != null && (context = nativeWrapperAdViewE0.getContext()) != null) {
            cy.b bVar = cy.b.f60940a;
            BiddingNativeManager biddingNativeManager = this.f48598e;
            com.transsion.ad.bidding.base.r rVarA = bVar.a(context, biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
            NativeWrapperAdView nativeWrapperAdViewV = V();
            if (nativeWrapperAdViewV != null) {
                nativeWrapperAdViewV.bindNativeView(this.f48598e, rVarA, biddingIntermediateMaterialBean);
            }
        }
        g1(true);
        ViewGroup viewGroupG0 = g0();
        if (viewGroupG0 != null) {
            viewGroupG0.setVisibility(0);
        }
        ImageView imageViewS0 = s0();
        if (imageViewS0 != null) {
            imageViewS0.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ad.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseVideoAdHelper.W1(this.f48648a, view);
                }
            });
        }
        R();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit W0(BaseVideoAdHelper baseVideoAdHelper, Function0 function0) {
        baseVideoAdHelper.H(false);
        function0.invoke();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W1(BaseVideoAdHelper baseVideoAdHelper, View view) {
        baseVideoAdHelper.O();
    }

    private final int X(String str) {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b(str);
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("bubbleFrequency")) == null) {
            return 3;
        }
        return jsonElement.getAsInt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y1(BaseVideoAdHelper baseVideoAdHelper) {
        baseVideoAdHelper.H(false);
        baseVideoAdHelper.b1();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z0(String str, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        this.f48600g = str;
        LifecycleCoroutineScope lifecycleCoroutineScope = this.f48594a;
        if (lifecycleCoroutineScope != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScope, null, null, new BaseVideoAdHelper$onAdLoad$1(str, this, biddingIntermediateMaterialBean, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z1(String str) {
        Object objM454constructorimpl;
        if (str == null || !this.f48601h) {
            return;
        }
        if ((Intrinsics.c(str, "VideoStartBidScene") || Intrinsics.c(str, "VideoInterpolateBidScene")) && this.L < h0()) {
            try {
                Result.Companion companion = Result.INSTANCE;
                g4.a aVar = this.N;
                Unit unit = null;
                if (aVar != null) {
                    View root = aVar.getRoot();
                    ConstraintLayout constraintLayout = root instanceof ConstraintLayout ? (ConstraintLayout) root : null;
                    if (constraintLayout == null) {
                        return;
                    }
                    Context context = GslbSdk.context;
                    Intrinsics.g(context, "context");
                    VideoFloatingView videoFloatingView = new VideoFloatingView(context, null, 2, null);
                    this.O = videoFloatingView;
                    videoFloatingView.show(this.f48594a, constraintLayout, new Function0() { // from class: com.transsion.postdetail.ad.p
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BaseVideoAdHelper.a2(this.f48660a);
                        }
                    });
                    unit = Unit.f67061a;
                }
                objM454constructorimpl = Result.m454constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Result.m453boximpl(objM454constructorimpl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String a0(long j11) {
        return j11 + "s";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a2(BaseVideoAdHelper baseVideoAdHelper) {
        baseVideoAdHelper.L++;
        com.transsion.baselib.report.launch.b.f43370a.b().putInt(baseVideoAdHelper.B, baseVideoAdHelper.L);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b1() {
        Function0 function0 = this.f48597d;
        if (function0 != null) {
            function0.invoke();
        }
        this.f48597d = null;
    }

    private final void b2() {
        NativeWrapperAdView nativeWrapperAdViewE0 = e0();
        BubbleTextView bubbleTextView = nativeWrapperAdViewE0 != null ? (BubbleTextView) nativeWrapperAdViewE0.findViewById(R$id.bubble_tip) : null;
        this.C = bubbleTextView;
        if (bubbleTextView != null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(bubbleTextView, "translationY", -35.0f, 15.0f, -35.0f);
            objectAnimatorOfFloat.setDuration(900L);
            objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
            objectAnimatorOfFloat.setRepeatCount(-1);
            objectAnimatorOfFloat.setRepeatMode(1);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(objectAnimatorOfFloat);
            animatorSet.start();
            jg.c.k(bubbleTextView);
            this.D = animatorSet;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c1() {
        this.f48615v = 0L;
        this.f48616w = System.currentTimeMillis();
    }

    private final void c2() {
        so.f bind;
        TextView textView;
        so.f bind2;
        TextView textView2;
        if (this.f48612s) {
            this.f48608o = false;
            return;
        }
        R();
        long jO0 = o0();
        Ref.LongRef longRef = new Ref.LongRef();
        longRef.element = jO0 / ((long) 1000);
        AdInterceptTimerView adInterceptTimerViewD0 = d0();
        if (adInterceptTimerViewD0 != null) {
            jg.c.k(adInterceptTimerViewD0);
        }
        AdInterceptTimerView adInterceptTimerViewD1 = d0();
        if (adInterceptTimerViewD1 != null && (bind2 = adInterceptTimerViewD1.getBind()) != null && (textView2 = bind2.f75512d) != null) {
            textView2.setText(a0(longRef.element));
        }
        AdInterceptTimerView adInterceptTimerViewD2 = d0();
        if (adInterceptTimerViewD2 != null && (bind = adInterceptTimerViewD2.getBind()) != null && (textView = bind.f75514f) != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ad.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseVideoAdHelper.d2(this.f48653a, view);
                }
            });
        }
        d dVar = new d(jO0, this, longRef);
        this.f48614u = dVar;
        dVar.start();
    }

    private final void d1() {
        NativeWrapperAdView nativeWrapperAdViewE0 = e0();
        CardView cardView = nativeWrapperAdViewE0 != null ? (CardView) nativeWrapperAdViewE0.findViewById(R$id.adChoicesViewCard) : null;
        if (cardView != null) {
            ViewGroup.LayoutParams layoutParams = cardView.getLayoutParams();
            ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
            if (bVar != null) {
                int iA = a0.a(this.f48601h ? 16.0f : 12.0f);
                ((ViewGroup.MarginLayoutParams) bVar).leftMargin = iA;
                ((ViewGroup.MarginLayoutParams) bVar).topMargin = iA;
            }
            View childAt = cardView.getChildAt(0);
            TAdChoicesView tAdChoicesView = childAt instanceof TAdChoicesView ? (TAdChoicesView) childAt : null;
            View childAt2 = tAdChoicesView != null ? tAdChoicesView.getChildAt(0) : null;
            if (childAt2 == null) {
                f1();
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = childAt2.getLayoutParams();
            int iA2 = a0.a(this.f48601h ? 26.0f : 22.0f);
            layoutParams2.width = iA2;
            layoutParams2.height = iA2;
            ImageView imageView = childAt2 instanceof ImageView ? (ImageView) childAt2 : null;
            if (imageView != null) {
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            }
            f1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d2(BaseVideoAdHelper baseVideoAdHelper, View view) {
        M(baseVideoAdHelper, false, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e2() {
        AnimatorSet animatorSet = this.D;
        if (animatorSet != null && animatorSet.isRunning()) {
            animatorSet.cancel();
        }
        BubbleTextView bubbleTextView = this.C;
        if (bubbleTextView != null) {
            jg.c.g(bubbleTextView);
        }
        this.D = null;
    }

    private final void f1() {
        ImageView imageView;
        TextView textView;
        TextView textView2;
        AdCountDownView adCountDownViewW = W();
        if (adCountDownViewW != null) {
            ViewGroup.LayoutParams layoutParams = adCountDownViewW.getLayoutParams();
            FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
            if (layoutParams2 != null) {
                int iA = a0.a(this.f48601h ? 16.0f : 12.0f);
                layoutParams2.topMargin = iA;
                layoutParams2.rightMargin = iA;
            }
            float f11 = this.f48601h ? 14.0f : 12.0f;
            q0 bind = adCountDownViewW.getBind();
            if (bind != null && (textView2 = bind.f75688d) != null) {
                textView2.getLayoutParams().height = a0.a(this.f48601h ? 28.0f : 24.0f);
                textView2.setTextSize(f11);
            }
            q0 bind2 = adCountDownViewW.getBind();
            if (bind2 != null && (textView = bind2.f75689e) != null) {
                textView.setTextSize(f11);
            }
            q0 bind3 = adCountDownViewW.getBind();
            if (bind3 == null || (imageView = bind3.f75686b) == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams3 = imageView.getLayoutParams();
            int iA2 = a0.a(this.f48601h ? 18.0f : 15.0f);
            layoutParams3.width = iA2;
            layoutParams3.height = iA2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.transsion.postdetail.ad.BaseVideoAdHelper$wrapperAdListener$1] */
    public final BaseVideoAdHelper$wrapperAdListener$1 g2(final String str, final Function0 function0, final Function0 function1) {
        return new di.a() { // from class: com.transsion.postdetail.ad.BaseVideoAdHelper$wrapperAdListener$1
            @Override // di.a
            public void i(TAdErrorCode tAdErrorCode) {
                LifecycleCoroutineScope lifecycleCoroutineScopeV0 = this.f48627d.v0();
                if (lifecycleCoroutineScopeV0 != null) {
                    kotlinx.coroutines.k.d(lifecycleCoroutineScopeV0, null, null, new BaseVideoAdHelper$wrapperAdListener$1$onBiddingError$1(function1, null), 3, null);
                }
            }

            @Override // di.a
            public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                LifecycleCoroutineScope lifecycleCoroutineScopeV0 = this.f48627d.v0();
                if (lifecycleCoroutineScopeV0 != null) {
                    kotlinx.coroutines.k.d(lifecycleCoroutineScopeV0, null, null, new BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1(function0, this.f48627d, str, biddingIntermediateMaterialBean, null), 3, null);
                }
            }

            @Override // di.a
            public void l(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.l(biddingIntermediateMaterialBean);
                this.f48627d.P();
                BaseVideoAdHelper baseVideoAdHelper = this.f48627d;
                baseVideoAdHelper.Z1(baseVideoAdHelper.P);
            }

            @Override // di.a
            public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                LifecycleCoroutineScope lifecycleCoroutineScopeV0 = this.f48627d.v0();
                if (lifecycleCoroutineScopeV0 != null) {
                    kotlinx.coroutines.k.d(lifecycleCoroutineScopeV0, null, null, new BaseVideoAdHelper$wrapperAdListener$1$onBiddingWrapperAdClose$1(this.f48627d, null), 3, null);
                }
            }

            @Override // di.a
            public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.p(biddingIntermediateMaterialBean);
                LifecycleCoroutineScope lifecycleCoroutineScopeV0 = this.f48627d.v0();
                if (lifecycleCoroutineScopeV0 != null) {
                    kotlinx.coroutines.k.d(lifecycleCoroutineScopeV0, null, null, new BaseVideoAdHelper$wrapperAdListener$1$onBiddingWrapperAdShowError$1(function1, null), 3, null);
                }
            }
        };
    }

    private final void h1() {
        NativeWrapperAdView nativeWrapperAdViewE0 = e0();
        BubbleTextView bubbleTextView = nativeWrapperAdViewE0 != null ? (BubbleTextView) nativeWrapperAdViewE0.findViewById(R$id.bubble_tip) : null;
        this.C = bubbleTextView;
        if (bubbleTextView != null) {
            bubbleTextView.setTextSize(this.f48601h ? 16.0f : 12.0f);
            bubbleTextView.setArrowPosition(a0.a(this.f48601h ? 110.0f : 90.0f));
        }
    }

    private final void j1() {
        AdInterceptTimerView adInterceptTimerViewD0 = d0();
        if (adInterceptTimerViewD0 != null) {
            ViewGroup.LayoutParams layoutParams = adInterceptTimerViewD0.getLayoutParams();
            ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
            if (bVar != null) {
                ((ViewGroup.MarginLayoutParams) bVar).topMargin = a0.a(this.f48601h ? 16.0f : 12.0f);
            }
            int childCount = adInterceptTimerViewD0.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = adInterceptTimerViewD0.getChildAt(i11);
                if (childAt instanceof AppCompatTextView) {
                    ((AppCompatTextView) childAt).setTextSize(this.f48601h ? 14.0f : 12.0f);
                }
            }
        }
    }

    private final void k1() {
        View viewJ0 = j0();
        if (viewJ0 != null) {
            ViewGroup.LayoutParams layoutParams = viewJ0.getLayoutParams();
            ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
            if (bVar != null) {
                int height = -1;
                ((ViewGroup.MarginLayoutParams) bVar).width = -1;
                if (!this.f48601h) {
                    ViewGroup viewGroupB0 = B0();
                    height = viewGroupB0 != null ? viewGroupB0.getHeight() : (int) ((((double) ((ViewGroup.MarginLayoutParams) bVar).width) * 9.0d) / ((double) 16));
                }
                ((ViewGroup.MarginLayoutParams) bVar).height = height;
            }
        }
    }

    private final void l1() {
        BiddingNativeManager biddingNativeManager = this.f48598e;
        if (biddingNativeManager == null || biddingNativeManager.U0()) {
            NativeWrapperAdView nativeWrapperAdViewE0 = e0();
            final TMediaView tMediaView = nativeWrapperAdViewE0 != null ? (TMediaView) nativeWrapperAdViewE0.findViewById(R$id.native_ad_media) : null;
            if (tMediaView != null) {
                tMediaView.post(new Runnable() { // from class: com.transsion.postdetail.ad.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseVideoAdHelper.m1(tMediaView, this);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m1(TMediaView tMediaView, BaseVideoAdHelper baseVideoAdHelper) {
        ViewGroup.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2 = tMediaView.getLayoutParams();
        ConstraintLayout.b bVar = layoutParams2 instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams2 : null;
        if (bVar != null) {
            if (baseVideoAdHelper.f48601h) {
                ((ViewGroup.MarginLayoutParams) bVar).height = -1;
                bVar.I = null;
            } else {
                ((ViewGroup.MarginLayoutParams) bVar).height = 0;
                bVar.I = "H,16:9";
            }
        }
        View mediaView = tMediaView.getMediaView();
        if (mediaView != null) {
            mediaView.getLayoutParams().height = -1;
            mediaView.requestLayout();
            if (mediaView instanceof ViewGroup) {
                View childAt = ((ViewGroup) mediaView).getChildAt(0);
                if (childAt != null && (layoutParams = childAt.getLayoutParams()) != null) {
                    layoutParams.height = -1;
                }
                if (childAt != null) {
                    childAt.requestLayout();
                }
            }
        }
    }

    private final void q1() {
        ViewGroup viewGroupF0 = f0();
        if (viewGroupF0 != null) {
            ViewGroup.LayoutParams layoutParams = viewGroupF0.getLayoutParams();
            int height = -1;
            layoutParams.width = -1;
            if (!this.f48601h) {
                ViewGroup viewGroupB0 = B0();
                height = viewGroupB0 != null ? viewGroupB0.getHeight() : (int) ((((double) layoutParams.width) * 9.0d) / ((double) 16));
            }
            layoutParams.height = height;
        }
    }

    private final void r1() {
        NativeWrapperAdView nativeWrapperAdViewE0 = e0();
        AppCompatTextView appCompatTextView = nativeWrapperAdViewE0 != null ? (AppCompatTextView) nativeWrapperAdViewE0.findViewById(R$id.native_ad_action) : null;
        if (appCompatTextView != null) {
            ViewGroup.LayoutParams layoutParams = appCompatTextView.getLayoutParams();
            ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
            if (bVar != null) {
                ((ViewGroup.MarginLayoutParams) bVar).height = a0.a(this.f48601h ? 44.0f : 28.0f);
                ((ViewGroup.MarginLayoutParams) bVar).rightMargin = a0.a(this.f48601h ? 73.0f : 52.0f);
                ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = a0.a(this.f48601h ? 16.0f : 10.0f);
            }
            appCompatTextView.setTextSize(this.f48601h ? 16.0f : 12.0f);
            int iA = a0.a(this.f48601h ? 16.0f : 6.0f);
            appCompatTextView.setPadding(iA, 3, iA, 4);
        }
    }

    private final void v1() {
        ViewGroup viewGroupG0 = g0();
        if (viewGroupG0 != null) {
            ViewGroup.LayoutParams layoutParams = viewGroupG0.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = a0.a(this.f48601h ? 426.0f : 219.0f);
                layoutParams.height = a0.a(this.f48601h ? 240.0f : 123.0f);
            }
            AppCompatTextView appCompatTextView = (AppCompatTextView) viewGroupG0.findViewById(R$id.native_ad_action);
            if (appCompatTextView != null) {
                ViewGroup.LayoutParams layoutParams2 = appCompatTextView.getLayoutParams();
                ConstraintLayout.b bVar = layoutParams2 instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams2 : null;
                if (bVar != null) {
                    ((ViewGroup.MarginLayoutParams) bVar).height = a0.a(this.f48601h ? 32.0f : 20.0f);
                    int iA = a0.a(8.0f);
                    ((ViewGroup.MarginLayoutParams) bVar).rightMargin = iA;
                    ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = iA;
                }
                appCompatTextView.setTextSize(this.f48601h ? 14.0f : 12.0f);
            }
        }
    }

    private final int z0() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b("VideoStartBidScene");
        return ((jsonObjectB == null || (jsonElement = jsonObjectB.get("interval")) == null) ? 1440 : jsonElement.getAsInt()) * 60000;
    }

    private final void z1() {
        ImageView imageViewY0 = y0();
        if (imageViewY0 != null) {
            ViewGroup.LayoutParams layoutParams = imageViewY0.getLayoutParams();
            FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
            if (layoutParams2 != null) {
                int iA = a0.a(this.f48601h ? 44.0f : 28.0f);
                layoutParams2.width = iA;
                layoutParams2.height = iA;
                layoutParams2.rightMargin = a0.a(this.f48601h ? 16.0f : 12.0f);
                layoutParams2.bottomMargin = a0.a(this.f48601h ? 16.0f : 10.0f);
            }
        }
    }

    protected final long A0() {
        return this.f48616w;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void A1(boolean z10) {
        this.f48603j = z10;
    }

    protected abstract ViewGroup B0();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void B1(boolean z10) {
        this.f48602i = z10;
    }

    protected final void C0(long j11, long j12) {
        this.f48602i = N0(z0(), j11);
        this.f48603j = N0(c0(), j12);
    }

    protected final void C1(long j11) {
        this.f48616w = j11;
    }

    protected final void D0(g4.a aVar, String str, Function1 function1) {
        View root;
        this.N = aVar;
        Context context = (aVar == null || (root = aVar.getRoot()) == null) ? null : root.getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        this.f48594a = appCompatActivity != null ? androidx.p009lifecycle.v.a(appCompatActivity) : null;
        this.f48595b = str;
        this.f48596c = function1;
        F0();
        BiddingIconAdManager.f41937s.a("VerticalPauseScene", com.transsion.ad.strategy.d.f42231a.a(str));
    }

    public final void D1(long j11) {
        this.f48618y = j11;
    }

    protected final void E0(String scene) {
        Intrinsics.h(scene, "scene");
        if (!T0(scene, true)) {
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
            this.F = bVar.b().getInt(this.A, 0);
            this.E = bVar.b().getInt(this.f48619z, 0);
            this.L = bVar.b().getInt(this.B, 0);
            return;
        }
        this.F = 0;
        com.transsion.baselib.report.launch.b bVar2 = com.transsion.baselib.report.launch.b.f43370a;
        bVar2.b().putInt(this.A, 0);
        this.E = 0;
        bVar2.b().putInt(this.f48619z, 0);
        this.L = 0;
        bVar2.b().putInt(this.B, 0);
    }

    protected final void F1(String str) {
        NativeWrapperAdView nativeWrapperAdViewE0;
        NativeWrapperAdView nativeWrapperAdViewE1;
        if (Intrinsics.c(str, "VideoStartBidScene")) {
            if (this.E < Z() && (nativeWrapperAdViewE1 = e0()) != null) {
                nativeWrapperAdViewE1.postDelayed(new Runnable() { // from class: com.transsion.postdetail.ad.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseVideoAdHelper.G1(this.f48645a);
                    }
                }, 2000L);
                return;
            }
            return;
        }
        if (!Intrinsics.c(str, "VideoInterpolateBidScene") || this.F >= Y() || (nativeWrapperAdViewE0 = e0()) == null) {
            return;
        }
        nativeWrapperAdViewE0.postDelayed(new Runnable() { // from class: com.transsion.postdetail.ad.c
            @Override // java.lang.Runnable
            public final void run() {
                BaseVideoAdHelper.H1(this.f48646a);
            }
        }, 2000L);
    }

    public void H(boolean z10) {
        Function1 function1 = this.f48596c;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(z10));
        }
        this.f48610q = z10;
    }

    protected final void I(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        Ref.IntRef intRef = new Ref.IntRef();
        int iT = this.f48609p;
        if (iT == 0) {
            iT = T(sceneId);
        }
        intRef.element = iT;
        AdCountDownView adCountDownViewW = W();
        if (adCountDownViewW != null) {
            adCountDownViewW.refreshCountDown(intRef.element);
        }
        Q();
        b bVar = new b(intRef, sceneId, ((long) intRef.element) * 1000);
        this.f48613t = bVar;
        bVar.start();
    }

    protected final boolean K0() {
        return this.f48608o;
    }

    protected final void L(boolean z10, Function0 function0) {
        IInterceptReportApi iInterceptReportApi;
        if (!z10 && (iInterceptReportApi = (IInterceptReportApi) TheRouter.d(IInterceptReportApi.class, new Object[0])) != null) {
            iInterceptReportApi.h();
        }
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            IMemberApi.a.c(iMemberApi, com.blankj.utilcode.util.a.b(), MemberSource.SOURCE_LANDSCAPE_PLAY, new c(function0), false, null, 24, null);
        }
    }

    protected final boolean L0() {
        return this.f48606m;
    }

    protected final boolean M0() {
        return this.f48611r;
    }

    public final void N(long j11, Function0 callback) {
        Intrinsics.h(callback, "callback");
        if (!this.Q && this.f48603j && this.f48618y - j11 <= 30000) {
            this.Q = true;
            BiddingNativeManager.f42016y.a("VideoEndBidScene", com.transsion.ad.strategy.d.f42231a.a(this.f48595b));
        }
        if (this.f48617x == 0) {
            this.f48617x = j11;
            return;
        }
        if (this.f48612s || this.f48610q || !S0()) {
            return;
        }
        if (Math.abs(j11 - this.f48617x) > 5000) {
            this.f48617x = j11;
            this.f48615v += System.currentTimeMillis() - this.f48616w;
            this.f48616w = System.currentTimeMillis();
        }
        if (this.f48615v >= n0()) {
            this.f48597d = callback;
            I1();
        }
    }

    protected final void N1() {
        if (this.f48601h) {
            R1(this, "LandscapePauseSceneNew", null, new Function0() { // from class: com.transsion.postdetail.ad.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BaseVideoAdHelper.P1(this.f48644a);
                }
            }, 2, null);
        } else {
            R1(this, "VerticalPauseScene", null, new Function0() { // from class: com.transsion.postdetail.ad.l
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BaseVideoAdHelper.O1(this.f48654a);
                }
            }, 2, null);
        }
    }

    protected final void O() {
        if (TextUtils.equals(this.f48600g, "LandscapePauseSceneNew") || TextUtils.equals(this.f48600g, "VerticalPauseScene")) {
            P();
        }
    }

    public final boolean O0() {
        return !ox.e.f72197a.b().j();
    }

    protected final void P() {
        LifecycleCoroutineScope lifecycleCoroutineScope = this.f48594a;
        if (lifecycleCoroutineScope != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScope, null, null, new BaseVideoAdHelper$closeSceneAd$1(this, null), 3, null);
        }
    }

    protected final boolean P0() {
        return this.f48604k;
    }

    protected final void Q() {
        CountDownTimer countDownTimer = this.f48613t;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f48613t = null;
    }

    protected final boolean Q0() {
        return this.f48612s;
    }

    protected final void R() {
        CountDownTimer countDownTimer = this.f48614u;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f48614u = null;
        AdInterceptTimerView adInterceptTimerViewD0 = d0();
        if (adInterceptTimerViewD0 != null) {
            jg.c.g(adInterceptTimerViewD0);
        }
    }

    protected final void R0() {
        if (this.f48601h) {
            ImageView imageViewY0 = y0();
            if (imageViewY0 != null) {
                imageViewY0.setImageResource(R$mipmap.ad_rotate);
                return;
            }
            return;
        }
        ImageView imageViewY1 = y0();
        if (imageViewY1 != null) {
            imageViewY1.setImageResource(R$mipmap.ad_fullscreen);
        }
    }

    public final void S1(Function0 callback) {
        Intrinsics.h(callback, "callback");
        this.f48597d = callback;
        if (this.f48602i && O0()) {
            Q1("VideoStartBidScene", new Function0() { // from class: com.transsion.postdetail.ad.i
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BaseVideoAdHelper.T1();
                }
            }, new Function0() { // from class: com.transsion.postdetail.ad.j
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BaseVideoAdHelper.U1(this.f48652a);
                }
            });
        } else {
            b1();
        }
    }

    public final boolean T0(String scene, boolean z10) {
        Intrinsics.h(scene, "scene");
        String str = "zero_clock_timestamp_" + scene;
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        long j11 = bVar.b().getLong(str, 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z11 = jCurrentTimeMillis - j11 >= 86400000;
        if (z10 && z11) {
            bVar.b().putLong(str, l0.c(jCurrentTimeMillis));
        }
        return z11;
    }

    protected final int U() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b("VideoEndBidScene");
        return ((jsonObjectB == null || (jsonElement = jsonObjectB.get("threshold")) == null) ? 5 : jsonElement.getAsInt()) * 60000;
    }

    protected abstract NativeWrapperAdView V();

    protected abstract AdCountDownView W();

    protected final void X0(String sceneId, Function0 function0, Function0 function1) {
        Context context;
        Intrinsics.h(sceneId, "sceneId");
        ViewGroup viewGroupG0 = g0();
        if (viewGroupG0 == null || (context = viewGroupG0.getContext()) == null) {
            return;
        }
        BiddingInterstitialManager biddingInterstitialManager = this.f48599f;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.V();
        }
        this.f48599f = null;
        LifecycleCoroutineScope lifecycleCoroutineScope = this.f48594a;
        if (lifecycleCoroutineScope != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScope, null, null, new BaseVideoAdHelper$loadLandPauseAd$1(context, this, sceneId, function0, function1, null), 3, null);
        }
    }

    protected final void X1(Function0 callback) {
        Intrinsics.h(callback, "callback");
        boolean z10 = System.currentTimeMillis() - this.f48605l > ((long) U());
        if (this.f48603j && z10 && O0()) {
            Q1("VideoEndBidScene", callback, new Function0() { // from class: com.transsion.postdetail.ad.f
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BaseVideoAdHelper.Y1(this.f48649a);
                }
            });
        } else {
            b1();
        }
    }

    protected final int Y() {
        return ((Number) this.H.getValue()).intValue();
    }

    protected final void Y0(String sceneId, Function0 function0, Function0 function1) {
        Context context;
        Intrinsics.h(sceneId, "sceneId");
        ViewGroup viewGroupF0 = f0();
        if (viewGroupF0 == null || (context = viewGroupF0.getContext()) == null) {
            return;
        }
        BiddingNativeManager biddingNativeManager = this.f48598e;
        if (biddingNativeManager != null) {
            biddingNativeManager.V();
        }
        this.f48598e = null;
        LifecycleCoroutineScope lifecycleCoroutineScope = this.f48594a;
        if (lifecycleCoroutineScope != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScope, null, null, new BaseVideoAdHelper$loadNativeAd$1(context, this, sceneId, function0, function1, null), 3, null);
        }
    }

    protected final int Z() {
        return ((Number) this.G.getValue()).intValue();
    }

    public final void a1() {
        if (this.f48601h) {
            BiddingInterstitialManager.f41965w.a("LandscapePauseSceneNew", com.transsion.ad.strategy.d.f42231a.a(this.f48595b));
            return;
        }
        VideoFloatingView videoFloatingView = this.O;
        if (videoFloatingView != null) {
            videoFloatingView.hide();
        }
    }

    protected final String b0() {
        return this.f48600g;
    }

    protected final int c0() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b("VideoEndBidScene");
        return ((jsonObjectB == null || (jsonElement = jsonObjectB.get("interval")) == null) ? 1440 : jsonElement.getAsInt()) * 60000;
    }

    protected abstract AdInterceptTimerView d0();

    protected abstract NativeWrapperAdView e0();

    protected final void e1(Function0 function0) {
        this.f48597d = function0;
    }

    protected abstract ViewGroup f0();

    public abstract void f2();

    protected abstract ViewGroup g0();

    protected final void g1(boolean z10) {
        try {
            Result.Companion companion = Result.INSTANCE;
            if (z10) {
                k1();
                v1();
                E1(V(), true);
            } else {
                q1();
                l1();
                j1();
                r1();
                z1();
                E1(e0(), false);
                d1();
                h1();
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    protected final int h0() {
        return ((Number) this.M.getValue()).intValue();
    }

    protected final String i0() {
        return this.f48595b;
    }

    protected final void i1(boolean z10) {
        this.f48608o = z10;
    }

    protected abstract View j0();

    protected final int k0() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b("VideoInterpolateBidScene");
        return ((jsonObjectB == null || (jsonElement = jsonObjectB.get("enterCountdown")) == null) ? 10 : jsonElement.getAsInt()) * 1000;
    }

    protected final int l0() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b("VideoInterpolateBidScene");
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("frequency")) == null) {
            return 2;
        }
        return jsonElement.getAsInt();
    }

    protected final int m0() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b("VideoInterpolateBidScene");
        return ((jsonObjectB == null || (jsonElement = jsonObjectB.get("interval")) == null) ? 15 : jsonElement.getAsInt()) * 60000;
    }

    public final int n0() {
        return q0() - o0();
    }

    protected final void n1(int i11) {
        this.f48607n = i11;
    }

    protected final int o0() {
        return ((Number) this.J.getValue()).intValue();
    }

    protected final void o1(BiddingNativeManager biddingNativeManager) {
        this.f48598e = biddingNativeManager;
    }

    protected final int p0() {
        return ((Number) this.K.getValue()).intValue();
    }

    protected final void p1(boolean z10) {
        this.f48606m = z10;
    }

    protected final int q0() {
        return ((Number) this.I.getValue()).intValue();
    }

    protected final int r0() {
        return this.f48607n;
    }

    protected abstract ImageView s0();

    protected final void s1(BiddingInterstitialManager biddingInterstitialManager) {
        this.f48599f = biddingInterstitialManager;
    }

    protected final BiddingNativeManager t0() {
        return this.f48598e;
    }

    protected final void t1(boolean z10) {
        this.f48611r = z10;
    }

    protected final BiddingInterstitialManager u0() {
        return this.f48599f;
    }

    protected final void u1(boolean z10) {
        this.f48601h = z10;
    }

    protected final LifecycleCoroutineScope v0() {
        return this.f48594a;
    }

    protected final long w0() {
        return this.f48615v;
    }

    protected final void w1(boolean z10) {
        this.f48604k = z10;
    }

    protected final int x0() {
        return this.f48609p;
    }

    protected final void x1(long j11) {
        this.f48615v = j11;
    }

    protected abstract ImageView y0();

    protected final void y1(int i11) {
        this.f48609p = i11;
    }
}
