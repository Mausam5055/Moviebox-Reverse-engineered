package com.transsion.web.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J1\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\u0018\u001a\u00020\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\u0016\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0019R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\fR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\f¨\u0006%"}, d2 = {"Lcom/transsion/web/model/WebDownloadBean;", "Landroid/os/Parcelable;", "method", "", "downloadUrl", "jsUrl", "name", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getMethod", "()Ljava/lang/String;", "setMethod", "(Ljava/lang/String;)V", "getDownloadUrl", "setDownloadUrl", "getJsUrl", "setJsUrl", "getName", "setName", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Web_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class WebDownloadBean implements Parcelable {
    public static final Parcelable.Creator<WebDownloadBean> CREATOR = new a();
    private String downloadUrl;
    private String jsUrl;
    private String method;
    private String name;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final WebDownloadBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new WebDownloadBean(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final WebDownloadBean[] newArray(int i11) {
            return new WebDownloadBean[i11];
        }
    }

    public WebDownloadBean(String method, String downloadUrl, String jsUrl, String name) {
        Intrinsics.h(method, "method");
        Intrinsics.h(downloadUrl, "downloadUrl");
        Intrinsics.h(jsUrl, "jsUrl");
        Intrinsics.h(name, "name");
        this.method = method;
        this.downloadUrl = downloadUrl;
        this.jsUrl = jsUrl;
        this.name = name;
    }

    public static /* synthetic */ WebDownloadBean copy$default(WebDownloadBean webDownloadBean, String str, String str2, String str3, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = webDownloadBean.method;
        }
        if ((i11 & 2) != 0) {
            str2 = webDownloadBean.downloadUrl;
        }
        if ((i11 & 4) != 0) {
            str3 = webDownloadBean.jsUrl;
        }
        if ((i11 & 8) != 0) {
            str4 = webDownloadBean.name;
        }
        return webDownloadBean.copy(str, str2, str3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMethod() {
        return this.method;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getJsUrl() {
        return this.jsUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getName() {
        return this.name;
    }

    public final WebDownloadBean copy(String method, String downloadUrl, String jsUrl, String name) {
        Intrinsics.h(method, "method");
        Intrinsics.h(downloadUrl, "downloadUrl");
        Intrinsics.h(jsUrl, "jsUrl");
        Intrinsics.h(name, "name");
        return new WebDownloadBean(method, downloadUrl, jsUrl, name);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WebDownloadBean)) {
            return false;
        }
        WebDownloadBean webDownloadBean = (WebDownloadBean) other;
        return Intrinsics.c(this.method, webDownloadBean.method) && Intrinsics.c(this.downloadUrl, webDownloadBean.downloadUrl) && Intrinsics.c(this.jsUrl, webDownloadBean.jsUrl) && Intrinsics.c(this.name, webDownloadBean.name);
    }

    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    public final String getJsUrl() {
        return this.jsUrl;
    }

    public final String getMethod() {
        return this.method;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return (((((this.method.hashCode() * 31) + this.downloadUrl.hashCode()) * 31) + this.jsUrl.hashCode()) * 31) + this.name.hashCode();
    }

    public final void setDownloadUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.downloadUrl = str;
    }

    public final void setJsUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.jsUrl = str;
    }

    public final void setMethod(String str) {
        Intrinsics.h(str, "<set-?>");
        this.method = str;
    }

    public final void setName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.name = str;
    }

    public String toString() {
        return "WebDownloadBean(method=" + this.method + ", downloadUrl=" + this.downloadUrl + ", jsUrl=" + this.jsUrl + ", name=" + this.name + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.method);
        dest.writeString(this.downloadUrl);
        dest.writeString(this.jsUrl);
        dest.writeString(this.name);
    }
}
