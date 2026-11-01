package com.hisavana.mediation.bridge.listener;

import com.cloud.tmc.integration.event.EventConstants;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.interfacz.TAdditionalListener;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bridge.holder.JsAdHolder;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\u000bJ!\u0010\u000f\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\u000bJ!\u0010\u0014\u001a\u00020\t2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0016\u0010\u000bJ!\u0010\u0017\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0017\u0010\u0010J!\u0010\u0018\u001a\u00020\t2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0018\u0010\u0015J\u0017\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001b\u001a\u00020\t2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u001b\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u001c\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082D¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006*"}, d2 = {"Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;", "Lcom/hisavana/common/interfacz/TAdditionalListener;", "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;", "", "jsAdHolder", "<init>", "(Lcom/hisavana/mediation/bridge/holder/JsAdHolder;)V", "Lcom/hisavana/common/bean/AdditionalInfo;", "additionalInfo", "", "onTrigger", "(Lcom/hisavana/common/bean/AdditionalInfo;)V", "onLoadSuccess", "Lcom/hisavana/common/bean/TAdErrorCode;", "tAdErrorCode", "onLoadFailure", "(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V", "onTriggerShow", "Lcom/hisavana/common/bean/TAdNativeInfo;", "nativeInfo", "onShow", "(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V", "onShowed", "onShowError", "onClick", "", EventConstants.KEY_SOURCE, "onClosed", "(I)V", "(Lcom/hisavana/common/bean/TAdNativeInfo;)V", "onRewarded", "()V", "a", "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "tag", "", "c", "Z", "isRewarded", "mediation_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BridgeMediationAdListener extends TAdditionalListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final JsAdHolder<? extends Object> jsAdHolder;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final String tag;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public boolean isRewarded;

    public BridgeMediationAdListener(JsAdHolder<? extends Object> jsAdHolder) {
        Intrinsics.h(jsAdHolder, "jsAdHolder");
        this.jsAdHolder = jsAdHolder;
        this.tag = "BridgeMediationAdListener";
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onClick(TAdNativeInfo nativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        AdLogUtil.Log().d(this.tag, "onClick, additionalInfo: " + additionalInfo);
        JsAdHolder<? extends Object> jsAdHolder = this.jsAdHolder;
        Double ecpm = additionalInfo.getECPM();
        jsAdHolder.handleAdEvent(3, 0, 0, ecpm != null ? ecpm.doubleValue() : 0.0d, null);
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onClosed(int source) {
        AdLogUtil.Log().d(this.tag, "onClosed, source: " + source);
        this.jsAdHolder.handleAdEvent(4, 0, this.isRewarded ? 1 : 0, 0.0d, null);
        this.jsAdHolder.release();
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onClosed(TAdNativeInfo nativeInfo) {
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onLoadFailure(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        AdLogUtil.Log().d(this.tag, "onLoadFailure,additionalInfo: " + additionalInfo + ", errorCode: " + tAdErrorCode);
        JsAdHolder<? extends Object> jsAdHolder = this.jsAdHolder;
        int errorCode = tAdErrorCode != null ? tAdErrorCode.getErrorCode() : TAdErrorCode.CODE_UNKNOWN;
        Double ecpm = additionalInfo.getECPM();
        jsAdHolder.handleAdEvent(1, errorCode, 0, ecpm != null ? ecpm.doubleValue() : 0.0d, null);
        if (this.jsAdHolder.getAdType() != 2) {
            this.jsAdHolder.release();
        }
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onLoadSuccess(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        AdLogUtil.Log().d(this.tag, "onLoadSuccess, additionalInfo: " + additionalInfo);
        JsAdHolder<? extends Object> jsAdHolder = this.jsAdHolder;
        Double ecpm = additionalInfo.getECPM();
        jsAdHolder.handleAdEvent(1, 0, 0, ecpm != null ? ecpm.doubleValue() : 0.0d, null);
        if (this.jsAdHolder.getAdType() == 2) {
            this.jsAdHolder.showAd();
        }
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onRewarded() {
        AdLogUtil.Log().d(this.tag, "onRewarded");
        this.isRewarded = true;
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onShow(TAdNativeInfo nativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        AdLogUtil.Log().d(this.tag, "onShow, additionalInfo: " + additionalInfo);
        JsAdHolder<? extends Object> jsAdHolder = this.jsAdHolder;
        Double ecpm = additionalInfo.getECPM();
        jsAdHolder.handleAdEvent(2, 0, 0, ecpm != null ? ecpm.doubleValue() : 0.0d, null);
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onShowError(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        AdLogUtil.Log().d(this.tag, "onShowError, additionalInfo: " + additionalInfo + ", errorCode: " + tAdErrorCode);
        JsAdHolder<? extends Object> jsAdHolder = this.jsAdHolder;
        int errorCode = tAdErrorCode != null ? tAdErrorCode.getErrorCode() : TAdErrorCode.CODE_UNKNOWN;
        Double ecpm = additionalInfo.getECPM();
        jsAdHolder.handleAdEvent(1, errorCode, 0, ecpm != null ? ecpm.doubleValue() : 0.0d, null);
        if (this.jsAdHolder.getAdType() != 2) {
            this.jsAdHolder.release();
        }
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onShowed(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        AdLogUtil.Log().d(this.tag, "onShowed, additionalInfo: " + additionalInfo);
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onTrigger(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        AdLogUtil.Log().d(this.tag, "onTrigger, additionalInfo: " + additionalInfo);
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onTriggerShow(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        AdLogUtil.Log().d(this.tag, "onTriggerShow, additionalInfo: " + additionalInfo);
    }
}
