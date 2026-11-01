package rb;

/* JADX INFO: loaded from: classes5.dex */
final class b extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f74238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f74239c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f74240d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f74241e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f74242f;

    b(String str, String str2, String str3, String str4, long j11) {
        if (str == null) {
            throw new NullPointerException("Null rolloutId");
        }
        this.f74238b = str;
        if (str2 == null) {
            throw new NullPointerException("Null parameterKey");
        }
        this.f74239c = str2;
        if (str3 == null) {
            throw new NullPointerException("Null parameterValue");
        }
        this.f74240d = str3;
        if (str4 == null) {
            throw new NullPointerException("Null variantId");
        }
        this.f74241e = str4;
        this.f74242f = j11;
    }

    @Override // rb.i
    public String c() {
        return this.f74239c;
    }

    @Override // rb.i
    public String d() {
        return this.f74240d;
    }

    @Override // rb.i
    public String e() {
        return this.f74238b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f74238b.equals(iVar.e()) && this.f74239c.equals(iVar.c()) && this.f74240d.equals(iVar.d()) && this.f74241e.equals(iVar.g()) && this.f74242f == iVar.f();
    }

    @Override // rb.i
    public long f() {
        return this.f74242f;
    }

    @Override // rb.i
    public String g() {
        return this.f74241e;
    }

    public int hashCode() {
        int iHashCode = (((((((this.f74238b.hashCode() ^ 1000003) * 1000003) ^ this.f74239c.hashCode()) * 1000003) ^ this.f74240d.hashCode()) * 1000003) ^ this.f74241e.hashCode()) * 1000003;
        long j11 = this.f74242f;
        return iHashCode ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "RolloutAssignment{rolloutId=" + this.f74238b + ", parameterKey=" + this.f74239c + ", parameterValue=" + this.f74240d + ", variantId=" + this.f74241e + ", templateVersion=" + this.f74242f + "}";
    }
}
