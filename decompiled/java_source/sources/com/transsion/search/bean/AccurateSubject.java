package com.transsion.search.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/transsion/search/bean/AccurateSubject;", "Ljava/io/Serializable;", "subject", "Lcom/transsion/search/bean/SearchSubject;", "seasons", "", "Lcom/transsion/search/bean/Season;", "<init>", "(Lcom/transsion/search/bean/SearchSubject;Ljava/util/List;)V", "getSubject", "()Lcom/transsion/search/bean/SearchSubject;", "getSeasons", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AccurateSubject implements Serializable {

    @SerializedName("seasons")
    private final List<Season> seasons;

    @SerializedName("subject")
    private final SearchSubject subject;

    public AccurateSubject(SearchSubject searchSubject, List<Season> list) {
        this.subject = searchSubject;
        this.seasons = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AccurateSubject copy$default(AccurateSubject accurateSubject, SearchSubject searchSubject, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            searchSubject = accurateSubject.subject;
        }
        if ((i11 & 2) != 0) {
            list = accurateSubject.seasons;
        }
        return accurateSubject.copy(searchSubject, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final SearchSubject getSubject() {
        return this.subject;
    }

    public final List<Season> component2() {
        return this.seasons;
    }

    public final AccurateSubject copy(SearchSubject subject, List<Season> seasons) {
        return new AccurateSubject(subject, seasons);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AccurateSubject)) {
            return false;
        }
        AccurateSubject accurateSubject = (AccurateSubject) other;
        return Intrinsics.c(this.subject, accurateSubject.subject) && Intrinsics.c(this.seasons, accurateSubject.seasons);
    }

    public final List<Season> getSeasons() {
        return this.seasons;
    }

    public final SearchSubject getSubject() {
        return this.subject;
    }

    public int hashCode() {
        SearchSubject searchSubject = this.subject;
        int iHashCode = (searchSubject == null ? 0 : searchSubject.hashCode()) * 31;
        List<Season> list = this.seasons;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "AccurateSubject(subject=" + this.subject + ", seasons=" + this.seasons + ")";
    }
}
