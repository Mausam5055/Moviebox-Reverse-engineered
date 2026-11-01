package z8;

import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f79354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a9.d f79355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final u f79356c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b9.a f79357d;

    s(Executor executor, a9.d dVar, u uVar, b9.a aVar) {
        this.f79354a = executor;
        this.f79355b = dVar;
        this.f79356c = uVar;
        this.f79357d = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object d() {
        Iterator it = this.f79355b.H().iterator();
        while (it.hasNext()) {
            this.f79356c.a((com.google.android.datatransport.runtime.o) it.next(), 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.f79357d.b(new b9.a.InterfaceC0142a() { // from class: z8.r
            @Override // b9.a.InterfaceC0142a
            public final Object execute() {
                return this.f79353a.d();
            }
        });
    }

    public void c() {
        this.f79354a.execute(new Runnable() { // from class: z8.q
            @Override // java.lang.Runnable
            public final void run() {
                this.f79352a.e();
            }
        });
    }
}
