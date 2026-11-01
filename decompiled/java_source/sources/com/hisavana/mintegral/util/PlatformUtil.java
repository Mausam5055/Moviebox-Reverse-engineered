package com.hisavana.mintegral.util;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.NativeAdWrapper;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.mbridge.msdk.out.Campaign;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class PlatformUtil {
    public static TAdNativeInfo getTAdNativeInfo(final Campaign campaign, int i11, int i12, final BaseNative baseNative) {
        AdNativeInfo.Image image = null;
        if (campaign == null || baseNative == null) {
            return null;
        }
        final AdNativeInfo adNativeInfo = new AdNativeInfo();
        if (baseNative.getNetwork() != null) {
            adNativeInfo.setEcpmPrice(baseNative.getNetwork().getPrice().doubleValue());
        }
        adNativeInfo.setTriggerId(baseNative.getTriggerId());
        adNativeInfo.setNativeAdWrapper(new NativeAdWrapper<Campaign>(campaign, baseNative) { // from class: com.hisavana.mintegral.util.PlatformUtil.1
            @Override // com.hisavana.common.bean.NativeAdWrapper
            public void destroy() {
                BaseNative baseNative2 = baseNative;
                if (baseNative2 != null) {
                    baseNative2.destroySingleAd(adNativeInfo);
                }
                try {
                    getAdImpl().destroyAd();
                } catch (Throwable th2) {
                    AdLogUtil.Log().w("mintegral PlatformUtil", "destroy ad error:" + th2.getMessage());
                }
            }

            @Override // com.hisavana.common.bean.NativeAdWrapper
            public Bundle getTrackBundle() {
                if (getAdImpl() != null) {
                    return getAdImpl().mBundle;
                }
                return null;
            }

            @Override // com.hisavana.common.bean.NativeAdWrapper
            public boolean isIconValid() {
                return !TextUtils.isEmpty(campaign.getIconUrl());
            }

            @Override // com.hisavana.common.bean.NativeAdWrapper
            public boolean isImageValid() {
                return !TextUtils.isEmpty(campaign.getImageUrl());
            }

            @Override // com.hisavana.common.bean.NativeAdWrapper
            public boolean isMaterielValid() {
                return true;
            }
        });
        adNativeInfo.setAdId(DeviceUtil.o());
        if (!TextUtils.isEmpty(campaign.getAppName())) {
            adNativeInfo.setTitle(campaign.getAppName());
        }
        if (!TextUtils.isEmpty(campaign.getAppDesc())) {
            adNativeInfo.setDescription(campaign.getAppDesc());
        }
        if (!TextUtils.isEmpty(campaign.getAdCall())) {
            adNativeInfo.setAdCallToAction(campaign.getAdCall());
        }
        adNativeInfo.setRating(campaign.getRating() + "");
        if (!TextUtils.isEmpty(campaign.getIconUrl())) {
            image = new AdNativeInfo.Image();
            image.setUrl(campaign.getIconUrl());
        }
        adNativeInfo.setIcon(image);
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(campaign.getImageUrl())) {
            AdNativeInfo.Image image2 = new AdNativeInfo.Image();
            image2.setUrl(campaign.getImageUrl());
            image2.setDrawable(campaign.getBigDrawable());
            arrayList.add(image2);
        }
        adNativeInfo.setImageList(arrayList);
        adNativeInfo.setAdType(i11);
        adNativeInfo.setTtl(i12);
        adNativeInfo.setAdSource(baseNative.getAdSource());
        adNativeInfo.setAdCreateId(adNativeInfo.getAdId());
        return adNativeInfo;
    }
}
