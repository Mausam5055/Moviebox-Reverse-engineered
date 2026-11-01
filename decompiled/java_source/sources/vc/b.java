package vc;

/* JADX INFO: loaded from: classes5.dex */
final class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final sc.a f77206d = sc.a.e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f77207a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ic.b f77208b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private r8.h f77209c;

    b(ic.b bVar, String str) {
        this.f77207a = str;
        this.f77208b = bVar;
    }

    private boolean a() {
        if (this.f77209c == null) {
            r8.i iVar = (r8.i) this.f77208b.get();
            if (iVar != null) {
                this.f77209c = iVar.b(this.f77207a, com.google.firebase.perf.v1.g.class, r8.c.b("proto"), new r8.g() { // from class: vc.a
                    @Override // r8.g
                    public final Object apply(Object obj) {
                        return ((com.google.firebase.perf.v1.g) obj).toByteArray();
                    }
                });
            } else {
                f77206d.j("Flg TransportFactory is not available at the moment");
            }
        }
        return this.f77209c != null;
    }

    public void b(com.google.firebase.perf.v1.g gVar) {
        if (a()) {
            this.f77209c.b(r8.d.f(gVar));
        } else {
            f77206d.j("Unable to dispatch event because Flg Transport is not available");
        }
    }
}
