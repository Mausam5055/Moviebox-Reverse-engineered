package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class GetOpenIdTokenRequest extends AmazonWebServiceRequest implements Serializable {
    private String identityId;
    private Map<String, String> logins;

    public GetOpenIdTokenRequest addLoginsEntry(String str, String str2) {
        if (this.logins == null) {
            this.logins = new HashMap();
        }
        if (!this.logins.containsKey(str)) {
            this.logins.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public GetOpenIdTokenRequest clearLoginsEntries() {
        this.logins = null;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetOpenIdTokenRequest)) {
            return false;
        }
        GetOpenIdTokenRequest getOpenIdTokenRequest = (GetOpenIdTokenRequest) obj;
        if ((getOpenIdTokenRequest.getIdentityId() == null) ^ (getIdentityId() == null)) {
            return false;
        }
        if (getOpenIdTokenRequest.getIdentityId() != null && !getOpenIdTokenRequest.getIdentityId().equals(getIdentityId())) {
            return false;
        }
        if ((getOpenIdTokenRequest.getLogins() == null) ^ (getLogins() == null)) {
            return false;
        }
        return getOpenIdTokenRequest.getLogins() == null || getOpenIdTokenRequest.getLogins().equals(getLogins());
    }

    public String getIdentityId() {
        return this.identityId;
    }

    public Map<String, String> getLogins() {
        return this.logins;
    }

    public int hashCode() {
        return (((getIdentityId() == null ? 0 : getIdentityId().hashCode()) + 31) * 31) + (getLogins() != null ? getLogins().hashCode() : 0);
    }

    public void setIdentityId(String str) {
        this.identityId = str;
    }

    public void setLogins(Map<String, String> map) {
        this.logins = map;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (getIdentityId() != null) {
            sb2.append("IdentityId: " + getIdentityId() + ",");
        }
        if (getLogins() != null) {
            sb2.append("Logins: " + getLogins());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public GetOpenIdTokenRequest withIdentityId(String str) {
        this.identityId = str;
        return this;
    }

    public GetOpenIdTokenRequest withLogins(Map<String, String> map) {
        this.logins = map;
        return this;
    }
}
