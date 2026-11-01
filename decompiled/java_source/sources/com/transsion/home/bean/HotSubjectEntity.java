package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u001b\u0010\u000b\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\f\u001a\u00020\rJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\rHÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\rR\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0006¨\u0006\u001a"}, d2 = {"Lcom/transsion/home/bean/HotSubjectEntity;", "Landroid/os/Parcelable;", "everyoneSearch", "", "Lcom/transsion/home/bean/HotSearchKeyWord;", "<init>", "(Ljava/util/List;)V", "getEveryoneSearch", "()Ljava/util/List;", "setEveryoneSearch", "component1", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HotSubjectEntity implements Parcelable {
    private List<HotSearchKeyWord> everyoneSearch;
    public static final Parcelable.Creator<HotSubjectEntity> CREATOR = new a();
    public static final int $stable = 8;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HotSubjectEntity createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(HotSearchKeyWord.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new HotSubjectEntity(arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final HotSubjectEntity[] newArray(int i11) {
            return new HotSubjectEntity[i11];
        }
    }

    public HotSubjectEntity(List<HotSearchKeyWord> list) {
        this.everyoneSearch = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HotSubjectEntity copy$default(HotSubjectEntity hotSubjectEntity, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = hotSubjectEntity.everyoneSearch;
        }
        return hotSubjectEntity.copy(list);
    }

    public final List<HotSearchKeyWord> component1() {
        return this.everyoneSearch;
    }

    public final HotSubjectEntity copy(List<HotSearchKeyWord> everyoneSearch) {
        return new HotSubjectEntity(everyoneSearch);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof HotSubjectEntity) && Intrinsics.c(this.everyoneSearch, ((HotSubjectEntity) other).everyoneSearch);
    }

    public final List<HotSearchKeyWord> getEveryoneSearch() {
        return this.everyoneSearch;
    }

    public int hashCode() {
        List<HotSearchKeyWord> list = this.everyoneSearch;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public final void setEveryoneSearch(List<HotSearchKeyWord> list) {
        this.everyoneSearch = list;
    }

    public String toString() {
        return "HotSubjectEntity(everyoneSearch=" + this.everyoneSearch + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<HotSearchKeyWord> list = this.everyoneSearch;
        if (list == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list.size());
        Iterator<HotSearchKeyWord> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
    }
}
