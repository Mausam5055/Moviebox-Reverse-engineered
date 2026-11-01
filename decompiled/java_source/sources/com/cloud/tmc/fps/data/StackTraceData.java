package com.cloud.tmc.fps.data;

import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/cloud/tmc/fps/data/StackTraceData;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "count", "", "stackInfo", "", "(ILjava/lang/String;)V", "getCount", "()I", "setCount", "(I)V", "getStackInfo", "()Ljava/lang/String;", "setStackInfo", "(Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "com.cloud.tmc.minifps"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class StackTraceData extends BaseBean {
    private int count;
    private String stackInfo;

    public StackTraceData(int i11, String stackInfo) {
        Intrinsics.h(stackInfo, "stackInfo");
        this.count = i11;
        this.stackInfo = stackInfo;
    }

    public static /* synthetic */ StackTraceData copy$default(StackTraceData stackTraceData, int i11, String str, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = stackTraceData.count;
        }
        if ((i12 & 2) != 0) {
            str = stackTraceData.stackInfo;
        }
        return stackTraceData.copy(i11, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getCount() {
        return this.count;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getStackInfo() {
        return this.stackInfo;
    }

    public final StackTraceData copy(int count, String stackInfo) {
        Intrinsics.h(stackInfo, "stackInfo");
        return new StackTraceData(count, stackInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StackTraceData)) {
            return false;
        }
        StackTraceData stackTraceData = (StackTraceData) other;
        return this.count == stackTraceData.count && Intrinsics.c(this.stackInfo, stackTraceData.stackInfo);
    }

    public final int getCount() {
        return this.count;
    }

    public final String getStackInfo() {
        return this.stackInfo;
    }

    public int hashCode() {
        return (this.count * 31) + this.stackInfo.hashCode();
    }

    public final void setCount(int i11) {
        this.count = i11;
    }

    public final void setStackInfo(String str) {
        Intrinsics.h(str, "<set-?>");
        this.stackInfo = str;
    }

    public String toString() {
        return "StackTraceData(count=" + this.count + ", stackInfo=" + this.stackInfo + ")";
    }
}
