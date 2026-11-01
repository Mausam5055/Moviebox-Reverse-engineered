package com.amazonaws.services.securitytoken.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class GetSessionTokenRequest extends AmazonWebServiceRequest implements Serializable {
    private Integer durationSeconds;
    private String serialNumber;
    private String tokenCode;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetSessionTokenRequest)) {
            return false;
        }
        GetSessionTokenRequest getSessionTokenRequest = (GetSessionTokenRequest) obj;
        if ((getSessionTokenRequest.getDurationSeconds() == null) ^ (getDurationSeconds() == null)) {
            return false;
        }
        if (getSessionTokenRequest.getDurationSeconds() != null && !getSessionTokenRequest.getDurationSeconds().equals(getDurationSeconds())) {
            return false;
        }
        if ((getSessionTokenRequest.getSerialNumber() == null) ^ (getSerialNumber() == null)) {
            return false;
        }
        if (getSessionTokenRequest.getSerialNumber() != null && !getSessionTokenRequest.getSerialNumber().equals(getSerialNumber())) {
            return false;
        }
        if ((getSessionTokenRequest.getTokenCode() == null) ^ (getTokenCode() == null)) {
            return false;
        }
        return getSessionTokenRequest.getTokenCode() == null || getSessionTokenRequest.getTokenCode().equals(getTokenCode());
    }

    public Integer getDurationSeconds() {
        return this.durationSeconds;
    }

    public String getSerialNumber() {
        return this.serialNumber;
    }

    public String getTokenCode() {
        return this.tokenCode;
    }

    public int hashCode() {
        return (((((getDurationSeconds() == null ? 0 : getDurationSeconds().hashCode()) + 31) * 31) + (getSerialNumber() == null ? 0 : getSerialNumber().hashCode())) * 31) + (getTokenCode() != null ? getTokenCode().hashCode() : 0);
    }

    public void setDurationSeconds(Integer num) {
        this.durationSeconds = num;
    }

    public void setSerialNumber(String str) {
        this.serialNumber = str;
    }

    public void setTokenCode(String str) {
        this.tokenCode = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (getDurationSeconds() != null) {
            sb2.append("DurationSeconds: " + getDurationSeconds() + ",");
        }
        if (getSerialNumber() != null) {
            sb2.append("SerialNumber: " + getSerialNumber() + ",");
        }
        if (getTokenCode() != null) {
            sb2.append("TokenCode: " + getTokenCode());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public GetSessionTokenRequest withDurationSeconds(Integer num) {
        this.durationSeconds = num;
        return this;
    }

    public GetSessionTokenRequest withSerialNumber(String str) {
        this.serialNumber = str;
        return this;
    }

    public GetSessionTokenRequest withTokenCode(String str) {
        this.tokenCode = str;
        return this;
    }
}
