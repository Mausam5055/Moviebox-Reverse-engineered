package a9;

/* JADX INFO: loaded from: classes3.dex */
final class b extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.o f398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.i f399c;

    b(long j11, com.google.android.datatransport.runtime.o oVar, com.google.android.datatransport.runtime.i iVar) {
        this.f397a = j11;
        if (oVar == null) {
            throw new NullPointerException("Null transportContext");
        }
        this.f398b = oVar;
        if (iVar == null) {
            throw new NullPointerException("Null event");
        }
        this.f399c = iVar;
    }

    @Override // a9.k
    public com.google.android.datatransport.runtime.i b() {
        return this.f399c;
    }

    @Override // a9.k
    public long c() {
        return this.f397a;
    }

    @Override // a9.k
    public com.google.android.datatransport.runtime.o d() {
        return this.f398b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f397a == kVar.c() && this.f398b.equals(kVar.d()) && this.f399c.equals(kVar.b());
    }

    public int hashCode() {
        long j11 = this.f397a;
        return ((((((int) (j11 ^ (j11 >>> 32))) ^ 1000003) * 1000003) ^ this.f398b.hashCode()) * 1000003) ^ this.f399c.hashCode();
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f397a + ", transportContext=" + this.f398b + ", event=" + this.f399c + "}";
    }
}
