package com.transsion.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u0010\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0012R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000b¨\u0006\u001f"}, d2 = {"Lcom/transsion/bean/AhaGameData;", "Landroid/os/Parcelable;", "peoplePlaying", "", "Lcom/transsion/bean/AhaGameAllGames;", "allGames", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "getPeoplePlaying", "()Ljava/util/List;", "setPeoplePlaying", "(Ljava/util/List;)V", "getAllGames", "setAllGames", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AhaGameData implements Parcelable {
    public static final Parcelable.Creator<AhaGameData> CREATOR = new a();
    private List<AhaGameAllGames> allGames;
    private List<AhaGameAllGames> peoplePlaying;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AhaGameData createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            ArrayList arrayList2 = null;
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(AhaGameAllGames.CREATOR.createFromParcel(parcel));
                }
            }
            if (parcel.readInt() != 0) {
                int i13 = parcel.readInt();
                arrayList2 = new ArrayList(i13);
                for (int i14 = 0; i14 != i13; i14++) {
                    arrayList2.add(AhaGameAllGames.CREATOR.createFromParcel(parcel));
                }
            }
            return new AhaGameData(arrayList, arrayList2);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final AhaGameData[] newArray(int i11) {
            return new AhaGameData[i11];
        }
    }

    public AhaGameData(List<AhaGameAllGames> list, List<AhaGameAllGames> list2) {
        this.peoplePlaying = list;
        this.allGames = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AhaGameData copy$default(AhaGameData ahaGameData, List list, List list2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = ahaGameData.peoplePlaying;
        }
        if ((i11 & 2) != 0) {
            list2 = ahaGameData.allGames;
        }
        return ahaGameData.copy(list, list2);
    }

    public final List<AhaGameAllGames> component1() {
        return this.peoplePlaying;
    }

    public final List<AhaGameAllGames> component2() {
        return this.allGames;
    }

    public final AhaGameData copy(List<AhaGameAllGames> peoplePlaying, List<AhaGameAllGames> allGames) {
        return new AhaGameData(peoplePlaying, allGames);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AhaGameData)) {
            return false;
        }
        AhaGameData ahaGameData = (AhaGameData) other;
        return Intrinsics.c(this.peoplePlaying, ahaGameData.peoplePlaying) && Intrinsics.c(this.allGames, ahaGameData.allGames);
    }

    public final List<AhaGameAllGames> getAllGames() {
        return this.allGames;
    }

    public final List<AhaGameAllGames> getPeoplePlaying() {
        return this.peoplePlaying;
    }

    public int hashCode() {
        List<AhaGameAllGames> list = this.peoplePlaying;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<AhaGameAllGames> list2 = this.allGames;
        return iHashCode + (list2 != null ? list2.hashCode() : 0);
    }

    public final void setAllGames(List<AhaGameAllGames> list) {
        this.allGames = list;
    }

    public final void setPeoplePlaying(List<AhaGameAllGames> list) {
        this.peoplePlaying = list;
    }

    public String toString() {
        return "AhaGameData(peoplePlaying=" + this.peoplePlaying + ", allGames=" + this.allGames + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<AhaGameAllGames> list = this.peoplePlaying;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<AhaGameAllGames> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        List<AhaGameAllGames> list2 = this.allGames;
        if (list2 == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list2.size());
        Iterator<AhaGameAllGames> it2 = list2.iterator();
        while (it2.hasNext()) {
            it2.next().writeToParcel(dest, flags);
        }
    }
}
