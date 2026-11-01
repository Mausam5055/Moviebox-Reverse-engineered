package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes5.dex */
public final class d implements HttpStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n f40456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BufferedSource f40457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final BufferedSink f40458c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.squareup.okhttp.internal.http.g f40459d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f40460e = 0;

    private abstract class b implements Source {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final ForwardingTimeout f40461a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected boolean f40462b;

        private b() {
            this.f40461a = new ForwardingTimeout(d.this.f40457b.getTimeout());
        }

        protected final void d() {
            if (d.this.f40460e != 5) {
                throw new IllegalStateException("state: " + d.this.f40460e);
            }
            d.this.g(this.f40461a);
            d.this.f40460e = 6;
            if (d.this.f40456a != null) {
                d.this.f40456a.r(d.this);
            }
        }

        protected final void h() {
            if (d.this.f40460e == 6) {
                return;
            }
            d.this.f40460e = 6;
            if (d.this.f40456a != null) {
                d.this.f40456a.l();
                d.this.f40456a.r(d.this);
            }
        }

        @Override // okio.Source
        /* JADX INFO: renamed from: timeout */
        public Timeout getTimeout() {
            return this.f40461a;
        }
    }

    private final class c implements Sink {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ForwardingTimeout f40464a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f40465b;

        private c() {
            this.f40464a = new ForwardingTimeout(d.this.f40458c.getTimeout());
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.f40465b) {
                return;
            }
            this.f40465b = true;
            d.this.f40458c.writeUtf8("0\r\n\r\n");
            d.this.g(this.f40464a);
            d.this.f40460e = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public synchronized void flush() {
            if (this.f40465b) {
                return;
            }
            d.this.f40458c.flush();
        }

        @Override // okio.Sink
        /* JADX INFO: renamed from: timeout */
        public Timeout getTimeout() {
            return this.f40464a;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j11) throws IOException {
            if (this.f40465b) {
                throw new IllegalStateException("closed");
            }
            if (j11 == 0) {
                return;
            }
            d.this.f40458c.writeHexadecimalUnsignedLong(j11);
            d.this.f40458c.writeUtf8("\r\n");
            d.this.f40458c.write(buffer, j11);
            d.this.f40458c.writeUtf8("\r\n");
        }
    }

    /* JADX INFO: renamed from: com.squareup.okhttp.internal.http.d$d, reason: collision with other inner class name */
    private class C0581d extends b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f40467d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f40468e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final com.squareup.okhttp.internal.http.g f40469f;

        C0581d(com.squareup.okhttp.internal.http.g gVar) {
            super();
            this.f40467d = -1L;
            this.f40468e = true;
            this.f40469f = gVar;
        }

        private void k() throws IOException {
            if (this.f40467d != -1) {
                d.this.f40457b.readUtf8LineStrict();
            }
            try {
                this.f40467d = d.this.f40457b.readHexadecimalUnsignedLong();
                String strTrim = d.this.f40457b.readUtf8LineStrict().trim();
                if (this.f40467d < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f40467d + strTrim + "\"");
                }
                if (this.f40467d == 0) {
                    this.f40468e = false;
                    this.f40469f.t(d.this.n());
                    d();
                }
            } catch (NumberFormatException e11) {
                throw new ProtocolException(e11.getMessage());
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f40462b) {
                return;
            }
            if (this.f40468e && !com.squareup.okhttp.internal.g.g(this, 100, TimeUnit.MILLISECONDS)) {
                h();
            }
            this.f40462b = true;
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j11) throws IOException {
            if (j11 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j11);
            }
            if (this.f40462b) {
                throw new IllegalStateException("closed");
            }
            if (!this.f40468e) {
                return -1L;
            }
            long j12 = this.f40467d;
            if (j12 == 0 || j12 == -1) {
                k();
                if (!this.f40468e) {
                    return -1L;
                }
            }
            long j13 = d.this.f40457b.read(buffer, Math.min(j11, this.f40467d));
            if (j13 != -1) {
                this.f40467d -= j13;
                return j13;
            }
            h();
            throw new ProtocolException("unexpected end of stream");
        }
    }

    private final class e implements Sink {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ForwardingTimeout f40471a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f40472b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f40473c;

        private e(long j11) {
            this.f40471a = new ForwardingTimeout(d.this.f40458c.getTimeout());
            this.f40473c = j11;
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws ProtocolException {
            if (this.f40472b) {
                return;
            }
            this.f40472b = true;
            if (this.f40473c > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            d.this.g(this.f40471a);
            d.this.f40460e = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            if (this.f40472b) {
                return;
            }
            d.this.f40458c.flush();
        }

        @Override // okio.Sink
        /* JADX INFO: renamed from: timeout */
        public Timeout getTimeout() {
            return this.f40471a;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j11) throws IOException {
            if (this.f40472b) {
                throw new IllegalStateException("closed");
            }
            com.squareup.okhttp.internal.g.a(buffer.size(), 0L, j11);
            if (j11 <= this.f40473c) {
                d.this.f40458c.write(buffer, j11);
                this.f40473c -= j11;
                return;
            }
            throw new ProtocolException("expected " + this.f40473c + " bytes but received " + j11);
        }
    }

    private class f extends b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f40475d;

        public f(long j11) {
            super();
            this.f40475d = j11;
            if (j11 == 0) {
                d();
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f40462b) {
                return;
            }
            if (this.f40475d != 0 && !com.squareup.okhttp.internal.g.g(this, 100, TimeUnit.MILLISECONDS)) {
                h();
            }
            this.f40462b = true;
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j11) throws IOException {
            if (j11 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j11);
            }
            if (this.f40462b) {
                throw new IllegalStateException("closed");
            }
            if (this.f40475d == 0) {
                return -1L;
            }
            long j12 = d.this.f40457b.read(buffer, Math.min(this.f40475d, j11));
            if (j12 == -1) {
                h();
                throw new ProtocolException("unexpected end of stream");
            }
            long j13 = this.f40475d - j12;
            this.f40475d = j13;
            if (j13 == 0) {
                d();
            }
            return j12;
        }
    }

    private class g extends b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f40477d;

        private g() {
            super();
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f40462b) {
                return;
            }
            if (!this.f40477d) {
                h();
            }
            this.f40462b = true;
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j11) throws IOException {
            if (j11 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j11);
            }
            if (this.f40462b) {
                throw new IllegalStateException("closed");
            }
            if (this.f40477d) {
                return -1L;
            }
            long j12 = d.this.f40457b.read(buffer, j11);
            if (j12 != -1) {
                return j12;
            }
            this.f40477d = true;
            d();
            return -1L;
        }
    }

    public d(n nVar, BufferedSource bufferedSource, BufferedSink bufferedSink) {
        this.f40456a = nVar;
        this.f40457b = bufferedSource;
        this.f40458c = bufferedSink;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(ForwardingTimeout forwardingTimeout) {
        Timeout delegate = forwardingTimeout.getDelegate();
        forwardingTimeout.setDelegate(Timeout.NONE);
        delegate.clearDeadline();
        delegate.clearTimeout();
    }

    private Source h(Response response) {
        if (!com.squareup.okhttp.internal.http.g.n(response)) {
            return l(0L);
        }
        if ("chunked".equalsIgnoreCase(response.header("Transfer-Encoding"))) {
            return j(this.f40459d);
        }
        long jE = OkHeaders.e(response);
        return jE != -1 ? l(jE) : m();
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void cancel() {
        df.a aVarC = this.f40456a.c();
        if (aVarC != null) {
            aVarC.b();
        }
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public Sink createRequestBody(Request request, long j11) {
        if ("chunked".equalsIgnoreCase(request.header("Transfer-Encoding"))) {
            return i();
        }
        if (j11 != -1) {
            return k(j11);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void finishRequest() {
        this.f40458c.flush();
    }

    public Sink i() {
        if (this.f40460e == 1) {
            this.f40460e = 2;
            return new c();
        }
        throw new IllegalStateException("state: " + this.f40460e);
    }

    public Source j(com.squareup.okhttp.internal.http.g gVar) {
        if (this.f40460e == 4) {
            this.f40460e = 5;
            return new C0581d(gVar);
        }
        throw new IllegalStateException("state: " + this.f40460e);
    }

    public Sink k(long j11) {
        if (this.f40460e == 1) {
            this.f40460e = 2;
            return new e(j11);
        }
        throw new IllegalStateException("state: " + this.f40460e);
    }

    public Source l(long j11) {
        if (this.f40460e == 4) {
            this.f40460e = 5;
            return new f(j11);
        }
        throw new IllegalStateException("state: " + this.f40460e);
    }

    public Source m() {
        if (this.f40460e != 4) {
            throw new IllegalStateException("state: " + this.f40460e);
        }
        n nVar = this.f40456a;
        if (nVar == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f40460e = 5;
        nVar.l();
        return new g();
    }

    public Headers n() throws IOException {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String utf8LineStrict = this.f40457b.readUtf8LineStrict();
            if (utf8LineStrict.length() == 0) {
                return builder.build();
            }
            com.squareup.okhttp.internal.c.instance.addLenient(builder, utf8LineStrict);
        }
    }

    public Response.Builder o() throws IOException {
        m mVarA;
        Response.Builder builderHeaders;
        int i11 = this.f40460e;
        if (i11 != 1 && i11 != 3) {
            throw new IllegalStateException("state: " + this.f40460e);
        }
        do {
            try {
                mVarA = m.a(this.f40457b.readUtf8LineStrict());
                builderHeaders = new Response.Builder().protocol(mVarA.f40541a).code(mVarA.f40542b).message(mVarA.f40543c).headers(n());
            } catch (EOFException e11) {
                IOException iOException = new IOException("unexpected end of stream on " + this.f40456a);
                iOException.initCause(e11);
                throw iOException;
            }
        } while (mVarA.f40542b == 100);
        this.f40460e = 4;
        return builderHeaders;
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public ResponseBody openResponseBody(Response response) {
        return new i(response.headers(), Okio.buffer(h(response)));
    }

    public void p(Headers headers, String str) {
        if (this.f40460e != 0) {
            throw new IllegalStateException("state: " + this.f40460e);
        }
        this.f40458c.writeUtf8(str).writeUtf8("\r\n");
        int size = headers.size();
        for (int i11 = 0; i11 < size; i11++) {
            this.f40458c.writeUtf8(headers.name(i11)).writeUtf8(": ").writeUtf8(headers.value(i11)).writeUtf8("\r\n");
        }
        this.f40458c.writeUtf8("\r\n");
        this.f40460e = 1;
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public Response.Builder readResponseHeaders() {
        return o();
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void setHttpEngine(com.squareup.okhttp.internal.http.g gVar) {
        this.f40459d = gVar;
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void writeRequestBody(k kVar) throws IOException {
        if (this.f40460e == 1) {
            this.f40460e = 3;
            kVar.h(this.f40458c);
        } else {
            throw new IllegalStateException("state: " + this.f40460e);
        }
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void writeRequestHeaders(Request request) {
        this.f40459d.C();
        p(request.headers(), j.a(request, this.f40459d.k().getRoute().getProxy().type()));
    }
}
