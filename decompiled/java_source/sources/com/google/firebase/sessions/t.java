package com.google.firebase.sessions;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f32729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f32730b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f32731c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f32732d;

    public t(String sessionId, String firstSessionId, int i11, long j11) {
        Intrinsics.h(sessionId, "sessionId");
        Intrinsics.h(firstSessionId, "firstSessionId");
        this.f32729a = sessionId;
        this.f32730b = firstSessionId;
        this.f32731c = i11;
        this.f32732d = j11;
    }

    public final String a() {
        return this.f32730b;
    }

    public final String b() {
        return this.f32729a;
    }

    public final int c() {
        return this.f32731c;
    }

    public final long d() {
        return this.f32732d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return Intrinsics.c(this.f32729a, tVar.f32729a) && Intrinsics.c(this.f32730b, tVar.f32730b) && this.f32731c == tVar.f32731c && this.f32732d == tVar.f32732d;
    }

    public int hashCode() {
        return (((((this.f32729a.hashCode() * 31) + this.f32730b.hashCode()) * 31) + this.f32731c) * 31) + androidx.collection.s.a(this.f32732d);
    }

    public String toString() {
        return "SessionDetails(sessionId=" + this.f32729a + ", firstSessionId=" + this.f32730b + ", sessionIndex=" + this.f32731c + ", sessionStartTimestampUs=" + this.f32732d + ')';
    }
}
