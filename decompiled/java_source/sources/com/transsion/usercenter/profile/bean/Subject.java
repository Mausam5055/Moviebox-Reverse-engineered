package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J/\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/transsion/usercenter/profile/bean/Subject;", "Ljava/io/Serializable;", "wantToSeeCount", "", "haveSeenCount", "wantSubjects", "", "Lcom/transsion/usercenter/profile/bean/CoverUrl;", "<init>", "(IILjava/util/List;)V", "getWantToSeeCount", "()I", "setWantToSeeCount", "(I)V", "getHaveSeenCount", "setHaveSeenCount", "getWantSubjects", "()Ljava/util/List;", "setWantSubjects", "(Ljava/util/List;)V", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Subject implements Serializable {
    private int haveSeenCount;
    private List<CoverUrl> wantSubjects;
    private int wantToSeeCount;

    public Subject(int i11, int i12, List<CoverUrl> list) {
        this.wantToSeeCount = i11;
        this.haveSeenCount = i12;
        this.wantSubjects = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Subject copy$default(Subject subject, int i11, int i12, List list, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i11 = subject.wantToSeeCount;
        }
        if ((i13 & 2) != 0) {
            i12 = subject.haveSeenCount;
        }
        if ((i13 & 4) != 0) {
            list = subject.wantSubjects;
        }
        return subject.copy(i11, i12, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getWantToSeeCount() {
        return this.wantToSeeCount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getHaveSeenCount() {
        return this.haveSeenCount;
    }

    public final List<CoverUrl> component3() {
        return this.wantSubjects;
    }

    public final Subject copy(int wantToSeeCount, int haveSeenCount, List<CoverUrl> wantSubjects) {
        return new Subject(wantToSeeCount, haveSeenCount, wantSubjects);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Subject)) {
            return false;
        }
        Subject subject = (Subject) other;
        return this.wantToSeeCount == subject.wantToSeeCount && this.haveSeenCount == subject.haveSeenCount && Intrinsics.c(this.wantSubjects, subject.wantSubjects);
    }

    public final int getHaveSeenCount() {
        return this.haveSeenCount;
    }

    public final List<CoverUrl> getWantSubjects() {
        return this.wantSubjects;
    }

    public final int getWantToSeeCount() {
        return this.wantToSeeCount;
    }

    public int hashCode() {
        int i11 = ((this.wantToSeeCount * 31) + this.haveSeenCount) * 31;
        List<CoverUrl> list = this.wantSubjects;
        return i11 + (list == null ? 0 : list.hashCode());
    }

    public final void setHaveSeenCount(int i11) {
        this.haveSeenCount = i11;
    }

    public final void setWantSubjects(List<CoverUrl> list) {
        this.wantSubjects = list;
    }

    public final void setWantToSeeCount(int i11) {
        this.wantToSeeCount = i11;
    }

    public String toString() {
        return "Subject(wantToSeeCount=" + this.wantToSeeCount + ", haveSeenCount=" + this.haveSeenCount + ", wantSubjects=" + this.wantSubjects + ")";
    }
}
