package com.amazonaws.services.kms.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class GetKeyPolicyResult implements Serializable {
    private String policy;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetKeyPolicyResult)) {
            return false;
        }
        GetKeyPolicyResult getKeyPolicyResult = (GetKeyPolicyResult) obj;
        if ((getKeyPolicyResult.getPolicy() == null) ^ (getPolicy() == null)) {
            return false;
        }
        return getKeyPolicyResult.getPolicy() == null || getKeyPolicyResult.getPolicy().equals(getPolicy());
    }

    public String getPolicy() {
        return this.policy;
    }

    public int hashCode() {
        return 31 + (getPolicy() == null ? 0 : getPolicy().hashCode());
    }

    public void setPolicy(String str) {
        this.policy = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (getPolicy() != null) {
            sb2.append("Policy: " + getPolicy());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public GetKeyPolicyResult withPolicy(String str) {
        this.policy = str;
        return this;
    }
}
