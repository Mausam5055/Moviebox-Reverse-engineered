package com.google.firebase.sessions;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f32740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f32741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f32742c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f32743d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f32744e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f32745f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f32746g;

    public x(String sessionId, String firstSessionId, int i11, long j11, d dataCollectionStatus, String firebaseInstallationId, String firebaseAuthenticationToken) {
        Intrinsics.h(sessionId, "sessionId");
        Intrinsics.h(firstSessionId, "firstSessionId");
        Intrinsics.h(dataCollectionStatus, "dataCollectionStatus");
        Intrinsics.h(firebaseInstallationId, "firebaseInstallationId");
        Intrinsics.h(firebaseAuthenticationToken, "firebaseAuthenticationToken");
        this.f32740a = sessionId;
        this.f32741b = firstSessionId;
        this.f32742c = i11;
        this.f32743d = j11;
        this.f32744e = dataCollectionStatus;
        this.f32745f = firebaseInstallationId;
        this.f32746g = firebaseAuthenticationToken;
    }

    public final d a() {
        return this.f32744e;
    }

    public final long b() {
        return this.f32743d;
    }

    public final String c() {
        return this.f32746g;
    }

    public final String d() {
        return this.f32745f;
    }

    public final String e() {
        return this.f32741b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return Intrinsics.c(this.f32740a, xVar.f32740a) && Intrinsics.c(this.f32741b, xVar.f32741b) && this.f32742c == xVar.f32742c && this.f32743d == xVar.f32743d && Intrinsics.c(this.f32744e, xVar.f32744e) && Intrinsics.c(this.f32745f, xVar.f32745f) && Intrinsics.c(this.f32746g, xVar.f32746g);
    }

    public final String f() {
        return this.f32740a;
    }

    public final int g() {
        return this.f32742c;
    }

    public int hashCode() {
        return (((((((((((this.f32740a.hashCode() * 31) + this.f32741b.hashCode()) * 31) + this.f32742c) * 31) + androidx.collection.s.a(this.f32743d)) * 31) + this.f32744e.hashCode()) * 31) + this.f32745f.hashCode()) * 31) + this.f32746g.hashCode();
    }

    public String toString() {
        return "SessionInfo(sessionId=" + this.f32740a + ", firstSessionId=" + this.f32741b + ", sessionIndex=" + this.f32742c + ", eventTimestampUs=" + this.f32743d + ", dataCollectionStatus=" + this.f32744e + ", firebaseInstallationId=" + this.f32745f + ", firebaseAuthenticationToken=" + this.f32746g + ')';
    }
}
