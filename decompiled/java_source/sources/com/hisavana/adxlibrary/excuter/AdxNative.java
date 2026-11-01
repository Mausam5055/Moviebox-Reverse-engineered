package com.hisavana.adxlibrary.excuter;

import a7.c;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.bean.SSPWebPageReqInfo;
import com.cloud.hisavana.sdk.common.bean.SSPWebRecommendInfo;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import z6.d;

/* JADX INFO: loaded from: classes4.dex */
public class AdxNative extends BaseNative {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f33144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AdNativeInfo f33145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SSPWebPageReqInfo f33146c;

    public class a extends com.cloud.hisavana.sdk.api.listener.d {
        public a() {
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdActivate(AdActiveInfo adActiveInfo) {
            AdxNative.this.adActivate(adActiveInfo);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdClosed(TaNativeInfo taNativeInfo) {
            super.onAdClosed();
            AdxNative.this.adClosed(AdxNative.this.a(taNativeInfo));
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdLoaded(List list) {
            AdLogUtil.Log().d("AdxNative", "onAdLoaded multi");
            int i11 = 0;
            int i12 = 0;
            while (i11 < list.size()) {
                TaNativeInfo taNativeInfo = (TaNativeInfo) list.get(i11);
                int i13 = ((BaseNative) AdxNative.this).mAdt;
                int ttl = AdxNative.this.getTtl();
                AdxNative adxNative = AdxNative.this;
                TAdNativeInfo tAdNativeInfoA = ae.a.a(taNativeInfo, i13, ttl, adxNative, adxNative.f33144a);
                int iFilter = AdxNative.this.filter(tAdNativeInfoA);
                if (iFilter == 0) {
                    ((BaseNative) AdxNative.this).mNatives.add(tAdNativeInfoA);
                } else {
                    AdUtil.release(tAdNativeInfoA);
                }
                i11++;
                i12 = iFilter;
            }
            AdxNative adxNative2 = AdxNative.this;
            List<TAdNativeInfo> listA = adxNative2.a((List<TAdNativeInfo>) ((BaseNative) adxNative2).mNatives);
            if (listA != null && !listA.isEmpty()) {
                AdxNative.this.b((List<TaNativeInfo>) list);
                AdxNative.this.adLoaded(listA);
                return;
            }
            AdxNative.this.adFailedToLoad(new TAdErrorCode(i12, "ad filter"));
            AdLogUtil.Log().w("AdxNative", "ad not pass filter check or no icon or image filter:" + i12);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onError(TaErrorCode taErrorCode) {
            AdLogUtil.Log().w("AdxNative", "onAdLoaded error +" + taErrorCode.getErrorCode() + ":::" + taErrorCode.getErrorMessage());
            AdxNative.this.adFailedToLoad(new TAdErrorCode(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage()));
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onNativeAdClick(TaNativeInfo taNativeInfo) {
            TAdNativeInfo tAdNativeInfoA = AdxNative.this.a(taNativeInfo);
            if (tAdNativeInfoA instanceof AdNativeInfo) {
                AdxNative.this.adClicked((AdNativeInfo) tAdNativeInfoA);
            } else {
                AdxNative.this.adClicked(null);
            }
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onNativeAdShow(TaNativeInfo taNativeInfo) {
            super.onAdShow();
            TAdNativeInfo tAdNativeInfoA = AdxNative.this.a(taNativeInfo);
            if (tAdNativeInfoA instanceof AdNativeInfo) {
                AdxNative.this.adImpression((AdNativeInfo) tAdNativeInfoA);
            } else {
                AdxNative.this.adImpression(null);
            }
        }
    }

    public AdxNative(Context context, Network network, int i11) {
        super(context, network, i11);
    }

    public final TAdNativeInfo a(TaNativeInfo taNativeInfo) {
        List<TAdNativeInfo> list = this.mNatives;
        if (list != null && !list.isEmpty()) {
            for (TAdNativeInfo tAdNativeInfo : this.mNatives) {
                if (tAdNativeInfo != null && tAdNativeInfo.getNativeAdWrapper() != null && ((TaNativeInfo) tAdNativeInfo.getNativeAdWrapper().getNativeAd()) == taNativeInfo) {
                    return tAdNativeInfo;
                }
            }
        }
        return null;
    }

    public final List<TAdNativeInfo> a(List<TAdNativeInfo> list) {
        if (list == null || getAdType() != 6) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (TAdNativeInfo tAdNativeInfo : list) {
            if (!TextUtils.isEmpty(tAdNativeInfo.getFilterSource()) && !arrayList2.contains(tAdNativeInfo.getFilterSource())) {
                arrayList2.add(tAdNativeInfo.getFilterSource());
                arrayList.add(tAdNativeInfo);
            }
        }
        return arrayList;
    }

    public final void b(List<TaNativeInfo> list) {
        ArrayList arrayList = new ArrayList();
        for (TaNativeInfo taNativeInfo : list) {
            if (taNativeInfo != null) {
                Bundle bundle = new Bundle();
                bundle.putString(TrackingKey.AD_TITLE, taNativeInfo.getTitle());
                bundle.putString(TrackingKey.AD_URL, "");
                bundle.putString(TrackingKey.DESCRIPTION, taNativeInfo.getDescription());
                if (taNativeInfo.getImage() != null) {
                    bundle.putString("image_url", taNativeInfo.getImage().getImgUrl());
                }
                if (taNativeInfo.getIconImage() != null) {
                    bundle.putString("icon_url", taNativeInfo.getIconImage().getImgUrl());
                }
                bundle.putString("endcard_url", "");
                bundle.putString("app_name", "");
                bundle.putString("package_name", "");
                bundle.putString("download_url", "");
                HashMap map = new HashMap();
                for (String str : bundle.keySet()) {
                    String str2 = (String) bundle.get(str);
                    if (str2 != null) {
                        map.put(str, str2);
                    }
                }
                arrayList.add(map);
            }
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString(TrackingKey.NATIVE_INFO_LIST, GsonUtil.d(arrayList));
        setTrackingBundle(bundle2);
    }

    @Override // com.hisavana.common.base.BaseNative, com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
        d dVar = this.f33144a;
        if (dVar != null) {
            dVar.c();
            this.f33144a = null;
        }
        this.f33145b = null;
        AdLogUtil.Log().d("AdxNative", PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    public d getNativeAd() {
        return this.f33144a;
    }

    @Override // com.hisavana.common.base.BaseNative
    public void initNative() {
        if (this.mNetwork != null) {
            this.mNatives.clear();
            d dVar = new d(this.mNetwork.getCodeSeatId());
            this.f33144a = dVar;
            dVar.A(this.mAdCount);
            c.f365b = this.mNetwork.getApplicationId();
            a aVar = new a();
            this.f33144a.r(b7.a.a().a());
            this.f33144a.p(aVar);
            this.f33144a.q(this.mNetwork.getCodeSeatId());
        }
    }

    @Override // com.hisavana.common.base.BaseNative, com.hisavana.common.interfacz.ICacheAd
    public boolean isOfflineAd() {
        List<TAdNativeInfo> list = this.mNatives;
        return (list == null || list.isEmpty() || !this.mNatives.get(0).isOfflineAd()) ? false : true;
    }

    @Override // com.hisavana.common.base.BaseNative
    public void onNativeAdStartLoad() {
        String codeSeatId;
        d dVar = this.f33144a;
        if (dVar != null && dVar.h() != null) {
            b7.a aVarH = this.f33144a.h();
            aVarH.k(this.requestType);
            aVarH.l("hisa-" + this.mTriggerId);
            aVarH.j("hisa-" + this.mRequestId);
            aVarH.i(getSupportHisavanaFlag() >= 2);
            this.f33144a.r(aVarH);
            this.f33144a.m(this.isContainVulgarContent);
            this.f33144a.B(this.mAdt == 6);
            this.f33144a.l(this.mGameName, this.mGameScene, this.mExtInfo);
            this.f33144a.n(this.mCurrActivityFullscreen);
            this.f33144a.C(this.f33146c);
            this.f33144a.w();
            this.f33146c = null;
        }
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("adx native load mPlacementId:");
        Network network = this.mNetwork;
        if (network != null) {
            codeSeatId = network.getCodeSeatId();
        } else {
            codeSeatId = " num:" + this.mAdCount;
        }
        sb2.append(codeSeatId);
        adLogUtilLog.d("AdxNative", sb2.toString());
    }

    @Override // com.hisavana.common.interfacz.IadNative
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, AdNativeInfo adNativeInfo) {
        this.f33145b = adNativeInfo;
        logTrigerShow(adNativeInfo);
        if (viewGroup == null || this.f33144a == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e("AdxNative", "registerViewForInteraction error, mNativeAd is null");
            return;
        }
        unregisterView(adNativeInfo);
        try {
            TaNativeInfo taNativeInfo = (TaNativeInfo) adNativeInfo.getNativeAdWrapper().getNativeAd();
            double secondPrice = adNativeInfo.getSecondPrice();
            if (secondPrice != 0.0d) {
                taNativeInfo.setSecondPrice(secondPrice);
            }
            this.f33144a.y(viewGroup, list, taNativeInfo);
        } catch (Exception e11) {
            AdLogUtil.Log().e("AdxNative", Log.getStackTraceString(e11));
            onAdShowError(new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, e11.getMessage()));
        }
    }

    @Override // com.hisavana.common.base.BaseNative
    public void setRecommendReqInfo(SSPWebPageReqInfo sSPWebPageReqInfo) {
        this.f33146c = sSPWebPageReqInfo;
    }

    @Override // com.hisavana.common.base.BaseNative
    public void trackRecommendClick(String str, String str2) {
        try {
            this.f33144a.D(str, str2);
        } catch (Exception unused) {
        }
    }

    @Override // com.hisavana.common.base.BaseNative
    public void trackRecommendShow(List<SSPWebRecommendInfo> list) {
        try {
            this.f33144a.E(list);
        } catch (Exception unused) {
        }
    }

    @Override // com.hisavana.common.interfacz.IadNative
    public void unregisterView(AdNativeInfo adNativeInfo) {
    }
}
