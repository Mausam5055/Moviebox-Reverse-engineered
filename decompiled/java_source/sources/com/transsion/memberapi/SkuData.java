package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0003HÆ\u0003J?\u0010\u0015\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\r¨\u0006\u001d"}, d2 = {"Lcom/transsion/memberapi/SkuData;", "", "skuList", "", "Lcom/transsion/memberapi/SkuItem;", "skuPointList", "memberRights", "Lcom/transsion/memberapi/MemberRight;", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getSkuList", "()Ljava/util/List;", "setSkuList", "(Ljava/util/List;)V", "getSkuPointList", "setSkuPointList", "getMemberRights", "setMemberRights", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SkuData {
    private List<MemberRight> memberRights;
    private List<SkuItem> skuList;
    private List<SkuItem> skuPointList;

    public SkuData(List<SkuItem> list, List<SkuItem> list2, List<MemberRight> list3) {
        this.skuList = list;
        this.skuPointList = list2;
        this.memberRights = list3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SkuData copy$default(SkuData skuData, List list, List list2, List list3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = skuData.skuList;
        }
        if ((i11 & 2) != 0) {
            list2 = skuData.skuPointList;
        }
        if ((i11 & 4) != 0) {
            list3 = skuData.memberRights;
        }
        return skuData.copy(list, list2, list3);
    }

    public final List<SkuItem> component1() {
        return this.skuList;
    }

    public final List<SkuItem> component2() {
        return this.skuPointList;
    }

    public final List<MemberRight> component3() {
        return this.memberRights;
    }

    public final SkuData copy(List<SkuItem> skuList, List<SkuItem> skuPointList, List<MemberRight> memberRights) {
        return new SkuData(skuList, skuPointList, memberRights);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SkuData)) {
            return false;
        }
        SkuData skuData = (SkuData) other;
        return Intrinsics.c(this.skuList, skuData.skuList) && Intrinsics.c(this.skuPointList, skuData.skuPointList) && Intrinsics.c(this.memberRights, skuData.memberRights);
    }

    public final List<MemberRight> getMemberRights() {
        return this.memberRights;
    }

    public final List<SkuItem> getSkuList() {
        return this.skuList;
    }

    public final List<SkuItem> getSkuPointList() {
        return this.skuPointList;
    }

    public int hashCode() {
        List<SkuItem> list = this.skuList;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<SkuItem> list2 = this.skuPointList;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<MemberRight> list3 = this.memberRights;
        return iHashCode2 + (list3 != null ? list3.hashCode() : 0);
    }

    public final void setMemberRights(List<MemberRight> list) {
        this.memberRights = list;
    }

    public final void setSkuList(List<SkuItem> list) {
        this.skuList = list;
    }

    public final void setSkuPointList(List<SkuItem> list) {
        this.skuPointList = list;
    }

    public String toString() {
        return "SkuData(skuList=" + this.skuList + ", skuPointList=" + this.skuPointList + ", memberRights=" + this.memberRights + ")";
    }
}
