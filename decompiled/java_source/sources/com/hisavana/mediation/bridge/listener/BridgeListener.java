package com.hisavana.mediation.bridge.listener;

import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.hisavana.mediation.bridge.holder.JsBannerAdHolder;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\r2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H&¨\u0006\u0014"}, d2 = {"Lcom/hisavana/mediation/bridge/listener/BridgeListener;", "", "callBackToJs", "", "callbackId", "", "eventType", "", "codeSeatId", "adType", "errorCode", "rewardStatus", BidResponsed.KEY_PRICE, "", "adInfo", "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "showBanner", "jsBannerAdHolder", "Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;", "mediation_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface BridgeListener {
    void callBackToJs(String callbackId, int eventType, String codeSeatId, int adType, int errorCode, int rewardStatus, double price, List<? extends AdsDTO> adInfo);

    void showBanner(JsBannerAdHolder jsBannerAdHolder);
}
