package com.mbridge.msdk.thrid.okhttp;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
final class v implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final t f38367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.internal.http.j f38368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final com.mbridge.msdk.thrid.okio.a f38369c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private n f38370d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final w f38371e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final boolean f38372f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f38373g;

    class a extends com.mbridge.msdk.thrid.okio.a {
        a() {
        }

        @Override // com.mbridge.msdk.thrid.okio.a
        protected void j() {
            v.this.cancel();
        }
    }

    final class b extends com.mbridge.msdk.thrid.okhttp.internal.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final /* synthetic */ boolean f38375c = true;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ v f38376b;

        void a(ExecutorService executorService) {
            if (!f38375c && Thread.holdsLock(this.f38376b.f38367a.j())) {
                throw new AssertionError();
            }
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e11) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e11);
                    this.f38376b.f38370d.callFailed(this.f38376b, interruptedIOException);
                    throw null;
                }
            } catch (Throwable th2) {
                this.f38376b.f38367a.j().a(this);
                throw th2;
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        protected void b() {
            boolean z10;
            Throwable th2;
            this.f38376b.f38369c.h();
            try {
                try {
                    this.f38376b.c();
                    try {
                        throw null;
                    } catch (Throwable th3) {
                        th2 = th3;
                        z10 = true;
                        this.f38376b.cancel();
                        if (z10) {
                            throw th2;
                        }
                        new IOException("canceled due to " + th2);
                        throw null;
                    }
                } catch (Throwable th4) {
                    this.f38376b.f38367a.j().a(this);
                    throw th4;
                }
            } catch (IOException e11) {
                this.f38376b.f38370d.callFailed(this.f38376b, this.f38376b.a(e11));
                throw null;
            } catch (Throwable th5) {
                z10 = false;
                th2 = th5;
            }
        }

        v c() {
            return this.f38376b;
        }

        String d() {
            return this.f38376b.f38371e.g().g();
        }
    }

    private v(t tVar, w wVar, boolean z10) {
        this.f38367a = tVar;
        this.f38371e = wVar;
        this.f38372f = z10;
        this.f38368b = new com.mbridge.msdk.thrid.okhttp.internal.http.j(tVar, z10);
        a aVar = new a();
        this.f38369c = aVar;
        aVar.a(tVar.b(), TimeUnit.MILLISECONDS);
    }

    static v a(t tVar, w wVar, boolean z10) {
        v vVar = new v(tVar, wVar, z10);
        vVar.f38370d = tVar.l().a(vVar);
        return vVar;
    }

    private void a() {
        this.f38368b.a(com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a("response.body().close()"));
    }

    IOException a(IOException iOException) {
        if (!this.f38369c.i()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public v clone() {
        return a(this.f38367a, this.f38371e, this.f38372f);
    }

    y c() throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f38367a.p());
        arrayList.add(this.f38368b);
        arrayList.add(new com.mbridge.msdk.thrid.okhttp.internal.http.a(this.f38367a.i()));
        this.f38367a.q();
        arrayList.add(new com.mbridge.msdk.thrid.okhttp.internal.cache.a(null));
        arrayList.add(new com.mbridge.msdk.thrid.okhttp.internal.connection.a(this.f38367a));
        if (!this.f38372f) {
            arrayList.addAll(this.f38367a.r());
        }
        arrayList.add(new com.mbridge.msdk.thrid.okhttp.internal.http.b(this.f38372f));
        y yVarA = new com.mbridge.msdk.thrid.okhttp.internal.http.g(arrayList, null, null, null, 0, this.f38371e, this, this.f38370d, this.f38367a.e(), this.f38367a.y(), this.f38367a.C()).a(this.f38371e);
        if (!this.f38368b.b()) {
            return yVarA;
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(yVarA);
        throw new IOException("Canceled");
    }

    @Override // com.mbridge.msdk.thrid.okhttp.d
    public void cancel() {
        this.f38368b.a();
    }

    @Override // com.mbridge.msdk.thrid.okhttp.d
    public y d() throws IOException {
        synchronized (this) {
            if (this.f38373g) {
                throw new IllegalStateException("Already Executed");
            }
            this.f38373g = true;
        }
        a();
        this.f38369c.h();
        this.f38370d.callStart(this);
        try {
            try {
                this.f38367a.j().a(this);
                y yVarC = c();
                if (yVarC == null) {
                    throw new IOException("Canceled");
                }
                this.f38367a.j().b(this);
                return yVarC;
            } catch (IOException e11) {
                IOException iOExceptionA = a(e11);
                this.f38370d.callFailed(this, iOExceptionA);
                throw iOExceptionA;
            }
        } catch (Throwable th2) {
            this.f38367a.j().b(this);
            throw th2;
        }
        this.f38367a.j().b(this);
        throw th2;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.d
    public boolean h() {
        return this.f38368b.b();
    }
}
