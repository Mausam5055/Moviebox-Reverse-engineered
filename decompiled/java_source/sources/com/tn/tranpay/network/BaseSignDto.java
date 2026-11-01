package com.tn.tranpay.network;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.tn.tranpay.helper.d;
import com.tn.tranpay.network.BaseContent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u0007\b\u0016¢\u0006\u0002\u0010\u0004B+\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\nJ\u001b\u0010\u000f\u001a\u0004\u0018\u00018\u00002\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c¢\u0006\u0002\u0010\u001dJ\b\u0010\u001e\u001a\u00020\u0006H\u0016R \u0010\b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u000f\u001a\u0004\u0018\u00018\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\f\"\u0004\b\u0016\u0010\u000eR\u001e\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\u000eR \u0010\t\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000e¨\u0006\u001f"}, d2 = {"Lcom/tn/tranpay/network/BaseSignDto;", "T", "Lcom/tn/tranpay/network/BaseContent;", "Ljava/io/Serializable;", "()V", "responseCode", "", "responseMessage", "content", TmcConstants.EXTRA_APP_DEV_TOKEN, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getContent", "()Ljava/lang/String;", "setContent", "(Ljava/lang/String;)V", "parseContent", "getParseContent", "()Lcom/tn/tranpay/network/BaseContent;", "setParseContent", "(Lcom/tn/tranpay/network/BaseContent;)V", "Lcom/tn/tranpay/network/BaseContent;", "getResponseCode", "setResponseCode", "getResponseMessage", "setResponseMessage", "getSign", "setSign", "contentClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Lcom/tn/tranpay/network/BaseContent;", "toString", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class BaseSignDto<T extends BaseContent> implements Serializable {

    @SerializedName("content")
    private String content;
    private T parseContent;

    /* JADX INFO: renamed from: responseCode, reason: from kotlin metadata and from toString */
    @SerializedName("responseCode")
    private String code;

    /* JADX INFO: renamed from: responseMessage, reason: from kotlin metadata and from toString */
    @SerializedName("responseMessage")
    private String message;

    @SerializedName(TmcConstants.EXTRA_APP_DEV_TOKEN)
    private String sign;

    public BaseSignDto() {
        this.code = "";
        this.message = "";
    }

    public BaseSignDto(String responseCode, String responseMessage, String str, String str2) {
        Intrinsics.h(responseCode, "responseCode");
        Intrinsics.h(responseMessage, "responseMessage");
        this.code = responseCode;
        this.message = responseMessage;
        this.content = str;
        this.sign = str2;
    }

    public final String getContent() {
        return this.content;
    }

    public final T getParseContent() {
        return this.parseContent;
    }

    /* JADX INFO: renamed from: getResponseCode, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: getResponseMessage, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    public final String getSign() {
        return this.sign;
    }

    public final T parseContent(Class<T> contentClass) {
        String strA;
        Intrinsics.h(contentClass, "contentClass");
        String str = this.content;
        if (str == null || (strA = d.a(str)) == null) {
            return null;
        }
        return (T) new Gson().fromJson(strA, (Class) contentClass);
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setParseContent(T t11) {
        this.parseContent = t11;
    }

    public final void setResponseCode(String str) {
        Intrinsics.h(str, "<set-?>");
        this.code = str;
    }

    public final void setResponseMessage(String str) {
        Intrinsics.h(str, "<set-?>");
        this.message = str;
    }

    public final void setSign(String str) {
        this.sign = str;
    }

    public String toString() {
        return "BaseSignDto(code='" + this.code + "', message=" + this.message + ", content=" + this.content + ")";
    }
}
