package com.transsion.search_pugc.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003J-\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0001J\u0006\u0010\u0013\u001a\u00020\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0014HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0014R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006 "}, d2 = {"Lcom/transsion/search_pugc/bean/HotRank;", "Landroid/os/Parcelable;", "category", "", "name", "videos", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getCategory", "()Ljava/lang/String;", "getName", "getVideos", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HotRank implements Parcelable {
    public static final Parcelable.Creator<HotRank> CREATOR = new a();

    @SerializedName("category")
    private final String category;

    @SerializedName("name")
    private final String name;

    @SerializedName("videos")
    private final List<UGCVideo> videos;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HotRank createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            int i11 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i11);
            for (int i12 = 0; i12 != i11; i12++) {
                arrayList.add(parcel.readSerializable());
            }
            return new HotRank(string, string2, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final HotRank[] newArray(int i11) {
            return new HotRank[i11];
        }
    }

    public HotRank() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public HotRank(String category, String name, List<? extends UGCVideo> videos) {
        Intrinsics.h(category, "category");
        Intrinsics.h(name, "name");
        Intrinsics.h(videos, "videos");
        this.category = category;
        this.name = name;
        this.videos = videos;
    }

    public /* synthetic */ HotRank(String str, String str2, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? "" : str2, (i11 & 4) != 0 ? CollectionsKt.l() : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HotRank copy$default(HotRank hotRank, String str, String str2, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = hotRank.category;
        }
        if ((i11 & 2) != 0) {
            str2 = hotRank.name;
        }
        if ((i11 & 4) != 0) {
            list = hotRank.videos;
        }
        return hotRank.copy(str, str2, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCategory() {
        return this.category;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    public final List<UGCVideo> component3() {
        return this.videos;
    }

    public final HotRank copy(String category, String name, List<? extends UGCVideo> videos) {
        Intrinsics.h(category, "category");
        Intrinsics.h(name, "name");
        Intrinsics.h(videos, "videos");
        return new HotRank(category, name, videos);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HotRank)) {
            return false;
        }
        HotRank hotRank = (HotRank) other;
        return Intrinsics.c(this.category, hotRank.category) && Intrinsics.c(this.name, hotRank.name) && Intrinsics.c(this.videos, hotRank.videos);
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getName() {
        return this.name;
    }

    public final List<UGCVideo> getVideos() {
        return this.videos;
    }

    public int hashCode() {
        return (((this.category.hashCode() * 31) + this.name.hashCode()) * 31) + this.videos.hashCode();
    }

    public String toString() {
        return "HotRank(category=" + this.category + ", name=" + this.name + ", videos=" + this.videos + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.category);
        dest.writeString(this.name);
        List<UGCVideo> list = this.videos;
        dest.writeInt(list.size());
        Iterator<UGCVideo> it = list.iterator();
        while (it.hasNext()) {
            dest.writeSerializable(it.next());
        }
    }
}
