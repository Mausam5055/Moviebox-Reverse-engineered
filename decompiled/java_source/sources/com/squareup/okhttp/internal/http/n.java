package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.ConnectionPool;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import okio.Sink;
import okio.Timeout;

/* JADX INFO: loaded from: classes5.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Address f40544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConnectionPool f40545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private l f40546c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private df.a f40547d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f40548e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f40549f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private HttpStream f40550g;

    public n(ConnectionPool connectionPool, Address address) {
        this.f40545b = connectionPool;
        this.f40544a = address;
    }

    private void e(IOException iOException) {
        synchronized (this.f40545b) {
            try {
                if (this.f40546c != null) {
                    df.a aVar = this.f40547d;
                    if (aVar.f61345g == 0) {
                        this.f40546c.a(aVar.getRoute(), iOException);
                    } else {
                        this.f40546c = null;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        d();
    }

    /* JADX WARN: Code duplicated, block: B:30:0x004e  */
    private void f(boolean z10, boolean z11, boolean z12) {
        df.a aVar;
        df.a aVar2;
        synchronized (this.f40545b) {
            aVar = null;
            if (z12) {
                try {
                    this.f40550g = null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (z11) {
                this.f40548e = true;
            }
            df.a aVar3 = this.f40547d;
            if (aVar3 != null) {
                if (z10) {
                    aVar3.f61349k = true;
                }
                if (this.f40550g == null && (this.f40548e || aVar3.f61349k)) {
                    p(aVar3);
                    df.a aVar4 = this.f40547d;
                    if (aVar4.f61345g > 0) {
                        this.f40546c = null;
                    }
                    if (aVar4.f61348j.isEmpty()) {
                        this.f40547d.f61350l = System.nanoTime();
                        if (com.squareup.okhttp.internal.c.instance.connectionBecameIdle(this.f40545b, this.f40547d)) {
                            aVar2 = this.f40547d;
                        } else {
                            aVar2 = null;
                        }
                    } else {
                        aVar2 = null;
                    }
                    this.f40547d = null;
                    aVar = aVar2;
                }
            }
        }
        if (aVar != null) {
            com.squareup.okhttp.internal.g.d(aVar.getSocket());
        }
    }

    private df.a g(int i11, int i12, int i13, boolean z10) {
        synchronized (this.f40545b) {
            try {
                if (this.f40548e) {
                    throw new IllegalStateException("released");
                }
                if (this.f40550g != null) {
                    throw new IllegalStateException("stream != null");
                }
                if (this.f40549f) {
                    throw new IOException("Canceled");
                }
                df.a aVar = this.f40547d;
                if (aVar != null && !aVar.f61349k) {
                    return aVar;
                }
                df.a aVar2 = com.squareup.okhttp.internal.c.instance.get(this.f40545b, this.f40544a, this);
                if (aVar2 != null) {
                    this.f40547d = aVar2;
                    return aVar2;
                }
                if (this.f40546c == null) {
                    this.f40546c = new l(this.f40544a, q());
                }
                df.a aVar3 = new df.a(this.f40546c.g());
                a(aVar3);
                synchronized (this.f40545b) {
                    com.squareup.okhttp.internal.c.instance.put(this.f40545b, aVar3);
                    this.f40547d = aVar3;
                    if (this.f40549f) {
                        throw new IOException("Canceled");
                    }
                }
                aVar3.c(i11, i12, i13, this.f40544a.getConnectionSpecs(), z10);
                q().a(aVar3.getRoute());
                return aVar3;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private df.a h(int i11, int i12, int i13, boolean z10, boolean z11) {
        while (true) {
            df.a aVarG = g(i11, i12, i13, z10);
            synchronized (this.f40545b) {
                try {
                    if (aVarG.f61345g == 0) {
                        return aVarG;
                    }
                    if (aVarG.h(z11)) {
                        return aVarG;
                    }
                    d();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private boolean i(RouteException routeException) {
        IOException lastConnectException = routeException.getLastConnectException();
        if (lastConnectException instanceof ProtocolException) {
            return false;
        }
        if (lastConnectException instanceof InterruptedIOException) {
            return lastConnectException instanceof SocketTimeoutException;
        }
        return (((lastConnectException instanceof SSLHandshakeException) && (lastConnectException.getCause() instanceof CertificateException)) || (lastConnectException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private boolean j(IOException iOException) {
        return ((iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) ? false : true;
    }

    private void p(df.a aVar) {
        int size = aVar.f61348j.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (((Reference) aVar.f61348j.get(i11)).get() == this) {
                aVar.f61348j.remove(i11);
                return;
            }
        }
        throw new IllegalStateException();
    }

    private com.squareup.okhttp.internal.f q() {
        return com.squareup.okhttp.internal.c.instance.routeDatabase(this.f40545b);
    }

    public void a(df.a aVar) {
        aVar.f61348j.add(new WeakReference(this));
    }

    public void b() {
        HttpStream httpStream;
        df.a aVar;
        synchronized (this.f40545b) {
            this.f40549f = true;
            httpStream = this.f40550g;
            aVar = this.f40547d;
        }
        if (httpStream != null) {
            httpStream.cancel();
        } else if (aVar != null) {
            aVar.b();
        }
    }

    public synchronized df.a c() {
        return this.f40547d;
    }

    public void d() {
        f(true, false, true);
    }

    public HttpStream k(int i11, int i12, int i13, boolean z10, boolean z11) throws RouteException {
        HttpStream dVar;
        try {
            df.a aVarH = h(i11, i12, i13, z10, z11);
            if (aVarH.f61344f != null) {
                dVar = new e(this, aVarH.f61344f);
            } else {
                aVarH.getSocket().setSoTimeout(i12);
                Timeout timeout = aVarH.f61346h.getTimeout();
                long j11 = i12;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                timeout.timeout(j11, timeUnit);
                aVarH.f61347i.getTimeout().timeout(i13, timeUnit);
                dVar = new d(this, aVarH.f61346h, aVarH.f61347i);
            }
            synchronized (this.f40545b) {
                aVarH.f61345g++;
                this.f40550g = dVar;
            }
            return dVar;
        } catch (IOException e11) {
            throw new RouteException(e11);
        }
    }

    public void l() {
        f(true, false, false);
    }

    public boolean m(RouteException routeException) {
        if (this.f40547d != null) {
            e(routeException.getLastConnectException());
        }
        l lVar = this.f40546c;
        return (lVar == null || lVar.c()) && i(routeException);
    }

    public boolean n(IOException iOException, Sink sink) {
        df.a aVar = this.f40547d;
        if (aVar != null) {
            int i11 = aVar.f61345g;
            e(iOException);
            if (i11 == 1) {
                return false;
            }
        }
        boolean z10 = sink == null || (sink instanceof k);
        l lVar = this.f40546c;
        return (lVar == null || lVar.c()) && j(iOException) && z10;
    }

    public void o() {
        f(false, true, false);
    }

    public void r(HttpStream httpStream) {
        synchronized (this.f40545b) {
            if (httpStream != null) {
                if (httpStream == this.f40550g) {
                }
            }
            throw new IllegalStateException("expected " + this.f40550g + " but was " + httpStream);
        }
        f(false, false, true);
    }

    public String toString() {
        return this.f40544a.toString();
    }
}
