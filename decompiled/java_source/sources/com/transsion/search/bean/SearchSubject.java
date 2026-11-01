package com.transsion.search.bean;

import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u00012\u00020\u0002B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0017\u001a\u00020\u0004HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003J)\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0004HÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006!"}, d2 = {"Lcom/transsion/search/bean/SearchSubject;", "Lcom/transsion/moviedetailapi/bean/Subject;", "Ljava/io/Serializable;", "viewType", "", "verticalRank", "Lcom/transsion/search/bean/VerticalRank;", "showDivider", "", "<init>", "(ILcom/transsion/search/bean/VerticalRank;Z)V", "getViewType", "()I", "setViewType", "(I)V", "getVerticalRank", "()Lcom/transsion/search/bean/VerticalRank;", "setVerticalRank", "(Lcom/transsion/search/bean/VerticalRank;)V", "getShowDivider", "()Z", "setShowDivider", "(Z)V", "component1", "component2", "component3", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SearchSubject extends Subject implements Serializable {
    private boolean showDivider;
    private VerticalRank verticalRank;
    private int viewType;

    public SearchSubject(int i11, VerticalRank verticalRank, boolean z10) {
        super(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, -1, 134217727, null);
        this.viewType = i11;
        this.verticalRank = verticalRank;
        this.showDivider = z10;
    }

    public static /* synthetic */ SearchSubject copy$default(SearchSubject searchSubject, int i11, VerticalRank verticalRank, boolean z10, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = searchSubject.viewType;
        }
        if ((i12 & 2) != 0) {
            verticalRank = searchSubject.verticalRank;
        }
        if ((i12 & 4) != 0) {
            z10 = searchSubject.showDivider;
        }
        return searchSubject.copy(i11, verticalRank, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getViewType() {
        return this.viewType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final VerticalRank getVerticalRank() {
        return this.verticalRank;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getShowDivider() {
        return this.showDivider;
    }

    public final SearchSubject copy(int viewType, VerticalRank verticalRank, boolean showDivider) {
        return new SearchSubject(viewType, verticalRank, showDivider);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchSubject)) {
            return false;
        }
        SearchSubject searchSubject = (SearchSubject) other;
        return this.viewType == searchSubject.viewType && Intrinsics.c(this.verticalRank, searchSubject.verticalRank) && this.showDivider == searchSubject.showDivider;
    }

    public final boolean getShowDivider() {
        return this.showDivider;
    }

    public final VerticalRank getVerticalRank() {
        return this.verticalRank;
    }

    public final int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        int i11 = this.viewType * 31;
        VerticalRank verticalRank = this.verticalRank;
        return ((i11 + (verticalRank == null ? 0 : verticalRank.hashCode())) * 31) + e.a(this.showDivider);
    }

    public final void setShowDivider(boolean z10) {
        this.showDivider = z10;
    }

    public final void setVerticalRank(VerticalRank verticalRank) {
        this.verticalRank = verticalRank;
    }

    public final void setViewType(int i11) {
        this.viewType = i11;
    }

    public String toString() {
        return "SearchSubject(viewType=" + this.viewType + ", verticalRank=" + this.verticalRank + ", showDivider=" + this.showDivider + ")";
    }
}
