package com.transsion.ugcvideodetail.api.bean;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.Pager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\bHÆ\u0003J/\u0010\u0017\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00062\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;", "Ljava/io/Serializable;", "list", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;", "isLoadDown", "", "pager", "Lcom/transsion/moviedetailapi/bean/Pager;", "<init>", "(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)V", "getList", "()Ljava/util/List;", "()Z", "setLoadDown", "(Z)V", "getPager", "()Lcom/transsion/moviedetailapi/bean/Pager;", "setPager", "(Lcom/transsion/moviedetailapi/bean/Pager;)V", "component1", "component2", "component3", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCImmVideoContent implements Serializable {
    private boolean isLoadDown;
    private final List<UGCImmVideo> list;
    private Pager pager;

    public UGCImmVideoContent(List<UGCImmVideo> list, boolean z10, Pager pager) {
        Intrinsics.h(list, "list");
        this.list = list;
        this.isLoadDown = z10;
        this.pager = pager;
    }

    public /* synthetic */ UGCImmVideoContent(List list, boolean z10, Pager pager, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i11 & 2) != 0 ? true : z10, (i11 & 4) != 0 ? null : pager);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UGCImmVideoContent copy$default(UGCImmVideoContent uGCImmVideoContent, List list, boolean z10, Pager pager, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = uGCImmVideoContent.list;
        }
        if ((i11 & 2) != 0) {
            z10 = uGCImmVideoContent.isLoadDown;
        }
        if ((i11 & 4) != 0) {
            pager = uGCImmVideoContent.pager;
        }
        return uGCImmVideoContent.copy(list, z10, pager);
    }

    public final List<UGCImmVideo> component1() {
        return this.list;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsLoadDown() {
        return this.isLoadDown;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    public final UGCImmVideoContent copy(List<UGCImmVideo> list, boolean isLoadDown, Pager pager) {
        Intrinsics.h(list, "list");
        return new UGCImmVideoContent(list, isLoadDown, pager);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCImmVideoContent)) {
            return false;
        }
        UGCImmVideoContent uGCImmVideoContent = (UGCImmVideoContent) other;
        return Intrinsics.c(this.list, uGCImmVideoContent.list) && this.isLoadDown == uGCImmVideoContent.isLoadDown && Intrinsics.c(this.pager, uGCImmVideoContent.pager);
    }

    public final List<UGCImmVideo> getList() {
        return this.list;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public int hashCode() {
        int iHashCode = ((this.list.hashCode() * 31) + e.a(this.isLoadDown)) * 31;
        Pager pager = this.pager;
        return iHashCode + (pager == null ? 0 : pager.hashCode());
    }

    public final boolean isLoadDown() {
        return this.isLoadDown;
    }

    public final void setLoadDown(boolean z10) {
        this.isLoadDown = z10;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    public String toString() {
        return "UGCImmVideoContent(list=" + this.list + ", isLoadDown=" + this.isLoadDown + ", pager=" + this.pager + ")";
    }
}
