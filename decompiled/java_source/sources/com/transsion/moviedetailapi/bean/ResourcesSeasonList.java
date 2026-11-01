package com.transsion.moviedetailapi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.SubjectType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0013\u001a\u00020\u0011J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J,\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0017J\u0006\u0010\u0018\u001a\u00020\u0003J\u0013\u0010\u0019\u001a\u00020\u00112\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006$"}, d2 = {"Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;", "Landroid/os/Parcelable;", "subjectType", "", "seasons", "", "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;", "<init>", "(Ljava/lang/Integer;Ljava/util/List;)V", "getSubjectType", "()Ljava/lang/Integer;", "setSubjectType", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getSeasons", "()Ljava/util/List;", "isMovie", "", "isSeries", "isNoSource", "component1", "component2", "copy", "(Ljava/lang/Integer;Ljava/util/List;)Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final /* data */ class ResourcesSeasonList implements Parcelable {
    public static final Parcelable.Creator<ResourcesSeasonList> CREATOR = new a();
    private final List<ResourcesSeason> seasons;
    private Integer subjectType;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ResourcesSeasonList createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            ArrayList arrayList = null;
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            if (parcel.readInt() != 0) {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(ResourcesSeason.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new ResourcesSeasonList(numValueOf, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final ResourcesSeasonList[] newArray(int i11) {
            return new ResourcesSeasonList[i11];
        }
    }

    public ResourcesSeasonList(Integer num, List<ResourcesSeason> list) {
        this.subjectType = num;
        this.seasons = list;
    }

    public /* synthetic */ ResourcesSeasonList(Integer num, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 1 : num, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ResourcesSeasonList copy$default(ResourcesSeasonList resourcesSeasonList, Integer num, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = resourcesSeasonList.subjectType;
        }
        if ((i11 & 2) != 0) {
            list = resourcesSeasonList.seasons;
        }
        return resourcesSeasonList.copy(num, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getSubjectType() {
        return this.subjectType;
    }

    public final List<ResourcesSeason> component2() {
        return this.seasons;
    }

    public final ResourcesSeasonList copy(Integer subjectType, List<ResourcesSeason> seasons) {
        return new ResourcesSeasonList(subjectType, seasons);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ResourcesSeasonList)) {
            return false;
        }
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) other;
        return Intrinsics.c(this.subjectType, resourcesSeasonList.subjectType) && Intrinsics.c(this.seasons, resourcesSeasonList.seasons);
    }

    public final List<ResourcesSeason> getSeasons() {
        return this.seasons;
    }

    public final Integer getSubjectType() {
        return this.subjectType;
    }

    public int hashCode() {
        Integer num = this.subjectType;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        List<ResourcesSeason> list = this.seasons;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public final boolean isMovie() {
        List<ResourcesSeason> list = this.seasons;
        if (list == null || list.size() != 1) {
            return false;
        }
        ResourcesSeason resourcesSeason = list.get(0);
        return resourcesSeason.getSe() == 0 && resourcesSeason.getMaxEp() == 0;
    }

    public final boolean isNoSource() {
        List<ResourcesSeason> list = this.seasons;
        return list == null || list.isEmpty();
    }

    public final boolean isSeries() {
        Integer num = this.subjectType;
        int value = SubjectType.MOVIE.getValue();
        if (num != null && num.intValue() == value) {
            List<ResourcesSeason> list = this.seasons;
            if (list != null) {
                return !list.isEmpty() && list.get(0).getMaxEp() > 0;
            }
            return false;
        }
        List<ResourcesSeason> list2 = this.seasons;
        if (list2 != null) {
            for (ResourcesSeason resourcesSeason : list2) {
                if (resourcesSeason.getSe() > 0 && resourcesSeason.getMaxEp() > 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void setSubjectType(Integer num) {
        this.subjectType = num;
    }

    public String toString() {
        return "ResourcesSeasonList(subjectType=" + this.subjectType + ", seasons=" + this.seasons + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        Integer num = this.subjectType;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        List<ResourcesSeason> list = this.seasons;
        if (list == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list.size());
        Iterator<ResourcesSeason> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
    }
}
