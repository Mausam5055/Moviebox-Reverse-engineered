package com.amazonaws.services.s3.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class AbortIncompleteMultipartUpload implements Serializable {
    private int daysAfterInitiation;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AbortIncompleteMultipartUpload m199clone() throws CloneNotSupportedException {
        try {
            return (AbortIncompleteMultipartUpload) super.clone();
        } catch (CloneNotSupportedException e11) {
            throw new IllegalStateException("Got a CloneNotSupportedException from Object.clone() even though we're Cloneable!", e11);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.daysAfterInitiation == ((AbortIncompleteMultipartUpload) obj).daysAfterInitiation;
    }

    public int getDaysAfterInitiation() {
        return this.daysAfterInitiation;
    }

    public int hashCode() {
        return this.daysAfterInitiation;
    }

    public void setDaysAfterInitiation(int i11) {
        this.daysAfterInitiation = i11;
    }

    public AbortIncompleteMultipartUpload withDaysAfterInitiation(int i11) {
        setDaysAfterInitiation(i11);
        return this;
    }
}
