package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class GetParametersForImportRequest extends AmazonWebServiceRequest implements Serializable {
    private String keyId;
    private String wrappingAlgorithm;
    private String wrappingKeySpec;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetParametersForImportRequest)) {
            return false;
        }
        GetParametersForImportRequest getParametersForImportRequest = (GetParametersForImportRequest) obj;
        if ((getParametersForImportRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (getParametersForImportRequest.getKeyId() != null && !getParametersForImportRequest.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((getParametersForImportRequest.getWrappingAlgorithm() == null) ^ (getWrappingAlgorithm() == null)) {
            return false;
        }
        if (getParametersForImportRequest.getWrappingAlgorithm() != null && !getParametersForImportRequest.getWrappingAlgorithm().equals(getWrappingAlgorithm())) {
            return false;
        }
        if ((getParametersForImportRequest.getWrappingKeySpec() == null) ^ (getWrappingKeySpec() == null)) {
            return false;
        }
        return getParametersForImportRequest.getWrappingKeySpec() == null || getParametersForImportRequest.getWrappingKeySpec().equals(getWrappingKeySpec());
    }

    public String getKeyId() {
        return this.keyId;
    }

    public String getWrappingAlgorithm() {
        return this.wrappingAlgorithm;
    }

    public String getWrappingKeySpec() {
        return this.wrappingKeySpec;
    }

    public int hashCode() {
        return (((((getKeyId() == null ? 0 : getKeyId().hashCode()) + 31) * 31) + (getWrappingAlgorithm() == null ? 0 : getWrappingAlgorithm().hashCode())) * 31) + (getWrappingKeySpec() != null ? getWrappingKeySpec().hashCode() : 0);
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public void setWrappingAlgorithm(AlgorithmSpec algorithmSpec) {
        this.wrappingAlgorithm = algorithmSpec.toString();
    }

    public void setWrappingAlgorithm(String str) {
        this.wrappingAlgorithm = str;
    }

    public void setWrappingKeySpec(WrappingKeySpec wrappingKeySpec) {
        this.wrappingKeySpec = wrappingKeySpec.toString();
    }

    public void setWrappingKeySpec(String str) {
        this.wrappingKeySpec = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (getKeyId() != null) {
            sb2.append("KeyId: " + getKeyId() + ",");
        }
        if (getWrappingAlgorithm() != null) {
            sb2.append("WrappingAlgorithm: " + getWrappingAlgorithm() + ",");
        }
        if (getWrappingKeySpec() != null) {
            sb2.append("WrappingKeySpec: " + getWrappingKeySpec());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public GetParametersForImportRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public GetParametersForImportRequest withWrappingAlgorithm(AlgorithmSpec algorithmSpec) {
        this.wrappingAlgorithm = algorithmSpec.toString();
        return this;
    }

    public GetParametersForImportRequest withWrappingAlgorithm(String str) {
        this.wrappingAlgorithm = str;
        return this;
    }

    public GetParametersForImportRequest withWrappingKeySpec(WrappingKeySpec wrappingKeySpec) {
        this.wrappingKeySpec = wrappingKeySpec.toString();
        return this;
    }

    public GetParametersForImportRequest withWrappingKeySpec(String str) {
        this.wrappingKeySpec = str;
        return this;
    }
}
