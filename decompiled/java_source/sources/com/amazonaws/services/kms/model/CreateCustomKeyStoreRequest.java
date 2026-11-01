package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class CreateCustomKeyStoreRequest extends AmazonWebServiceRequest implements Serializable {
    private String cloudHsmClusterId;
    private String customKeyStoreName;
    private String keyStorePassword;
    private String trustAnchorCertificate;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateCustomKeyStoreRequest)) {
            return false;
        }
        CreateCustomKeyStoreRequest createCustomKeyStoreRequest = (CreateCustomKeyStoreRequest) obj;
        if ((createCustomKeyStoreRequest.getCustomKeyStoreName() == null) ^ (getCustomKeyStoreName() == null)) {
            return false;
        }
        if (createCustomKeyStoreRequest.getCustomKeyStoreName() != null && !createCustomKeyStoreRequest.getCustomKeyStoreName().equals(getCustomKeyStoreName())) {
            return false;
        }
        if ((createCustomKeyStoreRequest.getCloudHsmClusterId() == null) ^ (getCloudHsmClusterId() == null)) {
            return false;
        }
        if (createCustomKeyStoreRequest.getCloudHsmClusterId() != null && !createCustomKeyStoreRequest.getCloudHsmClusterId().equals(getCloudHsmClusterId())) {
            return false;
        }
        if ((createCustomKeyStoreRequest.getTrustAnchorCertificate() == null) ^ (getTrustAnchorCertificate() == null)) {
            return false;
        }
        if (createCustomKeyStoreRequest.getTrustAnchorCertificate() != null && !createCustomKeyStoreRequest.getTrustAnchorCertificate().equals(getTrustAnchorCertificate())) {
            return false;
        }
        if ((createCustomKeyStoreRequest.getKeyStorePassword() == null) ^ (getKeyStorePassword() == null)) {
            return false;
        }
        return createCustomKeyStoreRequest.getKeyStorePassword() == null || createCustomKeyStoreRequest.getKeyStorePassword().equals(getKeyStorePassword());
    }

    public String getCloudHsmClusterId() {
        return this.cloudHsmClusterId;
    }

    public String getCustomKeyStoreName() {
        return this.customKeyStoreName;
    }

    public String getKeyStorePassword() {
        return this.keyStorePassword;
    }

    public String getTrustAnchorCertificate() {
        return this.trustAnchorCertificate;
    }

    public int hashCode() {
        return (((((((getCustomKeyStoreName() == null ? 0 : getCustomKeyStoreName().hashCode()) + 31) * 31) + (getCloudHsmClusterId() == null ? 0 : getCloudHsmClusterId().hashCode())) * 31) + (getTrustAnchorCertificate() == null ? 0 : getTrustAnchorCertificate().hashCode())) * 31) + (getKeyStorePassword() != null ? getKeyStorePassword().hashCode() : 0);
    }

    public void setCloudHsmClusterId(String str) {
        this.cloudHsmClusterId = str;
    }

    public void setCustomKeyStoreName(String str) {
        this.customKeyStoreName = str;
    }

    public void setKeyStorePassword(String str) {
        this.keyStorePassword = str;
    }

    public void setTrustAnchorCertificate(String str) {
        this.trustAnchorCertificate = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (getCustomKeyStoreName() != null) {
            sb2.append("CustomKeyStoreName: " + getCustomKeyStoreName() + ",");
        }
        if (getCloudHsmClusterId() != null) {
            sb2.append("CloudHsmClusterId: " + getCloudHsmClusterId() + ",");
        }
        if (getTrustAnchorCertificate() != null) {
            sb2.append("TrustAnchorCertificate: " + getTrustAnchorCertificate() + ",");
        }
        if (getKeyStorePassword() != null) {
            sb2.append("KeyStorePassword: " + getKeyStorePassword());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public CreateCustomKeyStoreRequest withCloudHsmClusterId(String str) {
        this.cloudHsmClusterId = str;
        return this;
    }

    public CreateCustomKeyStoreRequest withCustomKeyStoreName(String str) {
        this.customKeyStoreName = str;
        return this;
    }

    public CreateCustomKeyStoreRequest withKeyStorePassword(String str) {
        this.keyStorePassword = str;
        return this;
    }

    public CreateCustomKeyStoreRequest withTrustAnchorCertificate(String str) {
        this.trustAnchorCertificate = str;
        return this;
    }
}
