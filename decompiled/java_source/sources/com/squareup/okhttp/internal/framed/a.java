package com.squareup.okhttp.internal.framed;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.Sink;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f40342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f40343c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final FramedConnection f40344d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f40345e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f40346f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final c f40347g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final b f40348h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f40341a = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final d f40349i = new d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final d f40350j = new d();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ErrorCode f40351k = null;

    final class b implements Sink {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Buffer f40352a = new Buffer();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f40353b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f40354c;

        b() {
        }

        private void i(boolean z10) throws IOException {
            long jMin;
            a aVar;
            synchronized (a.this) {
                a.this.f40350j.enter();
                while (true) {
                    try {
                        a aVar2 = a.this;
                        if (aVar2.f40342b > 0 || this.f40354c || this.f40353b || aVar2.f40351k != null) {
                            break;
                        } else {
                            a.this.z();
                        }
                    } catch (Throwable th2) {
                        a.this.f40350j.exitAndThrowIfTimedOut();
                        throw th2;
                    }
                }
                a.this.f40350j.exitAndThrowIfTimedOut();
                a.this.k();
                jMin = Math.min(a.this.f40342b, this.f40352a.size());
                aVar = a.this;
                aVar.f40342b -= jMin;
            }
            aVar.f40350j.enter();
            try {
                a.this.f40344d.B0(a.this.f40343c, z10 && jMin == this.f40352a.size(), this.f40352a, jMin);
            } finally {
                a.this.f40350j.exitAndThrowIfTimedOut();
            }
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (a.this) {
                try {
                    if (this.f40353b) {
                        return;
                    }
                    if (!a.this.f40348h.f40354c) {
                        if (this.f40352a.size() > 0) {
                            while (this.f40352a.size() > 0) {
                                i(true);
                            }
                        } else {
                            a.this.f40344d.B0(a.this.f40343c, true, null, 0L);
                        }
                    }
                    synchronized (a.this) {
                        this.f40353b = true;
                    }
                    a.this.f40344d.flush();
                    a.this.j();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            synchronized (a.this) {
                a.this.k();
            }
            while (this.f40352a.size() > 0) {
                i(false);
                a.this.f40344d.flush();
            }
        }

        @Override // okio.Sink
        /* JADX INFO: renamed from: timeout */
        public Timeout getTimeout() {
            return a.this.f40350j;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j11) throws IOException {
            this.f40352a.write(buffer, j11);
            while (this.f40352a.size() >= 16384) {
                i(false);
            }
        }
    }

    private final class c implements Source {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Buffer f40356a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Buffer f40357b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f40358c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f40359d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f40360e;

        private c(long j11) {
            this.f40356a = new Buffer();
            this.f40357b = new Buffer();
            this.f40358c = j11;
        }

        private void k() throws IOException {
            if (this.f40359d) {
                throw new IOException("stream closed");
            }
            if (a.this.f40351k == null) {
                return;
            }
            throw new IOException("stream was reset: " + a.this.f40351k);
        }

        private void m() throws IOException {
            a.this.f40349i.enter();
            while (this.f40357b.size() == 0 && !this.f40360e && !this.f40359d && a.this.f40351k == null) {
                try {
                    a.this.z();
                } catch (Throwable th2) {
                    a.this.f40349i.exitAndThrowIfTimedOut();
                    throw th2;
                }
            }
            a.this.f40349i.exitAndThrowIfTimedOut();
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            synchronized (a.this) {
                this.f40359d = true;
                this.f40357b.clear();
                a.this.notifyAll();
            }
            a.this.j();
        }

        void l(BufferedSource bufferedSource, long j11) throws IOException {
            boolean z10;
            boolean z11;
            while (j11 > 0) {
                synchronized (a.this) {
                    z10 = this.f40360e;
                    z11 = this.f40357b.size() + j11 > this.f40358c;
                }
                if (z11) {
                    bufferedSource.skip(j11);
                    a.this.n(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z10) {
                    bufferedSource.skip(j11);
                    return;
                }
                long j12 = bufferedSource.read(this.f40356a, j11);
                if (j12 == -1) {
                    throw new EOFException();
                }
                j11 -= j12;
                synchronized (a.this) {
                    try {
                        boolean z12 = this.f40357b.size() == 0;
                        this.f40357b.writeAll(this.f40356a);
                        if (z12) {
                            a.this.notifyAll();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j11) {
            if (j11 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j11);
            }
            synchronized (a.this) {
                try {
                    m();
                    k();
                    if (this.f40357b.size() == 0) {
                        return -1L;
                    }
                    Buffer buffer2 = this.f40357b;
                    long j12 = buffer2.read(buffer, Math.min(j11, buffer2.size()));
                    a aVar = a.this;
                    long j13 = aVar.f40341a + j12;
                    aVar.f40341a = j13;
                    if (j13 >= aVar.f40344d.f40324p.e(65536) / 2) {
                        a.this.f40344d.H0(a.this.f40343c, a.this.f40341a);
                        a.this.f40341a = 0L;
                    }
                    synchronized (a.this.f40344d) {
                        try {
                            a.this.f40344d.f40322n += j12;
                            if (a.this.f40344d.f40322n >= a.this.f40344d.f40324p.e(65536) / 2) {
                                a.this.f40344d.H0(0, a.this.f40344d.f40322n);
                                a.this.f40344d.f40322n = 0L;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    return j12;
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }

        @Override // okio.Source
        /* JADX INFO: renamed from: timeout */
        public Timeout getTimeout() {
            return a.this.f40349i;
        }
    }

    class d extends AsyncTimeout {
        d() {
        }

        public void exitAndThrowIfTimedOut() throws IOException {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }

        @Override // okio.AsyncTimeout
        protected IOException newTimeoutException(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // okio.AsyncTimeout
        protected void timedOut() {
            a.this.n(ErrorCode.CANCEL);
        }
    }

    a(int i11, FramedConnection framedConnection, boolean z10, boolean z11, List list) {
        if (framedConnection == null) {
            throw new NullPointerException("connection == null");
        }
        if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        }
        this.f40343c = i11;
        this.f40344d = framedConnection;
        this.f40342b = framedConnection.f40325q.e(65536);
        c cVar = new c(framedConnection.f40324p.e(65536));
        this.f40347g = cVar;
        b bVar = new b();
        this.f40348h = bVar;
        cVar.f40360e = z11;
        bVar.f40354c = z10;
        this.f40345e = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        boolean z10;
        boolean zT;
        synchronized (this) {
            try {
                z10 = !this.f40347g.f40360e && this.f40347g.f40359d && (this.f40348h.f40354c || this.f40348h.f40353b);
                zT = t();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            l(ErrorCode.CANCEL);
        } else {
            if (zT) {
                return;
            }
            this.f40344d.v0(this.f40343c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() throws IOException {
        if (this.f40348h.f40353b) {
            throw new IOException("stream closed");
        }
        if (this.f40348h.f40354c) {
            throw new IOException("stream finished");
        }
        if (this.f40351k == null) {
            return;
        }
        throw new IOException("stream was reset: " + this.f40351k);
    }

    private boolean m(ErrorCode errorCode) {
        synchronized (this) {
            try {
                if (this.f40351k != null) {
                    return false;
                }
                if (this.f40347g.f40360e && this.f40348h.f40354c) {
                    return false;
                }
                this.f40351k = errorCode;
                notifyAll();
                this.f40344d.v0(this.f40343c);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            throw new InterruptedIOException();
        }
    }

    public Timeout A() {
        return this.f40350j;
    }

    void i(long j11) {
        this.f40342b += j11;
        if (j11 > 0) {
            notifyAll();
        }
    }

    public void l(ErrorCode errorCode) {
        if (m(errorCode)) {
            this.f40344d.F0(this.f40343c, errorCode);
        }
    }

    public void n(ErrorCode errorCode) {
        if (m(errorCode)) {
            this.f40344d.G0(this.f40343c, errorCode);
        }
    }

    public int o() {
        return this.f40343c;
    }

    public synchronized List p() {
        List list;
        try {
            this.f40349i.enter();
            while (this.f40346f == null && this.f40351k == null) {
                try {
                    z();
                } catch (Throwable th2) {
                    this.f40349i.exitAndThrowIfTimedOut();
                    throw th2;
                }
            }
            this.f40349i.exitAndThrowIfTimedOut();
            list = this.f40346f;
            if (list == null) {
                throw new IOException("stream was reset: " + this.f40351k);
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return list;
    }

    public Sink q() {
        synchronized (this) {
            try {
                if (this.f40346f == null && !s()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.f40348h;
    }

    public Source r() {
        return this.f40347g;
    }

    public boolean s() {
        return this.f40344d.f40310b == ((this.f40343c & 1) == 1);
    }

    public synchronized boolean t() {
        try {
            if (this.f40351k != null) {
                return false;
            }
            if (this.f40347g.f40360e || this.f40347g.f40359d) {
                if ((this.f40348h.f40354c || this.f40348h.f40353b) && this.f40346f != null) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public Timeout u() {
        return this.f40349i;
    }

    void v(BufferedSource bufferedSource, int i11) {
        this.f40347g.l(bufferedSource, i11);
    }

    void w() {
        boolean zT;
        synchronized (this) {
            this.f40347g.f40360e = true;
            zT = t();
            notifyAll();
        }
        if (zT) {
            return;
        }
        this.f40344d.v0(this.f40343c);
    }

    void x(List list, HeadersMode headersMode) {
        ErrorCode errorCode;
        boolean zT;
        synchronized (this) {
            try {
                errorCode = null;
                zT = true;
                if (this.f40346f == null) {
                    if (headersMode.failIfHeadersAbsent()) {
                        errorCode = ErrorCode.PROTOCOL_ERROR;
                    } else {
                        this.f40346f = list;
                        zT = t();
                        notifyAll();
                    }
                } else if (headersMode.failIfHeadersPresent()) {
                    errorCode = ErrorCode.STREAM_IN_USE;
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(this.f40346f);
                    arrayList.addAll(list);
                    this.f40346f = arrayList;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (errorCode != null) {
            n(errorCode);
        } else {
            if (zT) {
                return;
            }
            this.f40344d.v0(this.f40343c);
        }
    }

    synchronized void y(ErrorCode errorCode) {
        if (this.f40351k == null) {
            this.f40351k = errorCode;
            notifyAll();
        }
    }
}
