package a9;

/* JADX INFO: loaded from: classes3.dex */
final class a extends e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f388f;

    static final class b extends e.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Long f389a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Integer f390b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Integer f391c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Long f392d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Integer f393e;

        b() {
        }

        @Override // a9.e.a
        e a() {
            String str = "";
            if (this.f389a == null) {
                str = " maxStorageSizeInBytes";
            }
            if (this.f390b == null) {
                str = str + " loadBatchSize";
            }
            if (this.f391c == null) {
                str = str + " criticalSectionEnterTimeoutMs";
            }
            if (this.f392d == null) {
                str = str + " eventCleanUpAge";
            }
            if (this.f393e == null) {
                str = str + " maxBlobByteSizePerRow";
            }
            if (str.isEmpty()) {
                return new a(this.f389a.longValue(), this.f390b.intValue(), this.f391c.intValue(), this.f392d.longValue(), this.f393e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // a9.e.a
        e.a b(int i11) {
            this.f391c = Integer.valueOf(i11);
            return this;
        }

        @Override // a9.e.a
        e.a c(long j11) {
            this.f392d = Long.valueOf(j11);
            return this;
        }

        @Override // a9.e.a
        e.a d(int i11) {
            this.f390b = Integer.valueOf(i11);
            return this;
        }

        @Override // a9.e.a
        e.a e(int i11) {
            this.f393e = Integer.valueOf(i11);
            return this;
        }

        @Override // a9.e.a
        e.a f(long j11) {
            this.f389a = Long.valueOf(j11);
            return this;
        }
    }

    private a(long j11, int i11, int i12, long j12, int i13) {
        this.f384b = j11;
        this.f385c = i11;
        this.f386d = i12;
        this.f387e = j12;
        this.f388f = i13;
    }

    @Override // a9.e
    int b() {
        return this.f386d;
    }

    @Override // a9.e
    long c() {
        return this.f387e;
    }

    @Override // a9.e
    int d() {
        return this.f385c;
    }

    @Override // a9.e
    int e() {
        return this.f388f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f384b == eVar.f() && this.f385c == eVar.d() && this.f386d == eVar.b() && this.f387e == eVar.c() && this.f388f == eVar.e();
    }

    @Override // a9.e
    long f() {
        return this.f384b;
    }

    public int hashCode() {
        long j11 = this.f384b;
        int i11 = (((((((int) (j11 ^ (j11 >>> 32))) ^ 1000003) * 1000003) ^ this.f385c) * 1000003) ^ this.f386d) * 1000003;
        long j12 = this.f387e;
        return ((i11 ^ ((int) ((j12 >>> 32) ^ j12))) * 1000003) ^ this.f388f;
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f384b + ", loadBatchSize=" + this.f385c + ", criticalSectionEnterTimeoutMs=" + this.f386d + ", eventCleanUpAge=" + this.f387e + ", maxBlobByteSizePerRow=" + this.f388f + "}";
    }
}
