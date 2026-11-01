package com.hisavana.mediation.bridge.holder;

import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.e;
import com.google.gson.reflect.TypeToken;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.ad.TBannerView;
import com.hisavana.mediation.ad.TInterstitialAd;
import com.hisavana.mediation.ad.TRewardedAd;
import com.hisavana.mediation.bridge.listener.BridgeListener;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import z6.d;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005JO\u0010\u000f\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\u000e2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\f\u001a\u00020\t2\b\b\u0002\u0010\r\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001c\u0010\u001b\u001a\n \u0018*\u0004\u0018\u00010\u00060\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;", "", "Lcom/hisavana/mediation/bridge/listener/BridgeListener;", "bridgeListener", "<init>", "(Lcom/hisavana/mediation/bridge/listener/BridgeListener;)V", "", "callbackId", "codeSeatId", "", "adType", "extInfo", "adCount", "bannerWidth", "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;", "createAdHolder", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Lcom/hisavana/mediation/bridge/holder/JsAdHolder;", "", "release", "()V", "a", "Lcom/hisavana/mediation/bridge/listener/BridgeListener;", "getBridgeListener", "()Lcom/hisavana/mediation/bridge/listener/BridgeListener;", "kotlin.jvm.PlatformType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "TAG", "Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;", "c", "Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;", "jsBannerAdHolder", "mediation_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class JsAdHolderHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final BridgeListener bridgeListener;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final String TAG;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public JsBannerAdHolder jsBannerAdHolder;

    public JsAdHolderHandler(BridgeListener bridgeListener) {
        Intrinsics.h(bridgeListener, "bridgeListener");
        this.bridgeListener = bridgeListener;
        this.TAG = JsAdHolderHandler.class.getSimpleName();
    }

    public static /* synthetic */ JsAdHolder createAdHolder$default(JsAdHolderHandler jsAdHolderHandler, String str, String str2, int i11, String str3, int i12, int i13, int i14, Object obj) {
        if ((i14 & 8) != 0) {
            str3 = null;
        }
        String str4 = str3;
        if ((i14 & 16) != 0) {
            i12 = 1;
        }
        int i15 = i12;
        if ((i14 & 32) != 0) {
            i13 = 0;
        }
        return jsAdHolderHandler.createAdHolder(str, str2, i11, str4, i15, i13);
    }

    public final JsAdHolder<? extends Object> createAdHolder(String callbackId, String codeSeatId, int adType, String extInfo, int adCount, int bannerWidth) {
        String string;
        String str;
        String string2;
        TBannerView ad2;
        TBannerView ad3;
        Intrinsics.h(callbackId, "callbackId");
        Intrinsics.h(codeSeatId, "codeSeatId");
        String str2 = "";
        if (extInfo != null) {
            try {
                Object objB = GsonUtil.b(extInfo, new TypeToken<Map<String, ? extends Object>>() { // from class: com.hisavana.mediation.bridge.holder.JsAdHolderHandler$createAdHolder$1$map$1
                }.getType());
                Intrinsics.g(objB, "fromJson(...)");
                Map map = (Map) objB;
                Object obj = map.get(JsAdHolderHandlerKt.GAME_NAME);
                if (obj == null || (string = obj.toString()) == null) {
                    string = "";
                }
                try {
                    Object obj2 = map.get(JsAdHolderHandlerKt.GAME_SCENE);
                    if (obj2 != null && (string2 = obj2.toString()) != null) {
                        str2 = string2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    AdLogUtil.Log().e(this.TAG, "createAdHolder error: " + th);
                }
            } catch (Throwable th3) {
                th = th3;
                string = "";
            }
            str = str2;
            str2 = string;
        } else {
            str = "";
        }
        if (adType != 1) {
            if (adType == 2) {
                JsBannerAdHolder jsBannerAdHolder = this.jsBannerAdHolder;
                if (jsBannerAdHolder != null && jsBannerAdHolder.getIsRelease()) {
                    this.jsBannerAdHolder = null;
                }
                JsBannerAdHolder jsBannerAdHolder2 = this.jsBannerAdHolder;
                if (jsBannerAdHolder2 == null) {
                    TBannerView tBannerView = new TBannerView(e.a());
                    tBannerView.setAdUnitId(codeSeatId);
                    tBannerView.setAdSize(0);
                    tBannerView.setCustomSizeForYandexAndLiftoff(bannerWidth, 50);
                    tBannerView.setAdLoadScenes(str2, str, null);
                    this.jsBannerAdHolder = new JsBannerAdHolder(tBannerView, callbackId, codeSeatId, adType, this.bridgeListener);
                } else {
                    jsBannerAdHolder2.setCallbackId(callbackId);
                    JsBannerAdHolder jsBannerAdHolder3 = this.jsBannerAdHolder;
                    if (jsBannerAdHolder3 != null && (ad3 = jsBannerAdHolder3.getAd()) != null) {
                        ad3.setAdUnitId(codeSeatId);
                    }
                    JsBannerAdHolder jsBannerAdHolder4 = this.jsBannerAdHolder;
                    if (jsBannerAdHolder4 != null && (ad2 = jsBannerAdHolder4.getAd()) != null) {
                        ad2.setAdLoadScenes(str2, str, null);
                    }
                }
                return this.jsBannerAdHolder;
            }
            if (adType == 3) {
                TInterstitialAd tInterstitialAd = new TInterstitialAd(e.a(), codeSeatId);
                tInterstitialAd.setAdLoadScenes(str2, str, null);
                return new JsInterstitialAdHolder(tInterstitialAd, callbackId, codeSeatId, adType, this.bridgeListener);
            }
            if (adType == 5) {
                TRewardedAd tRewardedAd = new TRewardedAd(e.a(), codeSeatId);
                tRewardedAd.setAdLoadScenes(str2, str, null);
                return new JsRewardAdHolder(tRewardedAd, callbackId, codeSeatId, adType, this.bridgeListener);
            }
            if (adType != 6) {
                AdLogUtil.Log().w(this.TAG, "Splash Ad is not supported in Mediation SDK");
                return null;
            }
        }
        d dVar = new d(codeSeatId);
        dVar.B(adType == 6);
        dVar.A(adCount);
        dVar.l(str2, str, null);
        return new JsNativeAdHolder(dVar, callbackId, codeSeatId, adType, this.bridgeListener);
    }

    public final BridgeListener getBridgeListener() {
        return this.bridgeListener;
    }

    public final void release() {
        JsBannerAdHolder jsBannerAdHolder = this.jsBannerAdHolder;
        if (jsBannerAdHolder != null) {
            jsBannerAdHolder.release();
        }
    }
}
