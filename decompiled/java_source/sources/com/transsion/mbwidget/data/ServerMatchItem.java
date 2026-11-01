package com.transsion.mbwidget.data;

import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b*\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BÇ\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003JÉ\u0001\u0010<\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010=\u001a\u00020>2\b\u0010?\u001a\u0004\u0018\u00010@HÖ\u0003J\t\u0010A\u001a\u00020BHÖ\u0001J\t\u0010C\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0019R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0019R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0019R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0019R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0019R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b$\u0010#R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0019R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0019R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0019R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0019R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u0019¨\u0006D"}, d2 = {"Lcom/transsion/mbwidget/data/ServerMatchItem;", "Ljava/io/Serializable;", "id", "", "team1", "Lcom/transsion/mbwidget/data/ServerTeam;", "team2", NotificationCompat.CATEGORY_STATUS, NativeComponentConstants.KEY_COMPONENT_TYPE, "startTime", "endTime", "timeDesc", "teamMatchInfo1", "Lcom/transsion/mbwidget/data/TeamMatchInfo;", "teamMatchInfo2", "matchResult", "matchRound", "leagueId", "leagueItem", "Lcom/transsion/mbwidget/data/LeagueItem;", "deeplink", "h5link", "<init>", "(Ljava/lang/String;Lcom/transsion/mbwidget/data/ServerTeam;Lcom/transsion/mbwidget/data/ServerTeam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/TeamMatchInfo;Lcom/transsion/mbwidget/data/TeamMatchInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/LeagueItem;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getTeam1", "()Lcom/transsion/mbwidget/data/ServerTeam;", "getTeam2", "getStatus", "getType", "getStartTime", "getEndTime", "getTimeDesc", "getTeamMatchInfo1", "()Lcom/transsion/mbwidget/data/TeamMatchInfo;", "getTeamMatchInfo2", "getMatchResult", "getMatchRound", "getLeagueId", "getLeagueItem", "()Lcom/transsion/mbwidget/data/LeagueItem;", "getDeeplink", "getH5link", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "DeskWidget_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ServerMatchItem implements Serializable {
    private final String deeplink;
    private final String endTime;
    private final String h5link;
    private final String id;
    private final String leagueId;
    private final LeagueItem leagueItem;
    private final String matchResult;
    private final String matchRound;
    private final String startTime;
    private final String status;
    private final ServerTeam team1;
    private final ServerTeam team2;
    private final TeamMatchInfo teamMatchInfo1;
    private final TeamMatchInfo teamMatchInfo2;
    private final String timeDesc;
    private final String type;

    public ServerMatchItem() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
    }

    public ServerMatchItem(String str, ServerTeam serverTeam, ServerTeam serverTeam2, String str2, String str3, String str4, String str5, String str6, TeamMatchInfo teamMatchInfo, TeamMatchInfo teamMatchInfo2, String str7, String str8, String str9, LeagueItem leagueItem, String str10, String str11) {
        this.id = str;
        this.team1 = serverTeam;
        this.team2 = serverTeam2;
        this.status = str2;
        this.type = str3;
        this.startTime = str4;
        this.endTime = str5;
        this.timeDesc = str6;
        this.teamMatchInfo1 = teamMatchInfo;
        this.teamMatchInfo2 = teamMatchInfo2;
        this.matchResult = str7;
        this.matchRound = str8;
        this.leagueId = str9;
        this.leagueItem = leagueItem;
        this.deeplink = str10;
        this.h5link = str11;
    }

    public /* synthetic */ ServerMatchItem(String str, ServerTeam serverTeam, ServerTeam serverTeam2, String str2, String str3, String str4, String str5, String str6, TeamMatchInfo teamMatchInfo, TeamMatchInfo teamMatchInfo2, String str7, String str8, String str9, LeagueItem leagueItem, String str10, String str11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : serverTeam, (i11 & 4) != 0 ? null : serverTeam2, (i11 & 8) != 0 ? null : str2, (i11 & 16) != 0 ? null : str3, (i11 & 32) != 0 ? null : str4, (i11 & 64) != 0 ? null : str5, (i11 & 128) != 0 ? null : str6, (i11 & 256) != 0 ? null : teamMatchInfo, (i11 & 512) != 0 ? null : teamMatchInfo2, (i11 & 1024) != 0 ? null : str7, (i11 & 2048) != 0 ? null : str8, (i11 & 4096) != 0 ? null : str9, (i11 & 8192) != 0 ? null : leagueItem, (i11 & 16384) != 0 ? null : str10, (i11 & 32768) != 0 ? null : str11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final TeamMatchInfo getTeamMatchInfo2() {
        return this.teamMatchInfo2;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getMatchResult() {
        return this.matchResult;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getMatchRound() {
        return this.matchRound;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getLeagueId() {
        return this.leagueId;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final LeagueItem getLeagueItem() {
        return this.leagueItem;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getDeeplink() {
        return this.deeplink;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getH5link() {
        return this.h5link;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final ServerTeam getTeam1() {
        return this.team1;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ServerTeam getTeam2() {
        return this.team2;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getStartTime() {
        return this.startTime;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getEndTime() {
        return this.endTime;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getTimeDesc() {
        return this.timeDesc;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final TeamMatchInfo getTeamMatchInfo1() {
        return this.teamMatchInfo1;
    }

    public final ServerMatchItem copy(String id2, ServerTeam team1, ServerTeam team2, String status, String type, String startTime, String endTime, String timeDesc, TeamMatchInfo teamMatchInfo1, TeamMatchInfo teamMatchInfo2, String matchResult, String matchRound, String leagueId, LeagueItem leagueItem, String deeplink, String h5link) {
        return new ServerMatchItem(id2, team1, team2, status, type, startTime, endTime, timeDesc, teamMatchInfo1, teamMatchInfo2, matchResult, matchRound, leagueId, leagueItem, deeplink, h5link);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ServerMatchItem)) {
            return false;
        }
        ServerMatchItem serverMatchItem = (ServerMatchItem) other;
        return Intrinsics.c(this.id, serverMatchItem.id) && Intrinsics.c(this.team1, serverMatchItem.team1) && Intrinsics.c(this.team2, serverMatchItem.team2) && Intrinsics.c(this.status, serverMatchItem.status) && Intrinsics.c(this.type, serverMatchItem.type) && Intrinsics.c(this.startTime, serverMatchItem.startTime) && Intrinsics.c(this.endTime, serverMatchItem.endTime) && Intrinsics.c(this.timeDesc, serverMatchItem.timeDesc) && Intrinsics.c(this.teamMatchInfo1, serverMatchItem.teamMatchInfo1) && Intrinsics.c(this.teamMatchInfo2, serverMatchItem.teamMatchInfo2) && Intrinsics.c(this.matchResult, serverMatchItem.matchResult) && Intrinsics.c(this.matchRound, serverMatchItem.matchRound) && Intrinsics.c(this.leagueId, serverMatchItem.leagueId) && Intrinsics.c(this.leagueItem, serverMatchItem.leagueItem) && Intrinsics.c(this.deeplink, serverMatchItem.deeplink) && Intrinsics.c(this.h5link, serverMatchItem.h5link);
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final String getEndTime() {
        return this.endTime;
    }

    public final String getH5link() {
        return this.h5link;
    }

    public final String getId() {
        return this.id;
    }

    public final String getLeagueId() {
        return this.leagueId;
    }

    public final LeagueItem getLeagueItem() {
        return this.leagueItem;
    }

    public final String getMatchResult() {
        return this.matchResult;
    }

    public final String getMatchRound() {
        return this.matchRound;
    }

    public final String getStartTime() {
        return this.startTime;
    }

    public final String getStatus() {
        return this.status;
    }

    public final ServerTeam getTeam1() {
        return this.team1;
    }

    public final ServerTeam getTeam2() {
        return this.team2;
    }

    public final TeamMatchInfo getTeamMatchInfo1() {
        return this.teamMatchInfo1;
    }

    public final TeamMatchInfo getTeamMatchInfo2() {
        return this.teamMatchInfo2;
    }

    public final String getTimeDesc() {
        return this.timeDesc;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        ServerTeam serverTeam = this.team1;
        int iHashCode2 = (iHashCode + (serverTeam == null ? 0 : serverTeam.hashCode())) * 31;
        ServerTeam serverTeam2 = this.team2;
        int iHashCode3 = (iHashCode2 + (serverTeam2 == null ? 0 : serverTeam2.hashCode())) * 31;
        String str2 = this.status;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.type;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.startTime;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.endTime;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.timeDesc;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        TeamMatchInfo teamMatchInfo = this.teamMatchInfo1;
        int iHashCode9 = (iHashCode8 + (teamMatchInfo == null ? 0 : teamMatchInfo.hashCode())) * 31;
        TeamMatchInfo teamMatchInfo2 = this.teamMatchInfo2;
        int iHashCode10 = (iHashCode9 + (teamMatchInfo2 == null ? 0 : teamMatchInfo2.hashCode())) * 31;
        String str7 = this.matchResult;
        int iHashCode11 = (iHashCode10 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.matchRound;
        int iHashCode12 = (iHashCode11 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.leagueId;
        int iHashCode13 = (iHashCode12 + (str9 == null ? 0 : str9.hashCode())) * 31;
        LeagueItem leagueItem = this.leagueItem;
        int iHashCode14 = (iHashCode13 + (leagueItem == null ? 0 : leagueItem.hashCode())) * 31;
        String str10 = this.deeplink;
        int iHashCode15 = (iHashCode14 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.h5link;
        return iHashCode15 + (str11 != null ? str11.hashCode() : 0);
    }

    public String toString() {
        return "ServerMatchItem(id=" + this.id + ", team1=" + this.team1 + ", team2=" + this.team2 + ", status=" + this.status + ", type=" + this.type + ", startTime=" + this.startTime + ", endTime=" + this.endTime + ", timeDesc=" + this.timeDesc + ", teamMatchInfo1=" + this.teamMatchInfo1 + ", teamMatchInfo2=" + this.teamMatchInfo2 + ", matchResult=" + this.matchResult + ", matchRound=" + this.matchRound + ", leagueId=" + this.leagueId + ", leagueItem=" + this.leagueItem + ", deeplink=" + this.deeplink + ", h5link=" + this.h5link + ")";
    }
}
