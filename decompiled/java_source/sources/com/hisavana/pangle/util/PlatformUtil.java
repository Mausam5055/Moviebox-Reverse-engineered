package com.hisavana.pangle.util;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.NativeAdWrapper;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.mbridge.msdk.mbbid.out.BidResponsed;

/* JADX INFO: loaded from: classes4.dex */
public class PlatformUtil {
    public static TAdNativeInfo getTAdNativeInfo(PAGNativeAd pAGNativeAd, int i11, int i12, final BaseNative baseNative) {
        AdNativeInfo.Image image;
        if (pAGNativeAd != null) {
            try {
                if (pAGNativeAd.getNativeAdData() != null && baseNative != null) {
                    final PAGNativeAdData nativeAdData = pAGNativeAd.getNativeAdData();
                    final AdNativeInfo adNativeInfo = new AdNativeInfo();
                    if (baseNative.getNetwork() != null) {
                        adNativeInfo.setEcpmPrice(baseNative.getNetwork().getPrice().doubleValue());
                    }
                    adNativeInfo.setTriggerId(baseNative.getTriggerId());
                    adNativeInfo.setNativeAdWrapper(new NativeAdWrapper<PAGNativeAd>(pAGNativeAd, baseNative) { // from class: com.hisavana.pangle.util.PlatformUtil.1
                        @Override // com.hisavana.common.bean.NativeAdWrapper
                        public void destroy() {
                            BaseNative baseNative2 = baseNative;
                            if (baseNative2 != null) {
                                baseNative2.destroySingleAd(adNativeInfo);
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
                            return (nativeAdData.getIcon() == null || TextUtils.isEmpty(nativeAdData.getIcon().getImageUrl())) ? false : true;
                        }

                        @Override // com.hisavana.common.bean.NativeAdWrapper
                        public boolean isImageValid() {
                            return true;
                        }

                        @Override // com.hisavana.common.bean.NativeAdWrapper
                        public boolean isMaterielValid() {
                            return true;
                        }
                    });
                    adNativeInfo.setAdId(DeviceUtil.o());
                    if (!TextUtils.isEmpty(nativeAdData.getTitle())) {
                        adNativeInfo.setTitle(nativeAdData.getTitle());
                    }
                    if (!TextUtils.isEmpty(nativeAdData.getDescription())) {
                        adNativeInfo.setDescription(nativeAdData.getDescription());
                    }
                    if (!TextUtils.isEmpty(nativeAdData.getButtonText())) {
                        adNativeInfo.setAdCallToAction(nativeAdData.getButtonText());
                    }
                    if (nativeAdData.getIcon() == null || nativeAdData.getIcon().getImageUrl() == null) {
                        image = null;
                    } else {
                        image = new AdNativeInfo.Image();
                        image.setUrl(nativeAdData.getIcon().getImageUrl());
                    }
                    adNativeInfo.setIcon(image);
                    double d11 = Double.parseDouble(pAGNativeAd.getExtraInfo(BidResponsed.KEY_PRICE).toString());
                    if (d11 > 0.0d) {
                        adNativeInfo.setEcpmPrice(d11 * 100.0d);
                    }
                    adNativeInfo.setAdType(i11);
                    adNativeInfo.setTtl(i12);
                    adNativeInfo.setAdSource(baseNative.getAdSource());
                    adNativeInfo.setAdCreateId(adNativeInfo.getAdId());
                    return adNativeInfo;
                }
            } catch (Exception e11) {
                AdLogUtil.Log().w("PlatformUtil", Log.getStackTraceString(e11));
            }
        }
        return null;
    }
}
