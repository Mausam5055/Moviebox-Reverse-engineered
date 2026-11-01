package com.transsion.startup.pref.consume;

import androidx.collection.s;
import androidx.compose.foundation.e;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f54523a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f54524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f54525c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f54526d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f54527e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f54528f;

    public b(long j11, long j12, long j13, long j14, long j15, boolean z10) {
        this.f54523a = j11;
        this.f54524b = j12;
        this.f54525c = j13;
        this.f54526d = j14;
        this.f54527e = j15;
        this.f54528f = z10;
    }

    public final long a() {
        return this.f54524b;
    }

    public final boolean b() {
        return this.f54528f;
    }

    public final long c() {
        return this.f54525c;
    }

    public final long d() {
        return this.f54527e;
    }

    public final long e() {
        return this.f54523a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f54523a == bVar.f54523a && this.f54524b == bVar.f54524b && this.f54525c == bVar.f54525c && this.f54526d == bVar.f54526d && this.f54527e == bVar.f54527e && this.f54528f == bVar.f54528f;
    }

    public final long f() {
        return this.f54526d;
    }

    public int hashCode() {
        return (((((((((s.a(this.f54523a) * 31) + s.a(this.f54524b)) * 31) + s.a(this.f54525c)) * 31) + s.a(this.f54526d)) * 31) + s.a(this.f54527e)) * 31) + e.a(this.f54528f);
    }

    public String toString() {
        return "StartupMetrics(splashTTID=" + this.f54523a + ", adWaitDuration=" + this.f54524b + ", mainActivityTTID=" + this.f54525c + ", totalTTFD=" + this.f54526d + ", realTTFD=" + this.f54527e + ", hasAd=" + this.f54528f + ")";
    }
}
