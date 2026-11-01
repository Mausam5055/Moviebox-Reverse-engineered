package com.transsion.lib_web.zip.db;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\bHÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003JG\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u001b\u001a\u00020\bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020\bHÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\r¨\u0006'"}, d2 = {"Lcom/transsion/lib_web/zip/db/WebViewCacheConfigData;", "Landroid/os/Parcelable;", FrameworkConstants.GLOBAL_DATA_KEY_SCENE, "", "htmlUrl", "zipUrl", "zipMd5", "sourceType", "", "updateTime", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V", "getScene", "()Ljava/lang/String;", "getHtmlUrl", "getZipUrl", "getZipMd5", "getSourceType", "()I", "getUpdateTime", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class WebViewCacheConfigData implements Parcelable {
    public static final Parcelable.Creator<WebViewCacheConfigData> CREATOR = new a();
    private final String htmlUrl;
    private final String scene;
    private final int sourceType;
    private final String updateTime;
    private final String zipMd5;
    private final String zipUrl;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final WebViewCacheConfigData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new WebViewCacheConfigData(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final WebViewCacheConfigData[] newArray(int i11) {
            return new WebViewCacheConfigData[i11];
        }
    }

    public WebViewCacheConfigData(String scene, String htmlUrl, String zipUrl, String zipMd5, int i11, String str) {
        Intrinsics.h(scene, "scene");
        Intrinsics.h(htmlUrl, "htmlUrl");
        Intrinsics.h(zipUrl, "zipUrl");
        Intrinsics.h(zipMd5, "zipMd5");
        this.scene = scene;
        this.htmlUrl = htmlUrl;
        this.zipUrl = zipUrl;
        this.zipMd5 = zipMd5;
        this.sourceType = i11;
        this.updateTime = str;
    }

    public static /* synthetic */ WebViewCacheConfigData copy$default(WebViewCacheConfigData webViewCacheConfigData, String str, String str2, String str3, String str4, int i11, String str5, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = webViewCacheConfigData.scene;
        }
        if ((i12 & 2) != 0) {
            str2 = webViewCacheConfigData.htmlUrl;
        }
        String str6 = str2;
        if ((i12 & 4) != 0) {
            str3 = webViewCacheConfigData.zipUrl;
        }
        String str7 = str3;
        if ((i12 & 8) != 0) {
            str4 = webViewCacheConfigData.zipMd5;
        }
        String str8 = str4;
        if ((i12 & 16) != 0) {
            i11 = webViewCacheConfigData.sourceType;
        }
        int i13 = i11;
        if ((i12 & 32) != 0) {
            str5 = webViewCacheConfigData.updateTime;
        }
        return webViewCacheConfigData.copy(str, str6, str7, str8, i13, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getScene() {
        return this.scene;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getHtmlUrl() {
        return this.htmlUrl;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getZipUrl() {
        return this.zipUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getZipMd5() {
        return this.zipMd5;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getSourceType() {
        return this.sourceType;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getUpdateTime() {
        return this.updateTime;
    }

    public final WebViewCacheConfigData copy(String scene, String htmlUrl, String zipUrl, String zipMd5, int sourceType, String updateTime) {
        Intrinsics.h(scene, "scene");
        Intrinsics.h(htmlUrl, "htmlUrl");
        Intrinsics.h(zipUrl, "zipUrl");
        Intrinsics.h(zipMd5, "zipMd5");
        return new WebViewCacheConfigData(scene, htmlUrl, zipUrl, zipMd5, sourceType, updateTime);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WebViewCacheConfigData)) {
            return false;
        }
        WebViewCacheConfigData webViewCacheConfigData = (WebViewCacheConfigData) other;
        return Intrinsics.c(this.scene, webViewCacheConfigData.scene) && Intrinsics.c(this.htmlUrl, webViewCacheConfigData.htmlUrl) && Intrinsics.c(this.zipUrl, webViewCacheConfigData.zipUrl) && Intrinsics.c(this.zipMd5, webViewCacheConfigData.zipMd5) && this.sourceType == webViewCacheConfigData.sourceType && Intrinsics.c(this.updateTime, webViewCacheConfigData.updateTime);
    }

    public final String getHtmlUrl() {
        return this.htmlUrl;
    }

    public final String getScene() {
        return this.scene;
    }

    public final int getSourceType() {
        return this.sourceType;
    }

    public final String getUpdateTime() {
        return this.updateTime;
    }

    public final String getZipMd5() {
        return this.zipMd5;
    }

    public final String getZipUrl() {
        return this.zipUrl;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.scene.hashCode() * 31) + this.htmlUrl.hashCode()) * 31) + this.zipUrl.hashCode()) * 31) + this.zipMd5.hashCode()) * 31) + this.sourceType) * 31;
        String str = this.updateTime;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "WebViewCacheConfigData(scene=" + this.scene + ", htmlUrl=" + this.htmlUrl + ", zipUrl=" + this.zipUrl + ", zipMd5=" + this.zipMd5 + ", sourceType=" + this.sourceType + ", updateTime=" + this.updateTime + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.scene);
        dest.writeString(this.htmlUrl);
        dest.writeString(this.zipUrl);
        dest.writeString(this.zipMd5);
        dest.writeInt(this.sourceType);
        dest.writeString(this.updateTime);
    }
}
