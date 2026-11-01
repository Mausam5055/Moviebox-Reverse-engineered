package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class ScheduleKeyDeletionResult implements Serializable {
    private Date deletionDate;
    private String keyId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ScheduleKeyDeletionResult)) {
            return false;
        }
        ScheduleKeyDeletionResult scheduleKeyDeletionResult = (ScheduleKeyDeletionResult) obj;
        if ((scheduleKeyDeletionResult.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (scheduleKeyDeletionResult.getKeyId() != null && !scheduleKeyDeletionResult.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((scheduleKeyDeletionResult.getDeletionDate() == null) ^ (getDeletionDate() == null)) {
            return false;
        }
        return scheduleKeyDeletionResult.getDeletionDate() == null || scheduleKeyDeletionResult.getDeletionDate().equals(getDeletionDate());
    }

    public Date getDeletionDate() {
        return this.deletionDate;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public int hashCode() {
        return (((getKeyId() == null ? 0 : getKeyId().hashCode()) + 31) * 31) + (getDeletionDate() != null ? getDeletionDate().hashCode() : 0);
    }

    public void setDeletionDate(Date date) {
        this.deletionDate = date;
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
        if (getDeletionDate() != null) {
            sb2.append("DeletionDate: " + getDeletionDate());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public ScheduleKeyDeletionResult withDeletionDate(Date date) {
        this.deletionDate = date;
        return this;
    }

    public ScheduleKeyDeletionResult withKeyId(String str) {
        this.keyId = str;
        return this;
    }
}
