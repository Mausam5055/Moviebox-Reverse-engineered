package com.hisavana.common.interfacz;

import com.cloud.tmc.integration.event.EventConstants;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\t\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\r\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\u0011\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\u0012\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0012\u0010\u0013\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0016\u001a\u00020\u0005H\u0016J\u0010\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\u0018"}, d2 = {"Lcom/hisavana/common/interfacz/TAdditionalListener;", "", "<init>", "()V", "onTrigger", "", "additionalInfo", "Lcom/hisavana/common/bean/AdditionalInfo;", "onLoadSuccess", "onLoadFailure", "errorCode", "Lcom/hisavana/common/bean/TAdErrorCode;", "onTriggerShow", "onShow", "nativeInfo", "Lcom/hisavana/common/bean/TAdNativeInfo;", "onShowed", "onShowError", "onClick", "onClosed", EventConstants.KEY_SOURCE, "", "onRewarded", "onAdActivate", "common_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class TAdditionalListener {
    public void onAdActivate(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
    }

    public void onClick(TAdNativeInfo nativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
    }

    public void onClosed(int source) {
    }

    public void onClosed(TAdNativeInfo nativeInfo) {
    }

    public void onLoadFailure(TAdErrorCode errorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
    }

    public void onLoadSuccess(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
    }

    public void onRewarded() {
    }

    public void onShow(TAdNativeInfo nativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
    }

    public void onShowError(TAdErrorCode errorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
    }

    public void onShowed(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
    }

    public void onTrigger(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
    }

    public void onTriggerShow(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
    }
}
