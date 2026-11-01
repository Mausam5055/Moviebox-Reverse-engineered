package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0011\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\r\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/transsion/memberapi/MemberPriceData;", "", "basicMember", "", "Lcom/transsion/memberapi/MemberPriceItem;", "proMembers", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "getBasicMember", "()Ljava/util/List;", "getProMembers", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberPriceData {
    private final List<MemberPriceItem> basicMember;
    private final List<MemberPriceItem> proMembers;

    /* JADX WARN: Multi-variable type inference failed */
    public MemberPriceData() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public MemberPriceData(List<MemberPriceItem> list, List<MemberPriceItem> list2) {
        this.basicMember = list;
        this.proMembers = list2;
    }

    public /* synthetic */ MemberPriceData(List list, List list2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list, (i11 & 2) != 0 ? null : list2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MemberPriceData copy$default(MemberPriceData memberPriceData, List list, List list2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = memberPriceData.basicMember;
        }
        if ((i11 & 2) != 0) {
            list2 = memberPriceData.proMembers;
        }
        return memberPriceData.copy(list, list2);
    }

    public final List<MemberPriceItem> component1() {
        return this.basicMember;
    }

    public final List<MemberPriceItem> component2() {
        return this.proMembers;
    }

    public final MemberPriceData copy(List<MemberPriceItem> basicMember, List<MemberPriceItem> proMembers) {
        return new MemberPriceData(basicMember, proMembers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberPriceData)) {
            return false;
        }
        MemberPriceData memberPriceData = (MemberPriceData) other;
        return Intrinsics.c(this.basicMember, memberPriceData.basicMember) && Intrinsics.c(this.proMembers, memberPriceData.proMembers);
    }

    public final List<MemberPriceItem> getBasicMember() {
        return this.basicMember;
    }

    public final List<MemberPriceItem> getProMembers() {
        return this.proMembers;
    }

    public int hashCode() {
        List<MemberPriceItem> list = this.basicMember;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<MemberPriceItem> list2 = this.proMembers;
        return iHashCode + (list2 != null ? list2.hashCode() : 0);
    }

    public String toString() {
        return "MemberPriceData(basicMember=" + this.basicMember + ", proMembers=" + this.proMembers + ")";
    }
}
