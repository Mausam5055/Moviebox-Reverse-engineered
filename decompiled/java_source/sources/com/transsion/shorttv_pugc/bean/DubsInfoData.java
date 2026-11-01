package com.transsion.shorttv_pugc.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u001b\u0010\n\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/DubsInfoData;", "", "dubs", "", "Lcom/transsion/shorttv_pugc/bean/DubsInfo;", "<init>", "(Ljava/util/List;)V", "getDubs", "()Ljava/util/List;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DubsInfoData {
    private final List<DubsInfo> dubs;

    public DubsInfoData(List<DubsInfo> list) {
        this.dubs = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DubsInfoData copy$default(DubsInfoData dubsInfoData, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = dubsInfoData.dubs;
        }
        return dubsInfoData.copy(list);
    }

    public final List<DubsInfo> component1() {
        return this.dubs;
    }

    public final DubsInfoData copy(List<DubsInfo> dubs) {
        return new DubsInfoData(dubs);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof DubsInfoData) && Intrinsics.c(this.dubs, ((DubsInfoData) other).dubs);
    }

    public final List<DubsInfo> getDubs() {
        return this.dubs;
    }

    public int hashCode() {
        List<DubsInfo> list = this.dubs;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public String toString() {
        return "DubsInfoData(dubs=" + this.dubs + ")";
    }
}
