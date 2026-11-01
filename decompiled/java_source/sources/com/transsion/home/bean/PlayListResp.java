package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b!\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0011\u0010'\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J\u0011\u0010(\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\fHÆ\u0003Jb\u0010+\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fHÆ\u0001¢\u0006\u0002\u0010,J\u0006\u0010-\u001a\u00020.J\u0013\u0010/\u001a\u00020\u00052\b\u00100\u001a\u0004\u0018\u000101HÖ\u0003J\t\u00102\u001a\u00020.HÖ\u0001J\t\u00103\u001a\u00020\fHÖ\u0001J\u0016\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020.R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001a\"\u0004\b\u001e\u0010\u001cR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001c\u0010\r\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010 \"\u0004\b$\u0010\"¨\u00069"}, d2 = {"Lcom/transsion/home/bean/PlayListResp;", "Landroid/os/Parcelable;", "pager", "Lcom/transsion/moviedetailapi/bean/Pager;", "showRank", "", "staffs", "", "Lcom/transsion/moviedetailapi/bean/Staff;", "subjects", "Lcom/transsion/moviedetailapi/bean/Subject;", CampaignEx.JSON_KEY_TITLE, "", "ops", "<init>", "(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getPager", "()Lcom/transsion/moviedetailapi/bean/Pager;", "setPager", "(Lcom/transsion/moviedetailapi/bean/Pager;)V", "getShowRank", "()Ljava/lang/Boolean;", "setShowRank", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getStaffs", "()Ljava/util/List;", "setStaffs", "(Ljava/util/List;)V", "getSubjects", "setSubjects", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getOps", "setOps", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/home/bean/PlayListResp;", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PlayListResp implements Parcelable {
    private String ops;
    private Pager pager;
    private Boolean showRank;
    private List<? extends Staff> staffs;
    private List<? extends Subject> subjects;
    private String title;
    public static final Parcelable.Creator<PlayListResp> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PlayListResp createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            ArrayList arrayList2;
            Intrinsics.h(parcel, "parcel");
            Pager pager = (Pager) parcel.readSerializable();
            Boolean boolValueOf = parcel.readInt() == 0 ? null : Boolean.valueOf(parcel.readInt() != 0);
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList3 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList3.add(parcel.readSerializable());
                }
                arrayList = arrayList3;
            }
            if (parcel.readInt() == 0) {
                arrayList2 = null;
            } else {
                int i13 = parcel.readInt();
                arrayList2 = new ArrayList(i13);
                for (int i14 = 0; i14 != i13; i14++) {
                    arrayList2.add(parcel.readSerializable());
                }
            }
            return new PlayListResp(pager, boolValueOf, arrayList, arrayList2, parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PlayListResp[] newArray(int i11) {
            return new PlayListResp[i11];
        }
    }

    public PlayListResp(Pager pager, Boolean bool, List<? extends Staff> list, List<? extends Subject> list2, String str, String str2) {
        this.pager = pager;
        this.showRank = bool;
        this.staffs = list;
        this.subjects = list2;
        this.title = str;
        this.ops = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PlayListResp copy$default(PlayListResp playListResp, Pager pager, Boolean bool, List list, List list2, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            pager = playListResp.pager;
        }
        if ((i11 & 2) != 0) {
            bool = playListResp.showRank;
        }
        Boolean bool2 = bool;
        if ((i11 & 4) != 0) {
            list = playListResp.staffs;
        }
        List list3 = list;
        if ((i11 & 8) != 0) {
            list2 = playListResp.subjects;
        }
        List list4 = list2;
        if ((i11 & 16) != 0) {
            str = playListResp.title;
        }
        String str3 = str;
        if ((i11 & 32) != 0) {
            str2 = playListResp.ops;
        }
        return playListResp.copy(pager, bool2, list3, list4, str3, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Boolean getShowRank() {
        return this.showRank;
    }

    public final List<Staff> component3() {
        return this.staffs;
    }

    public final List<Subject> component4() {
        return this.subjects;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    public final PlayListResp copy(Pager pager, Boolean showRank, List<? extends Staff> staffs, List<? extends Subject> subjects, String title, String ops) {
        return new PlayListResp(pager, showRank, staffs, subjects, title, ops);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlayListResp)) {
            return false;
        }
        PlayListResp playListResp = (PlayListResp) other;
        return Intrinsics.c(this.pager, playListResp.pager) && Intrinsics.c(this.showRank, playListResp.showRank) && Intrinsics.c(this.staffs, playListResp.staffs) && Intrinsics.c(this.subjects, playListResp.subjects) && Intrinsics.c(this.title, playListResp.title) && Intrinsics.c(this.ops, playListResp.ops);
    }

    public final String getOps() {
        return this.ops;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public final Boolean getShowRank() {
        return this.showRank;
    }

    public final List<Staff> getStaffs() {
        return this.staffs;
    }

    public final List<Subject> getSubjects() {
        return this.subjects;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        Pager pager = this.pager;
        int iHashCode = (pager == null ? 0 : pager.hashCode()) * 31;
        Boolean bool = this.showRank;
        int iHashCode2 = (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        List<? extends Staff> list = this.staffs;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        List<? extends Subject> list2 = this.subjects;
        int iHashCode4 = (iHashCode3 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str = this.title;
        int iHashCode5 = (iHashCode4 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.ops;
        return iHashCode5 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    public final void setShowRank(Boolean bool) {
        this.showRank = bool;
    }

    public final void setStaffs(List<? extends Staff> list) {
        this.staffs = list;
    }

    public final void setSubjects(List<? extends Subject> list) {
        this.subjects = list;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "PlayListResp(pager=" + this.pager + ", showRank=" + this.showRank + ", staffs=" + this.staffs + ", subjects=" + this.subjects + ", title=" + this.title + ", ops=" + this.ops + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeSerializable(this.pager);
        Boolean bool = this.showRank;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
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
        List<? extends Subject> list2 = this.subjects;
        if (list2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list2.size());
            Iterator<? extends Subject> it2 = list2.iterator();
            while (it2.hasNext()) {
                dest.writeSerializable(it2.next());
            }
        }
        dest.writeString(this.title);
        dest.writeString(this.ops);
    }
}
