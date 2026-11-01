package com.transsion.postdetail.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0006HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;", "", "actions", "", "Lcom/transsion/postdetail/bean/NegativeFeedbackAction;", "reportConfig", "Lcom/transsion/postdetail/bean/ReportConfig;", "<init>", "(Ljava/util/List;Lcom/transsion/postdetail/bean/ReportConfig;)V", "getActions", "()Ljava/util/List;", "getReportConfig", "()Lcom/transsion/postdetail/bean/ReportConfig;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class NegativeFeedbackConfigBean {

    @SerializedName("actions")
    private final List<NegativeFeedbackAction> actions;

    @SerializedName("reportConfig")
    private final ReportConfig reportConfig;

    /* JADX WARN: Multi-variable type inference failed */
    public NegativeFeedbackConfigBean() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public NegativeFeedbackConfigBean(List<NegativeFeedbackAction> list, ReportConfig reportConfig) {
        this.actions = list;
        this.reportConfig = reportConfig;
    }

    public /* synthetic */ NegativeFeedbackConfigBean(List list, ReportConfig reportConfig, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list, (i11 & 2) != 0 ? null : reportConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NegativeFeedbackConfigBean copy$default(NegativeFeedbackConfigBean negativeFeedbackConfigBean, List list, ReportConfig reportConfig, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = negativeFeedbackConfigBean.actions;
        }
        if ((i11 & 2) != 0) {
            reportConfig = negativeFeedbackConfigBean.reportConfig;
        }
        return negativeFeedbackConfigBean.copy(list, reportConfig);
    }

    public final List<NegativeFeedbackAction> component1() {
        return this.actions;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final ReportConfig getReportConfig() {
        return this.reportConfig;
    }

    public final NegativeFeedbackConfigBean copy(List<NegativeFeedbackAction> actions, ReportConfig reportConfig) {
        return new NegativeFeedbackConfigBean(actions, reportConfig);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NegativeFeedbackConfigBean)) {
            return false;
        }
        NegativeFeedbackConfigBean negativeFeedbackConfigBean = (NegativeFeedbackConfigBean) other;
        return Intrinsics.c(this.actions, negativeFeedbackConfigBean.actions) && Intrinsics.c(this.reportConfig, negativeFeedbackConfigBean.reportConfig);
    }

    public final List<NegativeFeedbackAction> getActions() {
        return this.actions;
    }

    public final ReportConfig getReportConfig() {
        return this.reportConfig;
    }

    public int hashCode() {
        List<NegativeFeedbackAction> list = this.actions;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        ReportConfig reportConfig = this.reportConfig;
        return iHashCode + (reportConfig != null ? reportConfig.hashCode() : 0);
    }

    public String toString() {
        return "NegativeFeedbackConfigBean(actions=" + this.actions + ", reportConfig=" + this.reportConfig + ")";
    }
}
