package com.transsion.shorttv.order.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.blankj.utilcode.util.o;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Reader;
import kotlin.Metadata;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ResponseBody;
import retrofit2.HttpException;
import retrofit2.j0;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\b\u0087\b\u0018\u0000 &2\u00020\u0001:\u0001'B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0012J.\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0012J\u0010\u0010\u0018\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0010J\u001a\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019HÖ\u0003¢\u0006\u0004\b\u001c\u0010\u001dR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u001e\u001a\u0004\b\u001f\u0010\u0012\"\u0004\b \u0010!R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u001e\u001a\u0004\b\"\u0010\u0012\"\u0004\b#\u0010!R\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u001e\u001a\u0004\b$\u0010\u0012\"\u0004\b%\u0010!¨\u0006("}, d2 = {"Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;", "Landroid/os/Parcelable;", "", "message", "code", "reason", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/os/Parcel;", "dest", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/String;", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;", "toString", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getMessage", "setMessage", "(Ljava/lang/String;)V", "getCode", "setCode", "getReason", "setReason", "Companion", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HttpErrorBodyBean implements Parcelable {
    private String code;
    private String message;
    private String reason;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Parcelable.Creator<HttpErrorBodyBean> CREATOR = new b();

    /* JADX INFO: renamed from: com.transsion.shorttv.order.bean.HttpErrorBodyBean$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final HttpErrorBodyBean a(HttpException httpException) {
            String strE;
            Reader readerCharStream;
            Intrinsics.h(httpException, "httpException");
            HttpErrorBodyBean httpErrorBodyBean = null;
            try {
                j0<?> j0VarResponse = httpException.response();
                ResponseBody responseBodyD = j0VarResponse != null ? j0VarResponse.d() : null;
                if (responseBodyD == null || (readerCharStream = responseBodyD.charStream()) == null || (strE = TextStreamsKt.e(readerCharStream)) == null || strE.length() <= 0) {
                    strE = null;
                }
                if (strE != null) {
                    httpErrorBodyBean = (HttpErrorBodyBean) o.f().fromJson(strE, HttpErrorBodyBean.class);
                }
            } catch (Exception unused) {
            }
            if (httpErrorBodyBean != null && httpErrorBodyBean.getCode().length() > 0) {
                return httpErrorBodyBean;
            }
            String strValueOf = String.valueOf(httpException.code());
            String strMessage = httpException.message();
            if (strMessage == null) {
                strMessage = "default_msg";
            }
            return new HttpErrorBodyBean(strMessage, strValueOf, null, 4, null);
        }
    }

    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HttpErrorBodyBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new HttpErrorBodyBean(parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final HttpErrorBodyBean[] newArray(int i11) {
            return new HttpErrorBodyBean[i11];
        }
    }

    public HttpErrorBodyBean() {
        this(null, null, null, 7, null);
    }

    public HttpErrorBodyBean(String message, String code, String reason) {
        Intrinsics.h(message, "message");
        Intrinsics.h(code, "code");
        Intrinsics.h(reason, "reason");
        this.message = message;
        this.code = code;
        this.reason = reason;
    }

    public /* synthetic */ HttpErrorBodyBean(String str, String str2, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? "" : str2, (i11 & 4) != 0 ? "" : str3);
    }

    public static /* synthetic */ HttpErrorBodyBean copy$default(HttpErrorBodyBean httpErrorBodyBean, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = httpErrorBodyBean.message;
        }
        if ((i11 & 2) != 0) {
            str2 = httpErrorBodyBean.code;
        }
        if ((i11 & 4) != 0) {
            str3 = httpErrorBodyBean.reason;
        }
        return httpErrorBodyBean.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getReason() {
        return this.reason;
    }

    public final HttpErrorBodyBean copy(String message, String code, String reason) {
        Intrinsics.h(message, "message");
        Intrinsics.h(code, "code");
        Intrinsics.h(reason, "reason");
        return new HttpErrorBodyBean(message, code, reason);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
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
        return Intrinsics.c(this.message, httpErrorBodyBean.message) && Intrinsics.c(this.code, httpErrorBodyBean.code) && Intrinsics.c(this.reason, httpErrorBodyBean.reason);
    }

    public final String getCode() {
        return this.code;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getReason() {
        return this.reason;
    }

    public int hashCode() {
        return (((this.message.hashCode() * 31) + this.code.hashCode()) * 31) + this.reason.hashCode();
    }

    public final void setCode(String str) {
        Intrinsics.h(str, "<set-?>");
        this.code = str;
    }

    public final void setMessage(String str) {
        Intrinsics.h(str, "<set-?>");
        this.message = str;
    }

    public final void setReason(String str) {
        Intrinsics.h(str, "<set-?>");
        this.reason = str;
    }

    public String toString() {
        return "HttpErrorBodyBean(message=" + this.message + ", code=" + this.code + ", reason=" + this.reason + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.message);
        dest.writeString(this.code);
        dest.writeString(this.reason);
    }
}
