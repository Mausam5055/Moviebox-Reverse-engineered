package com.tn.lib.net.exception;

import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bB%\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\nJ\b\u0010\u0013\u001a\u00020\u0006H\u0016R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000f¨\u0006\u0014"}, d2 = {"Lcom/tn/lib/net/exception/ApiException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "throwable", "", "code", "", "<init>", "(Ljava/lang/Throwable;Ljava/lang/String;)V", NotificationCompat.CATEGORY_MESSAGE, "(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V", "errMsg", "getErrMsg", "()Ljava/lang/String;", "setErrMsg", "(Ljava/lang/String;)V", NativeComponentConstants.KEY_COMPONENT_ERRCODE, "getErrCode", "setErrCode", "toString", "lib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ApiException extends Exception {
    private String errCode;
    private String errMsg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApiException(Throwable throwable, String str) {
        super(throwable);
        Intrinsics.h(throwable, "throwable");
        this.errCode = str;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApiException(Throwable throwable, String str, String str2) {
        super(throwable);
        Intrinsics.h(throwable, "throwable");
        this.errCode = str;
        this.errMsg = str2;
    }

    public final String getErrCode() {
        return this.errCode;
    }

    public final String getErrMsg() {
        return this.errMsg;
    }

    public final void setErrCode(String str) {
        this.errCode = str;
    }

    public final void setErrMsg(String str) {
        this.errMsg = str;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "ApiException(errMsg='" + this.errMsg + "', errCode='" + this.errCode + "')";
    }
}
