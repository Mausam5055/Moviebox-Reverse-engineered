package com.transsion.home.net;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\tHÆ\u0003JO\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\t\u0010\"\u001a\u00020\tHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0016\u0010\u000b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014¨\u0006#"}, d2 = {"Lcom/transsion/home/net/HashTagListRequest;", "", "page", "", "perPage", "ugcVideoHasTags", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;", "ugcVideoId", "", "tabId", "sort", "<init>", "(IILjava/util/List;Ljava/lang/String;ILjava/lang/String;)V", "getPage", "()I", "getPerPage", "getUgcVideoHasTags", "()Ljava/util/List;", "getUgcVideoId", "()Ljava/lang/String;", "getTabId", "getSort", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HashTagListRequest {
    public static final int $stable = 8;

    @SerializedName("page")
    private final int page;

    @SerializedName("perPage")
    private final int perPage;

    @SerializedName("sort")
    private final String sort;

    @SerializedName("tabId")
    private final int tabId;

    @SerializedName("hashTags")
    private final List<UGCVideoHashTag> ugcVideoHasTags;

    @SerializedName("ugcVideoId")
    private final String ugcVideoId;

    public HashTagListRequest(int i11, int i12, List<UGCVideoHashTag> list, String str, int i13, String sort) {
        Intrinsics.h(sort, "sort");
        this.page = i11;
        this.perPage = i12;
        this.ugcVideoHasTags = list;
        this.ugcVideoId = str;
        this.tabId = i13;
        this.sort = sort;
    }

    public /* synthetic */ HashTagListRequest(int i11, int i12, List list, String str, int i13, String str2, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, i12, (i14 & 4) != 0 ? null : list, (i14 & 8) != 0 ? null : str, (i14 & 16) != 0 ? 0 : i13, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HashTagListRequest copy$default(HashTagListRequest hashTagListRequest, int i11, int i12, List list, String str, int i13, String str2, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i11 = hashTagListRequest.page;
        }
        if ((i14 & 2) != 0) {
            i12 = hashTagListRequest.perPage;
        }
        int i15 = i12;
        if ((i14 & 4) != 0) {
            list = hashTagListRequest.ugcVideoHasTags;
        }
        List list2 = list;
        if ((i14 & 8) != 0) {
            str = hashTagListRequest.ugcVideoId;
        }
        String str3 = str;
        if ((i14 & 16) != 0) {
            i13 = hashTagListRequest.tabId;
        }
        int i16 = i13;
        if ((i14 & 32) != 0) {
            str2 = hashTagListRequest.sort;
        }
        return hashTagListRequest.copy(i11, i15, list2, str3, i16, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getPage() {
        return this.page;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getPerPage() {
        return this.perPage;
    }

    public final List<UGCVideoHashTag> component3() {
        return this.ugcVideoHasTags;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getTabId() {
        return this.tabId;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getSort() {
        return this.sort;
    }

    public final HashTagListRequest copy(int page, int perPage, List<UGCVideoHashTag> ugcVideoHasTags, String ugcVideoId, int tabId, String sort) {
        Intrinsics.h(sort, "sort");
        return new HashTagListRequest(page, perPage, ugcVideoHasTags, ugcVideoId, tabId, sort);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HashTagListRequest)) {
            return false;
        }
        HashTagListRequest hashTagListRequest = (HashTagListRequest) other;
        return this.page == hashTagListRequest.page && this.perPage == hashTagListRequest.perPage && Intrinsics.c(this.ugcVideoHasTags, hashTagListRequest.ugcVideoHasTags) && Intrinsics.c(this.ugcVideoId, hashTagListRequest.ugcVideoId) && this.tabId == hashTagListRequest.tabId && Intrinsics.c(this.sort, hashTagListRequest.sort);
    }

    public final int getPage() {
        return this.page;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public final String getSort() {
        return this.sort;
    }

    public final int getTabId() {
        return this.tabId;
    }

    public final List<UGCVideoHashTag> getUgcVideoHasTags() {
        return this.ugcVideoHasTags;
    }

    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    public int hashCode() {
        int i11 = ((this.page * 31) + this.perPage) * 31;
        List<UGCVideoHashTag> list = this.ugcVideoHasTags;
        int iHashCode = (i11 + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.ugcVideoId;
        return ((((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + this.tabId) * 31) + this.sort.hashCode();
    }

    public String toString() {
        return "HashTagListRequest(page=" + this.page + ", perPage=" + this.perPage + ", ugcVideoHasTags=" + this.ugcVideoHasTags + ", ugcVideoId=" + this.ugcVideoId + ", tabId=" + this.tabId + ", sort=" + this.sort + ")";
    }
}
