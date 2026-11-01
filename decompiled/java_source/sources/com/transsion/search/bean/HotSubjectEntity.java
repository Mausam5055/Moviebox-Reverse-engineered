package com.transsion.search.bean;

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

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0003J-\u0010\u0011\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0013R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\f¨\u0006 "}, d2 = {"Lcom/transsion/search/bean/HotSubjectEntity;", "Landroid/os/Parcelable;", "hot", "", "Lcom/transsion/search/bean/HotRankItem;", "everyoneSearch", "Lcom/transsion/search/bean/HotSearchKeyWord;", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "getHot", "()Ljava/util/List;", "setHot", "(Ljava/util/List;)V", "getEveryoneSearch", "setEveryoneSearch", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HotSubjectEntity implements Parcelable {
    public static final Parcelable.Creator<HotSubjectEntity> CREATOR = new a();
    private List<HotSearchKeyWord> everyoneSearch;
    private List<HotRankItem> hot;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HotSubjectEntity createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            ArrayList arrayList2 = null;
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(HotRankItem.CREATOR.createFromParcel(parcel));
                }
            }
            if (parcel.readInt() != 0) {
                int i13 = parcel.readInt();
                arrayList2 = new ArrayList(i13);
                for (int i14 = 0; i14 != i13; i14++) {
                    arrayList2.add(HotSearchKeyWord.CREATOR.createFromParcel(parcel));
                }
            }
            return new HotSubjectEntity(arrayList, arrayList2);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final HotSubjectEntity[] newArray(int i11) {
            return new HotSubjectEntity[i11];
        }
    }

    public HotSubjectEntity(List<HotRankItem> list, List<HotSearchKeyWord> list2) {
        this.hot = list;
        this.everyoneSearch = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HotSubjectEntity copy$default(HotSubjectEntity hotSubjectEntity, List list, List list2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = hotSubjectEntity.hot;
        }
        if ((i11 & 2) != 0) {
            list2 = hotSubjectEntity.everyoneSearch;
        }
        return hotSubjectEntity.copy(list, list2);
    }

    public final List<HotRankItem> component1() {
        return this.hot;
    }

    public final List<HotSearchKeyWord> component2() {
        return this.everyoneSearch;
    }

    public final HotSubjectEntity copy(List<HotRankItem> hot, List<HotSearchKeyWord> everyoneSearch) {
        return new HotSubjectEntity(hot, everyoneSearch);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HotSubjectEntity)) {
            return false;
        }
        HotSubjectEntity hotSubjectEntity = (HotSubjectEntity) other;
        return Intrinsics.c(this.hot, hotSubjectEntity.hot) && Intrinsics.c(this.everyoneSearch, hotSubjectEntity.everyoneSearch);
    }

    public final List<HotSearchKeyWord> getEveryoneSearch() {
        return this.everyoneSearch;
    }

    public final List<HotRankItem> getHot() {
        return this.hot;
    }

    public int hashCode() {
        List<HotRankItem> list = this.hot;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<HotSearchKeyWord> list2 = this.everyoneSearch;
        return iHashCode + (list2 != null ? list2.hashCode() : 0);
    }

    public final void setEveryoneSearch(List<HotSearchKeyWord> list) {
        this.everyoneSearch = list;
    }

    public final void setHot(List<HotRankItem> list) {
        this.hot = list;
    }

    public String toString() {
        return "HotSubjectEntity(hot=" + this.hot + ", everyoneSearch=" + this.everyoneSearch + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<HotRankItem> list = this.hot;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<HotRankItem> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        List<HotSearchKeyWord> list2 = this.everyoneSearch;
        if (list2 == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list2.size());
        Iterator<HotSearchKeyWord> it2 = list2.iterator();
        while (it2.hasNext()) {
            it2.next().writeToParcel(dest, flags);
        }
    }
}
