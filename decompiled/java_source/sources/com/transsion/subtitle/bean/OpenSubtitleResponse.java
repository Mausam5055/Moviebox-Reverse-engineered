package com.transsion.subtitle.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003JC\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001f"}, d2 = {"Lcom/transsion/subtitle/bean/OpenSubtitleResponse;", "", "totalPages", "", "totalCount", "perPage", "page", "data", "", "Lcom/transsion/subtitle/bean/OpenSubtitleData;", "<init>", "(IIIILjava/util/List;)V", "getTotalPages", "()I", "getTotalCount", "getPerPage", "getPage", "getData", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class OpenSubtitleResponse {
    private final List<OpenSubtitleData> data;
    private final int page;

    @SerializedName("per_page")
    private final int perPage;

    @SerializedName("total_count")
    private final int totalCount;

    @SerializedName("total_pages")
    private final int totalPages;

    public OpenSubtitleResponse(int i11, int i12, int i13, int i14, List<OpenSubtitleData> list) {
        this.totalPages = i11;
        this.totalCount = i12;
        this.perPage = i13;
        this.page = i14;
        this.data = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OpenSubtitleResponse copy$default(OpenSubtitleResponse openSubtitleResponse, int i11, int i12, int i13, int i14, List list, int i15, Object obj) {
        if ((i15 & 1) != 0) {
            i11 = openSubtitleResponse.totalPages;
        }
        if ((i15 & 2) != 0) {
            i12 = openSubtitleResponse.totalCount;
        }
        int i16 = i12;
        if ((i15 & 4) != 0) {
            i13 = openSubtitleResponse.perPage;
        }
        int i17 = i13;
        if ((i15 & 8) != 0) {
            i14 = openSubtitleResponse.page;
        }
        int i18 = i14;
        if ((i15 & 16) != 0) {
            list = openSubtitleResponse.data;
        }
        return openSubtitleResponse.copy(i11, i16, i17, i18, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getTotalPages() {
        return this.totalPages;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getTotalCount() {
        return this.totalCount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getPerPage() {
        return this.perPage;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getPage() {
        return this.page;
    }

    public final List<OpenSubtitleData> component5() {
        return this.data;
    }

    public final OpenSubtitleResponse copy(int totalPages, int totalCount, int perPage, int page, List<OpenSubtitleData> data) {
        return new OpenSubtitleResponse(totalPages, totalCount, perPage, page, data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OpenSubtitleResponse)) {
            return false;
        }
        OpenSubtitleResponse openSubtitleResponse = (OpenSubtitleResponse) other;
        return this.totalPages == openSubtitleResponse.totalPages && this.totalCount == openSubtitleResponse.totalCount && this.perPage == openSubtitleResponse.perPage && this.page == openSubtitleResponse.page && Intrinsics.c(this.data, openSubtitleResponse.data);
    }

    public final List<OpenSubtitleData> getData() {
        return this.data;
    }

    public final int getPage() {
        return this.page;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public final int getTotalCount() {
        return this.totalCount;
    }

    public final int getTotalPages() {
        return this.totalPages;
    }

    public int hashCode() {
        int i11 = ((((((this.totalPages * 31) + this.totalCount) * 31) + this.perPage) * 31) + this.page) * 31;
        List<OpenSubtitleData> list = this.data;
        return i11 + (list == null ? 0 : list.hashCode());
    }

    public String toString() {
        return "OpenSubtitleResponse(totalPages=" + this.totalPages + ", totalCount=" + this.totalCount + ", perPage=" + this.perPage + ", page=" + this.page + ", data=" + this.data + ")";
    }
}
