package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J8\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\r\u0010\u000bR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/transsion/usercenter/profile/bean/BffMySubject;", "", "wantToSeeCount", "", "haveSeenCount", "wantSubjects", "", "Lcom/transsion/usercenter/profile/bean/BffCoverItem;", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V", "getWantToSeeCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getHaveSeenCount", "getWantSubjects", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/transsion/usercenter/profile/bean/BffMySubject;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BffMySubject {

    @SerializedName("haveSeenCount")
    private final Integer haveSeenCount;

    @SerializedName("wantSubjects")
    private final List<BffCoverItem> wantSubjects;

    @SerializedName("wantToSeeCount")
    private final Integer wantToSeeCount;

    public BffMySubject(Integer num, Integer num2, List<BffCoverItem> list) {
        this.wantToSeeCount = num;
        this.haveSeenCount = num2;
        this.wantSubjects = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BffMySubject copy$default(BffMySubject bffMySubject, Integer num, Integer num2, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = bffMySubject.wantToSeeCount;
        }
        if ((i11 & 2) != 0) {
            num2 = bffMySubject.haveSeenCount;
        }
        if ((i11 & 4) != 0) {
            list = bffMySubject.wantSubjects;
        }
        return bffMySubject.copy(num, num2, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getWantToSeeCount() {
        return this.wantToSeeCount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getHaveSeenCount() {
        return this.haveSeenCount;
    }

    public final List<BffCoverItem> component3() {
        return this.wantSubjects;
    }

    public final BffMySubject copy(Integer wantToSeeCount, Integer haveSeenCount, List<BffCoverItem> wantSubjects) {
        return new BffMySubject(wantToSeeCount, haveSeenCount, wantSubjects);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BffMySubject)) {
            return false;
        }
        BffMySubject bffMySubject = (BffMySubject) other;
        return Intrinsics.c(this.wantToSeeCount, bffMySubject.wantToSeeCount) && Intrinsics.c(this.haveSeenCount, bffMySubject.haveSeenCount) && Intrinsics.c(this.wantSubjects, bffMySubject.wantSubjects);
    }

    public final Integer getHaveSeenCount() {
        return this.haveSeenCount;
    }

    public final List<BffCoverItem> getWantSubjects() {
        return this.wantSubjects;
    }

    public final Integer getWantToSeeCount() {
        return this.wantToSeeCount;
    }

    public int hashCode() {
        Integer num = this.wantToSeeCount;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.haveSeenCount;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        List<BffCoverItem> list = this.wantSubjects;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "BffMySubject(wantToSeeCount=" + this.wantToSeeCount + ", haveSeenCount=" + this.haveSeenCount + ", wantSubjects=" + this.wantSubjects + ")";
    }
}
