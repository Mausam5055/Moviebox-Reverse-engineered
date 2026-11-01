package com.transsion.mbwidget.data;

import androidx.collection.s;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u000bHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u000eHÆ\u0003Ji\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\r\u001a\u00020\u000eHÆ\u0001J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010+HÖ\u0003J\t\u0010,\u001a\u00020-HÖ\u0001J\t\u0010.\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0012R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u0006/"}, d2 = {"Lcom/transsion/mbwidget/data/SportMatch;", "Ljava/io/Serializable;", "matchId", "", "sportType", "Lcom/transsion/mbwidget/data/SportType;", "team1Name", "team1Logo", "team2Name", "team2Logo", "matchTime", "", "deeplink", NotificationCompat.CATEGORY_STATUS, "Lcom/transsion/mbwidget/data/MatchStatus;", "<init>", "(Ljava/lang/String;Lcom/transsion/mbwidget/data/SportType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/transsion/mbwidget/data/MatchStatus;)V", "getMatchId", "()Ljava/lang/String;", "getSportType", "()Lcom/transsion/mbwidget/data/SportType;", "getTeam1Name", "getTeam1Logo", "getTeam2Name", "getTeam2Logo", "getMatchTime", "()J", "getDeeplink", "getStatus", "()Lcom/transsion/mbwidget/data/MatchStatus;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "DeskWidget_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SportMatch implements Serializable {
    private final String deeplink;
    private final String matchId;
    private final long matchTime;
    private final SportType sportType;
    private final MatchStatus status;
    private final String team1Logo;
    private final String team1Name;
    private final String team2Logo;
    private final String team2Name;

    public SportMatch(String matchId, SportType sportType, String team1Name, String str, String team2Name, String str2, long j11, String str3, MatchStatus status) {
        Intrinsics.h(matchId, "matchId");
        Intrinsics.h(sportType, "sportType");
        Intrinsics.h(team1Name, "team1Name");
        Intrinsics.h(team2Name, "team2Name");
        Intrinsics.h(status, "status");
        this.matchId = matchId;
        this.sportType = sportType;
        this.team1Name = team1Name;
        this.team1Logo = str;
        this.team2Name = team2Name;
        this.team2Logo = str2;
        this.matchTime = j11;
        this.deeplink = str3;
        this.status = status;
    }

    public /* synthetic */ SportMatch(String str, SportType sportType, String str2, String str3, String str4, String str5, long j11, String str6, MatchStatus matchStatus, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, sportType, str2, (i11 & 8) != 0 ? null : str3, str4, (i11 & 32) != 0 ? null : str5, j11, (i11 & 128) != 0 ? null : str6, (i11 & 256) != 0 ? MatchStatus.UNKNOWN : matchStatus);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMatchId() {
        return this.matchId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final SportType getSportType() {
        return this.sportType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTeam1Name() {
        return this.team1Name;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getTeam1Logo() {
        return this.team1Logo;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getTeam2Name() {
        return this.team2Name;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTeam2Logo() {
        return this.team2Logo;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final long getMatchTime() {
        return this.matchTime;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getDeeplink() {
        return this.deeplink;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final MatchStatus getStatus() {
        return this.status;
    }

    public final SportMatch copy(String matchId, SportType sportType, String team1Name, String team1Logo, String team2Name, String team2Logo, long matchTime, String deeplink, MatchStatus status) {
        Intrinsics.h(matchId, "matchId");
        Intrinsics.h(sportType, "sportType");
        Intrinsics.h(team1Name, "team1Name");
        Intrinsics.h(team2Name, "team2Name");
        Intrinsics.h(status, "status");
        return new SportMatch(matchId, sportType, team1Name, team1Logo, team2Name, team2Logo, matchTime, deeplink, status);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SportMatch)) {
            return false;
        }
        SportMatch sportMatch = (SportMatch) other;
        return Intrinsics.c(this.matchId, sportMatch.matchId) && this.sportType == sportMatch.sportType && Intrinsics.c(this.team1Name, sportMatch.team1Name) && Intrinsics.c(this.team1Logo, sportMatch.team1Logo) && Intrinsics.c(this.team2Name, sportMatch.team2Name) && Intrinsics.c(this.team2Logo, sportMatch.team2Logo) && this.matchTime == sportMatch.matchTime && Intrinsics.c(this.deeplink, sportMatch.deeplink) && this.status == sportMatch.status;
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final String getMatchId() {
        return this.matchId;
    }

    public final long getMatchTime() {
        return this.matchTime;
    }

    public final SportType getSportType() {
        return this.sportType;
    }

    public final MatchStatus getStatus() {
        return this.status;
    }

    public final String getTeam1Logo() {
        return this.team1Logo;
    }

    public final String getTeam1Name() {
        return this.team1Name;
    }

    public final String getTeam2Logo() {
        return this.team2Logo;
    }

    public final String getTeam2Name() {
        return this.team2Name;
    }

    public int hashCode() {
        int iHashCode = ((((this.matchId.hashCode() * 31) + this.sportType.hashCode()) * 31) + this.team1Name.hashCode()) * 31;
        String str = this.team1Logo;
        int iHashCode2 = (((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.team2Name.hashCode()) * 31;
        String str2 = this.team2Logo;
        int iHashCode3 = (((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + s.a(this.matchTime)) * 31;
        String str3 = this.deeplink;
        return ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.status.hashCode();
    }

    public String toString() {
        return "SportMatch(matchId=" + this.matchId + ", sportType=" + this.sportType + ", team1Name=" + this.team1Name + ", team1Logo=" + this.team1Logo + ", team2Name=" + this.team2Name + ", team2Logo=" + this.team2Logo + ", matchTime=" + this.matchTime + ", deeplink=" + this.deeplink + ", status=" + this.status + ")";
    }
}
