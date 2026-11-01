package com.transsion.web.bean;

import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001e\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u0017"}, d2 = {"Lcom/transsion/web/bean/JsCallbackData;", "Ljava/io/Serializable;", NotificationCompat.CATEGORY_MESSAGE, "", "code", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getMsg", "()Ljava/lang/String;", "setMsg", "(Ljava/lang/String;)V", "getCode", "setCode", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "Web_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class JsCallbackData implements Serializable {

    @SerializedName("code")
    private String code;

    @SerializedName("message")
    private String msg;

    /* JADX WARN: Multi-variable type inference failed */
    public JsCallbackData() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public JsCallbackData(String msg, String code) {
        Intrinsics.h(msg, "msg");
        Intrinsics.h(code, "code");
        this.msg = msg;
        this.code = code;
    }

    public /* synthetic */ JsCallbackData(String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? "" : str2);
    }

    public static /* synthetic */ JsCallbackData copy$default(JsCallbackData jsCallbackData, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = jsCallbackData.msg;
        }
        if ((i11 & 2) != 0) {
            str2 = jsCallbackData.code;
        }
        return jsCallbackData.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMsg() {
        return this.msg;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    public final JsCallbackData copy(String msg, String code) {
        Intrinsics.h(msg, "msg");
        Intrinsics.h(code, "code");
        return new JsCallbackData(msg, code);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof JsCallbackData)) {
            return false;
        }
        JsCallbackData jsCallbackData = (JsCallbackData) other;
        return Intrinsics.c(this.msg, jsCallbackData.msg) && Intrinsics.c(this.code, jsCallbackData.code);
    }

    public final String getCode() {
        return this.code;
    }

    public final String getMsg() {
        return this.msg;
    }

    public int hashCode() {
        return (this.msg.hashCode() * 31) + this.code.hashCode();
    }

    public final void setCode(String str) {
        Intrinsics.h(str, "<set-?>");
        this.code = str;
    }

    public final void setMsg(String str) {
        Intrinsics.h(str, "<set-?>");
        this.msg = str;
    }

    public String toString() {
        return "JsCallbackData(msg=" + this.msg + ", code=" + this.code + ")";
    }
}
