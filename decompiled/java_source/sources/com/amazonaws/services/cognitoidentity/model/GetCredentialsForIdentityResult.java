package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class GetCredentialsForIdentityResult implements Serializable {
    private Credentials credentials;
    private String identityId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetCredentialsForIdentityResult)) {
            return false;
        }
        GetCredentialsForIdentityResult getCredentialsForIdentityResult = (GetCredentialsForIdentityResult) obj;
        if ((getCredentialsForIdentityResult.getIdentityId() == null) ^ (getIdentityId() == null)) {
            return false;
        }
        if (getCredentialsForIdentityResult.getIdentityId() != null && !getCredentialsForIdentityResult.getIdentityId().equals(getIdentityId())) {
            return false;
        }
        if ((getCredentialsForIdentityResult.getCredentials() == null) ^ (getCredentials() == null)) {
            return false;
        }
        return getCredentialsForIdentityResult.getCredentials() == null || getCredentialsForIdentityResult.getCredentials().equals(getCredentials());
    }

    public Credentials getCredentials() {
        return this.credentials;
    }

    public String getIdentityId() {
        return this.identityId;
    }

    public int hashCode() {
        return (((getIdentityId() == null ? 0 : getIdentityId().hashCode()) + 31) * 31) + (getCredentials() != null ? getCredentials().hashCode() : 0);
    }

    public void setCredentials(Credentials credentials) {
        this.credentials = credentials;
    }

    public void setIdentityId(String str) {
        this.identityId = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (getIdentityId() != null) {
            sb2.append("IdentityId: " + getIdentityId() + ",");
        }
        if (getCredentials() != null) {
            sb2.append("Credentials: " + getCredentials());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public GetCredentialsForIdentityResult withCredentials(Credentials credentials) {
        this.credentials = credentials;
        return this;
    }

    public GetCredentialsForIdentityResult withIdentityId(String str) {
        this.identityId = str;
        return this;
    }
}
