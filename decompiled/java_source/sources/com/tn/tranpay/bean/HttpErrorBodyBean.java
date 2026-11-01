package com.tn.tranpay.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Keep
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000f\b\u0087\b\u0018\u0000 *2\u00020\u0001:\u0001+B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\nJ\u0010\u0010\f\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\nJ\u0010\u0010\r\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\r\u0010\nJ8\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\nJ\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u0013J \u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u001e\u0010\u001fR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010 \u001a\u0004\b!\u0010\n\"\u0004\b\"\u0010#R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010 \u001a\u0004\b$\u0010\n\"\u0004\b%\u0010#R\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010 \u001a\u0004\b&\u0010\n\"\u0004\b'\u0010#R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010 \u001a\u0004\b(\u0010\n\"\u0004\b)\u0010#¨\u0006,"}, d2 = {"Lcom/tn/tranpay/bean/HttpErrorBodyBean;", "Landroid/os/Parcelable;", "", "responseMessage", "responseCode", "content", TmcConstants.EXTRA_APP_DEV_TOKEN, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tn/tranpay/bean/HttpErrorBodyBean;", "toString", "", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getResponseMessage", "setResponseMessage", "(Ljava/lang/String;)V", "getResponseCode", "setResponseCode", "getContent", "setContent", "getSign", "setSign", "Companion", "a", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HttpErrorBodyBean implements Parcelable {
    private String content;
    private String responseCode;
    private String responseMessage;
    private String sign;
    public static final Parcelable.Creator<HttpErrorBodyBean> CREATOR = new b();

    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HttpErrorBodyBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new HttpErrorBodyBean(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final HttpErrorBodyBean[] newArray(int i11) {
            return new HttpErrorBodyBean[i11];
        }
    }

    public HttpErrorBodyBean() {
        this(null, null, null, null, 15, null);
    }

    public HttpErrorBodyBean(String responseMessage, String responseCode, String content, String sign) {
        Intrinsics.h(responseMessage, "responseMessage");
        Intrinsics.h(responseCode, "responseCode");
        Intrinsics.h(content, "content");
        Intrinsics.h(sign, "sign");
        this.responseMessage = responseMessage;
        this.responseCode = responseCode;
        this.content = content;
        this.sign = sign;
    }

    public /* synthetic */ HttpErrorBodyBean(String str, String str2, String str3, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? "" : str2, (i11 & 4) != 0 ? "" : str3, (i11 & 8) != 0 ? "" : str4);
    }

    public static /* synthetic */ HttpErrorBodyBean copy$default(HttpErrorBodyBean httpErrorBodyBean, String str, String str2, String str3, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = httpErrorBodyBean.responseMessage;
        }
        if ((i11 & 2) != 0) {
            str2 = httpErrorBodyBean.responseCode;
        }
        if ((i11 & 4) != 0) {
            str3 = httpErrorBodyBean.content;
        }
        if ((i11 & 8) != 0) {
            str4 = httpErrorBodyBean.sign;
        }
        return httpErrorBodyBean.copy(str, str2, str3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getResponseMessage() {
        return this.responseMessage;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getResponseCode() {
        return this.responseCode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getSign() {
        return this.sign;
    }

    public final HttpErrorBodyBean copy(String responseMessage, String responseCode, String content, String sign) {
        Intrinsics.h(responseMessage, "responseMessage");
        Intrinsics.h(responseCode, "responseCode");
        Intrinsics.h(content, "content");
        Intrinsics.h(sign, "sign");
        return new HttpErrorBodyBean(responseMessage, responseCode, content, sign);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HttpErrorBodyBean)) {
            return false;
        }
        HttpErrorBodyBean httpErrorBodyBean = (HttpErrorBodyBean) other;
        return Intrinsics.c(this.responseMessage, httpErrorBodyBean.responseMessage) && Intrinsics.c(this.responseCode, httpErrorBodyBean.responseCode) && Intrinsics.c(this.content, httpErrorBodyBean.content) && Intrinsics.c(this.sign, httpErrorBodyBean.sign);
    }

    public final String getContent() {
        return this.content;
    }

    public final String getResponseCode() {
        return this.responseCode;
    }

    public final String getResponseMessage() {
        return this.responseMessage;
    }

    public final String getSign() {
        return this.sign;
    }

    public int hashCode() {
        return (((((this.responseMessage.hashCode() * 31) + this.responseCode.hashCode()) * 31) + this.content.hashCode()) * 31) + this.sign.hashCode();
    }

    public final void setContent(String str) {
        Intrinsics.h(str, "<set-?>");
        this.content = str;
    }

    public final void setResponseCode(String str) {
        Intrinsics.h(str, "<set-?>");
        this.responseCode = str;
    }

    public final void setResponseMessage(String str) {
        Intrinsics.h(str, "<set-?>");
        this.responseMessage = str;
    }

    public final void setSign(String str) {
        Intrinsics.h(str, "<set-?>");
        this.sign = str;
    }

    public String toString() {
        return "HttpErrorBodyBean(responseMessage=" + this.responseMessage + ", responseCode=" + this.responseCode + ", content=" + this.content + ", sign=" + this.sign + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeString(this.responseMessage);
        parcel.writeString(this.responseCode);
        parcel.writeString(this.content);
        parcel.writeString(this.sign);
    }
}
