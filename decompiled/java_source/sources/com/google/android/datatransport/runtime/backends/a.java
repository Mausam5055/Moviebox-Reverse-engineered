package com.google.android.datatransport.runtime.backends;

/* JADX INFO: loaded from: classes3.dex */
final class a extends BackendResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BackendResponse.Status f24371a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f24372b;

    a(BackendResponse.Status status, long j11) {
        if (status == null) {
            throw new NullPointerException("Null status");
        }
        this.f24371a = status;
        this.f24372b = j11;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    public long b() {
        return this.f24372b;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    public BackendResponse.Status c() {
        return this.f24371a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BackendResponse)) {
            return false;
        }
        BackendResponse backendResponse = (BackendResponse) obj;
        return this.f24371a.equals(backendResponse.c()) && this.f24372b == backendResponse.b();
    }

    public int hashCode() {
        int iHashCode = (this.f24371a.hashCode() ^ 1000003) * 1000003;
        long j11 = this.f24372b;
        return iHashCode ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "BackendResponse{status=" + this.f24371a + ", nextRequestWaitMillis=" + this.f24372b + "}";
    }
}
