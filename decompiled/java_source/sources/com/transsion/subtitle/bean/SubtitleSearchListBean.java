package com.transsion.subtitle.bean;

import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.SubtitleItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\bHÆ\u0003J\t\u0010\u001f\u001a\u00020\nHÆ\u0003J;\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010!\u001a\u00020\n2\b\u0010\"\u001a\u0004\u0018\u00010#HÖ\u0003J\t\u0010$\u001a\u00020\bHÖ\u0001J\t\u0010%\u001a\u00020&HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006'"}, d2 = {"Lcom/transsion/subtitle/bean/SubtitleSearchListBean;", "Ljava/io/Serializable;", "pager", "Lcom/transsion/moviedetailapi/bean/Pager;", "items", "", "Lcom/transsion/moviedetailapi/bean/SubtitleItem;", "searchType", "", "isRefresh", "", "<init>", "(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZ)V", "getPager", "()Lcom/transsion/moviedetailapi/bean/Pager;", "setPager", "(Lcom/transsion/moviedetailapi/bean/Pager;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getSearchType", "()I", "setSearchType", "(I)V", "()Z", "setRefresh", "(Z)V", "component1", "component2", "component3", "component4", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SubtitleSearchListBean implements Serializable {
    private transient boolean isRefresh;
    private List<SubtitleItem> items;
    private Pager pager;
    private transient int searchType;

    public SubtitleSearchListBean(Pager pager, List<SubtitleItem> list, int i11, boolean z10) {
        this.pager = pager;
        this.items = list;
        this.searchType = i11;
        this.isRefresh = z10;
    }

    public /* synthetic */ SubtitleSearchListBean(Pager pager, List list, int i11, boolean z10, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(pager, list, (i12 & 4) != 0 ? -1 : i11, (i12 & 8) != 0 ? false : z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SubtitleSearchListBean copy$default(SubtitleSearchListBean subtitleSearchListBean, Pager pager, List list, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            pager = subtitleSearchListBean.pager;
        }
        if ((i12 & 2) != 0) {
            list = subtitleSearchListBean.items;
        }
        if ((i12 & 4) != 0) {
            i11 = subtitleSearchListBean.searchType;
        }
        if ((i12 & 8) != 0) {
            z10 = subtitleSearchListBean.isRefresh;
        }
        return subtitleSearchListBean.copy(pager, list, i11, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    public final List<SubtitleItem> component2() {
        return this.items;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getSearchType() {
        return this.searchType;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsRefresh() {
        return this.isRefresh;
    }

    public final SubtitleSearchListBean copy(Pager pager, List<SubtitleItem> items, int searchType, boolean isRefresh) {
        return new SubtitleSearchListBean(pager, items, searchType, isRefresh);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubtitleSearchListBean)) {
            return false;
        }
        SubtitleSearchListBean subtitleSearchListBean = (SubtitleSearchListBean) other;
        return Intrinsics.c(this.pager, subtitleSearchListBean.pager) && Intrinsics.c(this.items, subtitleSearchListBean.items) && this.searchType == subtitleSearchListBean.searchType && this.isRefresh == subtitleSearchListBean.isRefresh;
    }

    public final List<SubtitleItem> getItems() {
        return this.items;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public final int getSearchType() {
        return this.searchType;
    }

    public int hashCode() {
        Pager pager = this.pager;
        int iHashCode = (pager == null ? 0 : pager.hashCode()) * 31;
        List<SubtitleItem> list = this.items;
        return ((((iHashCode + (list != null ? list.hashCode() : 0)) * 31) + this.searchType) * 31) + e.a(this.isRefresh);
    }

    public final boolean isRefresh() {
        return this.isRefresh;
    }

    public final void setItems(List<SubtitleItem> list) {
        this.items = list;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    public final void setRefresh(boolean z10) {
        this.isRefresh = z10;
    }

    public final void setSearchType(int i11) {
        this.searchType = i11;
    }

    public String toString() {
        return "SubtitleSearchListBean(pager=" + this.pager + ", items=" + this.items + ", searchType=" + this.searchType + ", isRefresh=" + this.isRefresh + ")";
    }
}
