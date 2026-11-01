package com.transsion.push.feature.sport;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\bU\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0095\u0002\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0019\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0019\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u001d\u0010\u001eJ\u000b\u0010T\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010c\u001a\u00020\u0014HÆ\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010g\u001a\u00020\u0019HÆ\u0003J\t\u0010h\u001a\u00020\u0019HÆ\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010j\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0097\u0002\u0010k\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010l\u001a\u00020\u0014J\u0013\u0010m\u001a\u00020\u00192\b\u0010n\u001a\u0004\u0018\u00010oHÖ\u0003J\t\u0010p\u001a\u00020\u0014HÖ\u0001J\t\u0010q\u001a\u00020\u0003HÖ\u0001J\u0016\u0010r\u001a\u00020s2\u0006\u0010t\u001a\u00020u2\u0006\u0010v\u001a\u00020\u0014R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010$\"\u0004\b(\u0010&R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010 \"\u0004\b*\u0010\"R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010 \"\u0004\b,\u0010\"R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010 \"\u0004\b.\u0010\"R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010 \"\u0004\b0\u0010\"R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010 \"\u0004\b2\u0010\"R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010 \"\u0004\b4\u0010\"R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010 \"\u0004\b6\u0010\"R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010 \"\u0004\b8\u0010\"R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010 \"\u0004\b:\u0010\"R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010 \"\u0004\b<\u0010\"R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010 \"\u0004\b>\u0010\"R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010 \"\u0004\b@\u0010\"R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010 \"\u0004\bF\u0010\"R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010 \"\u0004\bH\u0010\"R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010 \"\u0004\bJ\u0010\"R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010K\"\u0004\bL\u0010MR\u001a\u0010\u001a\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bN\u0010K\"\u0004\bO\u0010MR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010 \"\u0004\bQ\u0010\"R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u0010 \"\u0004\bS\u0010\"¨\u0006w"}, d2 = {"Lcom/transsion/push/feature/sport/ServerMatchListItemData;", "Landroid/os/Parcelable;", "id", "", "team1", "Lcom/transsion/push/feature/sport/TeamInfoMatch;", "team2", NotificationCompat.CATEGORY_STATUS, "playType", "playPath", "startTime", "endTime", NativeComponentConstants.KEY_COMPONENT_TYPE, "timeDesc", "statusLive", "league", "liveDeviceId", "matchResult", "matchRound", "score", "", "liveType", "liveRegion", "leagueId", "isSub", "", "startTimeTbd", "leagueType", "season", "<init>", "(Ljava/lang/String;Lcom/transsion/push/feature/sport/TeamInfoMatch;Lcom/transsion/push/feature/sport/TeamInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getTeam1", "()Lcom/transsion/push/feature/sport/TeamInfoMatch;", "setTeam1", "(Lcom/transsion/push/feature/sport/TeamInfoMatch;)V", "getTeam2", "setTeam2", "getStatus", "setStatus", "getPlayType", "setPlayType", "getPlayPath", "setPlayPath", "getStartTime", "setStartTime", "getEndTime", "setEndTime", "getType", "setType", "getTimeDesc", "setTimeDesc", "getStatusLive", "setStatusLive", "getLeague", "setLeague", "getLiveDeviceId", "setLiveDeviceId", "getMatchResult", "setMatchResult", "getMatchRound", "setMatchRound", "getScore", "()I", "setScore", "(I)V", "getLiveType", "setLiveType", "getLiveRegion", "setLiveRegion", "getLeagueId", "setLeagueId", "()Z", "setSub", "(Z)V", "getStartTimeTbd", "setStartTimeTbd", "getLeagueType", "setLeagueType", "getSeason", "setSeason", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "copy", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ServerMatchListItemData implements Parcelable {
    public static final Parcelable.Creator<ServerMatchListItemData> CREATOR = new a();
    private String endTime;
    private String id;
    private boolean isSub;
    private String league;
    private String leagueId;
    private String leagueType;
    private String liveDeviceId;
    private String liveRegion;
    private String liveType;
    private String matchResult;
    private String matchRound;
    private String playPath;
    private String playType;
    private int score;
    private String season;
    private String startTime;
    private boolean startTimeTbd;
    private String status;
    private String statusLive;
    private TeamInfoMatch team1;
    private TeamInfoMatch team2;
    private String timeDesc;
    private String type;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ServerMatchListItemData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new ServerMatchListItemData(parcel.readString(), parcel.readInt() == 0 ? null : TeamInfoMatch.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? TeamInfoMatch.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final ServerMatchListItemData[] newArray(int i11) {
            return new ServerMatchListItemData[i11];
        }
    }

    public ServerMatchListItemData() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, null, null, null, false, false, null, null, 8388607, null);
    }

    public ServerMatchListItemData(String str, TeamInfoMatch teamInfoMatch, TeamInfoMatch teamInfoMatch2, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, int i11, String str14, String str15, String str16, boolean z10, boolean z11, String str17, String str18) {
        this.id = str;
        this.team1 = teamInfoMatch;
        this.team2 = teamInfoMatch2;
        this.status = str2;
        this.playType = str3;
        this.playPath = str4;
        this.startTime = str5;
        this.endTime = str6;
        this.type = str7;
        this.timeDesc = str8;
        this.statusLive = str9;
        this.league = str10;
        this.liveDeviceId = str11;
        this.matchResult = str12;
        this.matchRound = str13;
        this.score = i11;
        this.liveType = str14;
        this.liveRegion = str15;
        this.leagueId = str16;
        this.isSub = z10;
        this.startTimeTbd = z11;
        this.leagueType = str17;
        this.season = str18;
    }

    public /* synthetic */ ServerMatchListItemData(String str, TeamInfoMatch teamInfoMatch, TeamInfoMatch teamInfoMatch2, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, int i11, String str14, String str15, String str16, boolean z10, boolean z11, String str17, String str18, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? null : str, (i12 & 2) != 0 ? null : teamInfoMatch, (i12 & 4) != 0 ? null : teamInfoMatch2, (i12 & 8) != 0 ? null : str2, (i12 & 16) != 0 ? null : str3, (i12 & 32) != 0 ? null : str4, (i12 & 64) != 0 ? null : str5, (i12 & 128) != 0 ? null : str6, (i12 & 256) != 0 ? null : str7, (i12 & 512) != 0 ? null : str8, (i12 & 1024) != 0 ? null : str9, (i12 & 2048) != 0 ? null : str10, (i12 & 4096) != 0 ? null : str11, (i12 & 8192) != 0 ? null : str12, (i12 & 16384) != 0 ? null : str13, (i12 & 32768) != 0 ? 0 : i11, (i12 & 65536) != 0 ? null : str14, (i12 & 131072) != 0 ? null : str15, (i12 & 262144) != 0 ? null : str16, (i12 & 524288) != 0 ? false : z10, (i12 & 1048576) == 0 ? z11 : false, (i12 & 2097152) != 0 ? null : str17, (i12 & 4194304) != 0 ? null : str18);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getTimeDesc() {
        return this.timeDesc;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getStatusLive() {
        return this.statusLive;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getLeague() {
        return this.league;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getLiveDeviceId() {
        return this.liveDeviceId;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getMatchResult() {
        return this.matchResult;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getMatchRound() {
        return this.matchRound;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final int getScore() {
        return this.score;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getLiveType() {
        return this.liveType;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getLiveRegion() {
        return this.liveRegion;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getLeagueId() {
        return this.leagueId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final TeamInfoMatch getTeam1() {
        return this.team1;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final boolean getIsSub() {
        return this.isSub;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final boolean getStartTimeTbd() {
        return this.startTimeTbd;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getLeagueType() {
        return this.leagueType;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final String getSeason() {
        return this.season;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final TeamInfoMatch getTeam2() {
        return this.team2;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPlayType() {
        return this.playType;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getPlayPath() {
        return this.playPath;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getStartTime() {
        return this.startTime;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getEndTime() {
        return this.endTime;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getType() {
        return this.type;
    }

    public final ServerMatchListItemData copy(String id2, TeamInfoMatch team1, TeamInfoMatch team2, String status, String playType, String playPath, String startTime, String endTime, String type, String timeDesc, String statusLive, String league, String liveDeviceId, String matchResult, String matchRound, int score, String liveType, String liveRegion, String leagueId, boolean isSub, boolean startTimeTbd, String leagueType, String season) {
        return new ServerMatchListItemData(id2, team1, team2, status, playType, playPath, startTime, endTime, type, timeDesc, statusLive, league, liveDeviceId, matchResult, matchRound, score, liveType, liveRegion, leagueId, isSub, startTimeTbd, leagueType, season);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ServerMatchListItemData)) {
            return false;
        }
        ServerMatchListItemData serverMatchListItemData = (ServerMatchListItemData) other;
        return Intrinsics.c(this.id, serverMatchListItemData.id) && Intrinsics.c(this.team1, serverMatchListItemData.team1) && Intrinsics.c(this.team2, serverMatchListItemData.team2) && Intrinsics.c(this.status, serverMatchListItemData.status) && Intrinsics.c(this.playType, serverMatchListItemData.playType) && Intrinsics.c(this.playPath, serverMatchListItemData.playPath) && Intrinsics.c(this.startTime, serverMatchListItemData.startTime) && Intrinsics.c(this.endTime, serverMatchListItemData.endTime) && Intrinsics.c(this.type, serverMatchListItemData.type) && Intrinsics.c(this.timeDesc, serverMatchListItemData.timeDesc) && Intrinsics.c(this.statusLive, serverMatchListItemData.statusLive) && Intrinsics.c(this.league, serverMatchListItemData.league) && Intrinsics.c(this.liveDeviceId, serverMatchListItemData.liveDeviceId) && Intrinsics.c(this.matchResult, serverMatchListItemData.matchResult) && Intrinsics.c(this.matchRound, serverMatchListItemData.matchRound) && this.score == serverMatchListItemData.score && Intrinsics.c(this.liveType, serverMatchListItemData.liveType) && Intrinsics.c(this.liveRegion, serverMatchListItemData.liveRegion) && Intrinsics.c(this.leagueId, serverMatchListItemData.leagueId) && this.isSub == serverMatchListItemData.isSub && this.startTimeTbd == serverMatchListItemData.startTimeTbd && Intrinsics.c(this.leagueType, serverMatchListItemData.leagueType) && Intrinsics.c(this.season, serverMatchListItemData.season);
    }

    public final String getEndTime() {
        return this.endTime;
    }

    public final String getId() {
        return this.id;
    }

    public final String getLeague() {
        return this.league;
    }

    public final String getLeagueId() {
        return this.leagueId;
    }

    public final String getLeagueType() {
        return this.leagueType;
    }

    public final String getLiveDeviceId() {
        return this.liveDeviceId;
    }

    public final String getLiveRegion() {
        return this.liveRegion;
    }

    public final String getLiveType() {
        return this.liveType;
    }

    public final String getMatchResult() {
        return this.matchResult;
    }

    public final String getMatchRound() {
        return this.matchRound;
    }

    public final String getPlayPath() {
        return this.playPath;
    }

    public final String getPlayType() {
        return this.playType;
    }

    public final int getScore() {
        return this.score;
    }

    public final String getSeason() {
        return this.season;
    }

    public final String getStartTime() {
        return this.startTime;
    }

    public final boolean getStartTimeTbd() {
        return this.startTimeTbd;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getStatusLive() {
        return this.statusLive;
    }

    public final TeamInfoMatch getTeam1() {
        return this.team1;
    }

    public final TeamInfoMatch getTeam2() {
        return this.team2;
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
        TeamInfoMatch teamInfoMatch = this.team1;
        int iHashCode2 = (iHashCode + (teamInfoMatch == null ? 0 : teamInfoMatch.hashCode())) * 31;
        TeamInfoMatch teamInfoMatch2 = this.team2;
        int iHashCode3 = (iHashCode2 + (teamInfoMatch2 == null ? 0 : teamInfoMatch2.hashCode())) * 31;
        String str2 = this.status;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.playType;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.playPath;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.startTime;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.endTime;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.type;
        int iHashCode9 = (iHashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.timeDesc;
        int iHashCode10 = (iHashCode9 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.statusLive;
        int iHashCode11 = (iHashCode10 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.league;
        int iHashCode12 = (iHashCode11 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.liveDeviceId;
        int iHashCode13 = (iHashCode12 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.matchResult;
        int iHashCode14 = (iHashCode13 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.matchRound;
        int iHashCode15 = (((iHashCode14 + (str13 == null ? 0 : str13.hashCode())) * 31) + this.score) * 31;
        String str14 = this.liveType;
        int iHashCode16 = (iHashCode15 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.liveRegion;
        int iHashCode17 = (iHashCode16 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.leagueId;
        int iHashCode18 = (((((iHashCode17 + (str16 == null ? 0 : str16.hashCode())) * 31) + e.a(this.isSub)) * 31) + e.a(this.startTimeTbd)) * 31;
        String str17 = this.leagueType;
        int iHashCode19 = (iHashCode18 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.season;
        return iHashCode19 + (str18 != null ? str18.hashCode() : 0);
    }

    public final boolean isSub() {
        return this.isSub;
    }

    public final void setEndTime(String str) {
        this.endTime = str;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setLeague(String str) {
        this.league = str;
    }

    public final void setLeagueId(String str) {
        this.leagueId = str;
    }

    public final void setLeagueType(String str) {
        this.leagueType = str;
    }

    public final void setLiveDeviceId(String str) {
        this.liveDeviceId = str;
    }

    public final void setLiveRegion(String str) {
        this.liveRegion = str;
    }

    public final void setLiveType(String str) {
        this.liveType = str;
    }

    public final void setMatchResult(String str) {
        this.matchResult = str;
    }

    public final void setMatchRound(String str) {
        this.matchRound = str;
    }

    public final void setPlayPath(String str) {
        this.playPath = str;
    }

    public final void setPlayType(String str) {
        this.playType = str;
    }

    public final void setScore(int i11) {
        this.score = i11;
    }

    public final void setSeason(String str) {
        this.season = str;
    }

    public final void setStartTime(String str) {
        this.startTime = str;
    }

    public final void setStartTimeTbd(boolean z10) {
        this.startTimeTbd = z10;
    }

    public final void setStatus(String str) {
        this.status = str;
    }

    public final void setStatusLive(String str) {
        this.statusLive = str;
    }

    public final void setSub(boolean z10) {
        this.isSub = z10;
    }

    public final void setTeam1(TeamInfoMatch teamInfoMatch) {
        this.team1 = teamInfoMatch;
    }

    public final void setTeam2(TeamInfoMatch teamInfoMatch) {
        this.team2 = teamInfoMatch;
    }

    public final void setTimeDesc(String str) {
        this.timeDesc = str;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "ServerMatchListItemData(id=" + this.id + ", team1=" + this.team1 + ", team2=" + this.team2 + ", status=" + this.status + ", playType=" + this.playType + ", playPath=" + this.playPath + ", startTime=" + this.startTime + ", endTime=" + this.endTime + ", type=" + this.type + ", timeDesc=" + this.timeDesc + ", statusLive=" + this.statusLive + ", league=" + this.league + ", liveDeviceId=" + this.liveDeviceId + ", matchResult=" + this.matchResult + ", matchRound=" + this.matchRound + ", score=" + this.score + ", liveType=" + this.liveType + ", liveRegion=" + this.liveRegion + ", leagueId=" + this.leagueId + ", isSub=" + this.isSub + ", startTimeTbd=" + this.startTimeTbd + ", leagueType=" + this.leagueType + ", season=" + this.season + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.id);
        TeamInfoMatch teamInfoMatch = this.team1;
        if (teamInfoMatch == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            teamInfoMatch.writeToParcel(dest, flags);
        }
        TeamInfoMatch teamInfoMatch2 = this.team2;
        if (teamInfoMatch2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            teamInfoMatch2.writeToParcel(dest, flags);
        }
        dest.writeString(this.status);
        dest.writeString(this.playType);
        dest.writeString(this.playPath);
        dest.writeString(this.startTime);
        dest.writeString(this.endTime);
        dest.writeString(this.type);
        dest.writeString(this.timeDesc);
        dest.writeString(this.statusLive);
        dest.writeString(this.league);
        dest.writeString(this.liveDeviceId);
        dest.writeString(this.matchResult);
        dest.writeString(this.matchRound);
        dest.writeInt(this.score);
        dest.writeString(this.liveType);
        dest.writeString(this.liveRegion);
        dest.writeString(this.leagueId);
        dest.writeInt(this.isSub ? 1 : 0);
        dest.writeInt(this.startTimeTbd ? 1 : 0);
        dest.writeString(this.leagueType);
        dest.writeString(this.season);
    }
}
