package com.transsion.ugcvideodetail.api.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u001b\u0010\r\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\t\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "resources", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;", "<init>", "(Ljava/util/List;)V", "getResources", "()Ljava/util/List;", "resource", "getResource", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCVideoDownload extends UGCVideo {
    private final List<UGCVideoDownloadResource> resources;

    /* JADX WARN: Multi-variable type inference failed */
    public UGCVideoDownload() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public UGCVideoDownload(List<UGCVideoDownloadResource> list) {
        super(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, false, null, null, null, null, 536870911, null);
        this.resources = list;
    }

    public /* synthetic */ UGCVideoDownload(List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UGCVideoDownload copy$default(UGCVideoDownload uGCVideoDownload, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = uGCVideoDownload.resources;
        }
        return uGCVideoDownload.copy(list);
    }

    public final List<UGCVideoDownloadResource> component1() {
        return this.resources;
    }

    public final UGCVideoDownload copy(List<UGCVideoDownloadResource> resources) {
        return new UGCVideoDownload(resources);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof UGCVideoDownload) && Intrinsics.c(this.resources, ((UGCVideoDownload) other).resources);
    }

    public final UGCVideoDownloadResource getResource() {
        List<UGCVideoDownloadResource> list = this.resources;
        if (list != null) {
            return (UGCVideoDownloadResource) CollectionsKt.k0(list);
        }
        return null;
    }

    public final List<UGCVideoDownloadResource> getResources() {
        return this.resources;
    }

    public int hashCode() {
        List<UGCVideoDownloadResource> list = this.resources;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public String toString() {
        return "UGCVideoDownload(resources=" + this.resources + ")";
    }
}
