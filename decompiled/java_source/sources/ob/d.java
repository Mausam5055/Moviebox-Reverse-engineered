package ob;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.File;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class d implements ob.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final h f70946c = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ic.a f70947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicReference f70948b = new AtomicReference(null);

    private static final class b implements h {
        private b() {
        }

        @Override // ob.h
        public File a() {
            return null;
        }

        @Override // ob.h
        public CrashlyticsReport.a b() {
            return null;
        }

        @Override // ob.h
        public File c() {
            return null;
        }

        @Override // ob.h
        public File d() {
            return null;
        }

        @Override // ob.h
        public File e() {
            return null;
        }

        @Override // ob.h
        public File f() {
            return null;
        }

        @Override // ob.h
        public File g() {
            return null;
        }
    }

    public d(ic.a aVar) {
        this.f70947a = aVar;
        aVar.a(new ic.a.InterfaceC0789a() { // from class: ob.b
            @Override // ic.a.InterfaceC0789a
            public final void a(ic.b bVar) {
                this.f70941a.g(bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(ic.b bVar) {
        g.f().b("Crashlytics native component now available.");
        this.f70948b.set((ob.a) bVar.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(String str, String str2, long j11, sb.e eVar, ic.b bVar) {
        ((ob.a) bVar.get()).c(str, str2, j11, eVar);
    }

    @Override // ob.a
    public h a(String str) {
        ob.a aVar = (ob.a) this.f70948b.get();
        return aVar == null ? f70946c : aVar.a(str);
    }

    @Override // ob.a
    public boolean b() {
        ob.a aVar = (ob.a) this.f70948b.get();
        return aVar != null && aVar.b();
    }

    @Override // ob.a
    public void c(final String str, final String str2, final long j11, final sb.e eVar) {
        g.f().i("Deferring native open session: " + str);
        this.f70947a.a(new ic.a.InterfaceC0789a() { // from class: ob.c
            @Override // ic.a.InterfaceC0789a
            public final void a(ic.b bVar) {
                d.h(str, str2, j11, eVar, bVar);
            }
        });
    }

    @Override // ob.a
    public boolean d(String str) {
        ob.a aVar = (ob.a) this.f70948b.get();
        return aVar != null && aVar.d(str);
    }
}
