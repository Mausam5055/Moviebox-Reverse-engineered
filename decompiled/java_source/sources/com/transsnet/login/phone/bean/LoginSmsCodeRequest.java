package com.transsnet.login.phone.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\r\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010%\u001a\u00020\u0005J\u0006\u0010&\u001a\u00020\u0005R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\tR\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0007\"\u0004\b!\u0010\tR\u001a\u0010\"\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001c\"\u0004\b$\u0010\u001e¨\u0006'"}, d2 = {"Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "Ljava/io/Serializable;", "<init>", "()V", "phone", "", "getPhone", "()Ljava/lang/String;", "setPhone", "(Ljava/lang/String;)V", "mail", "getMail", "setMail", "cc", "getCc", "setCc", "password", "getPassword", "setPassword", "inviteCode", "getInviteCode", "setInviteCode", "verificationCode", "getVerificationCode", "setVerificationCode", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "getType", "()I", "setType", "(I)V", "package_name", "getPackage_name", "setPackage_name", "authType", "getAuthType", "setAuthType", "dataKey", "account", "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LoginSmsCodeRequest implements Serializable {
    private int authType;
    private String cc;
    private String inviteCode;
    private String mail;
    private String package_name;
    private String password;
    private String phone;
    private int type;
    private String verificationCode;

    public final String account() {
        if (this.authType == 1) {
            String str = this.mail;
            return str == null ? "" : str;
        }
        return this.cc + this.phone;
    }

    public final String dataKey() {
        if (this.authType == 1) {
            return this.mail + "_" + this.verificationCode + "_" + this.password + "_" + this.inviteCode;
        }
        return this.cc + this.phone + "_" + this.verificationCode + "_" + this.password + "_" + this.inviteCode;
    }

    public final int getAuthType() {
        return this.authType;
    }

    public final String getCc() {
        return this.cc;
    }

    public final String getInviteCode() {
        return this.inviteCode;
    }

    public final String getMail() {
        return this.mail;
    }

    public final String getPackage_name() {
        return this.package_name;
    }

    public final String getPassword() {
        return this.password;
    }

    public final String getPhone() {
        return this.phone;
    }

    public final int getType() {
        return this.type;
    }

    public final String getVerificationCode() {
        return this.verificationCode;
    }

    public final void setAuthType(int i11) {
        this.authType = i11;
    }

    public final void setCc(String str) {
        this.cc = str;
    }

    public final void setInviteCode(String str) {
        this.inviteCode = str;
    }

    public final void setMail(String str) {
        this.mail = str;
    }

    public final void setPackage_name(String str) {
        this.package_name = str;
    }

    public final void setPassword(String str) {
        this.password = str;
    }

    public final void setPhone(String str) {
        this.phone = str;
    }

    public final void setType(int i11) {
        this.type = i11;
    }

    public final void setVerificationCode(String str) {
        this.verificationCode = str;
    }
}
