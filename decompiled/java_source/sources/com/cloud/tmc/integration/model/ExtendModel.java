package com.cloud.tmc.integration.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000  2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001 B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\tH\u0016J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001bH\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\rR$\u0010\u0011\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000b\"\u0004\b\u0019\u0010\r¨\u0006!"}, d2 = {"Lcom/cloud/tmc/integration/model/ExtendModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "exclusiveLogoUrl", "", "getExclusiveLogoUrl", "()Ljava/lang/String;", "setExclusiveLogoUrl", "(Ljava/lang/String;)V", "h5Url", "getH5Url", "setH5Url", "jumpUrlWhitelist", "", "getJumpUrlWhitelist", "()Ljava/util/List;", "setJumpUrlWhitelist", "(Ljava/util/List;)V", "offlinePackageVersion", "getOfflinePackageVersion", "setOfflinePackageVersion", "describeContents", "", "toString", "writeToParcel", "", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ExtendModel extends BaseBean implements Serializable, Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String exclusiveLogoUrl;
    private String h5Url;
    private List<String> jumpUrlWhitelist;
    private String offlinePackageVersion;

    /* JADX INFO: renamed from: com.cloud.tmc.integration.model.ExtendModel$CREATOR, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/model/ExtendModel$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/model/ExtendModel;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/model/ExtendModel;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<ExtendModel> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ExtendModel createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new ExtendModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ExtendModel[] newArray(int size) {
            return new ExtendModel[size];
        }
    }

    public ExtendModel() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ExtendModel(Parcel parcel) {
        this();
        Intrinsics.h(parcel, "parcel");
        this.h5Url = parcel.readString();
        this.exclusiveLogoUrl = parcel.readString();
        this.offlinePackageVersion = parcel.readString();
        this.jumpUrlWhitelist = parcel.createStringArrayList();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getExclusiveLogoUrl() {
        return this.exclusiveLogoUrl;
    }

    public final String getH5Url() {
        return this.h5Url;
    }

    public final List<String> getJumpUrlWhitelist() {
        return this.jumpUrlWhitelist;
    }

    public final String getOfflinePackageVersion() {
        return this.offlinePackageVersion;
    }

    public final void setExclusiveLogoUrl(String str) {
        this.exclusiveLogoUrl = str;
    }

    public final void setH5Url(String str) {
        this.h5Url = str;
    }

    public final void setJumpUrlWhitelist(List<String> list) {
        this.jumpUrlWhitelist = list;
    }

    public final void setOfflinePackageVersion(String str) {
        this.offlinePackageVersion = str;
    }

    public String toString() {
        return "ExtendModel(h5Url=" + this.h5Url + ", exclusiveLogoUrl=" + this.exclusiveLogoUrl + ", offlinePackageVersion=" + this.offlinePackageVersion + ", jumpUrlWhitelist=" + this.jumpUrlWhitelist + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeString(this.h5Url);
        parcel.writeString(this.exclusiveLogoUrl);
        parcel.writeString(this.offlinePackageVersion);
        parcel.writeStringList(this.jumpUrlWhitelist);
    }
}
