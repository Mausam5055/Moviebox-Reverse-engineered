package com.transsion.mbwidget.data;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003JE\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/transsion/mbwidget/data/TeamMatchInfo;", "Ljava/io/Serializable;", "score", "", "crtRunsScored", "crtWicketsLost", "crtOvers", "crtOversExtraBalls", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getScore", "()Ljava/lang/String;", "getCrtRunsScored", "getCrtWicketsLost", "getCrtOvers", "getCrtOversExtraBalls", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "DeskWidget_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class TeamMatchInfo implements Serializable {
    private final String crtOvers;
    private final String crtOversExtraBalls;
    private final String crtRunsScored;
    private final String crtWicketsLost;
    private final String score;

    public TeamMatchInfo() {
        this(null, null, null, null, null, 31, null);
    }

    public TeamMatchInfo(String str, String str2, String str3, String str4, String str5) {
        this.score = str;
        this.crtRunsScored = str2;
        this.crtWicketsLost = str3;
        this.crtOvers = str4;
        this.crtOversExtraBalls = str5;
    }

    public /* synthetic */ TeamMatchInfo(String str, String str2, String str3, String str4, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5);
    }

    public static /* synthetic */ TeamMatchInfo copy$default(TeamMatchInfo teamMatchInfo, String str, String str2, String str3, String str4, String str5, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = teamMatchInfo.score;
        }
        if ((i11 & 2) != 0) {
            str2 = teamMatchInfo.crtRunsScored;
        }
        String str6 = str2;
        if ((i11 & 4) != 0) {
            str3 = teamMatchInfo.crtWicketsLost;
        }
        String str7 = str3;
        if ((i11 & 8) != 0) {
            str4 = teamMatchInfo.crtOvers;
        }
        String str8 = str4;
        if ((i11 & 16) != 0) {
            str5 = teamMatchInfo.crtOversExtraBalls;
        }
        return teamMatchInfo.copy(str, str6, str7, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getScore() {
        return this.score;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCrtRunsScored() {
        return this.crtRunsScored;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCrtWicketsLost() {
        return this.crtWicketsLost;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCrtOvers() {
        return this.crtOvers;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCrtOversExtraBalls() {
        return this.crtOversExtraBalls;
    }

    public final TeamMatchInfo copy(String score, String crtRunsScored, String crtWicketsLost, String crtOvers, String crtOversExtraBalls) {
        return new TeamMatchInfo(score, crtRunsScored, crtWicketsLost, crtOvers, crtOversExtraBalls);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TeamMatchInfo)) {
            return false;
        }
        TeamMatchInfo teamMatchInfo = (TeamMatchInfo) other;
        return Intrinsics.c(this.score, teamMatchInfo.score) && Intrinsics.c(this.crtRunsScored, teamMatchInfo.crtRunsScored) && Intrinsics.c(this.crtWicketsLost, teamMatchInfo.crtWicketsLost) && Intrinsics.c(this.crtOvers, teamMatchInfo.crtOvers) && Intrinsics.c(this.crtOversExtraBalls, teamMatchInfo.crtOversExtraBalls);
    }

    public final String getCrtOvers() {
        return this.crtOvers;
    }

    public final String getCrtOversExtraBalls() {
        return this.crtOversExtraBalls;
    }

    public final String getCrtRunsScored() {
        return this.crtRunsScored;
    }

    public final String getCrtWicketsLost() {
        return this.crtWicketsLost;
    }

    public final String getScore() {
        return this.score;
    }

    public int hashCode() {
        String str = this.score;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.crtRunsScored;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.crtWicketsLost;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.crtOvers;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.crtOversExtraBalls;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public String toString() {
        return "TeamMatchInfo(score=" + this.score + ", crtRunsScored=" + this.crtRunsScored + ", crtWicketsLost=" + this.crtWicketsLost + ", crtOvers=" + this.crtOvers + ", crtOversExtraBalls=" + this.crtOversExtraBalls + ")";
    }
}
