package com.transsion.fission;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0011H\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/transsion/fission/WebViewCacheConfigData;", "Landroid/os/Parcelable;", "htmlUrl", "", "zipUrl", "zipMd5", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getHtmlUrl", "()Ljava/lang/String;", "setHtmlUrl", "(Ljava/lang/String;)V", "getZipUrl", "setZipUrl", "getZipMd5", "setZipMd5", "describeContents", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Fission_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class WebViewCacheConfigData implements Parcelable {
    public static final Parcelable.Creator<WebViewCacheConfigData> CREATOR = new a();
    private String htmlUrl;
    private String zipMd5;
    private String zipUrl;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final WebViewCacheConfigData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new WebViewCacheConfigData(parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final WebViewCacheConfigData[] newArray(int i11) {
            return new WebViewCacheConfigData[i11];
        }
    }

    public WebViewCacheConfigData() {
        this(null, null, null, 7, null);
    }

    public WebViewCacheConfigData(String str, String str2, String str3) {
        this.htmlUrl = str;
        this.zipUrl = str2;
        this.zipMd5 = str3;
    }

    public /* synthetic */ WebViewCacheConfigData(String str, String str2, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getHtmlUrl() {
        return this.htmlUrl;
    }

    public String getZipMd5() {
        return this.zipMd5;
    }

    public String getZipUrl() {
        return this.zipUrl;
    }

    public void setHtmlUrl(String str) {
        this.htmlUrl = str;
    }

    public void setZipMd5(String str) {
        this.zipMd5 = str;
    }

    public void setZipUrl(String str) {
        this.zipUrl = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.htmlUrl);
        dest.writeString(this.zipUrl);
        dest.writeString(this.zipMd5);
    }
}
