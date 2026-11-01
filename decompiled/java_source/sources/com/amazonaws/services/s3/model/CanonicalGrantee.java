package com.amazonaws.services.s3.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class CanonicalGrantee implements Grantee, Serializable {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f18693id = null;
    private String displayName = null;

    public CanonicalGrantee(String str) {
        setIdentifier(str);
    }

    public boolean equals(Object obj) {
        if (obj instanceof CanonicalGrantee) {
            return this.f18693id.equals(((CanonicalGrantee) obj).f18693id);
        }
        return false;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    @Override // com.amazonaws.services.s3.model.Grantee
    public String getIdentifier() {
        return this.f18693id;
    }

    @Override // com.amazonaws.services.s3.model.Grantee
    public String getTypeIdentifier() {
        return "id";
    }

    public int hashCode() {
        return this.f18693id.hashCode();
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    @Override // com.amazonaws.services.s3.model.Grantee
    public void setIdentifier(String str) {
        this.f18693id = str;
    }
}
