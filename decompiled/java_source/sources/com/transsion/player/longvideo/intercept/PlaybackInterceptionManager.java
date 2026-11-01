package com.transsion.player.longvideo.intercept;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import com.therouter.TheRouter;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.memberapi.MemberSource;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.player.longvideo.ui.LongVodUiType;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class PlaybackInterceptionManager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f48051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ho.j f48052c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private go.a f48053d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private FrameLayout f48054e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.transsion.player.longvideo.intercept.d f48055f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f48057h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f48059j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f48060k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f48061l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f48062m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f48063n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Function0 f48064o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private BiddingInterstitialManager f48065p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LongVodUiType f48050a = LongVodUiType.PORTRAIT;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f48056g = 5000;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f48058i = true;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48066a;

        static {
            int[] iArr = new int[LongVodUiType.values().length];
            try {
                iArr[LongVodUiType.LAND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LongVodUiType.PORTRAIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LongVodUiType.MIDDLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f48066a = iArr;
        }
    }

    public static final class b implements com.transsion.player.longvideo.intercept.d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PlaybackInterceptAdView f48068b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.transsion.player.longvideo.intercept.d f48069c;

        b(PlaybackInterceptAdView playbackInterceptAdView, com.transsion.player.longvideo.intercept.d dVar) {
            this.f48068b = playbackInterceptAdView;
            this.f48069c = dVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void h(PlaybackInterceptAdView playbackInterceptAdView, com.transsion.player.longvideo.intercept.d dVar) {
            playbackInterceptAdView.destroy();
            if (dVar != null) {
                dVar.onComplete();
            }
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void a() {
            com.transsion.player.longvideo.intercept.d.a.d(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void b() {
            com.transsion.player.longvideo.intercept.d.a.b(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public go.b c() {
            return com.transsion.player.longvideo.intercept.d.a.a(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void d() {
            com.transsion.player.longvideo.intercept.d.a.e(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void e() {
            com.transsion.player.longvideo.intercept.d.a.g(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void f() {
            com.transsion.player.longvideo.intercept.d.a.f(this);
            com.transsion.player.longvideo.intercept.d dVar = PlaybackInterceptionManager.this.f48055f;
            if (dVar != null) {
                dVar.f();
            }
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void onComplete() {
            lg.a.C0828a.f(lg.a.f68839a, "premium_p", PlaybackInterceptionManager.this.x() + " --> handlePause() --> 暂停广告展示结束", false, 4, null);
            final PlaybackInterceptAdView playbackInterceptAdView = this.f48068b;
            final com.transsion.player.longvideo.intercept.d dVar = this.f48069c;
            playbackInterceptAdView.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.z
                @Override // java.lang.Runnable
                public final void run() {
                    PlaybackInterceptionManager.b.h(playbackInterceptAdView, dVar);
                }
            }, 200L);
        }
    }

    public static final class c implements com.transsion.player.longvideo.intercept.d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PlaybackInterceptAdView f48071b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.transsion.player.longvideo.intercept.d f48072c;

        c(PlaybackInterceptAdView playbackInterceptAdView, com.transsion.player.longvideo.intercept.d dVar) {
            this.f48071b = playbackInterceptAdView;
            this.f48072c = dVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void h(PlaybackInterceptAdView playbackInterceptAdView, com.transsion.player.longvideo.intercept.d dVar) {
            playbackInterceptAdView.destroy();
            if (dVar != null) {
                dVar.onComplete();
            }
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void a() {
            com.transsion.player.longvideo.intercept.d.a.d(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void b() {
            com.transsion.player.longvideo.intercept.d.a.b(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public go.b c() {
            return com.transsion.player.longvideo.intercept.d.a.a(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void d() {
            com.transsion.player.longvideo.intercept.d.a.e(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void e() {
            com.transsion.player.longvideo.intercept.d.a.g(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void f() {
            com.transsion.player.longvideo.intercept.d.a.f(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void onComplete() {
            lg.a.C0828a.f(lg.a.f68839a, "premium_p", PlaybackInterceptionManager.this.x() + " --> onCompletion() --> 结束广告展示完成", false, 4, null);
            final PlaybackInterceptAdView playbackInterceptAdView = this.f48071b;
            final com.transsion.player.longvideo.intercept.d dVar = this.f48072c;
            playbackInterceptAdView.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.a0
                @Override // java.lang.Runnable
                public final void run() {
                    PlaybackInterceptionManager.c.h(playbackInterceptAdView, dVar);
                }
            }, 200L);
        }
    }

    public static final class d implements com.transsion.player.longvideo.intercept.d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ho.j f48074b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ go.a f48075c;

        d(ho.j jVar, go.a aVar) {
            this.f48074b = jVar;
            this.f48075c = aVar;
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void a() {
            com.transsion.player.longvideo.intercept.d.a.d(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void b() {
            com.transsion.player.longvideo.intercept.d.a.b(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public go.b c() {
            return com.transsion.player.longvideo.intercept.d.a.a(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void d() {
            com.transsion.player.longvideo.intercept.d.a.e(this);
            PlaybackInterceptionManager.this.f48059j = true;
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void e() {
            com.transsion.player.longvideo.intercept.d.a.g(this);
            lg.a.C0828a.f(lg.a.f68839a, "premium_p", PlaybackInterceptionManager.this.x() + " --> onProgress() --> 开启分辨率降级 --> 需要判断是否有低分辨率", false, 4, null);
            this.f48074b.f64625o.setPreviewingEnded(this.f48075c, PlaybackInterceptionManager.this.f48061l, PlaybackInterceptionManager.this, this.f48074b.f64620j.f64607g);
            com.transsion.player.longvideo.intercept.d dVar = PlaybackInterceptionManager.this.f48055f;
            if (dVar != null) {
                dVar.e();
            }
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void f() {
            com.transsion.player.longvideo.intercept.d.a.f(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void onComplete() {
            com.transsion.player.longvideo.intercept.d.a.c(this);
        }
    }

    public static final class e implements com.transsion.player.longvideo.intercept.d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ go.a f48077b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ PlaybackInterceptAdView f48078c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ VideoContentInterceptView f48079d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.transsion.player.longvideo.intercept.d f48080e;

        e(go.a aVar, PlaybackInterceptAdView playbackInterceptAdView, VideoContentInterceptView videoContentInterceptView, com.transsion.player.longvideo.intercept.d dVar) {
            this.f48077b = aVar;
            this.f48078c = playbackInterceptAdView;
            this.f48079d = videoContentInterceptView;
            this.f48080e = dVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void h(VideoContentInterceptView videoContentInterceptView, PlaybackInterceptAdView playbackInterceptAdView, com.transsion.player.longvideo.intercept.d dVar, PlaybackInterceptionManager playbackInterceptionManager) {
            if (videoContentInterceptView != null) {
                videoContentInterceptView.setVisibility(8);
            }
            playbackInterceptAdView.setVisibility(8);
            if (dVar != null) {
                dVar.onComplete();
            }
            playbackInterceptionManager.f48058i = false;
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void a() {
            com.transsion.player.longvideo.intercept.d.a.d(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void b() {
            com.transsion.player.longvideo.intercept.d.a.b(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public go.b c() {
            return com.transsion.player.longvideo.intercept.d.a.a(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void d() {
            com.transsion.player.longvideo.intercept.d.a.e(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void e() {
            com.transsion.player.longvideo.intercept.d.a.g(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void f() {
            com.transsion.player.longvideo.intercept.d.a.f(this);
            com.transsion.player.longvideo.intercept.d dVar = PlaybackInterceptionManager.this.f48055f;
            if (dVar != null) {
                dVar.f();
            }
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void onComplete() {
            PlaybackPremiumTipView playbackPremiumTipView;
            lg.a.C0828a.f(lg.a.f68839a, "premium_p", PlaybackInterceptionManager.this.x() + " --> onRenderFirstFrame() --> 启播广告展示结束", false, 4, null);
            ho.j jVar = PlaybackInterceptionManager.this.f48052c;
            if (jVar != null && (playbackPremiumTipView = jVar.f64625o) != null) {
                playbackPremiumTipView.setPreviewing(this.f48077b, PlaybackInterceptionManager.this);
            }
            this.f48078c.destroy();
            final PlaybackInterceptAdView playbackInterceptAdView = this.f48078c;
            final VideoContentInterceptView videoContentInterceptView = this.f48079d;
            final com.transsion.player.longvideo.intercept.d dVar = this.f48080e;
            final PlaybackInterceptionManager playbackInterceptionManager = PlaybackInterceptionManager.this;
            playbackInterceptAdView.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.b0
                @Override // java.lang.Runnable
                public final void run() {
                    PlaybackInterceptionManager.e.h(videoContentInterceptView, playbackInterceptAdView, dVar, playbackInterceptionManager);
                }
            }, 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(com.transsion.player.longvideo.intercept.d dVar) {
        if (dVar != null) {
            dVar.onComplete();
        }
    }

    private final void B(go.a aVar, PlaybackInterceptAdView playbackInterceptAdView, LongVodUiType longVodUiType, com.transsion.player.longvideo.intercept.d dVar) {
        Context context = playbackInterceptAdView != null ? playbackInterceptAdView.getContext() : null;
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(appCompatActivity), null, null, new PlaybackInterceptionManager$loadLandPauseAd$1$1(appCompatActivity, this, aVar, playbackInterceptAdView, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(com.transsion.player.longvideo.intercept.d dVar) {
        if (dVar != null) {
            dVar.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(com.transsion.player.longvideo.intercept.d dVar) {
        if (dVar != null) {
            dVar.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(com.transsion.player.longvideo.intercept.d dVar, PlaybackInterceptionManager playbackInterceptionManager) {
        if (dVar != null) {
            dVar.onComplete();
        }
        playbackInterceptionManager.f48058i = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(com.transsion.player.longvideo.intercept.d dVar, PlaybackInterceptionManager playbackInterceptionManager) {
        if (dVar != null) {
            dVar.onComplete();
        }
        playbackInterceptionManager.f48058i = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(com.transsion.player.longvideo.intercept.d dVar, PlaybackInterceptionManager playbackInterceptionManager) {
        if (dVar != null) {
            dVar.onComplete();
        }
        playbackInterceptionManager.f48058i = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(com.transsion.player.longvideo.intercept.d dVar, PlaybackInterceptionManager playbackInterceptionManager) {
        if (dVar != null) {
            dVar.onComplete();
        }
        playbackInterceptionManager.f48058i = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(View view) {
    }

    public static /* synthetic */ void X(PlaybackInterceptionManager playbackInterceptionManager, boolean z10, String str, String str2, boolean z11, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            z11 = false;
        }
        playbackInterceptionManager.W(z10, str, str2, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y(PlaybackInterceptionManager playbackInterceptionManager) {
        FrameLayout frameLayout;
        ho.j jVar = playbackInterceptionManager.f48052c;
        if (jVar != null && (frameLayout = jVar.f64613c) != null) {
            frameLayout.setVisibility(8);
        }
        playbackInterceptionManager.f48051b = false;
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z() {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a0(PlaybackInterceptionManager playbackInterceptionManager) {
        FrameLayout frameLayout = playbackInterceptionManager.f48054e;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
        playbackInterceptionManager.f48051b = false;
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b0() {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String x() {
        String simpleName = PlaybackInterceptionManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(com.transsion.player.longvideo.intercept.d dVar) {
        if (dVar != null) {
            dVar.onComplete();
        }
    }

    public final void C() {
        com.transsion.player.longvideo.intercept.d dVar = this.f48055f;
        if (dVar != null) {
            dVar.b();
        }
    }

    public final void D(ao.e eVar, go.a aVar, PlaybackInterceptAdView playbackInterceptAdView, final com.transsion.player.longvideo.intercept.d dVar) {
        Subject subjectM;
        Integer subjectType;
        Subject subjectM2;
        Integer subjectType2;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "premium_p", x() + " --> onCompletion()", false, 4, null);
        if ((aVar != null && (subjectM2 = aVar.m()) != null && (subjectType2 = subjectM2.getSubjectType()) != null && subjectType2.intValue() == 5) || (aVar != null && (subjectM = aVar.m()) != null && (subjectType = subjectM.getSubjectType()) != null && subjectType.intValue() == 6)) {
            lg.a.C0828a.f(c0828a, "premium_p", "PlaybackInterceptionManager --> onRenderFirstFrame() --> 教育、音乐不展示 -- 结束广告", false, 4, null);
            return;
        }
        if (aVar == null) {
            lg.a.C0828a.f(c0828a, "premium_p", x() + " --> onCompletion() --> bean ==null", false, 4, null);
            if (playbackInterceptAdView != null) {
                playbackInterceptAdView.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        PlaybackInterceptionManager.F(dVar);
                    }
                }, 200L);
                return;
            }
            return;
        }
        if (playbackInterceptAdView != null && playbackInterceptAdView.getVisibility() == 0) {
            playbackInterceptAdView.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.w
                @Override // java.lang.Runnable
                public final void run() {
                    PlaybackInterceptionManager.E(dVar);
                }
            }, 200L);
        } else {
            if (ak.o.f646a.g() || ak.g.f639a.b() || playbackInterceptAdView == null) {
                return;
            }
            playbackInterceptAdView.loadNativeAd("VideoEndBidScene", this, aVar, new c(playbackInterceptAdView, dVar));
        }
    }

    public final void G(long j11, go.a aVar, com.transsion.player.ui.longvideo.a aVar2, ho.j viewBinding) {
        Intrinsics.h(viewBinding, "viewBinding");
        if (h0.f48139a.d(aVar != null ? aVar.m() : null)) {
            if (this.f48058i) {
                lg.a.C0828a.f(lg.a.f68839a, "premium_p", x() + " --> onProgress() --> 当前不处理，isStartInterceptWorking = true", false, 4, null);
                return;
            }
            if (this.f48059j) {
                return;
            }
            IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
            if (!(iPremiumApi != null ? iPremiumApi.c() : false) && this.f48060k) {
                long j12 = ((long) this.f48056g) * 1000;
                if (j11 > j12) {
                    lg.a.C0828a.f(lg.a.f68839a, "premium_p", x() + " --> onProgress() --> 免费观看时长用完，激励拦截 --> preview = " + j12 + " -- progress = " + j11 + " ", false, 4, null);
                    if (aVar2 != null) {
                        aVar2.pause();
                    }
                    new VideoContentInterceptManager().n(aVar, viewBinding, aVar2, this, new d(viewBinding, aVar));
                }
            }
        }
    }

    public final void H(PlaybackInterceptAdView playbackInterceptAdView, VideoContentInterceptView videoContentInterceptView, go.a aVar, final com.transsion.player.longvideo.intercept.d dVar) {
        PlaybackPremiumTipView playbackPremiumTipView;
        if (!h0.f48139a.d(aVar != null ? aVar.m() : null)) {
            lg.a.C0828a.f(lg.a.f68839a, "premium_p", "PlaybackInterceptionManager --> onRenderFirstFrame() --> 非电影电视剧 -- 启播广告", false, 4, null);
            if (playbackInterceptAdView != null) {
                playbackInterceptAdView.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        PlaybackInterceptionManager.I(dVar, this);
                    }
                }, 200L);
                return;
            }
            return;
        }
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi != null ? iPremiumApi.c() : false) {
            lg.a.C0828a.f(lg.a.f68839a, "premium_p", "PlaybackInterceptionManager --> onRenderFirstFrame() --> 当前是会员，不进行拦截", false, 4, null);
            ho.j jVar = this.f48052c;
            if (jVar != null && (playbackPremiumTipView = jVar.f64625o) != null) {
                playbackPremiumTipView.setPremiumTip();
            }
            if (playbackInterceptAdView != null) {
                playbackInterceptAdView.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        PlaybackInterceptionManager.J(dVar, this);
                    }
                }, 200L);
                return;
            }
            return;
        }
        if (aVar == null) {
            lg.a.C0828a.f(lg.a.f68839a, "premium_p", x() + " --> onRenderFirstFrame() --> bean ==null", false, 4, null);
            if (playbackInterceptAdView != null) {
                playbackInterceptAdView.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        PlaybackInterceptionManager.K(dVar, this);
                    }
                }, 200L);
                return;
            }
            return;
        }
        if (!ak.o.f646a.i() && !ak.g.f639a.b()) {
            if (playbackInterceptAdView != null) {
                playbackInterceptAdView.loadNativeAd("VideoStartBidScene", this, aVar, new e(aVar, playbackInterceptAdView, videoContentInterceptView, dVar));
                return;
            }
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", x() + " --> onRenderFirstFrame() --> 特殊模式", false, 4, null);
        if (playbackInterceptAdView != null) {
            playbackInterceptAdView.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.p
                @Override // java.lang.Runnable
                public final void run() {
                    PlaybackInterceptionManager.L(dVar, this);
                }
            }, 200L);
        }
    }

    public final void M(LongVodUiType uiType, ho.j viewBinding) {
        Intrinsics.h(uiType, "uiType");
        Intrinsics.h(viewBinding, "viewBinding");
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", x() + " --> onUiTypeChanged()", false, 4, null);
        this.f48050a = uiType;
        boolean z10 = this.f48051b;
        String str = this.f48062m;
        if (str == null) {
            str = "";
        }
        String str2 = this.f48063n;
        W(z10, str, str2 != null ? str2 : "", true);
        viewBinding.f64626p.onUiTypeChanged(uiType, viewBinding);
    }

    public final void N(VideoContentInterceptView videoContentInterceptView) {
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", x() + " --> onVideoPause()", false, 4, null);
    }

    public final void O(ao.e eVar, VideoContentInterceptView playbackInterceptView, com.transsion.player.ui.longvideo.a playerControl) {
        PlaybackInterceptAdView playbackInterceptAdView;
        Intrinsics.h(playbackInterceptView, "playbackInterceptView");
        Intrinsics.h(playerControl, "playerControl");
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", x() + " --> onVideoStart()", false, 4, null);
        BiddingInterstitialManager biddingInterstitialManager = this.f48065p;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.V();
        }
        this.f48065p = null;
        ho.j jVar = this.f48052c;
        if (jVar == null || (playbackInterceptAdView = jVar.f64626p) == null) {
            return;
        }
        playbackInterceptAdView.cannelPauseAd();
    }

    public final void P() {
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", x() + " --> onViewPause()", false, 4, null);
    }

    public final void Q() {
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", x() + " --> onViewResume()", false, 4, null);
    }

    public final void R(Function0 function0) {
        this.f48064o = function0;
    }

    public final void S(String str, String str2) {
        this.f48057h = str;
        h0 h0Var = h0.f48139a;
        go.a aVar = this.f48053d;
        this.f48060k = h0Var.e(aVar != null ? aVar.m() : null, str);
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", x() + " --> setCurPlayStream() --> isVipResolutionRatio = " + this.f48060k + " --> resolutions = " + str + " --> msg = " + str2, false, 4, null);
    }

    public final void T(go.a bean, ho.j viewBinding, FrameLayout frameLayout, String str, com.transsion.player.longvideo.intercept.d dVar) {
        Intrinsics.h(bean, "bean");
        Intrinsics.h(viewBinding, "viewBinding");
        this.f48053d = bean;
        this.f48052c = viewBinding;
        this.f48054e = frameLayout;
        this.f48055f = dVar;
        this.f48061l = str;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.intercept.x
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PlaybackInterceptionManager.U(view);
                }
            });
        }
        viewBinding.f64625o.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.intercept.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PlaybackInterceptionManager.V(view);
            }
        });
        h0 h0Var = h0.f48139a;
        this.f48056g = h0Var.b(bean.m());
        boolean zF = h0Var.f(bean.m());
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", x() + " --> setDataSource(设置播放资源) --> previewSeconds = " + this.f48056g + " --> isVipSource = " + zF + " --> playBean = " + bean + " ", false, 4, null);
        this.f48062m = "";
        this.f48063n = "";
        this.f48059j = false;
        this.f48058i = true;
        this.f48060k = false;
        viewBinding.f64620j.f64607g.setVisibility(8);
        viewBinding.f64624n.setVisibility(8);
        viewBinding.f64626p.setVisibility(8);
        viewBinding.f64626p.destroy();
    }

    public final void W(boolean z10, String sceneId, String traceId, boolean z11) {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        FrameLayout frameLayout3;
        Context context;
        View viewA;
        ho.j jVar;
        FrameLayout frameLayout4;
        FrameLayout frameLayout5;
        Subject subjectM;
        FrameLayout frameLayout6;
        Context context2;
        View viewA2;
        FrameLayout frameLayout7;
        Subject subjectM2;
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(traceId, "traceId");
        this.f48051b = z10;
        this.f48062m = sceneId;
        this.f48063n = traceId;
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", x() + " --> setPremiumViewShowState() --> isShowPremiumView = " + this.f48051b + " -- uiType = " + this.f48050a, false, 4, null);
        if (!z10) {
            ho.j jVar2 = this.f48052c;
            if (jVar2 != null && (frameLayout = jVar2.f64613c) != null) {
                frameLayout.setVisibility(8);
            }
            FrameLayout frameLayout8 = this.f48054e;
            if (frameLayout8 != null) {
                frameLayout8.setVisibility(8);
                return;
            }
            return;
        }
        Function0 function0 = this.f48064o;
        if (function0 != null) {
            function0.invoke();
        }
        int i11 = a.f48066a[this.f48050a.ordinal()];
        int i12 = 0;
        if (i11 != 1) {
            if (i11 != 2 && i11 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            FrameLayout frameLayout9 = this.f48054e;
            if (frameLayout9 != null && (context2 = frameLayout9.getContext()) != null) {
                IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
                if (iPremiumApi != null) {
                    Function0 function1 = new Function0() { // from class: com.transsion.player.longvideo.intercept.t
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return PlaybackInterceptionManager.a0(this.f48171a);
                        }
                    };
                    Function0 function2 = new Function0() { // from class: com.transsion.player.longvideo.intercept.u
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return PlaybackInterceptionManager.b0();
                        }
                    };
                    MemberSource memberSource = MemberSource.SOURCE_LANDSCAPE_PLAY;
                    String str = this.f48061l;
                    go.a aVar = this.f48053d;
                    viewA2 = IPremiumApi.a.a(iPremiumApi, context2, 0, function1, function2, memberSource, null, str, traceId, sceneId, (aVar == null || (subjectM2 = aVar.m()) == null) ? null : subjectM2.getSubjectId(), 32, null);
                } else {
                    viewA2 = null;
                }
                if (viewA2 != null && (frameLayout7 = this.f48054e) != null && frameLayout7.indexOfChild(viewA2) == -1) {
                    ViewParent parent = viewA2.getParent();
                    ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                    if (viewGroup != null) {
                        viewGroup.removeView(viewA2);
                    }
                    FrameLayout frameLayout10 = this.f48054e;
                    if (frameLayout10 != null) {
                        frameLayout10.addView(viewA2);
                    }
                }
            }
            ho.j jVar3 = this.f48052c;
            if (jVar3 != null && (frameLayout6 = jVar3.f64613c) != null) {
                frameLayout6.setVisibility(8);
            }
            FrameLayout frameLayout11 = this.f48054e;
            if (frameLayout11 != null) {
                frameLayout11.setVisibility(0);
                return;
            }
            return;
        }
        ho.j jVar4 = this.f48052c;
        if (jVar4 == null || (frameLayout3 = jVar4.f64613c) == null || (context = frameLayout3.getContext()) == null) {
            i12 = 0;
        } else {
            IPremiumApi iPremiumApi2 = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
            if (iPremiumApi2 != null) {
                Function0 function3 = new Function0() { // from class: com.transsion.player.longvideo.intercept.r
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PlaybackInterceptionManager.Y(this.f48168a);
                    }
                };
                Function0 function4 = new Function0() { // from class: com.transsion.player.longvideo.intercept.s
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PlaybackInterceptionManager.Z();
                    }
                };
                MemberSource memberSource2 = MemberSource.SOURCE_LANDSCAPE_PLAY;
                String str2 = this.f48061l;
                go.a aVar2 = this.f48053d;
                viewA = IPremiumApi.a.a(iPremiumApi2, context, 1, function3, function4, memberSource2, null, str2, traceId, sceneId, (aVar2 == null || (subjectM = aVar2.m()) == null) ? null : subjectM.getSubjectId(), 32, null);
            } else {
                viewA = null;
            }
            if (viewA != null && (jVar = this.f48052c) != null && (frameLayout4 = jVar.f64613c) != null && frameLayout4.indexOfChild(viewA) == -1) {
                ViewParent parent2 = viewA.getParent();
                ViewGroup viewGroup2 = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
                if (viewGroup2 != null) {
                    viewGroup2.removeView(viewA);
                }
                ho.j jVar5 = this.f48052c;
                if (jVar5 != null && (frameLayout5 = jVar5.f64613c) != null) {
                    frameLayout5.addView(viewA);
                }
            }
        }
        ho.j jVar6 = this.f48052c;
        if (jVar6 != null && (frameLayout2 = jVar6.f64613c) != null) {
            frameLayout2.setVisibility(i12);
        }
        FrameLayout frameLayout12 = this.f48054e;
        if (frameLayout12 != null) {
            frameLayout12.setVisibility(8);
        }
    }

    public final void w() {
        PlaybackPremiumTipView playbackPremiumTipView;
        PlaybackInterceptAdView playbackInterceptAdView;
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", x() + " --> destroy()", false, 4, null);
        ho.j jVar = this.f48052c;
        if (jVar != null && (playbackInterceptAdView = jVar.f64626p) != null) {
            playbackInterceptAdView.destroy();
        }
        ho.j jVar2 = this.f48052c;
        if (jVar2 != null && (playbackPremiumTipView = jVar2.f64625o) != null) {
            playbackPremiumTipView.destroy();
        }
        this.f48064o = null;
    }

    public final void y(go.a aVar, PlaybackInterceptAdView playbackInterceptAdView, LongVodUiType uiType, final com.transsion.player.longvideo.intercept.d dVar) {
        Intrinsics.h(uiType, "uiType");
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "premium_p", x() + " --> handlePause(加载暂停广告)", false, 4, null);
        if (!h0.f48139a.d(aVar != null ? aVar.m() : null)) {
            lg.a.C0828a.f(c0828a, "premium_p", "PlaybackInterceptionManager --> onRenderFirstFrame() --> 非电影电视剧 -- 暂停广告", false, 4, null);
            return;
        }
        if (aVar == null) {
            lg.a.C0828a.f(c0828a, "premium_p", x() + " --> handlePause() --> bean ==null", false, 4, null);
            if (playbackInterceptAdView != null) {
                playbackInterceptAdView.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        PlaybackInterceptionManager.z(dVar);
                    }
                }, 200L);
                return;
            }
            return;
        }
        if (playbackInterceptAdView != null && playbackInterceptAdView.getVisibility() == 0) {
            playbackInterceptAdView.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.q
                @Override // java.lang.Runnable
                public final void run() {
                    PlaybackInterceptionManager.A(dVar);
                }
            }, 200L);
            return;
        }
        if (ak.o.f646a.g() || ak.g.f639a.b()) {
            return;
        }
        if (uiType == LongVodUiType.LAND) {
            B(aVar, playbackInterceptAdView, uiType, dVar);
        } else if (playbackInterceptAdView != null) {
            playbackInterceptAdView.loadNativeAd("VerticalPauseScene", this, aVar, new b(playbackInterceptAdView, dVar));
        }
    }
}
