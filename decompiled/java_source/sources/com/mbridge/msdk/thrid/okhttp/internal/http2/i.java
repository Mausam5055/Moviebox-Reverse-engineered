package com.mbridge.msdk.thrid.okhttp.internal.http2;

import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okio.r;
import com.mbridge.msdk.thrid.okio.s;
import com.mbridge.msdk.thrid.okio.t;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class i {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final /* synthetic */ boolean f38177l = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f38178a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f38179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f38180c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final g f38181d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Deque<p> f38182e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f38183f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f38184g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final a f38185h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final c f38186i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final c f38187j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    com.mbridge.msdk.thrid.okhttp.internal.http2.b f38188k;

    final class a implements r {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        static final /* synthetic */ boolean f38189e = true;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.mbridge.msdk.thrid.okio.c f38190a = new com.mbridge.msdk.thrid.okio.c();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f38191b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f38192c;

        a() {
        }

        private void a(boolean z10) throws IOException {
            i iVar;
            long jMin;
            i iVar2;
            synchronized (i.this) {
                i.this.f38187j.h();
                while (true) {
                    try {
                        iVar = i.this;
                        if (iVar.f38179b > 0 || this.f38192c || this.f38191b || iVar.f38188k != null) {
                            break;
                        } else {
                            iVar.k();
                        }
                    } catch (Throwable th2) {
                        i.this.f38187j.k();
                        throw th2;
                    }
                }
                iVar.f38187j.k();
                i.this.b();
                jMin = Math.min(i.this.f38179b, this.f38190a.size());
                iVar2 = i.this;
                iVar2.f38179b -= jMin;
            }
            iVar2.f38187j.h();
            try {
                i iVar3 = i.this;
                iVar3.f38181d.a(iVar3.f38180c, z10 && jMin == this.f38190a.size(), this.f38190a, jMin);
            } finally {
                i.this.f38187j.k();
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j11) throws IOException {
            if (!f38189e && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            this.f38190a.a(cVar, j11);
            while (this.f38190a.size() >= 16384) {
                a(false);
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public t b() {
            return i.this.f38187j;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!f38189e && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            synchronized (i.this) {
                try {
                    if (this.f38191b) {
                        return;
                    }
                    if (!i.this.f38185h.f38192c) {
                        if (this.f38190a.size() > 0) {
                            while (this.f38190a.size() > 0) {
                                a(true);
                            }
                        } else {
                            i iVar = i.this;
                            iVar.f38181d.a(iVar.f38180c, true, (com.mbridge.msdk.thrid.okio.c) null, 0L);
                        }
                    }
                    synchronized (i.this) {
                        this.f38191b = true;
                    }
                    i.this.f38181d.flush();
                    i.this.a();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
        public void flush() throws IOException {
            if (!f38189e && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            synchronized (i.this) {
                i.this.b();
            }
            while (this.f38190a.size() > 0) {
                a(false);
                i.this.f38181d.flush();
            }
        }
    }

    private final class b implements s {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        static final /* synthetic */ boolean f38194g = true;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.mbridge.msdk.thrid.okio.c f38195a = new com.mbridge.msdk.thrid.okio.c();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.mbridge.msdk.thrid.okio.c f38196b = new com.mbridge.msdk.thrid.okio.c();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f38197c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f38198d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f38199e;

        b(long j11) {
            this.f38197c = j11;
        }

        private void f(long j11) {
            if (!f38194g && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            i.this.f38181d.g(j11);
        }

        void a(com.mbridge.msdk.thrid.okio.e eVar, long j11) throws IOException {
            boolean z10;
            boolean z11;
            long size;
            if (!f38194g && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            while (j11 > 0) {
                synchronized (i.this) {
                    z10 = this.f38199e;
                    z11 = this.f38196b.size() + j11 > this.f38197c;
                }
                if (z11) {
                    eVar.skip(j11);
                    i.this.c(com.mbridge.msdk.thrid.okhttp.internal.http2.b.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z10) {
                    eVar.skip(j11);
                    return;
                }
                long jB = eVar.b(this.f38195a, j11);
                if (jB == -1) {
                    throw new EOFException();
                }
                j11 -= jB;
                synchronized (i.this) {
                    try {
                        if (this.f38198d) {
                            size = this.f38195a.size();
                            this.f38195a.k();
                        } else {
                            boolean z12 = this.f38196b.size() == 0;
                            this.f38196b.a(this.f38195a);
                            if (z12) {
                                i.this.notifyAll();
                            }
                            size = 0;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (size > 0) {
                    f(size);
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:39:0x0094  */
        /* JADX WARN: Code duplicated, block: B:41:0x0098 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:42:0x009a A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:43:0x009b  */
        @Override // com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j11) throws IOException {
            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar;
            long jB;
            if (j11 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j11);
            }
            while (true) {
                synchronized (i.this) {
                    try {
                        i.this.f38186i.h();
                        try {
                            i iVar = i.this;
                            bVar = iVar.f38188k;
                            if (bVar == null) {
                                bVar = null;
                            }
                            if (this.f38198d) {
                                throw new IOException("stream closed");
                            }
                            if (!iVar.f38182e.isEmpty()) {
                                i.b(i.this);
                            }
                            if (this.f38196b.size() > 0) {
                                com.mbridge.msdk.thrid.okio.c cVar2 = this.f38196b;
                                jB = cVar2.b(cVar, Math.min(j11, cVar2.size()));
                                i iVar2 = i.this;
                                long j12 = iVar2.f38178a + jB;
                                iVar2.f38178a = j12;
                                if (bVar != null || j12 < iVar2.f38181d.f38116t.c() / 2) {
                                    break;
                                    break;
                                }
                                i iVar3 = i.this;
                                iVar3.f38181d.a(iVar3.f38180c, iVar3.f38178a);
                                i.this.f38178a = 0L;
                                break;
                            }
                            if (this.f38199e || bVar != null) {
                                jB = -1;
                                break;
                            }
                            i.this.k();
                            i.this.f38186i.k();
                        } catch (Throwable th2) {
                            i.this.f38186i.k();
                            throw th2;
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                if (jB != -1) {
                    f(jB);
                    return jB;
                }
                if (bVar == null) {
                    return -1L;
                }
                throw new n(bVar);
            }
            i.this.f38186i.k();
            if (jB != -1) {
                f(jB);
                return jB;
            }
            if (bVar == null) {
                return -1L;
            }
            throw new n(bVar);
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public t b() {
            return i.this.f38186i;
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            long size;
            synchronized (i.this) {
                try {
                    this.f38198d = true;
                    size = this.f38196b.size();
                    this.f38196b.k();
                    if (!i.this.f38182e.isEmpty()) {
                        i.b(i.this);
                    }
                    i.this.notifyAll();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (size > 0) {
                f(size);
            }
            i.this.a();
        }
    }

    class c extends com.mbridge.msdk.thrid.okio.a {
        c() {
        }

        @Override // com.mbridge.msdk.thrid.okio.a
        protected IOException b(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // com.mbridge.msdk.thrid.okio.a
        protected void j() {
            i.this.c(com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
            i.this.f38181d.l();
        }

        public void k() throws IOException {
            if (i()) {
                throw b((IOException) null);
            }
        }
    }

    i(int i11, g gVar, boolean z10, boolean z11, p pVar) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f38182e = arrayDeque;
        this.f38186i = new c();
        this.f38187j = new c();
        this.f38188k = null;
        if (gVar == null) {
            throw new NullPointerException("connection == null");
        }
        this.f38180c = i11;
        this.f38181d = gVar;
        this.f38179b = gVar.f38117u.c();
        b bVar = new b(gVar.f38116t.c());
        this.f38184g = bVar;
        a aVar = new a();
        this.f38185h = aVar;
        bVar.f38199e = z11;
        aVar.f38192c = z10;
        if (pVar != null) {
            arrayDeque.add(pVar);
        }
        if (f() && pVar != null) {
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
        }
        if (!f() && pVar == null) {
            throw new IllegalStateException("remotely-initiated streams should have headers");
        }
    }

    static /* synthetic */ com.mbridge.msdk.thrid.okhttp.internal.http2.c.a b(i iVar) {
        iVar.getClass();
        return null;
    }

    private boolean b(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        if (!f38177l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            try {
                if (this.f38188k != null) {
                    return false;
                }
                if (this.f38184g.f38199e && this.f38185h.f38192c) {
                    return false;
                }
                this.f38188k = bVar;
                notifyAll();
                this.f38181d.c(this.f38180c);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x002b  */
    void a() throws IOException {
        boolean z10;
        boolean zG;
        if (!f38177l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            try {
                b bVar = this.f38184g;
                if (bVar.f38199e || !bVar.f38198d) {
                    z10 = false;
                } else {
                    a aVar = this.f38185h;
                    if (aVar.f38192c || aVar.f38191b) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                zG = g();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
        } else {
            if (zG) {
                return;
            }
            this.f38181d.c(this.f38180c);
        }
    }

    void a(long j11) {
        this.f38179b += j11;
        if (j11 > 0) {
            notifyAll();
        }
    }

    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) throws IOException {
        if (b(bVar)) {
            this.f38181d.b(this.f38180c, bVar);
        }
    }

    void a(com.mbridge.msdk.thrid.okio.e eVar, int i11) throws IOException {
        if (!f38177l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        this.f38184g.a(eVar, i11);
    }

    void a(List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
        boolean zG;
        if (!f38177l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.f38183f = true;
            this.f38182e.add(com.mbridge.msdk.thrid.okhttp.internal.c.b(list));
            zG = g();
            notifyAll();
        }
        if (zG) {
            return;
        }
        this.f38181d.c(this.f38180c);
    }

    void b() throws IOException {
        a aVar = this.f38185h;
        if (aVar.f38191b) {
            throw new IOException("stream closed");
        }
        if (aVar.f38192c) {
            throw new IOException("stream finished");
        }
        if (this.f38188k != null) {
            throw new n(this.f38188k);
        }
    }

    public int c() {
        return this.f38180c;
    }

    public void c(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        if (b(bVar)) {
            this.f38181d.c(this.f38180c, bVar);
        }
    }

    public r d() {
        synchronized (this) {
            try {
                if (!this.f38183f && !f()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.f38185h;
    }

    synchronized void d(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        if (this.f38188k == null) {
            this.f38188k = bVar;
            notifyAll();
        }
    }

    public s e() {
        return this.f38184g;
    }

    public boolean f() {
        return this.f38181d.f38097a == ((this.f38180c & 1) == 1);
    }

    public synchronized boolean g() {
        try {
            if (this.f38188k != null) {
                return false;
            }
            b bVar = this.f38184g;
            if (bVar.f38199e || bVar.f38198d) {
                a aVar = this.f38185h;
                if ((aVar.f38192c || aVar.f38191b) && this.f38183f) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public t h() {
        return this.f38186i;
    }

    void i() {
        boolean zG;
        if (!f38177l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.f38184g.f38199e = true;
            zG = g();
            notifyAll();
        }
        if (zG) {
            return;
        }
        this.f38181d.c(this.f38180c);
    }

    public synchronized p j() throws IOException {
        this.f38186i.h();
        while (this.f38182e.isEmpty() && this.f38188k == null) {
            try {
                k();
            } catch (Throwable th2) {
                this.f38186i.k();
                throw th2;
            }
        }
        this.f38186i.k();
        if (this.f38182e.isEmpty()) {
            throw new n(this.f38188k);
        }
        return this.f38182e.removeFirst();
    }

    void k() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public t l() {
        return this.f38187j;
    }
}
