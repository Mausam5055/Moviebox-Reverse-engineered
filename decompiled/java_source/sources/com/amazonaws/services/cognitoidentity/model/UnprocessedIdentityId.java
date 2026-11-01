package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class UnprocessedIdentityId implements Serializable {
    private String errorCode;
    private String identityId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UnprocessedIdentityId)) {
            return false;
        }
        UnprocessedIdentityId unprocessedIdentityId = (UnprocessedIdentityId) obj;
        if ((unprocessedIdentityId.getIdentityId() == null) ^ (getIdentityId() == null)) {
            return false;
        }
        if (unprocessedIdentityId.getIdentityId() != null && !unprocessedIdentityId.getIdentityId().equals(getIdentityId())) {
            return false;
        }
        if ((unprocessedIdentityId.getErrorCode() == null) ^ (getErrorCode() == null)) {
            return false;
        }
        return unprocessedIdentityId.getErrorCode() == null || unprocessedIdentityId.getErrorCode().equals(getErrorCode());
    }

    public String getErrorCode() {
        return this.errorCode;
    }

    public String getIdentityId() {
        return this.identityId;
    }

    public int hashCode() {
        return (((getIdentityId() == null ? 0 : getIdentityId().hashCode()) + 31) * 31) + (getErrorCode() != null ? getErrorCode().hashCode() : 0);
    }

    public void setErrorCode(ErrorCode errorCode) {
        this.errorCode = errorCode.toString();
    }

    public void setErrorCode(String str) {
        this.errorCode = str;
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
        if (getErrorCode() != null) {
            sb2.append("ErrorCode: " + getErrorCode());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public UnprocessedIdentityId withErrorCode(ErrorCode errorCode) {
        this.errorCode = errorCode.toString();
        return this;
    }

    public UnprocessedIdentityId withErrorCode(String str) {
        this.errorCode = str;
        return this;
    }

    public UnprocessedIdentityId withIdentityId(String str) {
        this.identityId = str;
        return this;
    }
}
