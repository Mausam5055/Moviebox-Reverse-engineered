package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003JE\u0010\u001c\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u001d\u001a\u00020\u001eJ\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u001eHÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001J\u0016\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u001eR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\r\"\u0004\b\u0017\u0010\u000f¨\u0006*"}, d2 = {"Lcom/transsion/home/bean/RankingListItem;", "Landroid/os/Parcelable;", CampaignEx.JSON_KEY_TITLE, "", "subjects", "", "Lcom/transsion/moviedetailapi/bean/Subject;", "contentList", "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "categoryId", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getSubjects", "()Ljava/util/List;", "setSubjects", "(Ljava/util/List;)V", "getContentList", "setContentList", "getCategoryId", "setCategoryId", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RankingListItem implements Parcelable {
    private String categoryId;
    private List<UGCContent> contentList;
    private List<? extends Subject> subjects;
    private String title;
    public static final Parcelable.Creator<RankingListItem> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RankingListItem createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            ArrayList arrayList2 = null;
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(parcel.readSerializable());
                }
            }
            if (parcel.readInt() != 0) {
                int i13 = parcel.readInt();
                arrayList2 = new ArrayList(i13);
                for (int i14 = 0; i14 != i13; i14++) {
                    arrayList2.add(parcel.readParcelable(RankingListItem.class.getClassLoader()));
                }
            }
            return new RankingListItem(string, arrayList, arrayList2, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final RankingListItem[] newArray(int i11) {
            return new RankingListItem[i11];
        }
    }

    public RankingListItem() {
        this(null, null, null, null, 15, null);
    }

    public RankingListItem(String str, List<? extends Subject> list, List<UGCContent> list2, String str2) {
        this.title = str;
        this.subjects = list;
        this.contentList = list2;
        this.categoryId = str2;
    }

    public /* synthetic */ RankingListItem(String str, List list, List list2, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : list, (i11 & 4) != 0 ? null : list2, (i11 & 8) != 0 ? null : str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RankingListItem copy$default(RankingListItem rankingListItem, String str, List list, List list2, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = rankingListItem.title;
        }
        if ((i11 & 2) != 0) {
            list = rankingListItem.subjects;
        }
        if ((i11 & 4) != 0) {
            list2 = rankingListItem.contentList;
        }
        if ((i11 & 8) != 0) {
            str2 = rankingListItem.categoryId;
        }
        return rankingListItem.copy(str, list, list2, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    public final List<Subject> component2() {
        return this.subjects;
    }

    public final List<UGCContent> component3() {
        return this.contentList;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCategoryId() {
        return this.categoryId;
    }

    public final RankingListItem copy(String title, List<? extends Subject> subjects, List<UGCContent> contentList, String categoryId) {
        return new RankingListItem(title, subjects, contentList, categoryId);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RankingListItem)) {
            return false;
        }
        RankingListItem rankingListItem = (RankingListItem) other;
        return Intrinsics.c(this.title, rankingListItem.title) && Intrinsics.c(this.subjects, rankingListItem.subjects) && Intrinsics.c(this.contentList, rankingListItem.contentList) && Intrinsics.c(this.categoryId, rankingListItem.categoryId);
    }

    public final String getCategoryId() {
        return this.categoryId;
    }

    public final List<UGCContent> getContentList() {
        return this.contentList;
    }

    public final List<Subject> getSubjects() {
        return this.subjects;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<? extends Subject> list = this.subjects;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<UGCContent> list2 = this.contentList;
        int iHashCode3 = (iHashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str2 = this.categoryId;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setCategoryId(String str) {
        this.categoryId = str;
    }

    public final void setContentList(List<UGCContent> list) {
        this.contentList = list;
    }

    public final void setSubjects(List<? extends Subject> list) {
        this.subjects = list;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "RankingListItem(title=" + this.title + ", subjects=" + this.subjects + ", contentList=" + this.contentList + ", categoryId=" + this.categoryId + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.title);
        List<? extends Subject> list = this.subjects;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<? extends Subject> it = list.iterator();
            while (it.hasNext()) {
                dest.writeSerializable(it.next());
            }
        }
        List<UGCContent> list2 = this.contentList;
        if (list2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list2.size());
            Iterator<UGCContent> it2 = list2.iterator();
            while (it2.hasNext()) {
                dest.writeParcelable(it2.next(), flags);
            }
        }
        dest.writeString(this.categoryId);
    }
}
