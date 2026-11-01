package v8;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final b f77087b = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f77088a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private d f77089a = null;

        a() {
        }

        public b a() {
            return new b(this.f77089a);
        }

        public a b(d dVar) {
            this.f77089a = dVar;
            return this;
        }
    }

    b(d dVar) {
        this.f77088a = dVar;
    }

    public static a b() {
        return new a();
    }

    public d a() {
        return this.f77088a;
    }
}
