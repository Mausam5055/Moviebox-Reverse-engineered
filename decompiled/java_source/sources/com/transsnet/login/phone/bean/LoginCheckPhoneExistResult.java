package com.transsnet.login.phone.bean;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\t¨\u0006\u0010"}, d2 = {"Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;", "Ljava/io/Serializable;", "<init>", "()V", "exists", "", "getExists", "()Z", "setExists", "(Z)V", "hasPassword", "getHasPassword", "setHasPassword", "reset", "getReset", "setReset", "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LoginCheckPhoneExistResult implements Serializable {
    private boolean exists;

    @SerializedName("hasPassword")
    private boolean hasPassword;
    private boolean reset;

    public final boolean getExists() {
        return this.exists;
    }

    public final boolean getHasPassword() {
        return this.hasPassword;
    }

    public final boolean getReset() {
        return this.reset;
    }

    public final void setExists(boolean z10) {
        this.exists = z10;
    }

    public final void setHasPassword(boolean z10) {
        this.hasPassword = z10;
    }

    public final void setReset(boolean z10) {
        this.reset = z10;
    }
}
