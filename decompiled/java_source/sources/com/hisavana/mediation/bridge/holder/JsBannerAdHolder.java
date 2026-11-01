package com.hisavana.mediation.bridge.holder;

import android.view.ViewGroup;
import android.view.ViewParent;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.hisavana.mediation.ad.TBannerView;
import com.hisavana.mediation.bridge.listener.BridgeListener;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\b\u0010\u0010\u001a\u00020\u000eH\u0016¨\u0006\u0011"}, d2 = {"Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;", "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;", "Lcom/hisavana/mediation/ad/TBannerView;", CommonLogUtil.TAG_AD, "callbackId", "", "codeSeatId", "adType", "", "bridgeListener", "Lcom/hisavana/mediation/bridge/listener/BridgeListener;", "<init>", "(Lcom/hisavana/mediation/ad/TBannerView;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V", "loadAd", "", "showAd", "release", "mediation_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class JsBannerAdHolder extends JsAdHolder<TBannerView> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsBannerAdHolder(TBannerView ad2, String callbackId, String codeSeatId, int i11, BridgeListener bridgeListener) {
        super(ad2, callbackId, codeSeatId, i11, bridgeListener);
        Intrinsics.h(ad2, "ad");
        Intrinsics.h(callbackId, "callbackId");
        Intrinsics.h(codeSeatId, "codeSeatId");
        Intrinsics.h(bridgeListener, "bridgeListener");
        ad2.setRequestBody(a());
    }

    @Override // com.hisavana.mediation.bridge.holder.JsAdHolder
    public void loadAd() {
        getAd().loadAd();
    }

    @Override // com.hisavana.mediation.bridge.holder.JsAdHolder
    public void release() {
        super.release();
        if (getAd().getParent() instanceof ViewGroup) {
            ViewParent parent = getAd().getParent();
            Intrinsics.f(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(getAd());
        }
        getAd().destroy();
    }

    @Override // com.hisavana.mediation.bridge.holder.JsAdHolder
    public void showAd() {
        if (getAd().getParent() != null) {
            return;
        }
        getBridgeListener().showBanner(this);
    }
}
