package s8;

/* JADX INFO: loaded from: classes4.dex */
final class a extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f75293a;

    a(long j11) {
        this.f75293a = j11;
    }

    @Override // s8.b
    public long c() {
        return this.f75293a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof b) && this.f75293a == ((b) obj).c();
    }

    public int hashCode() {
        long j11 = this.f75293a;
        return ((int) (j11 ^ (j11 >>> 32))) ^ 1000003;
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f75293a + "}";
    }
}
