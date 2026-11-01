package ob;

import rb.o;

/* JADX INFO: loaded from: classes5.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ic.a f70960a;

    public l(ic.a aVar) {
        this.f70960a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(e eVar, ic.b bVar) {
        ((ad.a) bVar.get()).a("firebase", eVar);
        g.f().b("Registering RemoteConfig Rollouts subscriber");
    }

    public void c(o oVar) {
        if (oVar == null) {
            g.f().k("Didn't successfully register with UserMetadata for rollouts listener");
        } else {
            final e eVar = new e(oVar);
            this.f70960a.a(new ic.a.InterfaceC0789a() { // from class: ob.k
                @Override // ic.a.InterfaceC0789a
                public final void a(ic.b bVar) {
                    l.b(eVar, bVar);
                }
            });
        }
    }
}
