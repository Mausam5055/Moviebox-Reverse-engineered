package com.transsion.shorttv_pugc.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0012"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/SubjectPostCount;", "Ljava/io/Serializable;", "count", "", "<init>", "(Ljava/lang/String;)V", "getCount", "()Ljava/lang/String;", "setCount", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SubjectPostCount implements Serializable {
    private String count;

    public SubjectPostCount(String str) {
        this.count = str;
    }

    public static /* synthetic */ SubjectPostCount copy$default(SubjectPostCount subjectPostCount, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = subjectPostCount.count;
        }
        return subjectPostCount.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCount() {
        return this.count;
    }

    public final SubjectPostCount copy(String count) {
        return new SubjectPostCount(count);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof SubjectPostCount) && Intrinsics.c(this.count, ((SubjectPostCount) other).count);
    }

    public final String getCount() {
        return this.count;
    }

    public int hashCode() {
        String str = this.count;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final void setCount(String str) {
        this.count = str;
    }

    public String toString() {
        return "SubjectPostCount(count=" + this.count + ")";
    }
}
