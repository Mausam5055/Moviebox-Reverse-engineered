package com.google.firebase.crashlytics.internal.common;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31176b;

    public f0(String str, String str2) {
        this.f31175a = str;
        this.f31176b = str2;
    }

    public final String a() {
        return this.f31176b;
    }

    public final String b() {
        return this.f31175a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return false;
        }
        f0 f0Var = (f0) obj;
        return Intrinsics.c(this.f31175a, f0Var.f31175a) && Intrinsics.c(this.f31176b, f0Var.f31176b);
    }

    public int hashCode() {
        String str = this.f31175a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f31176b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "FirebaseInstallationId(fid=" + this.f31175a + ", authToken=" + this.f31176b + ')';
    }
}
