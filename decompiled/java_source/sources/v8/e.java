package v8;

/* JADX INFO: loaded from: classes4.dex */
public final class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final e f77100c = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f77101a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f77102b;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f77103a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f77104b = 0;

        a() {
        }

        public e a() {
            return new e(this.f77103a, this.f77104b);
        }

        public a b(long j11) {
            this.f77104b = j11;
            return this;
        }

        public a c(long j11) {
            this.f77103a = j11;
            return this;
        }
    }

    e(long j11, long j12) {
        this.f77101a = j11;
        this.f77102b = j12;
    }

    public static a c() {
        return new a();
    }

    public long a() {
        return this.f77102b;
    }

    public long b() {
        return this.f77101a;
    }
}
