package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class GetOpenIdTokenResult implements Serializable {
    private String identityId;
    private String token;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetOpenIdTokenResult)) {
            return false;
        }
        GetOpenIdTokenResult getOpenIdTokenResult = (GetOpenIdTokenResult) obj;
        if ((getOpenIdTokenResult.getIdentityId() == null) ^ (getIdentityId() == null)) {
            return false;
        }
        if (getOpenIdTokenResult.getIdentityId() != null && !getOpenIdTokenResult.getIdentityId().equals(getIdentityId())) {
            return false;
        }
        if ((getOpenIdTokenResult.getToken() == null) ^ (getToken() == null)) {
            return false;
        }
        return getOpenIdTokenResult.getToken() == null || getOpenIdTokenResult.getToken().equals(getToken());
    }

    public String getIdentityId() {
        return this.identityId;
    }

    public String getToken() {
        return this.token;
    }

    public int hashCode() {
        return (((getIdentityId() == null ? 0 : getIdentityId().hashCode()) + 31) * 31) + (getToken() != null ? getToken().hashCode() : 0);
    }

    public void setIdentityId(String str) {
        this.identityId = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (getIdentityId() != null) {
            sb2.append("IdentityId: " + getIdentityId() + ",");
        }
        if (getToken() != null) {
            sb2.append("Token: " + getToken());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public GetOpenIdTokenResult withIdentityId(String str) {
        this.identityId = str;
        return this;
    }

    public GetOpenIdTokenResult withToken(String str) {
        this.token = str;
        return this;
    }
}
