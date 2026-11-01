package com.wecloud.load.lib.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0015\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003JI\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u001cHÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u001cR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u0012¨\u0006("}, d2 = {"Lcom/wecloud/load/lib/bean/SoZipInfo;", "Landroid/os/Parcelable;", "zip_url", "", "md5", "so_names", "", "method_name", "input", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getZip_url", "()Ljava/lang/String;", "getMd5", "getSo_names", "()Ljava/util/List;", "getMethod_name", "setMethod_name", "(Ljava/lang/String;)V", "getInput", "setInput", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SoZipInfo implements Parcelable {
    public static final Parcelable.Creator<SoZipInfo> CREATOR = new a();
    private String input;
    private final String md5;
    private String method_name;
    private final List<String> so_names;
    private final String zip_url;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SoZipInfo createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new SoZipInfo(parcel.readString(), parcel.readString(), parcel.createStringArrayList(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SoZipInfo[] newArray(int i11) {
            return new SoZipInfo[i11];
        }
    }

    public SoZipInfo(String zip_url, String str, List<String> list, String str2, String str3) {
        Intrinsics.h(zip_url, "zip_url");
        this.zip_url = zip_url;
        this.md5 = str;
        this.so_names = list;
        this.method_name = str2;
        this.input = str3;
    }

    public /* synthetic */ SoZipInfo(String str, String str2, List list, String str3, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : list, str3, str4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SoZipInfo copy$default(SoZipInfo soZipInfo, String str, String str2, List list, String str3, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = soZipInfo.zip_url;
        }
        if ((i11 & 2) != 0) {
            str2 = soZipInfo.md5;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            list = soZipInfo.so_names;
        }
        List list2 = list;
        if ((i11 & 8) != 0) {
            str3 = soZipInfo.method_name;
        }
        String str6 = str3;
        if ((i11 & 16) != 0) {
            str4 = soZipInfo.input;
        }
        return soZipInfo.copy(str, str5, list2, str6, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getZip_url() {
        return this.zip_url;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMd5() {
        return this.md5;
    }

    public final List<String> component3() {
        return this.so_names;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getMethod_name() {
        return this.method_name;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getInput() {
        return this.input;
    }

    public final SoZipInfo copy(String zip_url, String md5, List<String> so_names, String method_name, String input) {
        Intrinsics.h(zip_url, "zip_url");
        return new SoZipInfo(zip_url, md5, so_names, method_name, input);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SoZipInfo)) {
            return false;
        }
        SoZipInfo soZipInfo = (SoZipInfo) other;
        return Intrinsics.c(this.zip_url, soZipInfo.zip_url) && Intrinsics.c(this.md5, soZipInfo.md5) && Intrinsics.c(this.so_names, soZipInfo.so_names) && Intrinsics.c(this.method_name, soZipInfo.method_name) && Intrinsics.c(this.input, soZipInfo.input);
    }

    public final String getInput() {
        return this.input;
    }

    public final String getMd5() {
        return this.md5;
    }

    public final String getMethod_name() {
        return this.method_name;
    }

    public final List<String> getSo_names() {
        return this.so_names;
    }

    public final String getZip_url() {
        return this.zip_url;
    }

    public int hashCode() {
        int iHashCode = this.zip_url.hashCode() * 31;
        String str = this.md5;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        List<String> list = this.so_names;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        String str2 = this.method_name;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.input;
        return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
    }

    public final void setInput(String str) {
        this.input = str;
    }

    public final void setMethod_name(String str) {
        this.method_name = str;
    }

    public String toString() {
        return "SoZipInfo(zip_url=" + this.zip_url + ", md5=" + this.md5 + ", so_names=" + this.so_names + ", method_name=" + this.method_name + ", input=" + this.input + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.zip_url);
        dest.writeString(this.md5);
        dest.writeStringList(this.so_names);
        dest.writeString(this.method_name);
        dest.writeString(this.input);
    }
}
