package com.google.firebase;

/* JADX INFO: loaded from: classes4.dex */
final class a extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f31042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f31043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f31044c;

    a(long j11, long j12, long j13) {
        this.f31042a = j11;
        this.f31043b = j12;
        this.f31044c = j13;
    }

    @Override // com.google.firebase.n
    public long b() {
        return this.f31043b;
    }

    @Override // com.google.firebase.n
    public long c() {
        return this.f31042a;
    }

    @Override // com.google.firebase.n
    public long d() {
        return this.f31044c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f31042a == nVar.c() && this.f31043b == nVar.b() && this.f31044c == nVar.d();
    }

    public int hashCode() {
        long j11 = this.f31042a;
        long j12 = this.f31043b;
        int i11 = (((((int) (j11 ^ (j11 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j12 ^ (j12 >>> 32)))) * 1000003;
        long j13 = this.f31044c;
        return i11 ^ ((int) ((j13 >>> 32) ^ j13));
    }

    public String toString() {
        return "StartupTime{epochMillis=" + this.f31042a + ", elapsedRealtime=" + this.f31043b + ", uptimeMillis=" + this.f31044c + "}";
    }
}
