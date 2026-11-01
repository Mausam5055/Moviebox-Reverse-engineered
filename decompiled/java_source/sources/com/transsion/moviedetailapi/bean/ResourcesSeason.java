package com.transsion.moviedetailapi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.baselib.db.download.VipInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J\t\u0010 \u001a\u00020\u000bHÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\rHÆ\u0003JQ\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rHÆ\u0001J\u0006\u0010#\u001a\u00020\u0003J\u0013\u0010$\u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010&HÖ\u0003J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\t\u0010(\u001a\u00020\u0006HÖ\u0001J\u0016\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b¨\u0006."}, d2 = {"Lcom/transsion/moviedetailapi/bean/ResourcesSeason;", "Landroid/os/Parcelable;", "se", "", "maxEp", "allEp", "", "resolutions", "", "Lcom/transsion/moviedetailapi/bean/ResolutionItem;", "isSelected", "", "vipInfo", "Lcom/transsion/baselib/db/download/VipInfo;", "<init>", "(IILjava/lang/String;Ljava/util/List;ZLcom/transsion/baselib/db/download/VipInfo;)V", "getSe", "()I", "getMaxEp", "getAllEp", "()Ljava/lang/String;", "getResolutions", "()Ljava/util/List;", "()Z", "setSelected", "(Z)V", "getVipInfo", "()Lcom/transsion/baselib/db/download/VipInfo;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ResourcesSeason implements Parcelable {
    public static final Parcelable.Creator<ResourcesSeason> CREATOR = new a();
    private final String allEp;
    private transient boolean isSelected;
    private final int maxEp;
    private final List<ResolutionItem> resolutions;
    private final int se;
    private final VipInfo vipInfo;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ResourcesSeason createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            int i11 = parcel.readInt();
            int i12 = parcel.readInt();
            String string = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i13 = parcel.readInt();
                arrayList = new ArrayList(i13);
                for (int i14 = 0; i14 != i13; i14++) {
                    arrayList.add(ResolutionItem.CREATOR.createFromParcel(parcel));
                }
            }
            return new ResourcesSeason(i11, i12, string, arrayList, parcel.readInt() != 0, (VipInfo) parcel.readParcelable(ResourcesSeason.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final ResourcesSeason[] newArray(int i11) {
            return new ResourcesSeason[i11];
        }
    }

    public ResourcesSeason(int i11, int i12, String str, List<ResolutionItem> list, boolean z10, VipInfo vipInfo) {
        this.se = i11;
        this.maxEp = i12;
        this.allEp = str;
        this.resolutions = list;
        this.isSelected = z10;
        this.vipInfo = vipInfo;
    }

    public /* synthetic */ ResourcesSeason(int i11, int i12, String str, List list, boolean z10, VipInfo vipInfo, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, i12, str, (i13 & 8) != 0 ? null : list, (i13 & 16) != 0 ? false : z10, vipInfo);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ResourcesSeason copy$default(ResourcesSeason resourcesSeason, int i11, int i12, String str, List list, boolean z10, VipInfo vipInfo, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i11 = resourcesSeason.se;
        }
        if ((i13 & 2) != 0) {
            i12 = resourcesSeason.maxEp;
        }
        int i14 = i12;
        if ((i13 & 4) != 0) {
            str = resourcesSeason.allEp;
        }
        String str2 = str;
        if ((i13 & 8) != 0) {
            list = resourcesSeason.resolutions;
        }
        List list2 = list;
        if ((i13 & 16) != 0) {
            z10 = resourcesSeason.isSelected;
        }
        boolean z11 = z10;
        if ((i13 & 32) != 0) {
            vipInfo = resourcesSeason.vipInfo;
        }
        return resourcesSeason.copy(i11, i14, str2, list2, z11, vipInfo);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getSe() {
        return this.se;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getMaxEp() {
        return this.maxEp;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAllEp() {
        return this.allEp;
    }

    public final List<ResolutionItem> component4() {
        return this.resolutions;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getIsSelected() {
        return this.isSelected;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final VipInfo getVipInfo() {
        return this.vipInfo;
    }

    public final ResourcesSeason copy(int se2, int maxEp, String allEp, List<ResolutionItem> resolutions, boolean isSelected, VipInfo vipInfo) {
        return new ResourcesSeason(se2, maxEp, allEp, resolutions, isSelected, vipInfo);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ResourcesSeason)) {
            return false;
        }
        ResourcesSeason resourcesSeason = (ResourcesSeason) other;
        return this.se == resourcesSeason.se && this.maxEp == resourcesSeason.maxEp && Intrinsics.c(this.allEp, resourcesSeason.allEp) && Intrinsics.c(this.resolutions, resourcesSeason.resolutions) && this.isSelected == resourcesSeason.isSelected && Intrinsics.c(this.vipInfo, resourcesSeason.vipInfo);
    }

    public final String getAllEp() {
        return this.allEp;
    }

    public final int getMaxEp() {
        return this.maxEp;
    }

    public final List<ResolutionItem> getResolutions() {
        return this.resolutions;
    }

    public final int getSe() {
        return this.se;
    }

    public final VipInfo getVipInfo() {
        return this.vipInfo;
    }

    public int hashCode() {
        int i11 = ((this.se * 31) + this.maxEp) * 31;
        String str = this.allEp;
        int iHashCode = (i11 + (str == null ? 0 : str.hashCode())) * 31;
        List<ResolutionItem> list = this.resolutions;
        int iHashCode2 = (((iHashCode + (list == null ? 0 : list.hashCode())) * 31) + e.a(this.isSelected)) * 31;
        VipInfo vipInfo = this.vipInfo;
        return iHashCode2 + (vipInfo != null ? vipInfo.hashCode() : 0);
    }

    public final boolean isSelected() {
        return this.isSelected;
    }

    public final void setSelected(boolean z10) {
        this.isSelected = z10;
    }

    public String toString() {
        return "ResourcesSeason(se=" + this.se + ", maxEp=" + this.maxEp + ", allEp=" + this.allEp + ", resolutions=" + this.resolutions + ", isSelected=" + this.isSelected + ", vipInfo=" + this.vipInfo + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.se);
        dest.writeInt(this.maxEp);
        dest.writeString(this.allEp);
        List<ResolutionItem> list = this.resolutions;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<ResolutionItem> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        dest.writeInt(this.isSelected ? 1 : 0);
        dest.writeParcelable(this.vipInfo, flags);
    }
}
