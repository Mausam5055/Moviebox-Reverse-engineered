package bd;

/* JADX INFO: loaded from: classes4.dex */
final class b extends d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f16339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f16340c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f16341d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f16342e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f16343f;

    /* JADX INFO: renamed from: bd.b$b, reason: collision with other inner class name */
    static final class C0146b extends d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f16344a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f16345b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f16346c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f16347d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f16348e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private byte f16349f;

        C0146b() {
        }

        @Override // bd.d.a
        public d a() {
            if (this.f16349f == 1 && this.f16344a != null && this.f16345b != null && this.f16346c != null && this.f16347d != null) {
                return new b(this.f16344a, this.f16345b, this.f16346c, this.f16347d, this.f16348e);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f16344a == null) {
                sb2.append(" rolloutId");
            }
            if (this.f16345b == null) {
                sb2.append(" variantId");
            }
            if (this.f16346c == null) {
                sb2.append(" parameterKey");
            }
            if (this.f16347d == null) {
                sb2.append(" parameterValue");
            }
            if ((1 & this.f16349f) == 0) {
                sb2.append(" templateVersion");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // bd.d.a
        public d.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null parameterKey");
            }
            this.f16346c = str;
            return this;
        }

        @Override // bd.d.a
        public d.a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null parameterValue");
            }
            this.f16347d = str;
            return this;
        }

        @Override // bd.d.a
        public d.a d(String str) {
            if (str == null) {
                throw new NullPointerException("Null rolloutId");
            }
            this.f16344a = str;
            return this;
        }

        @Override // bd.d.a
        public d.a e(long j11) {
            this.f16348e = j11;
            this.f16349f = (byte) (this.f16349f | 1);
            return this;
        }

        @Override // bd.d.a
        public d.a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null variantId");
            }
            this.f16345b = str;
            return this;
        }
    }

    private b(String str, String str2, String str3, String str4, long j11) {
        this.f16339b = str;
        this.f16340c = str2;
        this.f16341d = str3;
        this.f16342e = str4;
        this.f16343f = j11;
    }

    @Override // bd.d
    public String b() {
        return this.f16341d;
    }

    @Override // bd.d
    public String c() {
        return this.f16342e;
    }

    @Override // bd.d
    public String d() {
        return this.f16339b;
    }

    @Override // bd.d
    public long e() {
        return this.f16343f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f16339b.equals(dVar.d()) && this.f16340c.equals(dVar.f()) && this.f16341d.equals(dVar.b()) && this.f16342e.equals(dVar.c()) && this.f16343f == dVar.e();
    }

    @Override // bd.d
    public String f() {
        return this.f16340c;
    }

    public int hashCode() {
        int iHashCode = (((((((this.f16339b.hashCode() ^ 1000003) * 1000003) ^ this.f16340c.hashCode()) * 1000003) ^ this.f16341d.hashCode()) * 1000003) ^ this.f16342e.hashCode()) * 1000003;
        long j11 = this.f16343f;
        return iHashCode ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "RolloutAssignment{rolloutId=" + this.f16339b + ", variantId=" + this.f16340c + ", parameterKey=" + this.f16341d + ", parameterValue=" + this.f16342e + ", templateVersion=" + this.f16343f + "}";
    }
}
