package com.transsion.push.feature.sport;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b!\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B[\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J]\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010$\u001a\u00020%J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020%HÖ\u0001J\t\u0010+\u001a\u00020\u0003HÖ\u0001J\u0016\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020%R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\r\"\u0004\b\u0017\u0010\u000fR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000fR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\r\"\u0004\b\u001b\u0010\u000f¨\u00061"}, d2 = {"Lcom/transsion/push/feature/sport/TeamInfoMatch;", "Landroid/os/Parcelable;", "id", "", "name", "score", "avatar", "voteCount", NativeComponentConstants.KEY_COMPONENT_TYPE, "abbreviation", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getName", "setName", "getScore", "setScore", "getAvatar", "setAvatar", "getVoteCount", "setVoteCount", "getType", "setType", "getAbbreviation", "setAbbreviation", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class TeamInfoMatch implements Parcelable {
    public static final Parcelable.Creator<TeamInfoMatch> CREATOR = new a();
    private String abbreviation;
    private String avatar;
    private String id;
    private String name;
    private String score;
    private String type;
    private String voteCount;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TeamInfoMatch createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new TeamInfoMatch(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final TeamInfoMatch[] newArray(int i11) {
            return new TeamInfoMatch[i11];
        }
    }

    public TeamInfoMatch() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public TeamInfoMatch(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.id = str;
        this.name = str2;
        this.score = str3;
        this.avatar = str4;
        this.voteCount = str5;
        this.type = str6;
        this.abbreviation = str7;
    }

    public /* synthetic */ TeamInfoMatch(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5, (i11 & 32) != 0 ? null : str6, (i11 & 64) != 0 ? null : str7);
    }

    public static /* synthetic */ TeamInfoMatch copy$default(TeamInfoMatch teamInfoMatch, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = teamInfoMatch.id;
        }
        if ((i11 & 2) != 0) {
            str2 = teamInfoMatch.name;
        }
        String str8 = str2;
        if ((i11 & 4) != 0) {
            str3 = teamInfoMatch.score;
        }
        String str9 = str3;
        if ((i11 & 8) != 0) {
            str4 = teamInfoMatch.avatar;
        }
        String str10 = str4;
        if ((i11 & 16) != 0) {
            str5 = teamInfoMatch.voteCount;
        }
        String str11 = str5;
        if ((i11 & 32) != 0) {
            str6 = teamInfoMatch.type;
        }
        String str12 = str6;
        if ((i11 & 64) != 0) {
            str7 = teamInfoMatch.abbreviation;
        }
        return teamInfoMatch.copy(str, str8, str9, str10, str11, str12, str7);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getScore() {
        return this.score;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getAvatar() {
        return this.avatar;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getVoteCount() {
        return this.voteCount;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getAbbreviation() {
        return this.abbreviation;
    }

    public final TeamInfoMatch copy(String id2, String name, String score, String avatar, String voteCount, String type, String abbreviation) {
        return new TeamInfoMatch(id2, name, score, avatar, voteCount, type, abbreviation);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TeamInfoMatch)) {
            return false;
        }
        TeamInfoMatch teamInfoMatch = (TeamInfoMatch) other;
        return Intrinsics.c(this.id, teamInfoMatch.id) && Intrinsics.c(this.name, teamInfoMatch.name) && Intrinsics.c(this.score, teamInfoMatch.score) && Intrinsics.c(this.avatar, teamInfoMatch.avatar) && Intrinsics.c(this.voteCount, teamInfoMatch.voteCount) && Intrinsics.c(this.type, teamInfoMatch.type) && Intrinsics.c(this.abbreviation, teamInfoMatch.abbreviation);
    }

    public final String getAbbreviation() {
        return this.abbreviation;
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getScore() {
        return this.score;
    }

    public final String getType() {
        return this.type;
    }

    public final String getVoteCount() {
        return this.voteCount;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.name;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.score;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.avatar;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.voteCount;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.type;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.abbreviation;
        return iHashCode6 + (str7 != null ? str7.hashCode() : 0);
    }

    public final void setAbbreviation(String str) {
        this.abbreviation = str;
    }

    public final void setAvatar(String str) {
        this.avatar = str;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setScore(String str) {
        this.score = str;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public final void setVoteCount(String str) {
        this.voteCount = str;
    }

    public String toString() {
        return "TeamInfoMatch(id=" + this.id + ", name=" + this.name + ", score=" + this.score + ", avatar=" + this.avatar + ", voteCount=" + this.voteCount + ", type=" + this.type + ", abbreviation=" + this.abbreviation + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.id);
        dest.writeString(this.name);
        dest.writeString(this.score);
        dest.writeString(this.avatar);
        dest.writeString(this.voteCount);
        dest.writeString(this.type);
        dest.writeString(this.abbreviation);
    }
}
