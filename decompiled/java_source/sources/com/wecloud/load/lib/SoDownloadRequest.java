package com.wecloud.load.lib;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.wecloud.load.lib.bean.SoLoadControlConfig;
import com.wecloud.load.lib.bean.SoZipInfo;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0006\u0010\r\u001a\u00020\u000eJ\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006HÆ\u0003J%\u0010\u0011\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0006\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0014\u001a\u00020\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0013R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/wecloud/load/lib/SoDownloadRequest;", "Landroid/os/Parcelable;", "soZipList", "", "Lcom/wecloud/load/lib/bean/SoZipInfo;", "controlConfig", "Lcom/wecloud/load/lib/bean/SoLoadControlConfig;", "<init>", "(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;)V", "getSoZipList", "()Ljava/util/List;", "getControlConfig", "()Lcom/wecloud/load/lib/bean/SoLoadControlConfig;", "isValid", "", "component1", "component2", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final /* data */ class SoDownloadRequest implements Parcelable {
    public static final Parcelable.Creator<SoDownloadRequest> CREATOR = new a();
    private final SoLoadControlConfig controlConfig;
    private final List<SoZipInfo> soZipList;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SoDownloadRequest createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            int i11 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i11);
            for (int i12 = 0; i12 != i11; i12++) {
                arrayList.add(SoZipInfo.CREATOR.createFromParcel(parcel));
            }
            return new SoDownloadRequest(arrayList, parcel.readInt() == 0 ? null : SoLoadControlConfig.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SoDownloadRequest[] newArray(int i11) {
            return new SoDownloadRequest[i11];
        }
    }

    public SoDownloadRequest(List<SoZipInfo> soZipList, SoLoadControlConfig soLoadControlConfig) {
        Intrinsics.h(soZipList, "soZipList");
        this.soZipList = soZipList;
        this.controlConfig = soLoadControlConfig;
    }

    public /* synthetic */ SoDownloadRequest(List list, SoLoadControlConfig soLoadControlConfig, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i11 & 2) != 0 ? null : soLoadControlConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SoDownloadRequest copy$default(SoDownloadRequest soDownloadRequest, List list, SoLoadControlConfig soLoadControlConfig, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = soDownloadRequest.soZipList;
        }
        if ((i11 & 2) != 0) {
            soLoadControlConfig = soDownloadRequest.controlConfig;
        }
        return soDownloadRequest.copy(list, soLoadControlConfig);
    }

    public final List<SoZipInfo> component1() {
        return this.soZipList;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final SoLoadControlConfig getControlConfig() {
        return this.controlConfig;
    }

    public final SoDownloadRequest copy(List<SoZipInfo> soZipList, SoLoadControlConfig controlConfig) {
        Intrinsics.h(soZipList, "soZipList");
        return new SoDownloadRequest(soZipList, controlConfig);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SoDownloadRequest)) {
            return false;
        }
        SoDownloadRequest soDownloadRequest = (SoDownloadRequest) other;
        return Intrinsics.c(this.soZipList, soDownloadRequest.soZipList) && Intrinsics.c(this.controlConfig, soDownloadRequest.controlConfig);
    }

    public final SoLoadControlConfig getControlConfig() {
        return this.controlConfig;
    }

    public final List<SoZipInfo> getSoZipList() {
        return this.soZipList;
    }

    public int hashCode() {
        int iHashCode = this.soZipList.hashCode() * 31;
        SoLoadControlConfig soLoadControlConfig = this.controlConfig;
        return iHashCode + (soLoadControlConfig == null ? 0 : soLoadControlConfig.hashCode());
    }

    public final boolean isValid() {
        List<String> so_names;
        if (this.soZipList.isEmpty()) {
            return false;
        }
        List<SoZipInfo> list = this.soZipList;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (SoZipInfo soZipInfo : list) {
                if (StringsKt.q0(soZipInfo.getZip_url()) || (so_names = soZipInfo.getSo_names()) == null || so_names.isEmpty()) {
                    return false;
                }
            }
        }
        return true;
    }

    public String toString() {
        return "SoDownloadRequest(soZipList=" + this.soZipList + ", controlConfig=" + this.controlConfig + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<SoZipInfo> list = this.soZipList;
        dest.writeInt(list.size());
        Iterator<SoZipInfo> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
        SoLoadControlConfig soLoadControlConfig = this.controlConfig;
        if (soLoadControlConfig == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            soLoadControlConfig.writeToParcel(dest, flags);
        }
    }
}
