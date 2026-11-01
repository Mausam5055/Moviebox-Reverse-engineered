package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u001b\u0010\u000b\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0006¨\u0006\u0013"}, d2 = {"Lcom/transsion/usercenter/profile/bean/MeHistoryInfo;", "Ljava/io/Serializable;", "list", "", "", "<init>", "(Ljava/util/List;)V", "getList", "()Ljava/util/List;", "setList", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MeHistoryInfo implements Serializable {
    private List<? extends Object> list;

    public MeHistoryInfo(List<? extends Object> list) {
        this.list = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MeHistoryInfo copy$default(MeHistoryInfo meHistoryInfo, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = meHistoryInfo.list;
        }
        return meHistoryInfo.copy(list);
    }

    public final List<Object> component1() {
        return this.list;
    }

    public final MeHistoryInfo copy(List<? extends Object> list) {
        return new MeHistoryInfo(list);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof MeHistoryInfo) && Intrinsics.c(this.list, ((MeHistoryInfo) other).list);
    }

    public final List<Object> getList() {
        return this.list;
    }

    public int hashCode() {
        List<? extends Object> list = this.list;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public final void setList(List<? extends Object> list) {
        this.list = list;
    }

    public String toString() {
        return "MeHistoryInfo(list=" + this.list + ")";
    }
}
