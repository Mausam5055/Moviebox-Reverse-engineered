package com.cloud.tmc.kernel.proxy.performanceanalyse;

import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;", "", "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;", "objectId", "", "objectNameEn", "objectNameZh", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getObjectId", "()Ljava/lang/String;", "getObjectNameEn", "getObjectNameZh", "START_UP", "UPDATE_REQUEST", "CARD_EXPOSURE", "GO_TO_MY_BYTEAPP", "LATEST_USE_EXPOSURE", "LATEST_USE_CLICK", "RECOMMEND_EXPOSURE", "RECOMMEND_CLICK", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum MiniCardAnalyseType implements IPerformanceAnalyseType {
    START_UP("800", OfflineConstantsKt.TRIGGER_STARTUP, "卡片启动"),
    UPDATE_REQUEST("801", "update_request", "更新请求"),
    CARD_EXPOSURE("802", "card_exposure", "卡片曝光"),
    GO_TO_MY_BYTEAPP("803", "go_to_my_byteapp", "前往 My ByteApp"),
    LATEST_USE_EXPOSURE("804", "latest_use_exposure", "最近使用区域曝光"),
    LATEST_USE_CLICK("805", "latest_use_click", "最近使用小程序点击"),
    RECOMMEND_EXPOSURE("806", "recommend_exposure", "推荐区域曝光"),
    RECOMMEND_CLICK("807", "recommend_click", "推荐小程序点击");

    private final String objectId;
    private final String objectNameEn;
    private final String objectNameZh;

    MiniCardAnalyseType(String str, String str2, String str3) {
        this.objectId = str;
        this.objectNameEn = str2;
        this.objectNameZh = str3;
    }

    public final String getObjectId() {
        return this.objectId;
    }

    public final String getObjectNameEn() {
        return this.objectNameEn;
    }

    public final String getObjectNameZh() {
        return this.objectNameZh;
    }
}
