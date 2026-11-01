package ae;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.cloud.hisavana.sdk.api.listener.e;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.NativeAdWrapper;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.interfacz.AdShowListener;
import com.hisavana.common.utils.AdLogUtil;
import java.util.ArrayList;
import java.util.List;
import z6.d;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: ae.a$a, reason: collision with other inner class name */
    public class C0006a extends NativeAdWrapper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ BaseNative f606a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ AdNativeInfo f607b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ d f608c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ TaNativeInfo f609d;

        /* JADX INFO: renamed from: ae.a$a$a, reason: collision with other inner class name */
        public class C0007a extends e {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ AdShowListener f610b;

            public C0007a(AdShowListener adShowListener) {
                this.f610b = adShowListener;
            }

            @Override // com.cloud.hisavana.sdk.api.listener.e
            public void a(TaNativeInfo taNativeInfo) {
                C0006a c0006a = C0006a.this;
                c0006a.f606a.adImpression(c0006a.f607b);
                AdShowListener adShowListener = this.f610b;
                if (adShowListener != null) {
                    adShowListener.onAdShow(C0006a.this.f607b);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0006a(TaNativeInfo taNativeInfo, BaseNative baseNative, BaseNative baseNative2, AdNativeInfo adNativeInfo, d dVar, TaNativeInfo taNativeInfo2) {
            super(taNativeInfo, baseNative);
            this.f606a = baseNative2;
            this.f607b = adNativeInfo;
            this.f608c = dVar;
            this.f609d = taNativeInfo2;
        }

        @Override // com.hisavana.common.bean.NativeAdWrapper
        public void destroy() {
            BaseNative baseNative = this.f606a;
            if (baseNative != null) {
                baseNative.destroySingleAd(this.f607b);
            }
            try {
                ((TaNativeInfo) getNativeAd()).destroy();
            } catch (Throwable th2) {
                AdLogUtil.Log().w("Eagllwin", "destroy ad error:" + th2.getMessage());
            }
        }

        @Override // com.hisavana.common.bean.NativeAdWrapper
        public String getAdData() {
            return GsonUtil.d(this.f609d.getAdItem());
        }

        @Override // com.hisavana.common.bean.NativeAdWrapper
        public Bundle getTrackBundle() {
            if (getAdImpl() != null) {
                return getAdImpl().mBundle;
            }
            return null;
        }

        @Override // com.hisavana.common.bean.NativeAdWrapper
        public void handleClick() {
            h7.a.b(this.f609d);
            this.f606a.adClicked(this.f607b);
        }

        @Override // com.hisavana.common.bean.NativeAdWrapper
        public void handleShow() {
            h7.a.e(this.f609d);
            this.f606a.adImpression(this.f607b);
        }

        @Override // com.hisavana.common.bean.NativeAdWrapper
        public boolean isExpired() {
            int iU = this.f608c.u((TaNativeInfo) getNativeAd());
            setExpireReason(iU);
            return iU != 0;
        }

        @Override // com.hisavana.common.bean.NativeAdWrapper
        public boolean isIconValid() {
            return true;
        }

        @Override // com.hisavana.common.bean.NativeAdWrapper
        public boolean isImageValid() {
            return true;
        }

        @Override // com.hisavana.common.bean.NativeAdWrapper
        public boolean isMatchVulgarBrand() {
            return this.f609d.isMatchVulgarBrand();
        }

        @Override // com.hisavana.common.bean.NativeAdWrapper
        public boolean isMaterielValid() {
            return this.f606a.isIconAd() ? isIconValid() : isImageValid();
        }

        @Override // com.hisavana.common.bean.NativeAdWrapper
        public void registerViewForInteraction(View view, AdShowListener adShowListener) {
            BaseNative baseNative = this.f606a;
            if (baseNative == null) {
                return;
            }
            baseNative.logTrigerShow(this.f607b);
            h7.a.f(this.f609d, view, new C0007a(adShowListener));
        }

        @Override // com.hisavana.common.bean.NativeAdWrapper
        public void trackRecommendClick(String str, String str2) {
            try {
                this.f606a.trackRecommendClick(str, str2);
            } catch (Throwable unused) {
            }
        }

        @Override // com.hisavana.common.bean.NativeAdWrapper
        public void trackRecommendShow(List list) {
            try {
                this.f606a.trackRecommendShow(list);
            } catch (Throwable unused) {
            }
        }
    }

    public static TAdNativeInfo a(TaNativeInfo taNativeInfo, int i11, int i12, BaseNative baseNative, d dVar) {
        AdNativeInfo.Image image;
        if (taNativeInfo != null && baseNative != null) {
            try {
                AdNativeInfo adNativeInfo = new AdNativeInfo();
                ArrayList arrayList = new ArrayList();
                adNativeInfo.setAdId(DeviceUtil.o());
                adNativeInfo.setTitle(taNativeInfo.getTitle());
                adNativeInfo.setDescription(taNativeInfo.getDescription());
                adNativeInfo.setAdCallToAction(taNativeInfo.getCtatext());
                adNativeInfo.setHisavanaSource(taNativeInfo.getHisavanaSource());
                if (taNativeInfo.getIconImage() == null || TextUtils.isEmpty(taNativeInfo.getIconImage().getImgUrl())) {
                    image = null;
                } else {
                    image = new AdNativeInfo.Image();
                    image.setUrl(taNativeInfo.getIconImage().getImgUrl());
                    image.setWidth(taNativeInfo.getIconImage().getW());
                    image.setHeight(taNativeInfo.getIconImage().getH());
                    image.setDrawable(taNativeInfo.getIconImage().getDrawable());
                    image.setCached(taNativeInfo.getIconImage().isCached());
                }
                adNativeInfo.setIcon(image);
                if (taNativeInfo.getImage() != null) {
                    AdNativeInfo.Image image2 = new AdNativeInfo.Image();
                    image2.setUrl(taNativeInfo.getImage().getImgUrl());
                    image2.setWidth(taNativeInfo.getImage().getW());
                    image2.setHeight(taNativeInfo.getImage().getH());
                    image2.setDrawable(taNativeInfo.getImage().getDrawable());
                    image2.setCached(taNativeInfo.getImage().isCached());
                    arrayList.add(image2);
                }
                adNativeInfo.setImageList(arrayList);
                adNativeInfo.setRating(taNativeInfo.getRating());
                double bidPrice = taNativeInfo.getBidPrice();
                if (bidPrice > 0.0d) {
                    adNativeInfo.setEcpmPrice(bidPrice);
                }
                adNativeInfo.setAdType(i11);
                adNativeInfo.setTtl(i12);
                adNativeInfo.setAdSource(baseNative.getAdSource());
                adNativeInfo.setMaterialStyle(taNativeInfo.getMaterialStyle());
                adNativeInfo.setAdCreateId(taNativeInfo.getAdCreateId() == null ? "0" : taNativeInfo.getAdCreateId().toString());
                adNativeInfo.setOfflineAd(taNativeInfo.isOfflineAd());
                adNativeInfo.setPullNewestLive(taNativeInfo.getPullNewestLive());
                adNativeInfo.setPackageName(taNativeInfo.getPackageName());
                adNativeInfo.setAppInfo(taNativeInfo.getAppInfo());
                adNativeInfo.setIconAd(baseNative.isIconAd());
                adNativeInfo.setPullNewestLive(taNativeInfo.getPullNewestLive());
                adNativeInfo.setDeepLink(taNativeInfo.getAdItem().getDeepLinkUrl());
                adNativeInfo.setTriggerId(baseNative.getTriggerId());
                adNativeInfo.setInternalAd(taNativeInfo.isDefaultAd());
                try {
                    adNativeInfo.setSourceSize(taNativeInfo.getSourceSize());
                } catch (Throwable unused) {
                }
                try {
                    adNativeInfo.setAdFormat(taNativeInfo.getAdFormat());
                } catch (Throwable unused2) {
                }
                try {
                    adNativeInfo.setUseRecommend(taNativeInfo.isUseRecommend());
                } catch (Throwable unused3) {
                }
                try {
                    adNativeInfo.setSspWebRecommendInfos(taNativeInfo.getRecommendInfos());
                } catch (Throwable unused4) {
                }
                adNativeInfo.setFromLocal(taNativeInfo.getAdItem() != null && taNativeInfo.getAdItem().isFromLocal());
                adNativeInfo.setNativeAdWrapper(new C0006a(taNativeInfo, baseNative, baseNative, adNativeInfo, dVar, taNativeInfo));
                return adNativeInfo;
            } catch (Exception e11) {
                AdLogUtil.Log().w("PlatformUtil", Log.getStackTraceString(e11));
            }
        }
        return null;
    }
}
