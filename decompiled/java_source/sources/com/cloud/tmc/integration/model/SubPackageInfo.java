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
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 )2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001)B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0005¢\u0006\u0002\u0010\u0007J\b\u0010#\u001a\u00020$H\u0016J\b\u0010%\u001a\u00020\tH\u0016J\u0018\u0010&\u001a\u00020'2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010(\u001a\u00020$H\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000b\"\u0004\b\u0016\u0010\rR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000b\"\u0004\b\u0019\u0010\rR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u000b\"\u0004\b\u001c\u0010\rR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u000b\"\u0004\b\u001f\u0010\rR\u001c\u0010 \u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u000b\"\u0004\b\"\u0010\r¨\u0006*"}, d2 = {"Lcom/cloud/tmc/integration/model/SubPackageInfo;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "name", "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "pages", "", "getPages", "()Ljava/util/List;", "setPages", "(Ljava/util/List;)V", "root", "getRoot", "setRoot", "subPackageUrl", "getSubPackageUrl", "setSubPackageUrl", "subPackageUrlMD5", "getSubPackageUrlMD5", "setSubPackageUrlMD5", "subUnzipFilePath", "getSubUnzipFilePath", "setSubUnzipFilePath", "subZipPath", "getSubZipPath", "setSubZipPath", "describeContents", "", "toString", "writeToParcel", "", "flag", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SubPackageInfo extends BaseBean implements Serializable, Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String name;
    private List<String> pages;
    private String root;
    private String subPackageUrl;
    private String subPackageUrlMD5;
    private String subUnzipFilePath;
    private String subZipPath;

    /* JADX INFO: renamed from: com.cloud.tmc.integration.model.SubPackageInfo$CREATOR, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/model/SubPackageInfo$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/model/SubPackageInfo;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/model/SubPackageInfo;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<SubPackageInfo> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SubPackageInfo createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new SubPackageInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SubPackageInfo[] newArray(int size) {
            return new SubPackageInfo[size];
        }
    }

    public SubPackageInfo() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubPackageInfo(Parcel parcel) {
        this();
        Intrinsics.h(parcel, "parcel");
        this.root = parcel.readString();
        this.name = parcel.readString();
        this.pages = parcel.createStringArrayList();
        this.subPackageUrl = parcel.readString();
        this.subPackageUrlMD5 = parcel.readString();
        this.subZipPath = parcel.readString();
        this.subUnzipFilePath = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getName() {
        return this.name;
    }

    public final List<String> getPages() {
        return this.pages;
    }

    public final String getRoot() {
        return this.root;
    }

    public final String getSubPackageUrl() {
        return this.subPackageUrl;
    }

    public final String getSubPackageUrlMD5() {
        return this.subPackageUrlMD5;
    }

    public final String getSubUnzipFilePath() {
        return this.subUnzipFilePath;
    }

    public final String getSubZipPath() {
        return this.subZipPath;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setPages(List<String> list) {
        this.pages = list;
    }

    public final void setRoot(String str) {
        this.root = str;
    }

    public final void setSubPackageUrl(String str) {
        this.subPackageUrl = str;
    }

    public final void setSubPackageUrlMD5(String str) {
        this.subPackageUrlMD5 = str;
    }

    public final void setSubUnzipFilePath(String str) {
        this.subUnzipFilePath = str;
    }

    public final void setSubZipPath(String str) {
        this.subZipPath = str;
    }

    public String toString() {
        return "SubPackageInfo(root=" + this.root + ", name=" + this.name + ", pages=" + this.pages + ", subPackageUrl=" + this.subPackageUrl + ", subPackageUrlMD5=" + this.subPackageUrlMD5 + ", subZipPath=" + this.subZipPath + ", subUnzipFilePath=" + this.subUnzipFilePath + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flag) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeString(this.root);
        parcel.writeString(this.name);
        parcel.writeStringList(this.pages);
        parcel.writeString(this.subPackageUrl);
        parcel.writeString(this.subPackageUrlMD5);
        parcel.writeString(this.subZipPath);
        parcel.writeString(this.subUnzipFilePath);
    }
}
