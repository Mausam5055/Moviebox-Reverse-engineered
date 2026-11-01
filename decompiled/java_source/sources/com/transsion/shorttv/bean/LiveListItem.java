package com.transsion.shorttv.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b+\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bs\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010.\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jz\u00105\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u00106J\u0006\u00107\u001a\u000208J\u0013\u00109\u001a\u00020:2\b\u0010;\u001a\u0004\u0018\u00010<HÖ\u0003J\t\u0010=\u001a\u000208HÖ\u0001J\t\u0010>\u001a\u00020\u0003HÖ\u0001J\u0016\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u000208R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0012\"\u0004\b\u001f\u0010\u0014R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0012\"\u0004\b!\u0010\u0014R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0012\"\u0004\b#\u0010\u0014R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001c\u0010\r\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010%\"\u0004\b)\u0010'R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0012\"\u0004\b+\u0010\u0014¨\u0006D"}, d2 = {"Lcom/transsion/shorttv/bean/LiveListItem;", "Landroid/os/Parcelable;", "matchId", "", "image", "Lcom/transsion/shorttv/bean/Image;", "startTime", "", "content", NotificationCompat.CATEGORY_STATUS, "deepLink", "team1", "Lcom/transsion/shorttv/bean/TeamInfo;", "team2", "ops", "<init>", "(Ljava/lang/String;Lcom/transsion/shorttv/bean/Image;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/TeamInfo;Lcom/transsion/shorttv/bean/TeamInfo;Ljava/lang/String;)V", "getMatchId", "()Ljava/lang/String;", "setMatchId", "(Ljava/lang/String;)V", "getImage", "()Lcom/transsion/shorttv/bean/Image;", "setImage", "(Lcom/transsion/shorttv/bean/Image;)V", "getStartTime", "()Ljava/lang/Long;", "setStartTime", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getContent", "setContent", "getStatus", "setStatus", "getDeepLink", "setDeepLink", "getTeam1", "()Lcom/transsion/shorttv/bean/TeamInfo;", "setTeam1", "(Lcom/transsion/shorttv/bean/TeamInfo;)V", "getTeam2", "setTeam2", "getOps", "setOps", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Lcom/transsion/shorttv/bean/Image;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/TeamInfo;Lcom/transsion/shorttv/bean/TeamInfo;Ljava/lang/String;)Lcom/transsion/shorttv/bean/LiveListItem;", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LiveListItem implements Parcelable {
    public static final Parcelable.Creator<LiveListItem> CREATOR = new a();
    private String content;
    private String deepLink;
    private Image image;
    private String matchId;
    private String ops;
    private Long startTime;
    private String status;
    private TeamInfo team1;
    private TeamInfo team2;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LiveListItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new LiveListItem(parcel.readString(), (Image) parcel.readSerializable(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : TeamInfo.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? TeamInfo.CREATOR.createFromParcel(parcel) : null, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final LiveListItem[] newArray(int i11) {
            return new LiveListItem[i11];
        }
    }

    public LiveListItem() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public LiveListItem(String str, Image image, Long l11, String str2, String str3, String str4, TeamInfo teamInfo, TeamInfo teamInfo2, String str5) {
        this.matchId = str;
        this.image = image;
        this.startTime = l11;
        this.content = str2;
        this.status = str3;
        this.deepLink = str4;
        this.team1 = teamInfo;
        this.team2 = teamInfo2;
        this.ops = str5;
    }

    public /* synthetic */ LiveListItem(String str, Image image, Long l11, String str2, String str3, String str4, TeamInfo teamInfo, TeamInfo teamInfo2, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : image, (i11 & 4) != 0 ? 0L : l11, (i11 & 8) != 0 ? null : str2, (i11 & 16) != 0 ? null : str3, (i11 & 32) != 0 ? null : str4, (i11 & 64) != 0 ? null : teamInfo, (i11 & 128) != 0 ? null : teamInfo2, (i11 & 256) == 0 ? str5 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMatchId() {
        return this.matchId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Image getImage() {
        return this.image;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Long getStartTime() {
        return this.startTime;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getDeepLink() {
        return this.deepLink;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final TeamInfo getTeam1() {
        return this.team1;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final TeamInfo getTeam2() {
        return this.team2;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    public final LiveListItem copy(String matchId, Image image, Long startTime, String content, String status, String deepLink, TeamInfo team1, TeamInfo team2, String ops) {
        return new LiveListItem(matchId, image, startTime, content, status, deepLink, team1, team2, ops);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LiveListItem)) {
            return false;
        }
        LiveListItem liveListItem = (LiveListItem) other;
        return Intrinsics.c(this.matchId, liveListItem.matchId) && Intrinsics.c(this.image, liveListItem.image) && Intrinsics.c(this.startTime, liveListItem.startTime) && Intrinsics.c(this.content, liveListItem.content) && Intrinsics.c(this.status, liveListItem.status) && Intrinsics.c(this.deepLink, liveListItem.deepLink) && Intrinsics.c(this.team1, liveListItem.team1) && Intrinsics.c(this.team2, liveListItem.team2) && Intrinsics.c(this.ops, liveListItem.ops);
    }

    public final String getContent() {
        return this.content;
    }

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final Image getImage() {
        return this.image;
    }

    public final String getMatchId() {
        return this.matchId;
    }

    public final String getOps() {
        return this.ops;
    }

    public final Long getStartTime() {
        return this.startTime;
    }

    public final String getStatus() {
        return this.status;
    }

    public final TeamInfo getTeam1() {
        return this.team1;
    }

    public final TeamInfo getTeam2() {
        return this.team2;
    }

    public int hashCode() {
        String str = this.matchId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Image image = this.image;
        int iHashCode2 = (iHashCode + (image == null ? 0 : image.hashCode())) * 31;
        Long l11 = this.startTime;
        int iHashCode3 = (iHashCode2 + (l11 == null ? 0 : l11.hashCode())) * 31;
        String str2 = this.content;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.status;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.deepLink;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        TeamInfo teamInfo = this.team1;
        int iHashCode7 = (iHashCode6 + (teamInfo == null ? 0 : teamInfo.hashCode())) * 31;
        TeamInfo teamInfo2 = this.team2;
        int iHashCode8 = (iHashCode7 + (teamInfo2 == null ? 0 : teamInfo2.hashCode())) * 31;
        String str5 = this.ops;
        return iHashCode8 + (str5 != null ? str5.hashCode() : 0);
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setDeepLink(String str) {
        this.deepLink = str;
    }

    public final void setImage(Image image) {
        this.image = image;
    }

    public final void setMatchId(String str) {
        this.matchId = str;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setStartTime(Long l11) {
        this.startTime = l11;
    }

    public final void setStatus(String str) {
        this.status = str;
    }

    public final void setTeam1(TeamInfo teamInfo) {
        this.team1 = teamInfo;
    }

    public final void setTeam2(TeamInfo teamInfo) {
        this.team2 = teamInfo;
    }

    public String toString() {
        return "LiveListItem(matchId=" + this.matchId + ", image=" + this.image + ", startTime=" + this.startTime + ", content=" + this.content + ", status=" + this.status + ", deepLink=" + this.deepLink + ", team1=" + this.team1 + ", team2=" + this.team2 + ", ops=" + this.ops + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.matchId);
        dest.writeSerializable(this.image);
        Long l11 = this.startTime;
        if (l11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l11.longValue());
        }
        dest.writeString(this.content);
        dest.writeString(this.status);
        dest.writeString(this.deepLink);
        TeamInfo teamInfo = this.team1;
        if (teamInfo == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            teamInfo.writeToParcel(dest, flags);
        }
        TeamInfo teamInfo2 = this.team2;
        if (teamInfo2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            teamInfo2.writeToParcel(dest, flags);
        }
        dest.writeString(this.ops);
    }
}
