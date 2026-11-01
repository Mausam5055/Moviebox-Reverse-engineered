package com.transsion.lib_web.domain;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001d\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0006\"\u0004\b\u001f\u0010\bR\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006&"}, d2 = {"Lcom/transsion/lib_web/domain/LoadInfoStats;", "", "<init>", "()V", "isLoadSuccess", "", "()Z", "setLoadSuccess", "(Z)V", "load_time", "", "getLoad_time", "()Ljava/lang/Long;", "setLoad_time", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, "", "getError_msg", "()Ljava/lang/String;", "setError_msg", "(Ljava/lang/String;)V", "error_code", "", "getError_code", "()Ljava/lang/Integer;", "setError_code", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "reload", "getReload", "setReload", "dom_performance", "Lcom/transsion/lib_web/domain/DomPerformance;", "getDom_performance", "()Lcom/transsion/lib_web/domain/DomPerformance;", "setDom_performance", "(Lcom/transsion/lib_web/domain/DomPerformance;)V", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LoadInfoStats {
    private DomPerformance dom_performance;
    private Integer error_code;
    private String error_msg;
    private boolean isLoadSuccess;
    private Long load_time = 0L;
    private boolean reload;

    public final DomPerformance getDom_performance() {
        return this.dom_performance;
    }

    public final Integer getError_code() {
        return this.error_code;
    }

    public final String getError_msg() {
        return this.error_msg;
    }

    public final Long getLoad_time() {
        return this.load_time;
    }

    public final boolean getReload() {
        return this.reload;
    }

    /* JADX INFO: renamed from: isLoadSuccess, reason: from getter */
    public final boolean getIsLoadSuccess() {
        return this.isLoadSuccess;
    }

    public final void setDom_performance(DomPerformance domPerformance) {
        this.dom_performance = domPerformance;
    }

    public final void setError_code(Integer num) {
        this.error_code = num;
    }

    public final void setError_msg(String str) {
        this.error_msg = str;
    }

    public final void setLoadSuccess(boolean z10) {
        this.isLoadSuccess = z10;
    }

    public final void setLoad_time(Long l11) {
        this.load_time = l11;
    }

    public final void setReload(boolean z10) {
        this.reload = z10;
    }
}
