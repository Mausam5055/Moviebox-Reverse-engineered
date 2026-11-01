package com.transsion.ugcvideodetail.api.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u001b\u0010\n\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u0004HÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResolutions;", "", "resolutions", "", "", "<init>", "(Ljava/util/List;)V", "getResolutions", "()Ljava/util/List;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCVideoDownloadResolutions {
    private final List<Integer> resolutions;

    /* JADX WARN: Multi-variable type inference failed */
    public UGCVideoDownloadResolutions() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public UGCVideoDownloadResolutions(List<Integer> list) {
        this.resolutions = list;
    }

    public /* synthetic */ UGCVideoDownloadResolutions(List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UGCVideoDownloadResolutions copy$default(UGCVideoDownloadResolutions uGCVideoDownloadResolutions, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = uGCVideoDownloadResolutions.resolutions;
        }
        return uGCVideoDownloadResolutions.copy(list);
    }

    public final List<Integer> component1() {
        return this.resolutions;
    }

    public final UGCVideoDownloadResolutions copy(List<Integer> resolutions) {
        return new UGCVideoDownloadResolutions(resolutions);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof UGCVideoDownloadResolutions) && Intrinsics.c(this.resolutions, ((UGCVideoDownloadResolutions) other).resolutions);
    }

    public final List<Integer> getResolutions() {
        return this.resolutions;
    }

    public int hashCode() {
        List<Integer> list = this.resolutions;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public String toString() {
        return "UGCVideoDownloadResolutions(resolutions=" + this.resolutions + ")";
    }
}
