package com.hisavana.vungle.util;

import android.os.Bundle;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.NativeAdWrapper;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.vungle.excuter.VungleNative;
import com.vungle.ads.NativeAd;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J*\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/hisavana/vungle/util/VungleUtil;", "", "<init>", "()V", "TAG_MEDIA_VIEW", "", "TAG_ICON_VIEW", "getNativeInfo", "Lcom/hisavana/common/bean/TAdNativeInfo;", CommonLogUtil.TAG_AD, "Lcom/vungle/ads/NativeAd;", "adt", "", "ttl", "vungleNative", "Lcom/hisavana/vungle/excuter/VungleNative;", "liftoff_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class VungleUtil {
    public static final VungleUtil INSTANCE = new VungleUtil();
    public static final String TAG_ICON_VIEW = "vungle_icon_view";
    public static final String TAG_MEDIA_VIEW = "vungle_media_view";

    private VungleUtil() {
    }

    public final TAdNativeInfo getNativeInfo(final NativeAd ad2, int adt, int ttl, final VungleNative vungleNative) {
        Double price;
        Intrinsics.h(vungleNative, "vungleNative");
        if (ad2 == null) {
            return null;
        }
        final AdNativeInfo adNativeInfo = new AdNativeInfo();
        adNativeInfo.setTriggerId(vungleNative.getTriggerId());
        adNativeInfo.setAdId(DeviceUtil.o());
        Network network = vungleNative.getNetwork();
        adNativeInfo.setEcpmPrice((network == null || (price = network.getPrice()) == null) ? 0.0d : price.doubleValue());
        adNativeInfo.setAdType(adt);
        adNativeInfo.setTtl(ttl);
        adNativeInfo.setAdSource(vungleNative.getAdSource());
        adNativeInfo.setAdCreateId(ad2.getCreativeId());
        adNativeInfo.setTitle(ad2.getAdTitle());
        adNativeInfo.setDescription(ad2.getAdBodyText());
        adNativeInfo.setAdCallToAction(ad2.getAdCallToActionText());
        Double adStarRating = ad2.getAdStarRating();
        if (adStarRating != null) {
            adNativeInfo.setRating(String.valueOf(adStarRating.doubleValue()));
        }
        if (ad2.getAppIcon().length() > 0) {
            AdNativeInfo.Image image = new AdNativeInfo.Image();
            image.setUrl(ad2.getAppIcon());
            adNativeInfo.setIcon(image);
        }
        adNativeInfo.setNativeAdWrapper(new NativeAdWrapper<NativeAd>(vungleNative, adNativeInfo) { // from class: com.hisavana.vungle.util.VungleUtil$getNativeInfo$1$2
            final /* synthetic */ AdNativeInfo $nativeInfo;
            final /* synthetic */ VungleNative $vungleNative;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(this.$ad, vungleNative);
                this.$vungleNative = vungleNative;
                this.$nativeInfo = adNativeInfo;
            }

            @Override // com.hisavana.common.bean.NativeAdWrapper
            public void destroy() {
                this.$vungleNative.destroySingleAd(this.$nativeInfo);
                this.$vungleNative.destroyAd();
            }

            @Override // com.hisavana.common.bean.NativeAdWrapper
            public Bundle getTrackBundle() {
                Bundle mBundle = this.$vungleNative.mBundle;
                Intrinsics.g(mBundle, "mBundle");
                return mBundle;
            }

            @Override // com.hisavana.common.bean.NativeAdWrapper
            public boolean isIconValid() {
                return this.$ad.getAppIcon().length() > 0;
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
        return adNativeInfo;
    }
}
