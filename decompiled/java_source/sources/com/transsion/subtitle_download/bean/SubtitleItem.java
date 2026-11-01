package com.transsion.subtitle_download.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b4\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002Bu\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0011\u0010\u0012J\u000b\u00103\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u0010\u00108\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010 J\u0010\u00109\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010 J\u0010\u0010:\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010'J\u0010\u0010;\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010'J\u0010\u0010<\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010'J\u0010\u0010=\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010'J\u0092\u0001\u0010>\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\rHÆ\u0001¢\u0006\u0002\u0010?J\u0006\u0010@\u001a\u00020\rJ\u0013\u0010A\u001a\u00020B2\b\u0010C\u001a\u0004\u0018\u00010DHÖ\u0003J\t\u0010E\u001a\u00020\rHÖ\u0001J\t\u0010F\u001a\u00020\u0004HÖ\u0001J\u0016\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020\rR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R \u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016R \u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0014\"\u0004\b\u001a\u0010\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0014\"\u0004\b\u001c\u0010\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0014\"\u0004\b\u001e\u0010\u0016R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010#\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010#\u001a\u0004\b$\u0010 \"\u0004\b%\u0010\"R\u001e\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u0010\n\u0002\u0010*\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u0010\n\u0002\u0010*\u001a\u0004\b+\u0010'\"\u0004\b,\u0010)R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u0010\n\u0002\u0010*\u001a\u0004\b-\u0010'\"\u0004\b.\u0010)R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u0010\n\u0002\u0010*\u001a\u0004\b/\u0010'\"\u0004\b0\u0010)R\u0013\u00101\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b2\u0010\u0014¨\u0006L"}, d2 = {"Lcom/transsion/subtitle_download/bean/SubtitleItem;", "Landroid/os/Parcelable;", "Ljava/io/Serializable;", "id", "", "lan", "lanName", "name", "url", "size", "", "delay", "season", "", "episode", "downloads", NativeComponentConstants.KEY_COMPONENT_TYPE, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getLan", "setLan", "getLanName", "setLanName", "getName", "setName", "getUrl", "setUrl", "getSize", "()Ljava/lang/Long;", "setSize", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getDelay", "setDelay", "getSeason", "()Ljava/lang/Integer;", "setSeason", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getEpisode", "setEpisode", "getDownloads", "setDownloads", "getType", "setType", "lanAbbr", "getLanAbbr", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/transsion/subtitle_download/bean/SubtitleItem;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "SubtitleDownload_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SubtitleItem implements Parcelable, Serializable {
    public static final Parcelable.Creator<SubtitleItem> CREATOR = new a();
    private Long delay;
    private Integer downloads;
    private Integer episode;
    private String id;

    @SerializedName(alternate = {"shortLanguage"}, value = "lan")
    private String lan;

    @SerializedName(alternate = {TmcConstants.KEY_LANGUAGE}, value = "lanName")
    private String lanName;
    private String name;
    private Integer season;
    private Long size;
    private Integer type;
    private String url;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SubtitleItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new SubtitleItem(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SubtitleItem[] newArray(int i11) {
            return new SubtitleItem[i11];
        }
    }

    public SubtitleItem(String str, String str2, String str3, String str4, String str5, Long l11, Long l12, Integer num, Integer num2, Integer num3, Integer num4) {
        this.id = str;
        this.lan = str2;
        this.lanName = str3;
        this.name = str4;
        this.url = str5;
        this.size = l11;
        this.delay = l12;
        this.season = num;
        this.episode = num2;
        this.downloads = num3;
        this.type = num4;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Integer getDownloads() {
        return this.downloads;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Integer getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLan() {
        return this.lan;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getLanName() {
        return this.lanName;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Long getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Long getDelay() {
        return this.delay;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getSeason() {
        return this.season;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Integer getEpisode() {
        return this.episode;
    }

    public final SubtitleItem copy(String id2, String lan, String lanName, String name, String url, Long size, Long delay, Integer season, Integer episode, Integer downloads, Integer type) {
        return new SubtitleItem(id2, lan, lanName, name, url, size, delay, season, episode, downloads, type);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubtitleItem)) {
            return false;
        }
        SubtitleItem subtitleItem = (SubtitleItem) other;
        return Intrinsics.c(this.id, subtitleItem.id) && Intrinsics.c(this.lan, subtitleItem.lan) && Intrinsics.c(this.lanName, subtitleItem.lanName) && Intrinsics.c(this.name, subtitleItem.name) && Intrinsics.c(this.url, subtitleItem.url) && Intrinsics.c(this.size, subtitleItem.size) && Intrinsics.c(this.delay, subtitleItem.delay) && Intrinsics.c(this.season, subtitleItem.season) && Intrinsics.c(this.episode, subtitleItem.episode) && Intrinsics.c(this.downloads, subtitleItem.downloads) && Intrinsics.c(this.type, subtitleItem.type);
    }

    public final Long getDelay() {
        return this.delay;
    }

    public final Integer getDownloads() {
        return this.downloads;
    }

    public final Integer getEpisode() {
        return this.episode;
    }

    public final String getId() {
        return this.id;
    }

    public final String getLan() {
        return this.lan;
    }

    public final String getLanAbbr() {
        return Intrinsics.c(this.lan, "in_id") ? "in" : this.lan;
    }

    public final String getLanName() {
        return this.lanName;
    }

    public final String getName() {
        return this.name;
    }

    public final Integer getSeason() {
        return this.season;
    }

    public final Long getSize() {
        return this.size;
    }

    public final Integer getType() {
        return this.type;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.lan;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.lanName;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.name;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.url;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Long l11 = this.size;
        int iHashCode6 = (iHashCode5 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.delay;
        int iHashCode7 = (iHashCode6 + (l12 == null ? 0 : l12.hashCode())) * 31;
        Integer num = this.season;
        int iHashCode8 = (iHashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.episode;
        int iHashCode9 = (iHashCode8 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.downloads;
        int iHashCode10 = (iHashCode9 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.type;
        return iHashCode10 + (num4 != null ? num4.hashCode() : 0);
    }

    public final void setDelay(Long l11) {
        this.delay = l11;
    }

    public final void setDownloads(Integer num) {
        this.downloads = num;
    }

    public final void setEpisode(Integer num) {
        this.episode = num;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setLan(String str) {
        this.lan = str;
    }

    public final void setLanName(String str) {
        this.lanName = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setSeason(Integer num) {
        this.season = num;
    }

    public final void setSize(Long l11) {
        this.size = l11;
    }

    public final void setType(Integer num) {
        this.type = num;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "SubtitleItem(id=" + this.id + ", lan=" + this.lan + ", lanName=" + this.lanName + ", name=" + this.name + ", url=" + this.url + ", size=" + this.size + ", delay=" + this.delay + ", season=" + this.season + ", episode=" + this.episode + ", downloads=" + this.downloads + ", type=" + this.type + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.id);
        dest.writeString(this.lan);
        dest.writeString(this.lanName);
        dest.writeString(this.name);
        dest.writeString(this.url);
        Long l11 = this.size;
        if (l11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l11.longValue());
        }
        Long l12 = this.delay;
        if (l12 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l12.longValue());
        }
        Integer num = this.season;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        Integer num2 = this.episode;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        Integer num3 = this.downloads;
        if (num3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num3.intValue());
        }
        Integer num4 = this.type;
        if (num4 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num4.intValue());
        }
    }
}
