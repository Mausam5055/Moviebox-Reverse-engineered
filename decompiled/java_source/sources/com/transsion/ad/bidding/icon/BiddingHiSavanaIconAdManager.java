package com.transsion.ad.bidding.icon;

import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.mediation.ad.TNativeAd;
import com.transsion.ad.bidding.base.x;
import com.transsion.ad.hi.HiSavanaAdManager;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class BiddingHiSavanaIconAdManager extends x {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f41928d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TNativeAd f41929e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private di.a f41930f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f41931g;

    private final String getClassTag() {
        String simpleName = BiddingHiSavanaIconAdManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void b() {
        this.f41930f = null;
        TNativeAd tNativeAd = this.f41929e;
        if (tNativeAd != null) {
            tNativeAd.destroy();
        }
        this.f41929e = null;
    }

    public final void c(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        k.d(o0.a(y0.c()), null, null, new BiddingHiSavanaIconAdManager$enterScene$1(this, sceneId, null), 3, null);
    }

    public final TNativeAd d() {
        return this.f41929e;
    }

    public final void e() {
        if (!HiSavanaAdManager.f42117a.i()) {
            di.a aVar = this.f41930f;
            if (aVar != null) {
                aVar.onLoadFailure(new TAdErrorCode(103, "广告SDK没有初始化"), new AdditionalInfo());
                return;
            }
            return;
        }
        String strH = com.transsion.ad.scene.a.f42201a.h(getSceneId());
        if (strH == null) {
            strH = "";
        }
        if (TextUtils.isEmpty(strH)) {
            di.a aVar2 = this.f41930f;
            if (aVar2 != null) {
                aVar2.onLoadFailure(new TAdErrorCode(103, "当前场景配置不存在"), new AdditionalInfo());
                return;
            }
            return;
        }
        if (this.f41928d) {
            return;
        }
        this.f41928d = true;
        if (this.f41929e == null) {
            TNativeAd tNativeAd = new TNativeAd(Utils.a(), strH);
            this.f41929e = tNativeAd;
            tNativeAd.setRequestBody(new TAdRequestBody.AdRequestBodyBuild().setAdditionalListener(this).build());
            oi.a.o(oi.a.f71022a, "ad_ic", getClassTag() + " --> loadAd() --> ==================== mPlacementId = " + strH + " --> create TNativeAd() =================== ", 0, false, 4, null);
        }
        TNativeAd tNativeAd2 = this.f41929e;
        if (tNativeAd2 != null) {
            tNativeAd2.loadAd();
        }
    }

    public final void f(di.a listener) {
        Intrinsics.h(listener, "listener");
        this.f41930f = listener;
    }

    public final void g(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        this.f41931g = sceneId;
    }

    public final String getSceneId() {
        return this.f41931g;
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onClick(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onClick(tAdNativeInfo, additionalInfo);
        di.a aVar = this.f41930f;
        if (aVar != null) {
            aVar.onClick(tAdNativeInfo, additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onLoadFailure(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadFailure(tAdErrorCode, additionalInfo);
        di.a aVar = this.f41930f;
        if (aVar != null) {
            aVar.onLoadFailure(tAdErrorCode, additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onLoadSuccess(AdditionalInfo additionalInfo) {
        di.a aVar;
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadSuccess(additionalInfo);
        TNativeAd tNativeAd = this.f41929e;
        List<TAdNativeInfo> nativeAdInfo = tNativeAd != null ? tNativeAd.getNativeAdInfo() : null;
        if (nativeAdInfo == null || (aVar = this.f41930f) == null) {
            return;
        }
        aVar.q(nativeAdInfo);
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onShow(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShow(tAdNativeInfo, additionalInfo);
        di.a aVar = this.f41930f;
        if (aVar != null) {
            aVar.onShow(tAdNativeInfo, additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onShowError(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShowError(tAdErrorCode, additionalInfo);
        di.a aVar = this.f41930f;
        if (aVar != null) {
            aVar.onShowError(tAdErrorCode, additionalInfo);
        }
    }
}
