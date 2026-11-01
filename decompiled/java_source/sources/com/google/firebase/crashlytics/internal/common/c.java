package com.google.firebase.crashlytics.internal.common;

/* JADX INFO: loaded from: classes4.dex */
final class c extends h0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f31155c;

    c(String str, String str2, String str3) {
        if (str == null) {
            throw new NullPointerException("Null crashlyticsInstallId");
        }
        this.f31153a = str;
        this.f31154b = str2;
        this.f31155c = str3;
    }

    @Override // com.google.firebase.crashlytics.internal.common.h0.a
    public String c() {
        return this.f31153a;
    }

    @Override // com.google.firebase.crashlytics.internal.common.h0.a
    public String d() {
        return this.f31155c;
    }

    @Override // com.google.firebase.crashlytics.internal.common.h0.a
    public String e() {
        return this.f31154b;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h0.a)) {
            return false;
        }
        h0.a aVar = (h0.a) obj;
        if (this.f31153a.equals(aVar.c()) && ((str = this.f31154b) != null ? str.equals(aVar.e()) : aVar.e() == null)) {
            String str2 = this.f31155c;
            if (str2 == null) {
                if (aVar.d() == null) {
                    return true;
                }
            } else if (str2.equals(aVar.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (this.f31153a.hashCode() ^ 1000003) * 1000003;
        String str = this.f31154b;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f31155c;
        return iHashCode2 ^ (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "InstallIds{crashlyticsInstallId=" + this.f31153a + ", firebaseInstallationId=" + this.f31154b + ", firebaseAuthenticationToken=" + this.f31155c + "}";
    }
}
