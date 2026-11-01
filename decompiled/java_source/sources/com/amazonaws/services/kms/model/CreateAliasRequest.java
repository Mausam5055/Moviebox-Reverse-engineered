package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class CreateAliasRequest extends AmazonWebServiceRequest implements Serializable {
    private String aliasName;
    private String targetKeyId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateAliasRequest)) {
            return false;
        }
        CreateAliasRequest createAliasRequest = (CreateAliasRequest) obj;
        if ((createAliasRequest.getAliasName() == null) ^ (getAliasName() == null)) {
            return false;
        }
        if (createAliasRequest.getAliasName() != null && !createAliasRequest.getAliasName().equals(getAliasName())) {
            return false;
        }
        if ((createAliasRequest.getTargetKeyId() == null) ^ (getTargetKeyId() == null)) {
            return false;
        }
        return createAliasRequest.getTargetKeyId() == null || createAliasRequest.getTargetKeyId().equals(getTargetKeyId());
    }

    public String getAliasName() {
        return this.aliasName;
    }

    public String getTargetKeyId() {
        return this.targetKeyId;
    }

    public int hashCode() {
        return (((getAliasName() == null ? 0 : getAliasName().hashCode()) + 31) * 31) + (getTargetKeyId() != null ? getTargetKeyId().hashCode() : 0);
    }

    public void setAliasName(String str) {
        this.aliasName = str;
    }

    public void setTargetKeyId(String str) {
        this.targetKeyId = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (getAliasName() != null) {
            sb2.append("AliasName: " + getAliasName() + ",");
        }
        if (getTargetKeyId() != null) {
            sb2.append("TargetKeyId: " + getTargetKeyId());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public CreateAliasRequest withAliasName(String str) {
        this.aliasName = str;
        return this;
    }

    public CreateAliasRequest withTargetKeyId(String str) {
        this.targetKeyId = str;
        return this;
    }
}
