package com.amazonaws.services.kms.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class GetKeyRotationStatusResult implements Serializable {
    private Boolean keyRotationEnabled;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetKeyRotationStatusResult)) {
            return false;
        }
        GetKeyRotationStatusResult getKeyRotationStatusResult = (GetKeyRotationStatusResult) obj;
        if ((getKeyRotationStatusResult.getKeyRotationEnabled() == null) ^ (getKeyRotationEnabled() == null)) {
            return false;
        }
        return getKeyRotationStatusResult.getKeyRotationEnabled() == null || getKeyRotationStatusResult.getKeyRotationEnabled().equals(getKeyRotationEnabled());
    }

    public Boolean getKeyRotationEnabled() {
        return this.keyRotationEnabled;
    }

    public int hashCode() {
        return 31 + (getKeyRotationEnabled() == null ? 0 : getKeyRotationEnabled().hashCode());
    }

    public Boolean isKeyRotationEnabled() {
        return this.keyRotationEnabled;
    }

    public void setKeyRotationEnabled(Boolean bool) {
        this.keyRotationEnabled = bool;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (getKeyRotationEnabled() != null) {
            sb2.append("KeyRotationEnabled: " + getKeyRotationEnabled());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public GetKeyRotationStatusResult withKeyRotationEnabled(Boolean bool) {
        this.keyRotationEnabled = bool;
        return this;
    }
}
