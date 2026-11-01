package com.transsion.member.bean;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\bHÆ\u0003J5\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u00032\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\bHÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0010\"\u0004\b\u0014\u0010\u0012R\u001e\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006#"}, d2 = {"Lcom/transsion/member/bean/Pager;", "Ljava/io/Serializable;", "hasMore", "", "nextPage", "", "page", "perPage", "", "<init>", "(ZLjava/lang/String;Ljava/lang/String;I)V", "getHasMore", "()Z", "setHasMore", "(Z)V", "getNextPage", "()Ljava/lang/String;", "setNextPage", "(Ljava/lang/String;)V", "getPage", "setPage", "getPerPage", "()I", "setPerPage", "(I)V", "component1", "component2", "component3", "component4", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Pager implements Serializable {
    public static final int $stable = 8;

    @SerializedName("hasMore")
    private boolean hasMore;

    @SerializedName("nextPage")
    private String nextPage;

    @SerializedName("page")
    private String page;

    @SerializedName("perPage")
    private int perPage;

    public Pager(boolean z10, String str, String str2, int i11) {
        this.hasMore = z10;
        this.nextPage = str;
        this.page = str2;
        this.perPage = i11;
    }

    public /* synthetic */ Pager(boolean z10, String str, String str2, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, str, (i12 & 4) != 0 ? null : str2, i11);
    }

    public static /* synthetic */ Pager copy$default(Pager pager, boolean z10, String str, String str2, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            z10 = pager.hasMore;
        }
        if ((i12 & 2) != 0) {
            str = pager.nextPage;
        }
        if ((i12 & 4) != 0) {
            str2 = pager.page;
        }
        if ((i12 & 8) != 0) {
            i11 = pager.perPage;
        }
        return pager.copy(z10, str, str2, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getHasMore() {
        return this.hasMore;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNextPage() {
        return this.nextPage;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPage() {
        return this.page;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getPerPage() {
        return this.perPage;
    }

    public final Pager copy(boolean hasMore, String nextPage, String page, int perPage) {
        return new Pager(hasMore, nextPage, page, perPage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Pager)) {
            return false;
        }
        Pager pager = (Pager) other;
        return this.hasMore == pager.hasMore && Intrinsics.c(this.nextPage, pager.nextPage) && Intrinsics.c(this.page, pager.page) && this.perPage == pager.perPage;
    }

    public final boolean getHasMore() {
        return this.hasMore;
    }

    public final String getNextPage() {
        return this.nextPage;
    }

    public final String getPage() {
        return this.page;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public int hashCode() {
        int iA = e.a(this.hasMore) * 31;
        String str = this.nextPage;
        int iHashCode = (iA + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.page;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.perPage;
    }

    public final void setHasMore(boolean z10) {
        this.hasMore = z10;
    }

    public final void setNextPage(String str) {
        this.nextPage = str;
    }

    public final void setPage(String str) {
        this.page = str;
    }

    public final void setPerPage(int i11) {
        this.perPage = i11;
    }

    public String toString() {
        return "Pager(hasMore=" + this.hasMore + ", nextPage=" + this.nextPage + ", page=" + this.page + ", perPage=" + this.perPage + ")";
    }
}
