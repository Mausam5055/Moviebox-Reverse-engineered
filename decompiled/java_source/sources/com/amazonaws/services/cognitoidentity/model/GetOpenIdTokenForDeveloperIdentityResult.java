package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class GetOpenIdTokenForDeveloperIdentityResult implements Serializable {
    private String identityId;
    private String token;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetOpenIdTokenForDeveloperIdentityResult)) {
            return false;
        }
        GetOpenIdTokenForDeveloperIdentityResult getOpenIdTokenForDeveloperIdentityResult = (GetOpenIdTokenForDeveloperIdentityResult) obj;
        if ((getOpenIdTokenForDeveloperIdentityResult.getIdentityId() == null) ^ (getIdentityId() == null)) {
            return false;
        }
        if (getOpenIdTokenForDeveloperIdentityResult.getIdentityId() != null && !getOpenIdTokenForDeveloperIdentityResult.getIdentityId().equals(getIdentityId())) {
            return false;
        }
        if ((getOpenIdTokenForDeveloperIdentityResult.getToken() == null) ^ (getToken() == null)) {
            return false;
        }
        return getOpenIdTokenForDeveloperIdentityResult.getToken() == null || getOpenIdTokenForDeveloperIdentityResult.getToken().equals(getToken());
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

    public GetOpenIdTokenForDeveloperIdentityResult withIdentityId(String str) {
        this.identityId = str;
        return this;
    }

    public GetOpenIdTokenForDeveloperIdentityResult withToken(String str) {
        this.token = str;
        return this;
    }
}
