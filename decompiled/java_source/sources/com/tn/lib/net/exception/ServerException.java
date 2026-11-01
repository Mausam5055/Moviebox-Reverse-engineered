package com.tn.lib.net.exception;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001d\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\u000e\u001a\u00020\u0004H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/tn/lib/net/exception/ServerException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", NativeComponentConstants.KEY_COMPONENT_ERRCODE, "", "errMsg", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getErrCode", "()Ljava/lang/String;", "setErrCode", "(Ljava/lang/String;)V", "getErrMsg", "setErrMsg", "toString", "lib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ServerException extends RuntimeException {
    private String errCode;
    private String errMsg;

    public ServerException(String str, String str2) {
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
        return "ServerException(errMsg='" + this.errMsg + "', errCode='" + this.errCode + "')";
    }
}
