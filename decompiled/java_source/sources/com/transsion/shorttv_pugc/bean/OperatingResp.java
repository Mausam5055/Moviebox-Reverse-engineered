package com.transsion.shorttv_pugc.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0006HÆ\u0003J1\u0010\u001f\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0006\u0010 \u001a\u00020!J\u0013\u0010\"\u001a\u00020\u00152\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020!HÖ\u0001J\t\u0010&\u001a\u00020\u0006HÖ\u0001J\u0016\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020!R&\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001b\u0010\u0019\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0018\u00010\u00038F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u000b¨\u0006,"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/OperatingResp;", "Landroid/os/Parcelable;", "ops", "", "Lcom/transsion/shorttv_pugc/bean/OperateItem;", "version", "", "sourceFrom", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getOps", "()Ljava/util/List;", "setOps", "(Ljava/util/List;)V", "getVersion", "()Ljava/lang/String;", "setVersion", "(Ljava/lang/String;)V", "getSourceFrom", "setSourceFrom", "isCache", "", "()Z", "setCache", "(Z)V", "banners", "Lcom/transsion/shorttv_pugc/bean/BannerData;", "getBanners", "component1", "component2", "component3", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class OperatingResp implements Parcelable {
    public static final Parcelable.Creator<OperatingResp> CREATOR = new a();
    private transient boolean isCache;

    @SerializedName("items")
    private List<OperateItem> ops;
    private transient String sourceFrom;
    private String version;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OperatingResp createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(OperateItem.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new OperatingResp(arrayList, parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final OperatingResp[] newArray(int i11) {
            return new OperatingResp[i11];
        }
    }

    public OperatingResp() {
        this(null, null, null, 7, null);
    }

    public OperatingResp(List<OperateItem> list, String str, String sourceFrom) {
        Intrinsics.h(sourceFrom, "sourceFrom");
        this.ops = list;
        this.version = str;
        this.sourceFrom = sourceFrom;
    }

    public /* synthetic */ OperatingResp(List list, String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? "" : str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OperatingResp copy$default(OperatingResp operatingResp, List list, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = operatingResp.ops;
        }
        if ((i11 & 2) != 0) {
            str = operatingResp.version;
        }
        if ((i11 & 4) != 0) {
            str2 = operatingResp.sourceFrom;
        }
        return operatingResp.copy(list, str, str2);
    }

    public final List<OperateItem> component1() {
        return this.ops;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSourceFrom() {
        return this.sourceFrom;
    }

    public final OperatingResp copy(List<OperateItem> ops, String version, String sourceFrom) {
        Intrinsics.h(sourceFrom, "sourceFrom");
        return new OperatingResp(ops, version, sourceFrom);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OperatingResp)) {
            return false;
        }
        OperatingResp operatingResp = (OperatingResp) other;
        return Intrinsics.c(this.ops, operatingResp.ops) && Intrinsics.c(this.version, operatingResp.version) && Intrinsics.c(this.sourceFrom, operatingResp.sourceFrom);
    }

    public final List<BannerData> getBanners() {
        Object objM454constructorimpl;
        OperateItem operateItem;
        BannerBean banner;
        try {
            Result.Companion companion = Result.INSTANCE;
            List<OperateItem> list = this.ops;
            objM454constructorimpl = Result.m454constructorimpl((list == null || (operateItem = list.get(0)) == null || (banner = operateItem.getBanner()) == null) ? null : banner.getBanners());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        return (List) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
    }

    public final List<OperateItem> getOps() {
        return this.ops;
    }

    public final String getSourceFrom() {
        return this.sourceFrom;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        List<OperateItem> list = this.ops;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        String str = this.version;
        return ((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + this.sourceFrom.hashCode();
    }

    /* JADX INFO: renamed from: isCache, reason: from getter */
    public final boolean getIsCache() {
        return this.isCache;
    }

    public final void setCache(boolean z10) {
        this.isCache = z10;
    }

    public final void setOps(List<OperateItem> list) {
        this.ops = list;
    }

    public final void setSourceFrom(String str) {
        Intrinsics.h(str, "<set-?>");
        this.sourceFrom = str;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "OperatingResp(ops=" + this.ops + ", version=" + this.version + ", sourceFrom=" + this.sourceFrom + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<OperateItem> list = this.ops;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<OperateItem> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        dest.writeString(this.version);
        dest.writeString(this.sourceFrom);
    }
}
