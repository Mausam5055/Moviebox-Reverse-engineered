package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GetPublicKeyRequest extends AmazonWebServiceRequest implements Serializable {
    private List<String> grantTokens = new ArrayList();
    private String keyId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetPublicKeyRequest)) {
            return false;
        }
        GetPublicKeyRequest getPublicKeyRequest = (GetPublicKeyRequest) obj;
        if ((getPublicKeyRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (getPublicKeyRequest.getKeyId() != null && !getPublicKeyRequest.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((getPublicKeyRequest.getGrantTokens() == null) ^ (getGrantTokens() == null)) {
            return false;
        }
        return getPublicKeyRequest.getGrantTokens() == null || getPublicKeyRequest.getGrantTokens().equals(getGrantTokens());
    }

    public List<String> getGrantTokens() {
        return this.grantTokens;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public int hashCode() {
        return (((getKeyId() == null ? 0 : getKeyId().hashCode()) + 31) * 31) + (getGrantTokens() != null ? getGrantTokens().hashCode() : 0);
    }

    public void setGrantTokens(Collection<String> collection) {
        if (collection == null) {
            this.grantTokens = null;
        } else {
            this.grantTokens = new ArrayList(collection);
        }
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (getKeyId() != null) {
            sb2.append("KeyId: " + getKeyId() + ",");
        }
        if (getGrantTokens() != null) {
            sb2.append("GrantTokens: " + getGrantTokens());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public GetPublicKeyRequest withGrantTokens(Collection<String> collection) {
        setGrantTokens(collection);
        return this;
    }

    public GetPublicKeyRequest withGrantTokens(String... strArr) {
        if (getGrantTokens() == null) {
            this.grantTokens = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.grantTokens.add(str);
        }
        return this;
    }

    public GetPublicKeyRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }
}
