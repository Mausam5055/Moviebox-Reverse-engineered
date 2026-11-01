package sb;

/* JADX INFO: loaded from: classes5.dex */
final class c extends e.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f75307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f75308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f75309c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f75310d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f75311e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f75312f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f75313g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f75314h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f75315i;

    c(int i11, String str, int i12, long j11, long j12, boolean z10, int i13, String str2, String str3) {
        this.f75307a = i11;
        if (str == null) {
            throw new NullPointerException("Null model");
        }
        this.f75308b = str;
        this.f75309c = i12;
        this.f75310d = j11;
        this.f75311e = j12;
        this.f75312f = z10;
        this.f75313g = i13;
        if (str2 == null) {
            throw new NullPointerException("Null manufacturer");
        }
        this.f75314h = str2;
        if (str3 == null) {
            throw new NullPointerException("Null modelClass");
        }
        this.f75315i = str3;
    }

    @Override // sb.e.b
    public int a() {
        return this.f75307a;
    }

    @Override // sb.e.b
    public int b() {
        return this.f75309c;
    }

    @Override // sb.e.b
    public long d() {
        return this.f75311e;
    }

    @Override // sb.e.b
    public boolean e() {
        return this.f75312f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e.b)) {
            return false;
        }
        e.b bVar = (e.b) obj;
        return this.f75307a == bVar.a() && this.f75308b.equals(bVar.g()) && this.f75309c == bVar.b() && this.f75310d == bVar.j() && this.f75311e == bVar.d() && this.f75312f == bVar.e() && this.f75313g == bVar.i() && this.f75314h.equals(bVar.f()) && this.f75315i.equals(bVar.h());
    }

    @Override // sb.e.b
    public String f() {
        return this.f75314h;
    }

    @Override // sb.e.b
    public String g() {
        return this.f75308b;
    }

    @Override // sb.e.b
    public String h() {
        return this.f75315i;
    }

    public int hashCode() {
        int iHashCode = (((((this.f75307a ^ 1000003) * 1000003) ^ this.f75308b.hashCode()) * 1000003) ^ this.f75309c) * 1000003;
        long j11 = this.f75310d;
        int i11 = (iHashCode ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        long j12 = this.f75311e;
        return ((((((((i11 ^ ((int) (j12 ^ (j12 >>> 32)))) * 1000003) ^ (this.f75312f ? 1231 : 1237)) * 1000003) ^ this.f75313g) * 1000003) ^ this.f75314h.hashCode()) * 1000003) ^ this.f75315i.hashCode();
    }

    @Override // sb.e.b
    public int i() {
        return this.f75313g;
    }

    @Override // sb.e.b
    public long j() {
        return this.f75310d;
    }

    public String toString() {
        return "DeviceData{arch=" + this.f75307a + ", model=" + this.f75308b + ", availableProcessors=" + this.f75309c + ", totalRam=" + this.f75310d + ", diskSpace=" + this.f75311e + ", isEmulator=" + this.f75312f + ", state=" + this.f75313g + ", manufacturer=" + this.f75314h + ", modelClass=" + this.f75315i + "}";
    }
}
