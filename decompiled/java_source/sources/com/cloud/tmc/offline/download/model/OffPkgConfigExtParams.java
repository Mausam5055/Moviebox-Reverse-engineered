package com.cloud.tmc.offline.download.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u0000 '2\u00020\u00012\u00020\u0002:\u0001'B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B?\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007¢\u0006\u0002\u0010\u000fJ\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u0014J\u0011\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007HÆ\u0003JP\u0010\u001b\u001a\u00020\u00002\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001cJ\b\u0010\u001d\u001a\u00020\u001eH\u0016J\u0013\u0010\u001f\u001a\u00020\f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u001eHÖ\u0001J\t\u0010#\u001a\u00020\bHÖ\u0001J\u0018\u0010$\u001a\u00020%2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u001eH\u0016R\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011¨\u0006("}, d2 = {"Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "authorizedMiniApp", "", "", "packageInclude", "Lcom/cloud/tmc/offline/download/model/PackageInclude;", "verifyServerFile", "", "verifyServerFileMetadata", "Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;", "(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)V", "getAuthorizedMiniApp", "()Ljava/util/List;", "getPackageInclude", "getVerifyServerFile", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getVerifyServerFileMetadata", "component1", "component2", "component3", "component4", "copy", "(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "flags", "CREATOR", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class OffPkgConfigExtParams extends BaseBean implements Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final List<String> authorizedMiniApp;
    private final List<PackageInclude> packageInclude;
    private final Boolean verifyServerFile;
    private final List<VerifyServerFileMetadata> verifyServerFileMetadata;

    /* JADX INFO: renamed from: com.cloud.tmc.offline.download.model.OffPkgConfigExtParams$CREATOR, reason: from kotlin metadata */
    @kotlin.Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<OffPkgConfigExtParams> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OffPkgConfigExtParams createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new OffPkgConfigExtParams(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OffPkgConfigExtParams[] newArray(int size) {
            return new OffPkgConfigExtParams[size];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public OffPkgConfigExtParams(Parcel parcel) {
        Intrinsics.h(parcel, "parcel");
        ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(PackageInclude.INSTANCE);
        Object value = parcel.readValue(Boolean.TYPE.getClassLoader());
        this(arrayListCreateStringArrayList, arrayListCreateTypedArrayList, value instanceof Boolean ? (Boolean) value : null, parcel.createTypedArrayList(VerifyServerFileMetadata.INSTANCE));
    }

    public OffPkgConfigExtParams(List<String> list, List<PackageInclude> list2, Boolean bool, List<VerifyServerFileMetadata> list3) {
        this.authorizedMiniApp = list;
        this.packageInclude = list2;
        this.verifyServerFile = bool;
        this.verifyServerFileMetadata = list3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OffPkgConfigExtParams copy$default(OffPkgConfigExtParams offPkgConfigExtParams, List list, List list2, Boolean bool, List list3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = offPkgConfigExtParams.authorizedMiniApp;
        }
        if ((i11 & 2) != 0) {
            list2 = offPkgConfigExtParams.packageInclude;
        }
        if ((i11 & 4) != 0) {
            bool = offPkgConfigExtParams.verifyServerFile;
        }
        if ((i11 & 8) != 0) {
            list3 = offPkgConfigExtParams.verifyServerFileMetadata;
        }
        return offPkgConfigExtParams.copy(list, list2, bool, list3);
    }

    public final List<String> component1() {
        return this.authorizedMiniApp;
    }

    public final List<PackageInclude> component2() {
        return this.packageInclude;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Boolean getVerifyServerFile() {
        return this.verifyServerFile;
    }

    public final List<VerifyServerFileMetadata> component4() {
        return this.verifyServerFileMetadata;
    }

    public final OffPkgConfigExtParams copy(List<String> authorizedMiniApp, List<PackageInclude> packageInclude, Boolean verifyServerFile, List<VerifyServerFileMetadata> verifyServerFileMetadata) {
        return new OffPkgConfigExtParams(authorizedMiniApp, packageInclude, verifyServerFile, verifyServerFileMetadata);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OffPkgConfigExtParams)) {
            return false;
        }
        OffPkgConfigExtParams offPkgConfigExtParams = (OffPkgConfigExtParams) other;
        return Intrinsics.c(this.authorizedMiniApp, offPkgConfigExtParams.authorizedMiniApp) && Intrinsics.c(this.packageInclude, offPkgConfigExtParams.packageInclude) && Intrinsics.c(this.verifyServerFile, offPkgConfigExtParams.verifyServerFile) && Intrinsics.c(this.verifyServerFileMetadata, offPkgConfigExtParams.verifyServerFileMetadata);
    }

    public final List<String> getAuthorizedMiniApp() {
        return this.authorizedMiniApp;
    }

    public final List<PackageInclude> getPackageInclude() {
        return this.packageInclude;
    }

    public final Boolean getVerifyServerFile() {
        return this.verifyServerFile;
    }

    public final List<VerifyServerFileMetadata> getVerifyServerFileMetadata() {
        return this.verifyServerFileMetadata;
    }

    public int hashCode() {
        List<String> list = this.authorizedMiniApp;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<PackageInclude> list2 = this.packageInclude;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        Boolean bool = this.verifyServerFile;
        int iHashCode3 = (iHashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        List<VerifyServerFileMetadata> list3 = this.verifyServerFileMetadata;
        return iHashCode3 + (list3 != null ? list3.hashCode() : 0);
    }

    public String toString() {
        return "OffPkgConfigExtParams(authorizedMiniApp=" + this.authorizedMiniApp + ", packageInclude=" + this.packageInclude + ", verifyServerFile=" + this.verifyServerFile + ", verifyServerFileMetadata=" + this.verifyServerFileMetadata + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeStringList(this.authorizedMiniApp);
        parcel.writeTypedList(this.packageInclude);
        parcel.writeValue(this.verifyServerFile);
        parcel.writeTypedList(this.verifyServerFileMetadata);
    }
}
