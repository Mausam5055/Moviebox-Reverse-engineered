package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class UpdateCustomKeyStoreRequest extends AmazonWebServiceRequest implements Serializable {
    private String cloudHsmClusterId;
    private String customKeyStoreId;
    private String keyStorePassword;
    private String newCustomKeyStoreName;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdateCustomKeyStoreRequest)) {
            return false;
        }
        UpdateCustomKeyStoreRequest updateCustomKeyStoreRequest = (UpdateCustomKeyStoreRequest) obj;
        if ((updateCustomKeyStoreRequest.getCustomKeyStoreId() == null) ^ (getCustomKeyStoreId() == null)) {
            return false;
        }
        if (updateCustomKeyStoreRequest.getCustomKeyStoreId() != null && !updateCustomKeyStoreRequest.getCustomKeyStoreId().equals(getCustomKeyStoreId())) {
            return false;
        }
        if ((updateCustomKeyStoreRequest.getNewCustomKeyStoreName() == null) ^ (getNewCustomKeyStoreName() == null)) {
            return false;
        }
        if (updateCustomKeyStoreRequest.getNewCustomKeyStoreName() != null && !updateCustomKeyStoreRequest.getNewCustomKeyStoreName().equals(getNewCustomKeyStoreName())) {
            return false;
        }
        if ((updateCustomKeyStoreRequest.getKeyStorePassword() == null) ^ (getKeyStorePassword() == null)) {
            return false;
        }
        if (updateCustomKeyStoreRequest.getKeyStorePassword() != null && !updateCustomKeyStoreRequest.getKeyStorePassword().equals(getKeyStorePassword())) {
            return false;
        }
        if ((updateCustomKeyStoreRequest.getCloudHsmClusterId() == null) ^ (getCloudHsmClusterId() == null)) {
            return false;
        }
        return updateCustomKeyStoreRequest.getCloudHsmClusterId() == null || updateCustomKeyStoreRequest.getCloudHsmClusterId().equals(getCloudHsmClusterId());
    }

    public String getCloudHsmClusterId() {
        return this.cloudHsmClusterId;
    }

    public String getCustomKeyStoreId() {
        return this.customKeyStoreId;
    }

    public String getKeyStorePassword() {
        return this.keyStorePassword;
    }

    public String getNewCustomKeyStoreName() {
        return this.newCustomKeyStoreName;
    }

    public int hashCode() {
        return (((((((getCustomKeyStoreId() == null ? 0 : getCustomKeyStoreId().hashCode()) + 31) * 31) + (getNewCustomKeyStoreName() == null ? 0 : getNewCustomKeyStoreName().hashCode())) * 31) + (getKeyStorePassword() == null ? 0 : getKeyStorePassword().hashCode())) * 31) + (getCloudHsmClusterId() != null ? getCloudHsmClusterId().hashCode() : 0);
    }

    public void setCloudHsmClusterId(String str) {
        this.cloudHsmClusterId = str;
    }

    public void setCustomKeyStoreId(String str) {
        this.customKeyStoreId = str;
    }

    public void setKeyStorePassword(String str) {
        this.keyStorePassword = str;
    }

    public void setNewCustomKeyStoreName(String str) {
        this.newCustomKeyStoreName = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (getCustomKeyStoreId() != null) {
            sb2.append("CustomKeyStoreId: " + getCustomKeyStoreId() + ",");
        }
        if (getNewCustomKeyStoreName() != null) {
            sb2.append("NewCustomKeyStoreName: " + getNewCustomKeyStoreName() + ",");
        }
        if (getKeyStorePassword() != null) {
            sb2.append("KeyStorePassword: " + getKeyStorePassword() + ",");
        }
        if (getCloudHsmClusterId() != null) {
            sb2.append("CloudHsmClusterId: " + getCloudHsmClusterId());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public UpdateCustomKeyStoreRequest withCloudHsmClusterId(String str) {
        this.cloudHsmClusterId = str;
        return this;
    }

    public UpdateCustomKeyStoreRequest withCustomKeyStoreId(String str) {
        this.customKeyStoreId = str;
        return this;
    }

    public UpdateCustomKeyStoreRequest withKeyStorePassword(String str) {
        this.keyStorePassword = str;
        return this;
    }

    public UpdateCustomKeyStoreRequest withNewCustomKeyStoreName(String str) {
        this.newCustomKeyStoreName = str;
        return this;
    }
}
