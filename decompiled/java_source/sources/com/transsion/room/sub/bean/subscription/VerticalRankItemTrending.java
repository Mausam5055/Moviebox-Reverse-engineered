package com.transsion.room.sub.bean.subscription;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b'\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bg\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00100\u001a\u00020\nHÆ\u0003J\t\u00101\u001a\u00020\fHÆ\u0003J\u0011\u00102\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eHÆ\u0003Jk\u00103\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eHÆ\u0001J\u0006\u00104\u001a\u00020\nJ\u0013\u00105\u001a\u00020\f2\b\u00106\u001a\u0004\u0018\u000107HÖ\u0003J\t\u00108\u001a\u00020\nHÖ\u0001J\t\u00109\u001a\u00020\u0003HÖ\u0001J\u0016\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\nR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0013\"\u0004\b\u0017\u0010\u0015R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0013\"\u0004\b\u0019\u0010\u0015R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0013\"\u0004\b\u001f\u0010\u0015R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010$\"\u0004\b%\u0010&R\"\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u0006?"}, d2 = {"Lcom/transsion/room/sub/bean/subscription/VerticalRankItemTrending;", "Landroid/os/Parcelable;", "id", "", CampaignEx.JSON_KEY_TITLE, TrackingKey.DESCRIPTION, "cover", "Lcom/transsion/room/sub/bean/subscription/CoverTrending;", "deeplink", "count", "", "isForceInsert", "", "videos", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverTrending;Ljava/lang/String;IZLjava/util/List;)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getTitle", "setTitle", "getDescription", "setDescription", "getCover", "()Lcom/transsion/room/sub/bean/subscription/CoverTrending;", "setCover", "(Lcom/transsion/room/sub/bean/subscription/CoverTrending;)V", "getDeeplink", "setDeeplink", "getCount", "()I", "setCount", "(I)V", "()Z", "setForceInsert", "(Z)V", "getVideos", "()Ljava/util/List;", "setVideos", "(Ljava/util/List;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class VerticalRankItemTrending implements Parcelable {
    public static final Parcelable.Creator<VerticalRankItemTrending> CREATOR = new a();
    private int count;
    private CoverTrending cover;
    private String deeplink;
    private String description;
    private String id;
    private boolean isForceInsert;
    private String title;
    private List<UGCVideo> videos;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final VerticalRankItemTrending createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            CoverTrending coverTrendingCreateFromParcel = parcel.readInt() == 0 ? null : CoverTrending.CREATOR.createFromParcel(parcel);
            String string4 = parcel.readString();
            int i11 = parcel.readInt();
            boolean z10 = parcel.readInt() != 0;
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i12 = parcel.readInt();
                arrayList = new ArrayList(i12);
                for (int i13 = 0; i13 != i12; i13++) {
                    arrayList.add(parcel.readSerializable());
                }
            }
            return new VerticalRankItemTrending(string, string2, string3, coverTrendingCreateFromParcel, string4, i11, z10, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final VerticalRankItemTrending[] newArray(int i11) {
            return new VerticalRankItemTrending[i11];
        }
    }

    public VerticalRankItemTrending(String str, String str2, String str3, CoverTrending coverTrending, String str4, int i11, boolean z10, List<UGCVideo> list) {
        this.id = str;
        this.title = str2;
        this.description = str3;
        this.cover = coverTrending;
        this.deeplink = str4;
        this.count = i11;
        this.isForceInsert = z10;
        this.videos = list;
    }

    public /* synthetic */ VerticalRankItemTrending(String str, String str2, String str3, CoverTrending coverTrending, String str4, int i11, boolean z10, List list, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? null : str, (i12 & 2) != 0 ? null : str2, (i12 & 4) != 0 ? null : str3, (i12 & 8) != 0 ? null : coverTrending, (i12 & 16) != 0 ? null : str4, (i12 & 32) != 0 ? 0 : i11, (i12 & 64) != 0 ? false : z10, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final CoverTrending getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDeeplink() {
        return this.deeplink;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getCount() {
        return this.count;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getIsForceInsert() {
        return this.isForceInsert;
    }

    public final List<UGCVideo> component8() {
        return this.videos;
    }

    public final VerticalRankItemTrending copy(String id2, String title, String description, CoverTrending cover, String deeplink, int count, boolean isForceInsert, List<UGCVideo> videos) {
        return new VerticalRankItemTrending(id2, title, description, cover, deeplink, count, isForceInsert, videos);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VerticalRankItemTrending)) {
            return false;
        }
        VerticalRankItemTrending verticalRankItemTrending = (VerticalRankItemTrending) other;
        return Intrinsics.c(this.id, verticalRankItemTrending.id) && Intrinsics.c(this.title, verticalRankItemTrending.title) && Intrinsics.c(this.description, verticalRankItemTrending.description) && Intrinsics.c(this.cover, verticalRankItemTrending.cover) && Intrinsics.c(this.deeplink, verticalRankItemTrending.deeplink) && this.count == verticalRankItemTrending.count && this.isForceInsert == verticalRankItemTrending.isForceInsert && Intrinsics.c(this.videos, verticalRankItemTrending.videos);
    }

    public final int getCount() {
        return this.count;
    }

    public final CoverTrending getCover() {
        return this.cover;
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getId() {
        return this.id;
    }

    public final String getTitle() {
        return this.title;
    }

    public final List<UGCVideo> getVideos() {
        return this.videos;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.title;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.description;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        CoverTrending coverTrending = this.cover;
        int iHashCode4 = (iHashCode3 + (coverTrending == null ? 0 : coverTrending.hashCode())) * 31;
        String str4 = this.deeplink;
        int iHashCode5 = (((((iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.count) * 31) + e.a(this.isForceInsert)) * 31;
        List<UGCVideo> list = this.videos;
        return iHashCode5 + (list != null ? list.hashCode() : 0);
    }

    public final boolean isForceInsert() {
        return this.isForceInsert;
    }

    public final void setCount(int i11) {
        this.count = i11;
    }

    public final void setCover(CoverTrending coverTrending) {
        this.cover = coverTrending;
    }

    public final void setDeeplink(String str) {
        this.deeplink = str;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setForceInsert(boolean z10) {
        this.isForceInsert = z10;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setVideos(List<UGCVideo> list) {
        this.videos = list;
    }

    public String toString() {
        return "VerticalRankItemTrending(id=" + this.id + ", title=" + this.title + ", description=" + this.description + ", cover=" + this.cover + ", deeplink=" + this.deeplink + ", count=" + this.count + ", isForceInsert=" + this.isForceInsert + ", videos=" + this.videos + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.id);
        dest.writeString(this.title);
        dest.writeString(this.description);
        CoverTrending coverTrending = this.cover;
        if (coverTrending == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            coverTrending.writeToParcel(dest, flags);
        }
        dest.writeString(this.deeplink);
        dest.writeInt(this.count);
        dest.writeInt(this.isForceInsert ? 1 : 0);
        List<UGCVideo> list = this.videos;
        if (list == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list.size());
        Iterator<UGCVideo> it = list.iterator();
        while (it.hasNext()) {
            dest.writeSerializable(it.next());
        }
    }
}
