package com.cloud.tmc.ad;

import com.cloud.tmc.ad.bean.response.AdsDTO;
import com.cloud.tmc.ad.p000interface.AdFillingEventListener;
import com.cloud.tmc.ad.p000interface.AdShowEventListener;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.ad.AdManager")
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH&J<\u0010\t\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000fH&J\b\u0010\u0010\u001a\u00020\u0006H&J\b\u0010\u0011\u001a\u00020\u0012H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u0012\u0010\u0014\u001a\u00020\u00032\b\u0010\u0015\u001a\u0004\u0018\u00010\u0006H&J(\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0017H&¨\u0006\u0018"}, d2 = {"Lcom/cloud/tmc/ad/IAdManagerProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "applicationDestroy", "", "close", "triggerId", "", "app", "Lcom/cloud/tmc/integration/structure/App;", "fillingInterstitial", "adsDTO", "Lcom/cloud/tmc/ad/bean/response/AdsDTO;", "mainImgUrl", "logoImgUrl", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/ad/interface/AdFillingEventListener;", "getAdSdkFrameworkVersion", "getAdSdkFrameworkVersionInt", "", "onCreate", "onDestroy", "appId", "showInterstitial", "Lcom/cloud/tmc/ad/interface/AdShowEventListener;", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IAdManagerProxy extends Proxiable {
    void applicationDestroy();

    void close(String triggerId, App app);

    void fillingInterstitial(String triggerId, AdsDTO adsDTO, String mainImgUrl, String logoImgUrl, App app, AdFillingEventListener listener);

    String getAdSdkFrameworkVersion();

    long getAdSdkFrameworkVersionInt();

    void onCreate(App app);

    void onDestroy(String appId);

    void showInterstitial(String triggerId, App app, AdsDTO adsDTO, AdShowEventListener listener);
}
