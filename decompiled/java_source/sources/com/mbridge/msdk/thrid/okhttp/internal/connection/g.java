package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.mbridge.msdk.thrid.okhttp.a0;
import com.mbridge.msdk.thrid.okhttp.h;
import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.t;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class g {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static final /* synthetic */ boolean f37968o = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.mbridge.msdk.thrid.okhttp.a f37969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f.a f37970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a0 f37971c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h f37972d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.mbridge.msdk.thrid.okhttp.d f37973e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final n f37974f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f37975g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final f f37976h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f37977i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private c f37978j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f37979k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f37980l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f37981m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.mbridge.msdk.thrid.okhttp.internal.http.c f37982n;

    public static final class a extends WeakReference<g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f37983a;

        a(g gVar, Object obj) {
            super(gVar);
            this.f37983a = obj;
        }
    }

    public g(h hVar, com.mbridge.msdk.thrid.okhttp.a aVar, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar, Object obj) {
        this.f37972d = hVar;
        this.f37969a = aVar;
        this.f37973e = dVar;
        this.f37974f = nVar;
        this.f37976h = new f(aVar, i(), dVar, nVar);
        this.f37975g = obj;
    }

    private c a(int i11, int i12, int i13, int i14, boolean z10) throws Throwable {
        c cVar;
        Socket socketG;
        c cVar2;
        Socket socketA;
        a0 a0VarC;
        boolean z11;
        boolean z12;
        f.a aVar;
        synchronized (this.f37972d) {
            try {
                if (this.f37980l) {
                    throw new IllegalStateException("released");
                }
                if (this.f37982n != null) {
                    throw new IllegalStateException("codec != null");
                }
                if (this.f37981m) {
                    throw new IOException("Canceled");
                }
                cVar = this.f37978j;
                socketG = g();
                cVar2 = this.f37978j;
                socketA = null;
                if (cVar2 != null) {
                    cVar = null;
                } else {
                    cVar2 = null;
                }
                if (!this.f37979k) {
                    cVar = null;
                }
                if (cVar2 == null) {
                    com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(this.f37972d, this.f37969a, this, null);
                    c cVar3 = this.f37978j;
                    if (cVar3 != null) {
                        z11 = true;
                        cVar2 = cVar3;
                        a0VarC = null;
                    } else {
                        a0VarC = this.f37971c;
                    }
                } else {
                    a0VarC = null;
                }
                z11 = false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(socketG);
        if (cVar != null) {
            this.f37974f.connectionReleased(this.f37973e, cVar);
        }
        if (z11) {
            this.f37974f.connectionAcquired(this.f37973e, cVar2);
        }
        if (cVar2 != null) {
            this.f37971c = this.f37978j.c();
            return cVar2;
        }
        if (a0VarC != null || ((aVar = this.f37970b) != null && aVar.b())) {
            z12 = false;
        } else {
            this.f37970b = this.f37976h.c();
            z12 = true;
        }
        synchronized (this.f37972d) {
            try {
                if (this.f37981m) {
                    throw new IOException("Canceled");
                }
                if (z12) {
                    List<a0> listA = this.f37970b.a();
                    int size = listA.size();
                    for (int i15 = 0; i15 < size; i15++) {
                        a0 a0Var = listA.get(i15);
                        com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(this.f37972d, this.f37969a, this, a0Var);
                        c cVar4 = this.f37978j;
                        if (cVar4 != null) {
                            this.f37971c = a0Var;
                            z11 = true;
                            cVar2 = cVar4;
                            break;
                        }
                    }
                }
                if (!z11) {
                    if (a0VarC == null) {
                        a0VarC = this.f37970b.c();
                    }
                    this.f37971c = a0VarC;
                    this.f37977i = 0;
                    cVar2 = new c(this.f37972d, a0VarC);
                    a(cVar2, false);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (z11) {
            this.f37974f.connectionAcquired(this.f37973e, cVar2);
            return cVar2;
        }
        cVar2.a(i11, i12, i13, i14, z10, this.f37973e, this.f37974f);
        i().a(cVar2.c());
        synchronized (this.f37972d) {
            try {
                this.f37979k = true;
                com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.b(this.f37972d, cVar2);
                if (cVar2.f()) {
                    socketA = com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(this.f37972d, this.f37969a, this);
                    cVar2 = this.f37978j;
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(socketA);
        this.f37974f.connectionAcquired(this.f37973e, cVar2);
        return cVar2;
    }

    private c a(int i11, int i12, int i13, int i14, boolean z10, boolean z11) throws Throwable {
        while (true) {
            c cVarA = a(i11, i12, i13, i14, z10);
            synchronized (this.f37972d) {
                try {
                    if (cVarA.f37951l == 0 && !cVarA.f()) {
                        return cVarA;
                    }
                    if (cVarA.a(z11)) {
                        return cVarA;
                    }
                    e();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0059  */
    private Socket a(boolean z10, boolean z11, boolean z12) {
        Socket socketG;
        if (!f37968o && !Thread.holdsLock(this.f37972d)) {
            throw new AssertionError();
        }
        if (z12) {
            this.f37982n = null;
        }
        if (z11) {
            this.f37980l = true;
        }
        c cVar = this.f37978j;
        if (cVar == null) {
            return null;
        }
        if (z10) {
            cVar.f37950k = true;
        }
        if (this.f37982n != null) {
            return null;
        }
        if (!this.f37980l && !cVar.f37950k) {
            return null;
        }
        a(cVar);
        if (this.f37978j.f37953n.isEmpty()) {
            this.f37978j.f37954o = System.nanoTime();
            if (com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(this.f37972d, this.f37978j)) {
                socketG = this.f37978j.g();
            } else {
                socketG = null;
            }
        } else {
            socketG = null;
        }
        this.f37978j = null;
        return socketG;
    }

    private void a(c cVar) {
        int size = cVar.f37953n.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (cVar.f37953n.get(i11).get() == this) {
                cVar.f37953n.remove(i11);
                return;
            }
        }
        throw new IllegalStateException();
    }

    private Socket g() {
        if (!f37968o && !Thread.holdsLock(this.f37972d)) {
            throw new AssertionError();
        }
        c cVar = this.f37978j;
        if (cVar == null || !cVar.f37950k) {
            return null;
        }
        return a(false, false, true);
    }

    private d i() {
        return com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(this.f37972d);
    }

    public com.mbridge.msdk.thrid.okhttp.internal.http.c a(t tVar, r.a aVar, boolean z10) {
        try {
            com.mbridge.msdk.thrid.okhttp.internal.http.c cVarA = a(aVar.a(), aVar.b(), aVar.c(), tVar.t(), tVar.z(), z10).a(tVar, aVar, this);
            synchronized (this.f37972d) {
                this.f37982n = cVarA;
            }
            return cVarA;
        } catch (IOException e11) {
            throw new e(e11);
        }
    }

    public void a() {
        com.mbridge.msdk.thrid.okhttp.internal.http.c cVar;
        c cVar2;
        synchronized (this.f37972d) {
            this.f37981m = true;
            cVar = this.f37982n;
            cVar2 = this.f37978j;
        }
        if (cVar != null) {
            cVar.cancel();
        } else if (cVar2 != null) {
            cVar2.d();
        }
    }

    public void a(c cVar, boolean z10) {
        if (!f37968o && !Thread.holdsLock(this.f37972d)) {
            throw new AssertionError();
        }
        if (this.f37978j != null) {
            throw new IllegalStateException();
        }
        this.f37978j = cVar;
        this.f37979k = z10;
        cVar.f37953n.add(new a(this, this.f37975g));
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0048  */
    public void a(IOException iOException) {
        c cVar;
        boolean z10;
        Socket socketA;
        synchronized (this.f37972d) {
            try {
                cVar = null;
                if (iOException instanceof com.mbridge.msdk.thrid.okhttp.internal.http2.n) {
                    com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar = ((com.mbridge.msdk.thrid.okhttp.internal.http2.n) iOException).f38219a;
                    if (bVar == com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM) {
                        int i11 = this.f37977i + 1;
                        this.f37977i = i11;
                        if (i11 > 1) {
                            this.f37971c = null;
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                    } else if (bVar != com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL) {
                        this.f37971c = null;
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else {
                    c cVar2 = this.f37978j;
                    if (cVar2 == null || (cVar2.f() && !(iOException instanceof com.mbridge.msdk.thrid.okhttp.internal.http2.a))) {
                        z10 = false;
                    } else {
                        if (this.f37978j.f37951l == 0) {
                            a0 a0Var = this.f37971c;
                            if (a0Var != null && iOException != null) {
                                this.f37976h.a(a0Var, iOException);
                            }
                            this.f37971c = null;
                        }
                        z10 = true;
                    }
                }
                c cVar3 = this.f37978j;
                socketA = a(z10, false, true);
                if (this.f37978j == null && this.f37979k) {
                    cVar = cVar3;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(socketA);
        if (cVar != null) {
            this.f37974f.connectionReleased(this.f37973e, cVar);
        }
    }

    public void a(boolean z10, com.mbridge.msdk.thrid.okhttp.internal.http.c cVar, long j11, IOException iOException) {
        c cVar2;
        Socket socketA;
        boolean z11;
        this.f37974f.responseBodyEnd(this.f37973e, j11);
        synchronized (this.f37972d) {
            if (cVar != null) {
                try {
                    if (cVar == this.f37982n) {
                        if (!z10) {
                            this.f37978j.f37951l++;
                        }
                        cVar2 = this.f37978j;
                        socketA = a(z10, false, true);
                        if (this.f37978j != null) {
                            cVar2 = null;
                        }
                        z11 = this.f37980l;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            throw new IllegalStateException("expected " + this.f37982n + " but was " + cVar);
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(socketA);
        if (cVar2 != null) {
            this.f37974f.connectionReleased(this.f37973e, cVar2);
        }
        if (iOException != null) {
            this.f37974f.callFailed(this.f37973e, com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(this.f37973e, iOException));
        } else if (z11) {
            com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(this.f37973e, (IOException) null);
            this.f37974f.callEnd(this.f37973e);
        }
    }

    public com.mbridge.msdk.thrid.okhttp.internal.http.c b() {
        com.mbridge.msdk.thrid.okhttp.internal.http.c cVar;
        synchronized (this.f37972d) {
            cVar = this.f37982n;
        }
        return cVar;
    }

    public Socket b(c cVar) {
        if (!f37968o && !Thread.holdsLock(this.f37972d)) {
            throw new AssertionError();
        }
        if (this.f37982n != null || this.f37978j.f37953n.size() != 1) {
            throw new IllegalStateException();
        }
        Reference<g> reference = this.f37978j.f37953n.get(0);
        Socket socketA = a(true, false, false);
        this.f37978j = cVar;
        cVar.f37953n.add(reference);
        return socketA;
    }

    public synchronized c c() {
        return this.f37978j;
    }

    public boolean d() {
        f.a aVar;
        return this.f37971c != null || ((aVar = this.f37970b) != null && aVar.b()) || this.f37976h.a();
    }

    public void e() {
        c cVar;
        Socket socketA;
        synchronized (this.f37972d) {
            cVar = this.f37978j;
            socketA = a(true, false, false);
            if (this.f37978j != null) {
                cVar = null;
            }
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(socketA);
        if (cVar != null) {
            this.f37974f.connectionReleased(this.f37973e, cVar);
        }
    }

    public void f() {
        c cVar;
        Socket socketA;
        synchronized (this.f37972d) {
            cVar = this.f37978j;
            socketA = a(false, true, false);
            if (this.f37978j != null) {
                cVar = null;
            }
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(socketA);
        if (cVar != null) {
            com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(this.f37973e, (IOException) null);
            this.f37974f.connectionReleased(this.f37973e, cVar);
            this.f37974f.callEnd(this.f37973e);
        }
    }

    public a0 h() {
        return this.f37971c;
    }

    public String toString() {
        c cVarC = c();
        return cVarC != null ? cVarC.toString() : this.f37969a.toString();
    }
}
