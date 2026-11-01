package com.transsion.ad.bidding.interstitial;

import android.app.Activity;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.mediation.ad.TInterstitialAd;
import com.transsion.ad.bidding.base.AbsBiddingInterceptHiSavanaAdManager;
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
public final class l extends AbsBiddingInterceptHiSavanaAdManager {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f41980j = new a(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Lazy f41981k = LazyKt.b(new Function0() { // from class: com.transsion.ad.bidding.interstitial.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return l.w();
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TInterstitialAd f41982i;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final HashMap a() {
            return (HashMap) l.f41981k.getValue();
        }

        public final l b(String str) {
            String strH;
            if (TextUtils.isEmpty(str) || (strH = com.transsion.ad.scene.a.f42201a.h(str)) == null) {
                return null;
            }
            l lVar = (l) a().get(strH);
            if (lVar != null) {
                return lVar;
            }
            l lVar2 = new l();
            lVar2.q(strH);
            a().put(strH, lVar2);
            return lVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HashMap w() {
        return new HashMap();
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingInterceptHiSavanaAdManager
    public ce.b e() {
        if (this.f41982i == null) {
            TInterstitialAd tInterstitialAd = new TInterstitialAd(Utils.a(), i());
            this.f41982i = tInterstitialAd;
            tInterstitialAd.setRequestBody(new TAdRequestBody.AdRequestBodyBuild().setAdditionalListener(this).build());
        }
        return this.f41982i;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingInterceptHiSavanaAdManager
    public int f() {
        return 4;
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_int";
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingInterceptHiSavanaAdManager
    public void o() {
        TInterstitialAd tInterstitialAd = this.f41982i;
        if (tInterstitialAd != null) {
            tInterstitialAd.destroy();
        }
        this.f41982i = null;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingInterceptHiSavanaAdManager
    public void r(Activity topActivity, String sceneId, Integer num, Map map) {
        Object objM454constructorimpl;
        di.a aVarH;
        Unit unit;
        TInterstitialAd tInterstitialAd;
        Intrinsics.h(topActivity, "topActivity");
        Intrinsics.h(sceneId, "sceneId");
        if (com.transsion.ad.strategy.d.f42231a.d(map) && (tInterstitialAd = this.f41982i) != null) {
            tInterstitialAd.setContainVulgarContent(true);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            TInterstitialAd tInterstitialAd2 = this.f41982i;
            if (tInterstitialAd2 != null) {
                tInterstitialAd2.show(topActivity);
                unit = Unit.f67061a;
            } else {
                di.a aVarH2 = h();
                if (aVarH2 != null) {
                    aVarH2.onShowError(new TAdErrorCode(-1, "tInterstitialAd == null"), new AdditionalInfo());
                    unit = Unit.f67061a;
                } else {
                    unit = null;
                }
            }
            objM454constructorimpl = Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null || (aVarH = h()) == null) {
            return;
        }
        aVarH.onShowError(new TAdErrorCode(-1, "程序化 show 异常 it = " + thM457exceptionOrNullimpl.getMessage()), new AdditionalInfo());
    }
}
