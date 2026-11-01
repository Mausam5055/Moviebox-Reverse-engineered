package nb;

import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ic.a f70294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile pb.a f70295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile qb.b f70296c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f70297d;

    public d(ic.a aVar) {
        this(aVar, new qb.c(), new pb.f());
    }

    public d(ic.a aVar, qb.b bVar, pb.a aVar2) {
        this.f70294a = aVar;
        this.f70296c = bVar;
        this.f70297d = new ArrayList();
        this.f70295b = aVar2;
        f();
    }

    private void f() {
        this.f70294a.a(new ic.a.InterfaceC0789a() { // from class: nb.c
            @Override // ic.a.InterfaceC0789a
            public final void a(ic.b bVar) {
                this.f70293a.i(bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(String str, Bundle bundle) {
        this.f70295b.a(str, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(qb.a aVar) {
        synchronized (this) {
            try {
                if (this.f70296c instanceof qb.c) {
                    this.f70297d.add(aVar);
                }
                this.f70296c.a(aVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(ic.b bVar) {
        ob.g.f().b("AnalyticsConnector now available.");
        kb.a aVar = (kb.a) bVar.get();
        pb.e eVar = new pb.e(aVar);
        e eVar2 = new e();
        if (j(aVar, eVar2) == null) {
            ob.g.f().k("Could not register Firebase Analytics listener; a listener is already registered.");
            return;
        }
        ob.g.f().b("Registered Firebase Analytics listener.");
        pb.d dVar = new pb.d();
        pb.c cVar = new pb.c(eVar, 500, TimeUnit.MILLISECONDS);
        synchronized (this) {
            try {
                Iterator it = this.f70297d.iterator();
                while (it.hasNext()) {
                    dVar.a((qb.a) it.next());
                }
                eVar2.d(dVar);
                eVar2.e(cVar);
                this.f70296c = dVar;
                this.f70295b = cVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static kb.a.InterfaceC0809a j(kb.a aVar, e eVar) {
        kb.a.InterfaceC0809a interfaceC0809aA = aVar.a("clx", eVar);
        if (interfaceC0809aA == null) {
            ob.g.f().b("Could not register AnalyticsConnectorListener with Crashlytics origin.");
            interfaceC0809aA = aVar.a(AppMeasurement.CRASH_ORIGIN, eVar);
            if (interfaceC0809aA != null) {
                ob.g.f().k("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
            }
        }
        return interfaceC0809aA;
    }

    public pb.a d() {
        return new pb.a() { // from class: nb.b
            @Override // pb.a
            public final void a(String str, Bundle bundle) {
                this.f70292a.g(str, bundle);
            }
        };
    }

    public qb.b e() {
        return new qb.b() { // from class: nb.a
            @Override // qb.b
            public final void a(qb.a aVar) {
                this.f70291a.h(aVar);
            }
        };
    }
}
