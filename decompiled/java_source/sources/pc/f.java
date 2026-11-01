package pc;

/* JADX INFO: loaded from: classes5.dex */
public final class f implements com.google.firebase.perf.application.a.InterfaceC0446a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final sc.a f72420a = sc.a.e();

    @Override // com.google.firebase.perf.application.a.InterfaceC0446a
    public void a() {
        try {
            e.c();
        } catch (IllegalStateException e11) {
            f72420a.k("FirebaseApp is not initialized. Firebase Performance will not be collecting any performance metrics until initialized. %s", e11);
        }
    }
}
