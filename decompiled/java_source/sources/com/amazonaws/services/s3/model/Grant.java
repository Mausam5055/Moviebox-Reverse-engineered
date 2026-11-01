package com.amazonaws.services.s3.model;

/* JADX INFO: loaded from: classes2.dex */
public class Grant {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Grantee f18705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Permission f18706b;

    public Grant(Grantee grantee, Permission permission) {
        this.f18705a = grantee;
        this.f18706b = permission;
    }

    public Grantee a() {
        return this.f18705a;
    }

    public Permission b() {
        return this.f18706b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Grant grant = (Grant) obj;
        Grantee grantee = this.f18705a;
        if (grantee == null) {
            if (grant.f18705a != null) {
                return false;
            }
        } else if (!grantee.equals(grant.f18705a)) {
            return false;
        }
        return this.f18706b == grant.f18706b;
    }

    public int hashCode() {
        Grantee grantee = this.f18705a;
        int iHashCode = ((grantee == null ? 0 : grantee.hashCode()) + 31) * 31;
        Permission permission = this.f18706b;
        return iHashCode + (permission != null ? permission.hashCode() : 0);
    }

    public String toString() {
        return "Grant [grantee=" + this.f18705a + ", permission=" + this.f18706b + "]";
    }
}
