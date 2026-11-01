package com.transsion.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0011\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003HÆ\u0003J\u0011\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003HÆ\u0003J-\u0010\r\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003HÆ\u0001J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000fR\u0019\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0019\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\t¨\u0006\u001c"}, d2 = {"Lcom/transsion/bean/HomePopupRequestDisplayedEntity;", "Landroid/os/Parcelable;", "popup", "", "Lcom/transsion/bean/HomePopupRequestEntity;", "widget", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "getPopup", "()Ljava/util/List;", "getWidget", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HomePopupRequestDisplayedEntity implements Parcelable {
    public static final Parcelable.Creator<HomePopupRequestDisplayedEntity> CREATOR = new a();
    private final List<HomePopupRequestEntity> popup;
    private final List<HomePopupRequestEntity> widget;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HomePopupRequestDisplayedEntity createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            int i11 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i11);
            int i12 = 0;
            while (true) {
                HomePopupRequestEntity homePopupRequestEntityCreateFromParcel = null;
                if (i12 == i11) {
                    break;
                }
                if (parcel.readInt() != 0) {
                    homePopupRequestEntityCreateFromParcel = HomePopupRequestEntity.CREATOR.createFromParcel(parcel);
                }
                arrayList.add(homePopupRequestEntityCreateFromParcel);
                i12++;
            }
            int i13 = parcel.readInt();
            ArrayList arrayList2 = new ArrayList(i13);
            for (int i14 = 0; i14 != i13; i14++) {
                arrayList2.add(parcel.readInt() == 0 ? null : HomePopupRequestEntity.CREATOR.createFromParcel(parcel));
            }
            return new HomePopupRequestDisplayedEntity(arrayList, arrayList2);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final HomePopupRequestDisplayedEntity[] newArray(int i11) {
            return new HomePopupRequestDisplayedEntity[i11];
        }
    }

    public HomePopupRequestDisplayedEntity(List<HomePopupRequestEntity> popup, List<HomePopupRequestEntity> widget) {
        Intrinsics.h(popup, "popup");
        Intrinsics.h(widget, "widget");
        this.popup = popup;
        this.widget = widget;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HomePopupRequestDisplayedEntity copy$default(HomePopupRequestDisplayedEntity homePopupRequestDisplayedEntity, List list, List list2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = homePopupRequestDisplayedEntity.popup;
        }
        if ((i11 & 2) != 0) {
            list2 = homePopupRequestDisplayedEntity.widget;
        }
        return homePopupRequestDisplayedEntity.copy(list, list2);
    }

    public final List<HomePopupRequestEntity> component1() {
        return this.popup;
    }

    public final List<HomePopupRequestEntity> component2() {
        return this.widget;
    }

    public final HomePopupRequestDisplayedEntity copy(List<HomePopupRequestEntity> popup, List<HomePopupRequestEntity> widget) {
        Intrinsics.h(popup, "popup");
        Intrinsics.h(widget, "widget");
        return new HomePopupRequestDisplayedEntity(popup, widget);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HomePopupRequestDisplayedEntity)) {
            return false;
        }
        HomePopupRequestDisplayedEntity homePopupRequestDisplayedEntity = (HomePopupRequestDisplayedEntity) other;
        return Intrinsics.c(this.popup, homePopupRequestDisplayedEntity.popup) && Intrinsics.c(this.widget, homePopupRequestDisplayedEntity.widget);
    }

    public final List<HomePopupRequestEntity> getPopup() {
        return this.popup;
    }

    public final List<HomePopupRequestEntity> getWidget() {
        return this.widget;
    }

    public int hashCode() {
        return (this.popup.hashCode() * 31) + this.widget.hashCode();
    }

    public String toString() {
        return "HomePopupRequestDisplayedEntity(popup=" + this.popup + ", widget=" + this.widget + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<HomePopupRequestEntity> list = this.popup;
        dest.writeInt(list.size());
        for (HomePopupRequestEntity homePopupRequestEntity : list) {
            if (homePopupRequestEntity == null) {
                dest.writeInt(0);
            } else {
                dest.writeInt(1);
                homePopupRequestEntity.writeToParcel(dest, flags);
            }
        }
        List<HomePopupRequestEntity> list2 = this.widget;
        dest.writeInt(list2.size());
        for (HomePopupRequestEntity homePopupRequestEntity2 : list2) {
            if (homePopupRequestEntity2 == null) {
                dest.writeInt(0);
            } else {
                dest.writeInt(1);
                homePopupRequestEntity2.writeToParcel(dest, flags);
            }
        }
    }
}
