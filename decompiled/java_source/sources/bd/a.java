package bd;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements cc.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final cc.a f16332a = new a();

    /* JADX INFO: renamed from: bd.a$a, reason: collision with other inner class name */
    private static final class C0145a implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final C0145a f16333a = new C0145a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f16334b = bc.b.d("rolloutId");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f16335c = bc.b.d("variantId");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f16336d = bc.b.d("parameterKey");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f16337e = bc.b.d("parameterValue");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f16338f = bc.b.d("templateVersion");

        private C0145a() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(d dVar, bc.d dVar2) {
            dVar2.e(f16334b, dVar.d());
            dVar2.e(f16335c, dVar.f());
            dVar2.e(f16336d, dVar.b());
            dVar2.e(f16337e, dVar.c());
            dVar2.a(f16338f, dVar.e());
        }
    }

    private a() {
    }

    @Override // cc.a
    public void a(cc.b bVar) {
        C0145a c0145a = C0145a.f16333a;
        bVar.a(d.class, c0145a);
        bVar.a(b.class, c0145a);
    }
}
