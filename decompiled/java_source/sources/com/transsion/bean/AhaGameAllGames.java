package com.transsion.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.tools.zip.UnixStat;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b2\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u009b\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u000b\u00105\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010>\u001a\u00020\u000fHÆ\u0003J\u0011\u0010?\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0011HÆ\u0003J¢\u0001\u0010@\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0011HÆ\u0001¢\u0006\u0002\u0010AJ\u0006\u0010B\u001a\u00020\u0003J\u0013\u0010C\u001a\u00020D2\b\u0010E\u001a\u0004\u0018\u00010FHÖ\u0003J\t\u0010G\u001a\u00020\u0003HÖ\u0001J\t\u0010H\u001a\u00020\u0005HÖ\u0001J\u0016\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001aR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001a\"\u0004\b!\u0010\u001cR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001a\"\u0004\b#\u0010\u001cR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001a\"\u0004\b%\u0010\u001cR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001a\"\u0004\b'\u0010\u001cR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001a\"\u0004\b)\u0010\u001cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u001a\"\u0004\b+\u0010\u001cR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103¨\u0006N"}, d2 = {"Lcom/transsion/bean/AhaGameAllGames;", "Landroid/os/Parcelable;", "id", "", "name", "", "rate", "iconPictureLink", "themePictureLink", "link", "category", TrackingKey.DESCRIPTION, "algo_info", CampaignEx.JSON_KEY_TITLE, "gameLayoutType", "Lcom/transsion/bean/GameLayoutType;", "peoplePlaying", "", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/bean/GameLayoutType;Ljava/util/List;)V", "getId", "()Ljava/lang/Integer;", "setId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getRate", "getIconPictureLink", "setIconPictureLink", "getThemePictureLink", "setThemePictureLink", "getLink", "setLink", "getCategory", "setCategory", "getDescription", "setDescription", "getAlgo_info", "setAlgo_info", "getTitle", "setTitle", "getGameLayoutType", "()Lcom/transsion/bean/GameLayoutType;", "setGameLayoutType", "(Lcom/transsion/bean/GameLayoutType;)V", "getPeoplePlaying", "()Ljava/util/List;", "setPeoplePlaying", "(Ljava/util/List;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/bean/GameLayoutType;Ljava/util/List;)Lcom/transsion/bean/AhaGameAllGames;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AhaGameAllGames implements Parcelable {
    public static final Parcelable.Creator<AhaGameAllGames> CREATOR = new a();
    private String algo_info;
    private String category;
    private String description;
    private transient GameLayoutType gameLayoutType;
    private String iconPictureLink;
    private Integer id;
    private String link;
    private String name;
    private transient List<AhaGameAllGames> peoplePlaying;
    private final String rate;
    private String themePictureLink;
    private transient String title;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AhaGameAllGames createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            ArrayList arrayList = null;
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            String string7 = parcel.readString();
            String string8 = parcel.readString();
            String string9 = parcel.readString();
            GameLayoutType gameLayoutTypeValueOf = GameLayoutType.valueOf(parcel.readString());
            if (parcel.readInt() != 0) {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(AhaGameAllGames.CREATOR.createFromParcel(parcel));
                }
            }
            return new AhaGameAllGames(numValueOf, string, string2, string3, string4, string5, string6, string7, string8, string9, gameLayoutTypeValueOf, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final AhaGameAllGames[] newArray(int i11) {
            return new AhaGameAllGames[i11];
        }
    }

    public AhaGameAllGames() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, UnixStat.PERM_MASK, null);
    }

    public AhaGameAllGames(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, GameLayoutType gameLayoutType, List<AhaGameAllGames> list) {
        Intrinsics.h(gameLayoutType, "gameLayoutType");
        this.id = num;
        this.name = str;
        this.rate = str2;
        this.iconPictureLink = str3;
        this.themePictureLink = str4;
        this.link = str5;
        this.category = str6;
        this.description = str7;
        this.algo_info = str8;
        this.title = str9;
        this.gameLayoutType = gameLayoutType;
        this.peoplePlaying = list;
    }

    public /* synthetic */ AhaGameAllGames(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, GameLayoutType gameLayoutType, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : num, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? null : str2, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : str5, (i11 & 64) != 0 ? null : str6, (i11 & 128) != 0 ? null : str7, (i11 & 256) != 0 ? null : str8, (i11 & 512) != 0 ? null : str9, (i11 & 1024) != 0 ? GameLayoutType.ITEM_INFO : gameLayoutType, (i11 & 2048) == 0 ? list : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final GameLayoutType getGameLayoutType() {
        return this.gameLayoutType;
    }

    public final List<AhaGameAllGames> component12() {
        return this.peoplePlaying;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getRate() {
        return this.rate;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getIconPictureLink() {
        return this.iconPictureLink;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getThemePictureLink() {
        return this.themePictureLink;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getLink() {
        return this.link;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getCategory() {
        return this.category;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getAlgo_info() {
        return this.algo_info;
    }

    public final AhaGameAllGames copy(Integer id2, String name, String rate, String iconPictureLink, String themePictureLink, String link, String category, String description, String algo_info, String title, GameLayoutType gameLayoutType, List<AhaGameAllGames> peoplePlaying) {
        Intrinsics.h(gameLayoutType, "gameLayoutType");
        return new AhaGameAllGames(id2, name, rate, iconPictureLink, themePictureLink, link, category, description, algo_info, title, gameLayoutType, peoplePlaying);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AhaGameAllGames)) {
            return false;
        }
        AhaGameAllGames ahaGameAllGames = (AhaGameAllGames) other;
        return Intrinsics.c(this.id, ahaGameAllGames.id) && Intrinsics.c(this.name, ahaGameAllGames.name) && Intrinsics.c(this.rate, ahaGameAllGames.rate) && Intrinsics.c(this.iconPictureLink, ahaGameAllGames.iconPictureLink) && Intrinsics.c(this.themePictureLink, ahaGameAllGames.themePictureLink) && Intrinsics.c(this.link, ahaGameAllGames.link) && Intrinsics.c(this.category, ahaGameAllGames.category) && Intrinsics.c(this.description, ahaGameAllGames.description) && Intrinsics.c(this.algo_info, ahaGameAllGames.algo_info) && Intrinsics.c(this.title, ahaGameAllGames.title) && this.gameLayoutType == ahaGameAllGames.gameLayoutType && Intrinsics.c(this.peoplePlaying, ahaGameAllGames.peoplePlaying);
    }

    public final String getAlgo_info() {
        return this.algo_info;
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getDescription() {
        return this.description;
    }

    public final GameLayoutType getGameLayoutType() {
        return this.gameLayoutType;
    }

    public final String getIconPictureLink() {
        return this.iconPictureLink;
    }

    public final Integer getId() {
        return this.id;
    }

    public final String getLink() {
        return this.link;
    }

    public final String getName() {
        return this.name;
    }

    public final List<AhaGameAllGames> getPeoplePlaying() {
        return this.peoplePlaying;
    }

    public final String getRate() {
        return this.rate;
    }

    public final String getThemePictureLink() {
        return this.themePictureLink;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        Integer num = this.id;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.name;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.rate;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.iconPictureLink;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.themePictureLink;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.link;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.category;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.description;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.algo_info;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.title;
        int iHashCode10 = (((iHashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31) + this.gameLayoutType.hashCode()) * 31;
        List<AhaGameAllGames> list = this.peoplePlaying;
        return iHashCode10 + (list != null ? list.hashCode() : 0);
    }

    public final void setAlgo_info(String str) {
        this.algo_info = str;
    }

    public final void setCategory(String str) {
        this.category = str;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setGameLayoutType(GameLayoutType gameLayoutType) {
        Intrinsics.h(gameLayoutType, "<set-?>");
        this.gameLayoutType = gameLayoutType;
    }

    public final void setIconPictureLink(String str) {
        this.iconPictureLink = str;
    }

    public final void setId(Integer num) {
        this.id = num;
    }

    public final void setLink(String str) {
        this.link = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setPeoplePlaying(List<AhaGameAllGames> list) {
        this.peoplePlaying = list;
    }

    public final void setThemePictureLink(String str) {
        this.themePictureLink = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "AhaGameAllGames(id=" + this.id + ", name=" + this.name + ", rate=" + this.rate + ", iconPictureLink=" + this.iconPictureLink + ", themePictureLink=" + this.themePictureLink + ", link=" + this.link + ", category=" + this.category + ", description=" + this.description + ", algo_info=" + this.algo_info + ", title=" + this.title + ", gameLayoutType=" + this.gameLayoutType + ", peoplePlaying=" + this.peoplePlaying + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        Integer num = this.id;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.name);
        dest.writeString(this.rate);
        dest.writeString(this.iconPictureLink);
        dest.writeString(this.themePictureLink);
        dest.writeString(this.link);
        dest.writeString(this.category);
        dest.writeString(this.description);
        dest.writeString(this.algo_info);
        dest.writeString(this.title);
        dest.writeString(this.gameLayoutType.name());
        List<AhaGameAllGames> list = this.peoplePlaying;
        if (list == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list.size());
        Iterator<AhaGameAllGames> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
    }
}
