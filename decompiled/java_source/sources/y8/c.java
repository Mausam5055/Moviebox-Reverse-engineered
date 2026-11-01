package y8;

import com.google.android.datatransport.runtime.o;
import com.google.android.datatransport.runtime.t;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import r8.j;
import t8.k;
import z8.u;

/* JADX INFO: loaded from: classes4.dex */
public class c implements e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Logger f78932f = Logger.getLogger(t.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u f78933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f78934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t8.d f78935c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a9.d f78936d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b9.a f78937e;

    public c(Executor executor, t8.d dVar, u uVar, a9.d dVar2, b9.a aVar) {
        this.f78934b = executor;
        this.f78935c = dVar;
        this.f78933a = uVar;
        this.f78936d = dVar2;
        this.f78937e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object d(o oVar, com.google.android.datatransport.runtime.i iVar) {
        this.f78936d.t0(oVar, iVar);
        this.f78933a.a(oVar, 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(final o oVar, j jVar, com.google.android.datatransport.runtime.i iVar) {
        try {
            k kVarA = this.f78935c.a(oVar.b());
            if (kVarA == null) {
                String str = String.format("Transport backend '%s' is not registered", oVar.b());
                f78932f.warning(str);
                jVar.a(new IllegalArgumentException(str));
            } else {
                final com.google.android.datatransport.runtime.i iVarA = kVarA.a(iVar);
                this.f78937e.b(new b9.a.InterfaceC0142a() { // from class: y8.b
                    @Override // b9.a.InterfaceC0142a
                    public final Object execute() {
                        return this.f78929a.d(oVar, iVarA);
                    }
                });
                jVar.a(null);
            }
        } catch (Exception e11) {
            f78932f.warning("Error scheduling event " + e11.getMessage());
            jVar.a(e11);
        }
    }

    @Override // y8.e
    public void a(final o oVar, final com.google.android.datatransport.runtime.i iVar, final j jVar) {
        this.f78934b.execute(new Runnable() { // from class: y8.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f78925a.e(oVar, jVar, iVar);
            }
        });
    }
}
