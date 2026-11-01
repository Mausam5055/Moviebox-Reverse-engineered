package com.transsion.edcation.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/transsion/edcation/bean/EducationInterestResp;", "Ljava/io/Serializable;", "options", "", "Lcom/transsion/edcation/bean/InterestBean;", "<init>", "(Ljava/util/List;)V", "getOptions", "()Ljava/util/List;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "Education_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class EducationInterestResp implements Serializable {
    private final List<InterestBean> options;

    public EducationInterestResp(List<InterestBean> options) {
        Intrinsics.h(options, "options");
        this.options = options;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ EducationInterestResp copy$default(EducationInterestResp educationInterestResp, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = educationInterestResp.options;
        }
        return educationInterestResp.copy(list);
    }

    public final List<InterestBean> component1() {
        return this.options;
    }

    public final EducationInterestResp copy(List<InterestBean> options) {
        Intrinsics.h(options, "options");
        return new EducationInterestResp(options);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof EducationInterestResp) && Intrinsics.c(this.options, ((EducationInterestResp) other).options);
    }

    public final List<InterestBean> getOptions() {
        return this.options;
    }

    public int hashCode() {
        return this.options.hashCode();
    }

    public String toString() {
        return "EducationInterestResp(options=" + this.options + ")";
    }
}
