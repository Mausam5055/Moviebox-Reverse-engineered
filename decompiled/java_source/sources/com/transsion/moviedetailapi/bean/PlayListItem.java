package com.transsion.moviedetailapi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b5\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u000b\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010@\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rHÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010B\u001a\u0004\u0018\u00010\u0011HÆ\u0003¢\u0006\u0002\u00100J\t\u0010C\u001a\u00020\u0011HÆ\u0003J¢\u0001\u0010D\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0011HÆ\u0001¢\u0006\u0002\u0010EJ\u0006\u0010F\u001a\u00020GJ\u0013\u0010H\u001a\u00020\u00112\b\u0010I\u001a\u0004\u0018\u00010JHÖ\u0003J\t\u0010K\u001a\u00020GHÖ\u0001J\t\u0010L\u001a\u00020\u0003HÖ\u0001J\u0016\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020GR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u0018R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0016\"\u0004\b$\u0010\u0018R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0016\"\u0004\b&\u0010\u0018R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0016\"\u0004\b(\u0010\u0018R\"\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u0016\"\u0004\b.\u0010\u0018R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u0010\n\u0002\u00103\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001a\u0010\u0012\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107¨\u0006R"}, d2 = {"Lcom/transsion/moviedetailapi/bean/PlayListItem;", "Landroid/os/Parcelable;", "id", "", "genreTopId", "category", "deepLink", RewardPlus.ICON, "Lcom/transsion/moviedetailapi/bean/PlayListIcon;", "label", "ops", "recType", "staffs", "", "Lcom/transsion/moviedetailapi/bean/Staff;", CampaignEx.JSON_KEY_TITLE, "showRank", "", "builtIn", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PlayListIcon;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Z)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getGenreTopId", "setGenreTopId", "getCategory", "setCategory", "getDeepLink", "setDeepLink", "getIcon", "()Lcom/transsion/moviedetailapi/bean/PlayListIcon;", "setIcon", "(Lcom/transsion/moviedetailapi/bean/PlayListIcon;)V", "getLabel", "setLabel", "getOps", "setOps", "getRecType", "setRecType", "getStaffs", "()Ljava/util/List;", "setStaffs", "(Ljava/util/List;)V", "getTitle", "setTitle", "getShowRank", "()Ljava/lang/Boolean;", "setShowRank", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getBuiltIn", "()Z", "setBuiltIn", "(Z)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PlayListIcon;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Z)Lcom/transsion/moviedetailapi/bean/PlayListItem;", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PlayListItem implements Parcelable {
    public static final Parcelable.Creator<PlayListItem> CREATOR = new a();
    private boolean builtIn;
    private String category;
    private String deepLink;
    private String genreTopId;
    private PlayListIcon icon;
    private String id;
    private String label;
    private String ops;
    private String recType;
    private Boolean showRank;
    private List<? extends Staff> staffs;
    private String title;

    /* JADX INFO: loaded from: classes6.dex */
    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PlayListItem createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            PlayListIcon playListIconCreateFromParcel = parcel.readInt() == 0 ? null : PlayListIcon.CREATOR.createFromParcel(parcel);
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            String string7 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(parcel.readSerializable());
                }
            }
            return new PlayListItem(string, string2, string3, string4, playListIconCreateFromParcel, string5, string6, string7, arrayList, parcel.readString(), parcel.readInt() != 0 ? Boolean.valueOf(parcel.readInt() != 0) : null, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PlayListItem[] newArray(int i11) {
            return new PlayListItem[i11];
        }
    }

    public PlayListItem(String str, String str2, String str3, String str4, PlayListIcon playListIcon, String str5, String str6, String str7, List<? extends Staff> list, String str8, Boolean bool, boolean z10) {
        this.id = str;
        this.genreTopId = str2;
        this.category = str3;
        this.deepLink = str4;
        this.icon = playListIcon;
        this.label = str5;
        this.ops = str6;
        this.recType = str7;
        this.staffs = list;
        this.title = str8;
        this.showRank = bool;
        this.builtIn = z10;
    }

    public /* synthetic */ PlayListItem(String str, String str2, String str3, String str4, PlayListIcon playListIcon, String str5, String str6, String str7, List list, String str8, Boolean bool, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, playListIcon, str5, str6, str7, list, str8, bool, (i11 & 2048) != 0 ? false : z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Boolean getShowRank() {
        return this.showRank;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getGenreTopId() {
        return this.genreTopId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCategory() {
        return this.category;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDeepLink() {
        return this.deepLink;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final PlayListIcon getIcon() {
        return this.icon;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getRecType() {
        return this.recType;
    }

    public final List<Staff> component9() {
        return this.staffs;
    }

    public final PlayListItem copy(String id2, String genreTopId, String category, String deepLink, PlayListIcon icon, String label, String ops, String recType, List<? extends Staff> staffs, String title, Boolean showRank, boolean builtIn) {
        return new PlayListItem(id2, genreTopId, category, deepLink, icon, label, ops, recType, staffs, title, showRank, builtIn);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlayListItem)) {
            return false;
        }
        PlayListItem playListItem = (PlayListItem) other;
        return Intrinsics.c(this.id, playListItem.id) && Intrinsics.c(this.genreTopId, playListItem.genreTopId) && Intrinsics.c(this.category, playListItem.category) && Intrinsics.c(this.deepLink, playListItem.deepLink) && Intrinsics.c(this.icon, playListItem.icon) && Intrinsics.c(this.label, playListItem.label) && Intrinsics.c(this.ops, playListItem.ops) && Intrinsics.c(this.recType, playListItem.recType) && Intrinsics.c(this.staffs, playListItem.staffs) && Intrinsics.c(this.title, playListItem.title) && Intrinsics.c(this.showRank, playListItem.showRank) && this.builtIn == playListItem.builtIn;
    }

    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final String getGenreTopId() {
        return this.genreTopId;
    }

    public final PlayListIcon getIcon() {
        return this.icon;
    }

    public final String getId() {
        return this.id;
    }

    public final String getLabel() {
        return this.label;
    }

    public final String getOps() {
        return this.ops;
    }

    public final String getRecType() {
        return this.recType;
    }

    public final Boolean getShowRank() {
        return this.showRank;
    }

    public final List<Staff> getStaffs() {
        return this.staffs;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.genreTopId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.category;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.deepLink;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        PlayListIcon playListIcon = this.icon;
        int iHashCode5 = (iHashCode4 + (playListIcon == null ? 0 : playListIcon.hashCode())) * 31;
        String str5 = this.label;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.ops;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.recType;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        List<? extends Staff> list = this.staffs;
        int iHashCode9 = (iHashCode8 + (list == null ? 0 : list.hashCode())) * 31;
        String str8 = this.title;
        int iHashCode10 = (iHashCode9 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Boolean bool = this.showRank;
        return ((iHashCode10 + (bool != null ? bool.hashCode() : 0)) * 31) + e.a(this.builtIn);
    }

    public final void setBuiltIn(boolean z10) {
        this.builtIn = z10;
    }

    public final void setCategory(String str) {
        this.category = str;
    }

    public final void setDeepLink(String str) {
        this.deepLink = str;
    }

    public final void setGenreTopId(String str) {
        this.genreTopId = str;
    }

    public final void setIcon(PlayListIcon playListIcon) {
        this.icon = playListIcon;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setLabel(String str) {
        this.label = str;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setRecType(String str) {
        this.recType = str;
    }

    public final void setShowRank(Boolean bool) {
        this.showRank = bool;
    }

    public final void setStaffs(List<? extends Staff> list) {
        this.staffs = list;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "PlayListItem(id=" + this.id + ", genreTopId=" + this.genreTopId + ", category=" + this.category + ", deepLink=" + this.deepLink + ", icon=" + this.icon + ", label=" + this.label + ", ops=" + this.ops + ", recType=" + this.recType + ", staffs=" + this.staffs + ", title=" + this.title + ", showRank=" + this.showRank + ", builtIn=" + this.builtIn + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.id);
        dest.writeString(this.genreTopId);
        dest.writeString(this.category);
        dest.writeString(this.deepLink);
        PlayListIcon playListIcon = this.icon;
        if (playListIcon == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            playListIcon.writeToParcel(dest, flags);
        }
        dest.writeString(this.label);
        dest.writeString(this.ops);
        dest.writeString(this.recType);
        List<? extends Staff> list = this.staffs;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<? extends Staff> it = list.iterator();
            while (it.hasNext()) {
                dest.writeSerializable(it.next());
            }
        }
        dest.writeString(this.title);
        Boolean bool = this.showRank;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
        dest.writeInt(this.builtIn ? 1 : 0);
    }
}
