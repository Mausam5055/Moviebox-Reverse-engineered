package com.transsion.ugcvideodetail.api.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.transsion.moviedetailapi.bean.Pager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\bHÆ\u0003J3\u0010\u001a\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R&\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006#"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;", "Ljava/io/Serializable;", "items", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;", "pager", "Lcom/transsion/moviedetailapi/bean/Pager;", "collection", "Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;", "<init>", "(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getPager", "()Lcom/transsion/moviedetailapi/bean/Pager;", "setPager", "(Lcom/transsion/moviedetailapi/bean/Pager;)V", "getCollection", "()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;", "setCollection", "(Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;)V", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCVideoDownloadList implements Serializable {
    private UGCCollection collection;

    @SerializedName("items")
    private List<UGCVideoDownload> items;

    @SerializedName("pager")
    private Pager pager;

    public UGCVideoDownloadList(List<UGCVideoDownload> list, Pager pager, UGCCollection uGCCollection) {
        this.items = list;
        this.pager = pager;
        this.collection = uGCCollection;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UGCVideoDownloadList copy$default(UGCVideoDownloadList uGCVideoDownloadList, List list, Pager pager, UGCCollection uGCCollection, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = uGCVideoDownloadList.items;
        }
        if ((i11 & 2) != 0) {
            pager = uGCVideoDownloadList.pager;
        }
        if ((i11 & 4) != 0) {
            uGCCollection = uGCVideoDownloadList.collection;
        }
        return uGCVideoDownloadList.copy(list, pager, uGCCollection);
    }

    public final List<UGCVideoDownload> component1() {
        return this.items;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final UGCCollection getCollection() {
        return this.collection;
    }

    public final UGCVideoDownloadList copy(List<UGCVideoDownload> items, Pager pager, UGCCollection collection) {
        return new UGCVideoDownloadList(items, pager, collection);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCVideoDownloadList)) {
            return false;
        }
        UGCVideoDownloadList uGCVideoDownloadList = (UGCVideoDownloadList) other;
        return Intrinsics.c(this.items, uGCVideoDownloadList.items) && Intrinsics.c(this.pager, uGCVideoDownloadList.pager) && Intrinsics.c(this.collection, uGCVideoDownloadList.collection);
    }

    public final UGCCollection getCollection() {
        return this.collection;
    }

    public final List<UGCVideoDownload> getItems() {
        return this.items;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public int hashCode() {
        List<UGCVideoDownload> list = this.items;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        Pager pager = this.pager;
        int iHashCode2 = (iHashCode + (pager == null ? 0 : pager.hashCode())) * 31;
        UGCCollection uGCCollection = this.collection;
        return iHashCode2 + (uGCCollection != null ? uGCCollection.hashCode() : 0);
    }

    public final void setCollection(UGCCollection uGCCollection) {
        this.collection = uGCCollection;
    }

    public final void setItems(List<UGCVideoDownload> list) {
        this.items = list;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    public String toString() {
        return "UGCVideoDownloadList(items=" + this.items + ", pager=" + this.pager + ", collection=" + this.collection + ")";
    }
}
