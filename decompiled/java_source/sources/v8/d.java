package v8;

/* JADX INFO: loaded from: classes4.dex */
public final class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final d f77095c = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f77096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f77097b;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f77098a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f77099b = 0;

        a() {
        }

        public d a() {
            return new d(this.f77098a, this.f77099b);
        }

        public a b(long j11) {
            this.f77098a = j11;
            return this;
        }

        public a c(long j11) {
            this.f77099b = j11;
            return this;
        }
    }

    d(long j11, long j12) {
        this.f77096a = j11;
        this.f77097b = j12;
    }

    public static a c() {
        return new a();
    }

    public long a() {
        return this.f77096a;
    }

    public long b() {
        return this.f77097b;
    }
}
