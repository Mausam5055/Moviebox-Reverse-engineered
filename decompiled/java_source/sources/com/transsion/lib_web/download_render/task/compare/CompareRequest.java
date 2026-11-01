package com.transsion.lib_web.download_render.task.compare;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.lib_web.download_render.data.PageData;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;", "", "localPageData", "Lcom/transsion/lib_web/download_render/data/PageData;", "remotePageData", "<init>", "(Lcom/transsion/lib_web/download_render/data/PageData;Lcom/transsion/lib_web/download_render/data/PageData;)V", "getLocalPageData", "()Lcom/transsion/lib_web/download_render/data/PageData;", "getRemotePageData", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CompareRequest {
    private final PageData localPageData;
    private final PageData remotePageData;

    public CompareRequest(PageData localPageData, PageData remotePageData) {
        Intrinsics.h(localPageData, "localPageData");
        Intrinsics.h(remotePageData, "remotePageData");
        this.localPageData = localPageData;
        this.remotePageData = remotePageData;
    }

    public static /* synthetic */ CompareRequest copy$default(CompareRequest compareRequest, PageData pageData, PageData pageData2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            pageData = compareRequest.localPageData;
        }
        if ((i11 & 2) != 0) {
            pageData2 = compareRequest.remotePageData;
        }
        return compareRequest.copy(pageData, pageData2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final PageData getLocalPageData() {
        return this.localPageData;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final PageData getRemotePageData() {
        return this.remotePageData;
    }

    public final CompareRequest copy(PageData localPageData, PageData remotePageData) {
        Intrinsics.h(localPageData, "localPageData");
        Intrinsics.h(remotePageData, "remotePageData");
        return new CompareRequest(localPageData, remotePageData);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CompareRequest)) {
            return false;
        }
        CompareRequest compareRequest = (CompareRequest) other;
        return Intrinsics.c(this.localPageData, compareRequest.localPageData) && Intrinsics.c(this.remotePageData, compareRequest.remotePageData);
    }

    public final PageData getLocalPageData() {
        return this.localPageData;
    }

    public final PageData getRemotePageData() {
        return this.remotePageData;
    }

    public int hashCode() {
        return (this.localPageData.hashCode() * 31) + this.remotePageData.hashCode();
    }

    public String toString() {
        return "CompareRequest(localPageData=" + this.localPageData + ", remotePageData=" + this.remotePageData + ")";
    }
}
