package rb;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements cc.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final cc.a f74231a = new a();

    /* JADX INFO: renamed from: rb.a$a, reason: collision with other inner class name */
    private static final class C0904a implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final C0904a f74232a = new C0904a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f74233b = bc.b.d("rolloutId");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f74234c = bc.b.d("parameterKey");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f74235d = bc.b.d("parameterValue");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f74236e = bc.b.d("variantId");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f74237f = bc.b.d("templateVersion");

        private C0904a() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(i iVar, bc.d dVar) {
            dVar.e(f74233b, iVar.e());
            dVar.e(f74234c, iVar.c());
            dVar.e(f74235d, iVar.d());
            dVar.e(f74236e, iVar.g());
            dVar.a(f74237f, iVar.f());
        }
    }

    private a() {
    }

    @Override // cc.a
    public void a(cc.b bVar) {
        C0904a c0904a = C0904a.f74232a;
        bVar.a(i.class, c0904a);
        bVar.a(b.class, c0904a);
    }
}
