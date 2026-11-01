package wu;

import com.tencent.tinker.lib.service.PatchResult;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class f implements ou.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile ou.c f77970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile b f77971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile a f77972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f77973d = new ArrayList();

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Throwable f77974a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f77975b;

        a(Throwable th2, int i11) {
            this.f77974a = th2;
            this.f77975b = i11;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f77976a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final long f77977b;

        b(int i11, long j11) {
            this.f77976a = i11;
            this.f77977b = j11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(String str, String str2) {
        if (this.f77970a != null) {
            this.f77970a.c(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(String str, String str2) {
        if (this.f77970a != null) {
            this.f77970a.l(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s(String str, String str2) {
        if (this.f77970a != null) {
            this.f77970a.h(str, str2);
        }
    }

    @Override // ou.c
    public void a(Throwable th2, int i11) {
        ou.c cVar = this.f77970a;
        if (cVar != null) {
            cVar.a(th2, i11);
        } else {
            this.f77972c = new a(th2, i11);
        }
    }

    @Override // ou.c
    public void b(String str, String str2) {
        ou.c cVar = this.f77970a;
        if (cVar != null) {
            cVar.b(str, str2);
        }
    }

    @Override // ou.c
    public void c(final String str, final String str2) {
        ou.c cVar = this.f77970a;
        if (cVar != null) {
            cVar.c(str, str2);
            return;
        }
        synchronized (this.f77973d) {
            this.f77973d.add(new Runnable() { // from class: wu.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f77964a.q(str, str2);
                }
            });
        }
    }

    @Override // ou.c
    public void d(String str, String str2) {
        ou.c cVar = this.f77970a;
        if (cVar != null) {
            cVar.d(str, str2);
        }
    }

    @Override // ou.c
    public void e(File file, int i11) {
        ou.c cVar = this.f77970a;
        if (cVar != null) {
            cVar.e(file, i11);
        }
    }

    @Override // ou.c
    public void f() {
        ou.c cVar = this.f77970a;
        if (cVar != null) {
            cVar.f();
        }
    }

    @Override // ou.c
    public void g(String str, Throwable th2) {
        ou.c cVar = this.f77970a;
        if (cVar != null) {
            cVar.g(str, th2);
        }
    }

    @Override // ou.c
    public void h(final String str, final String str2) {
        ou.c cVar = this.f77970a;
        if (cVar != null) {
            cVar.h(str, str2);
            return;
        }
        synchronized (this.f77973d) {
            this.f77973d.add(new Runnable() { // from class: wu.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f77961a.s(str, str2);
                }
            });
        }
    }

    @Override // ou.c
    public void i(String str, boolean z10, long j11) {
        ou.c cVar = this.f77970a;
        if (cVar != null) {
            cVar.i(str, z10, j11);
        }
    }

    @Override // ou.c
    public void j(PatchResult patchResult) {
        ou.c cVar = this.f77970a;
        if (cVar != null) {
            cVar.j(patchResult);
        }
    }

    @Override // ou.c
    public void k(int i11, long j11) {
        ou.c cVar = this.f77970a;
        if (cVar != null) {
            cVar.k(i11, j11);
        } else {
            this.f77971b = new b(i11, j11);
        }
    }

    @Override // ou.c
    public void l(final String str, final String str2) {
        ou.c cVar = this.f77970a;
        if (cVar != null) {
            cVar.l(str, str2);
            return;
        }
        synchronized (this.f77973d) {
            this.f77973d.add(new Runnable() { // from class: wu.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f77967a.r(str, str2);
                }
            });
        }
    }

    public void p(ou.c cVar) {
        this.f77970a = cVar;
        if (cVar == null) {
            return;
        }
        b bVar = this.f77971b;
        if (bVar != null) {
            this.f77971b = null;
            cVar.k(bVar.f77976a, bVar.f77977b);
        }
        a aVar = this.f77972c;
        if (aVar != null) {
            this.f77972c = null;
            cVar.a(aVar.f77974a, aVar.f77975b);
        }
        synchronized (this.f77973d) {
            try {
                Iterator it = this.f77973d.iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
                this.f77973d.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
