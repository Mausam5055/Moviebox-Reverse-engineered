package com.hisavana.mediation.bridge.listener;

import com.cloud.hisavana.sdk.api.adx.TBannerView;
import com.cloud.hisavana.sdk.api.listener.d;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.hisavana.mediation.bridge.holder.JsAdHolder;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\tJ\u0019\u0010\n\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\n\u0010\rJ\u0019\u0010\n\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\n\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\tJ\u0019\u0010\u0012\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0010J\u0019\u0010\u0015\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0018\u0010\tJ\u0019\u0010\u0019\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0019\u0010\u0010J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\tJ!\u0010\b\u001a\u00020\u00072\u0010\u0010\u001c\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\b\u0010\u001dR\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006\""}, d2 = {"Lcom/hisavana/mediation/bridge/listener/BridgeSspAdListener;", "Lcom/cloud/hisavana/sdk/api/listener/d;", "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;", "Lz6/d;", "jsAdHolder", "<init>", "(Lcom/hisavana/mediation/bridge/holder/JsAdHolder;)V", "", "onAdLoaded", "()V", "onAdClosed", "Lcom/cloud/hisavana/sdk/api/adx/TBannerView;", "banner", "(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V", "Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;", "nativeInfo", "(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V", "onAdShow", "onNativeAdShow", "Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;", "errorCode", "onAdShowError", "(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V", "onError", "onAdClicked", "onNativeAdClick", "onTimeOut", "", "nativeInfos", "(Ljava/util/List;)V", "a", "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;", "getJsAdHolder", "()Lcom/hisavana/mediation/bridge/holder/JsAdHolder;", "mediation_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class BridgeSspAdListener extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final JsAdHolder<z6.d> jsAdHolder;

    public BridgeSspAdListener(JsAdHolder<z6.d> jsAdHolder) {
        Intrinsics.h(jsAdHolder, "jsAdHolder");
        this.jsAdHolder = jsAdHolder;
    }

    public final JsAdHolder<z6.d> getJsAdHolder() {
        return this.jsAdHolder;
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onAdClicked() {
        super.onAdClicked();
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onAdClosed() {
        super.onAdClosed();
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onAdClosed(TBannerView banner) {
        super.onAdClosed(banner);
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onAdClosed(TaNativeInfo nativeInfo) {
        super.onAdClosed(nativeInfo);
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onAdLoaded() {
        super.onAdLoaded();
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onAdLoaded(List<TaNativeInfo> nativeInfos) {
        int i11;
        double d11;
        ArrayList arrayList;
        Double firstPrice;
        super.onAdLoaded(nativeInfos);
        int i12 = 20001;
        double dDoubleValue = 0.0d;
        if (nativeInfos == null || nativeInfos.isEmpty()) {
            i11 = 20001;
            d11 = 0.0d;
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (TaNativeInfo taNativeInfo : nativeInfos) {
                AdsDTO adItem = taNativeInfo != null ? taNativeInfo.getAdItem() : null;
                if (adItem != null) {
                    arrayList2.add(adItem);
                }
            }
            if (!arrayList2.isEmpty()) {
                AdsDTO adsDTO = (AdsDTO) CollectionsKt.k0(arrayList2);
                i12 = 0;
                if (adsDTO != null && (firstPrice = adsDTO.getFirstPrice()) != null) {
                    dDoubleValue = firstPrice.doubleValue();
                }
            }
            i11 = i12;
            d11 = dDoubleValue;
            arrayList = arrayList2;
        }
        this.jsAdHolder.handleAdEvent(1, i11, 0, d11, arrayList);
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onAdShow() {
        super.onAdShow();
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onAdShowError(TaErrorCode errorCode) {
        super.onAdShowError(errorCode);
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onError(TaErrorCode errorCode) {
        super.onError(errorCode);
        this.jsAdHolder.handleAdEvent(1, errorCode != null ? errorCode.getErrorCode() : 20001, 0, 0.0d, null);
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onNativeAdClick(TaNativeInfo nativeInfo) {
        super.onNativeAdClick(nativeInfo);
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onNativeAdShow(TaNativeInfo nativeInfo) {
        super.onNativeAdShow(nativeInfo);
    }

    @Override // com.cloud.hisavana.sdk.api.listener.d
    public void onTimeOut() {
        super.onTimeOut();
        this.jsAdHolder.handleAdEvent(1, 30002, 0, 0.0d, null);
    }
}
