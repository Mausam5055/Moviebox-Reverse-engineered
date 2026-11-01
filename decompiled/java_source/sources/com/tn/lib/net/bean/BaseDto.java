package com.tn.lib.net.bean;

import androidx.core.app.NotificationCompat;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\t\b\u0016¢\u0006\u0004\b\u0003\u0010\u0004B+\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00018\u0000\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0003\u0010\nJ\b\u0010\u0018\u001a\u00020\u0006H\u0016R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\"\u0010\b\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001e\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\f\"\u0004\b\u0017\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/tn/lib/net/bean/BaseDto;", "T", "Ljava/io/Serializable;", "<init>", "()V", NotificationCompat.CATEGORY_MESSAGE, "", "code", "data", "reason", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V", "getMsg", "()Ljava/lang/String;", "setMsg", "(Ljava/lang/String;)V", "getCode", "setCode", "getData", "()Ljava/lang/Object;", "setData", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "getReason", "setReason", "toString", "lib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class BaseDto<T> implements Serializable {

    @SerializedName("code")
    private String code;

    @SerializedName("data")
    private T data;

    @SerializedName("message")
    private String msg;

    @SerializedName("reason")
    private String reason;

    public BaseDto() {
        this.msg = "";
        this.code = "";
        this.reason = "";
    }

    public BaseDto(String msg, String code, T t11, String reason) {
        Intrinsics.h(msg, "msg");
        Intrinsics.h(code, "code");
        Intrinsics.h(reason, "reason");
        this.msg = msg;
        this.code = code;
        this.data = t11;
        this.reason = reason;
    }

    public final String getCode() {
        return this.code;
    }

    public final T getData() {
        return this.data;
    }

    public final String getMsg() {
        return this.msg;
    }

    public final String getReason() {
        return this.reason;
    }

    public final void setCode(String str) {
        Intrinsics.h(str, "<set-?>");
        this.code = str;
    }

    public final void setData(T t11) {
        this.data = t11;
    }

    public final void setMsg(String str) {
        Intrinsics.h(str, "<set-?>");
        this.msg = str;
    }

    public final void setReason(String str) {
        Intrinsics.h(str, "<set-?>");
        this.reason = str;
    }

    public String toString() {
        return "BaseDto(msg='" + this.msg + "', code='" + this.code + "', data=" + this.data + ", reason=" + this.reason + ")";
    }
}
