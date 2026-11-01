package com.transsion.ad.bidding.splash;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import com.blankj.utilcode.util.Utils;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.common.interfacz.OnSkipListener;
import com.hisavana.mediation.ad.TSplashAd;
import com.hisavana.mediation.ad.TSplashView;
import com.transsion.ad.MBAd;
import com.transsion.ad.bidding.base.AbsBiddingInterceptHiSavanaAdManager;
import com.transsion.ad.strategy.d;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends AbsBiddingInterceptHiSavanaAdManager {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final C0595a f42032n = new C0595a(null);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Lazy f42033o = LazyKt.b(new Function0() { // from class: gi.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return com.transsion.ad.bidding.splash.a.x();
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TSplashAd f42034i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f42035j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Integer f42036k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private WeakReference f42037l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private WeakReference f42038m;

    /* JADX INFO: renamed from: com.transsion.ad.bidding.splash.a$a, reason: collision with other inner class name */
    public static final class C0595a {
        private C0595a() {
        }

        public /* synthetic */ C0595a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final HashMap b() {
            return (HashMap) a.f42033o.getValue();
        }

        public final a a(String str) {
            String strH;
            if (TextUtils.isEmpty(str) || (strH = com.transsion.ad.scene.a.f42201a.h(str)) == null) {
                return null;
            }
            a aVar = (a) b().get(strH);
            if (aVar == null) {
                aVar = new a();
                aVar.q(strH);
                b().put(strH, aVar);
            }
            aVar.y(str);
            return aVar;
        }
    }

    public static final class b implements OnSkipListener {
        b() {
        }

        @Override // com.hisavana.common.interfacz.OnSkipListener
        public void onClick() {
            oi.a.o(oi.a.f71022a, "ad_s", "BiddingHisavanaSplashActivity --> onSkipClick()", 0, false, 12, null);
            WeakReference weakReference = a.this.f42037l;
            Activity activity = weakReference != null ? (Activity) weakReference.get() : null;
            BiddingHisavanaSplashActivity biddingHisavanaSplashActivity = activity instanceof BiddingHisavanaSplashActivity ? (BiddingHisavanaSplashActivity) activity : null;
            if (biddingHisavanaSplashActivity != null) {
                biddingHisavanaSplashActivity.R();
            }
        }

        @Override // com.hisavana.common.interfacz.OnSkipListener
        public void onTimeReach() {
            oi.a.o(oi.a.f71022a, "ad_s", "BiddingHisavanaSplashActivity --> onTimeReach()", 0, false, 12, null);
            WeakReference weakReference = a.this.f42037l;
            Activity activity = weakReference != null ? (Activity) weakReference.get() : null;
            BiddingHisavanaSplashActivity biddingHisavanaSplashActivity = activity instanceof BiddingHisavanaSplashActivity ? (BiddingHisavanaSplashActivity) activity : null;
            if (biddingHisavanaSplashActivity != null) {
                biddingHisavanaSplashActivity.T();
            }
        }
    }

    public static /* synthetic */ void A(a aVar, BiddingHisavanaSplashActivity biddingHisavanaSplashActivity, TSplashView tSplashView, View view, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            view = null;
        }
        aVar.z(biddingHisavanaSplashActivity, tSplashView, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HashMap x() {
        return new HashMap();
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingInterceptHiSavanaAdManager
    public ce.b e() {
        String strF;
        if (this.f42034i == null) {
            TSplashAd tSplashAd = new TSplashAd(Utils.a(), i());
            this.f42034i = tSplashAd;
            tSplashAd.setRequestBody(new TAdRequestBody.AdRequestBodyBuild().setAdditionalListener(this).build());
            TSplashAd tSplashAd2 = this.f42034i;
            if (tSplashAd2 != null) {
                tSplashAd2.setSplashMode(2);
            }
            TSplashAd tSplashAd3 = this.f42034i;
            if (tSplashAd3 != null) {
                tSplashAd3.setOnSkipListener(new b());
            }
            TSplashAd tSplashAd4 = this.f42034i;
            if (tSplashAd4 != null) {
                MBAd mBAd = MBAd.f41751a;
                MBAd.a aVarC = mBAd.c();
                if (aVarC == null || (strF = aVarC.f()) == null) {
                    strF = "";
                }
                MBAd.a aVarC2 = mBAd.c();
                tSplashAd4.setOnlySourceAdx(strF, aVarC2 != null ? aVarC2.l() : false);
            }
        }
        return this.f42034i;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingInterceptHiSavanaAdManager
    public int f() {
        return 5;
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_s";
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingInterceptHiSavanaAdManager
    public void o() {
        TSplashAd tSplashAd = this.f42034i;
        if (tSplashAd != null) {
            tSplashAd.destroy();
        }
        this.f42034i = null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingInterceptHiSavanaAdManager
    public void r(Activity topActivity, String sceneId, Integer num, Map map) {
        Object objM454constructorimpl;
        TSplashAd tSplashAd;
        Intrinsics.h(topActivity, "topActivity");
        Intrinsics.h(sceneId, "sceneId");
        this.f42036k = num;
        this.f42038m = new WeakReference(topActivity);
        if (d.f42231a.d(map) && (tSplashAd = this.f42034i) != null) {
            tSplashAd.setContainVulgarContent(true);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Intent intent = new Intent(topActivity, (Class<?>) BiddingHisavanaSplashActivity.class);
            intent.putExtra("key_scene_id", sceneId);
            topActivity.startActivity(intent);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            oi.a.o(oi.a.f71022a, "ad_s", "程序化开屏 show 异常 --> " + thM457exceptionOrNullimpl.getMessage(), 0, false, 12, null);
            di.a aVarH = h();
            if (aVarH != null) {
                aVarH.onShowError(new TAdErrorCode(-1, "程序化开屏 show 异常 --> " + thM457exceptionOrNullimpl.getMessage()), new AdditionalInfo());
            }
        }
    }

    public final void y(String str) {
        this.f42035j = str;
    }

    public final void z(BiddingHisavanaSplashActivity activity, TSplashView tSplashView, View view) {
        TSplashAd tSplashAd;
        Intrinsics.h(activity, "activity");
        this.f42037l = new WeakReference(activity);
        if (tSplashView == null || (tSplashAd = this.f42034i) == null) {
            return;
        }
        tSplashAd.showAd(tSplashView, view);
    }
}
