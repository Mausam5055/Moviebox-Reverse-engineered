package rb;

import androidx.compose.animation.core.j0;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f74288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CrashlyticsWorkers f74289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f74290c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f74291d = new a(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f74292e = new a(true);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final j f74293f = new j(128);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicMarkableReference f74294g = new AtomicMarkableReference(null, false);

    /* JADX INFO: Access modifiers changed from: private */
    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final AtomicMarkableReference f74295a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AtomicReference f74296b = new AtomicReference(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f74297c;

        public a(boolean z10) {
            this.f74297c = z10;
            this.f74295a = new AtomicMarkableReference(new d(64, z10 ? 8192 : 1024), false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() throws Throwable {
            this.f74296b.set(null);
            e();
        }

        private void d() {
            Runnable runnable = new Runnable() { // from class: rb.n
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f74287a.c();
                }
            };
            if (j0.a(this.f74296b, null, runnable)) {
                o.this.f74289b.f31298b.f(runnable);
            }
        }

        private void e() throws Throwable {
            Map mapA;
            synchronized (this) {
                try {
                    if (this.f74295a.isMarked()) {
                        mapA = ((d) this.f74295a.getReference()).a();
                        AtomicMarkableReference atomicMarkableReference = this.f74295a;
                        atomicMarkableReference.set((d) atomicMarkableReference.getReference(), false);
                    } else {
                        mapA = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (mapA != null) {
                o.this.f74288a.r(o.this.f74290c, mapA, this.f74297c);
            }
        }

        public Map b() {
            return ((d) this.f74295a.getReference()).a();
        }

        public boolean f(String str, String str2) {
            synchronized (this) {
                try {
                    if (!((d) this.f74295a.getReference()).d(str, str2)) {
                        return false;
                    }
                    AtomicMarkableReference atomicMarkableReference = this.f74295a;
                    atomicMarkableReference.set((d) atomicMarkableReference.getReference(), true);
                    d();
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public o(String str, vb.g gVar, CrashlyticsWorkers crashlyticsWorkers) {
        this.f74290c = str;
        this.f74288a = new f(gVar);
        this.f74289b = crashlyticsWorkers;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(String str, Map map, List list) throws Throwable {
        if (j() != null) {
            this.f74288a.t(str, j());
        }
        if (!map.isEmpty()) {
            this.f74288a.q(str, map);
        }
        if (list.isEmpty()) {
            return;
        }
        this.f74288a.s(str, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(List list) throws Throwable {
        this.f74288a.s(this.f74290c, list);
    }

    public static o m(String str, vb.g gVar, CrashlyticsWorkers crashlyticsWorkers) {
        f fVar = new f(gVar);
        o oVar = new o(str, gVar, crashlyticsWorkers);
        ((d) oVar.f74291d.f74295a.getReference()).e(fVar.i(str, false));
        ((d) oVar.f74292e.f74295a.getReference()).e(fVar.i(str, true));
        oVar.f74294g.set(fVar.k(str), false);
        oVar.f74293f.c(fVar.j(str));
        return oVar;
    }

    public static String n(String str, vb.g gVar) {
        return new f(gVar).k(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() throws Throwable {
        boolean z10;
        String strJ;
        synchronized (this.f74294g) {
            try {
                z10 = false;
                if (this.f74294g.isMarked()) {
                    strJ = j();
                    this.f74294g.set(strJ, false);
                    z10 = true;
                } else {
                    strJ = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            this.f74288a.t(this.f74290c, strJ);
        }
    }

    public Map g() {
        return this.f74291d.b();
    }

    public Map h() {
        return this.f74292e.b();
    }

    public List i() {
        return this.f74293f.a();
    }

    public String j() {
        return (String) this.f74294g.getReference();
    }

    public boolean p(String str, String str2) {
        return this.f74291d.f(str, str2);
    }

    public boolean q(String str, String str2) {
        return this.f74292e.f(str, str2);
    }

    public void r(final String str) {
        synchronized (this.f74290c) {
            this.f74290c = str;
            final Map mapB = this.f74291d.b();
            final List listB = this.f74293f.b();
            this.f74289b.f31298b.f(new Runnable() { // from class: rb.k
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f74280a.k(str, mapB, listB);
                }
            });
        }
    }

    public void s(String str) {
        String strC = d.c(str, 1024);
        synchronized (this.f74294g) {
            try {
                if (CommonUtils.y(strC, (String) this.f74294g.getReference())) {
                    return;
                }
                this.f74294g.set(strC, true);
                this.f74289b.f31298b.f(new Runnable() { // from class: rb.m
                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        this.f74286a.o();
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean t(List list) {
        synchronized (this.f74293f) {
            try {
                if (!this.f74293f.c(list)) {
                    return false;
                }
                final List listB = this.f74293f.b();
                this.f74289b.f31298b.f(new Runnable() { // from class: rb.l
                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        this.f74284a.l(listB);
                    }
                });
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
