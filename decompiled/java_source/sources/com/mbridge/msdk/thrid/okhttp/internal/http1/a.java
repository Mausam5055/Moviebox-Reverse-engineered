package com.mbridge.msdk.thrid.okhttp.internal.http1;

import android.support.v4.media.session.PlaybackStateCompat;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.mbridge.msdk.thrid.okhttp.internal.http.h;
import com.mbridge.msdk.thrid.okhttp.internal.http.k;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.q;
import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okhttp.z;
import com.mbridge.msdk.thrid.okio.i;
import com.mbridge.msdk.thrid.okio.l;
import com.mbridge.msdk.thrid.okio.r;
import com.mbridge.msdk.thrid.okio.s;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements com.mbridge.msdk.thrid.okhttp.internal.http.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final t f38015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.internal.connection.g f38016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final com.mbridge.msdk.thrid.okio.e f38017c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final com.mbridge.msdk.thrid.okio.d f38018d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f38019e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f38020f = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;

    private abstract class b implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final i f38021a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected boolean f38022b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected long f38023c;

        private b() {
            this.f38021a = new i(a.this.f38017c.b());
            this.f38023c = 0L;
        }

        protected final void a(boolean z10, IOException iOException) throws IOException {
            a aVar = a.this;
            int i11 = aVar.f38019e;
            if (i11 == 6) {
                return;
            }
            if (i11 != 5) {
                throw new IllegalStateException("state: " + a.this.f38019e);
            }
            aVar.a(this.f38021a);
            a aVar2 = a.this;
            aVar2.f38019e = 6;
            com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = aVar2.f38016b;
            if (gVar != null) {
                gVar.a(!z10, aVar2, this.f38023c, iOException);
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j11) throws IOException {
            try {
                long jB = a.this.f38017c.b(cVar, j11);
                if (jB > 0) {
                    this.f38023c += jB;
                }
                return jB;
            } catch (IOException e11) {
                a(false, e11);
                throw e11;
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public com.mbridge.msdk.thrid.okio.t b() {
            return this.f38021a;
        }
    }

    private final class c implements r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final i f38025a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f38026b;

        c() {
            this.f38025a = new i(a.this.f38018d.b());
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j11) throws IOException {
            if (this.f38026b) {
                throw new IllegalStateException("closed");
            }
            if (j11 == 0) {
                return;
            }
            a.this.f38018d.a(j11);
            a.this.f38018d.a("\r\n");
            a.this.f38018d.a(cVar, j11);
            a.this.f38018d.a("\r\n");
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public com.mbridge.msdk.thrid.okio.t b() {
            return this.f38025a;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            if (this.f38026b) {
                return;
            }
            this.f38026b = true;
            a.this.f38018d.a("0\r\n\r\n");
            a.this.a(this.f38025a);
            a.this.f38019e = 3;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
        public synchronized void flush() throws IOException {
            if (this.f38026b) {
                return;
            }
            a.this.f38018d.flush();
        }
    }

    private class d extends b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final q f38028e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f38029f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f38030g;

        d(q qVar) {
            super();
            this.f38029f = -1L;
            this.f38030g = true;
            this.f38028e = qVar;
        }

        private void d() throws IOException {
            if (this.f38029f != -1) {
                a.this.f38017c.c();
            }
            try {
                this.f38029f = a.this.f38017c.i();
                String strTrim = a.this.f38017c.c().trim();
                if (this.f38029f < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f38029f + strTrim + "\"");
                }
                if (this.f38029f == 0) {
                    this.f38030g = false;
                    com.mbridge.msdk.thrid.okhttp.internal.http.e.a(a.this.f38015a.i(), this.f38028e, a.this.f());
                    a(true, null);
                }
            } catch (NumberFormatException e11) {
                throw new ProtocolException(e11.getMessage());
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http1.a.b, com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j11) throws IOException {
            if (j11 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j11);
            }
            if (this.f38022b) {
                throw new IllegalStateException("closed");
            }
            if (!this.f38030g) {
                return -1L;
            }
            long j12 = this.f38029f;
            if (j12 == 0 || j12 == -1) {
                d();
                if (!this.f38030g) {
                    return -1L;
                }
            }
            long jB = super.b(cVar, Math.min(j11, this.f38029f));
            if (jB != -1) {
                this.f38029f -= jB;
                return jB;
            }
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            a(false, protocolException);
            throw protocolException;
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f38022b) {
                return;
            }
            if (this.f38030g && !com.mbridge.msdk.thrid.okhttp.internal.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, null);
            }
            this.f38022b = true;
        }
    }

    private final class e implements r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final i f38032a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f38033b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f38034c;

        e(long j11) {
            this.f38032a = new i(a.this.f38018d.b());
            this.f38034c = j11;
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j11) throws IOException {
            if (this.f38033b) {
                throw new IllegalStateException("closed");
            }
            com.mbridge.msdk.thrid.okhttp.internal.c.a(cVar.size(), 0L, j11);
            if (j11 <= this.f38034c) {
                a.this.f38018d.a(cVar, j11);
                this.f38034c -= j11;
                return;
            }
            throw new ProtocolException("expected " + this.f38034c + " bytes but received " + j11);
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public com.mbridge.msdk.thrid.okio.t b() {
            return this.f38032a;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f38033b) {
                return;
            }
            this.f38033b = true;
            if (this.f38034c > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            a.this.a(this.f38032a);
            a.this.f38019e = 3;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
        public void flush() throws IOException {
            if (this.f38033b) {
                return;
            }
            a.this.f38018d.flush();
        }
    }

    private class f extends b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f38036e;

        f(long j11) throws IOException {
            super();
            this.f38036e = j11;
            if (j11 == 0) {
                a(true, null);
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http1.a.b, com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j11) throws IOException {
            if (j11 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j11);
            }
            if (this.f38022b) {
                throw new IllegalStateException("closed");
            }
            long j12 = this.f38036e;
            if (j12 == 0) {
                return -1L;
            }
            long jB = super.b(cVar, Math.min(j12, j11));
            if (jB == -1) {
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                a(false, protocolException);
                throw protocolException;
            }
            long j13 = this.f38036e - jB;
            this.f38036e = j13;
            if (j13 == 0) {
                a(true, null);
            }
            return jB;
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f38022b) {
                return;
            }
            if (this.f38036e != 0 && !com.mbridge.msdk.thrid.okhttp.internal.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, null);
            }
            this.f38022b = true;
        }
    }

    private class g extends b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f38038e;

        g() {
            super();
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http1.a.b, com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j11) throws IOException {
            if (j11 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j11);
            }
            if (this.f38022b) {
                throw new IllegalStateException("closed");
            }
            if (this.f38038e) {
                return -1L;
            }
            long jB = super.b(cVar, j11);
            if (jB != -1) {
                return jB;
            }
            this.f38038e = true;
            a(true, null);
            return -1L;
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f38022b) {
                return;
            }
            if (!this.f38038e) {
                a(false, null);
            }
            this.f38022b = true;
        }
    }

    public a(t tVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, com.mbridge.msdk.thrid.okio.e eVar, com.mbridge.msdk.thrid.okio.d dVar) {
        this.f38015a = tVar;
        this.f38016b = gVar;
        this.f38017c = eVar;
        this.f38018d = dVar;
    }

    private String e() throws IOException {
        String strD = this.f38017c.d(this.f38020f);
        this.f38020f -= (long) strD.length();
        return strD;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public y.a a(boolean z10) throws IOException {
        int i11 = this.f38019e;
        if (i11 != 1 && i11 != 3) {
            throw new IllegalStateException("state: " + this.f38019e);
        }
        try {
            k kVarA = k.a(e());
            y.a aVarA = new y.a().a(kVarA.f38012a).a(kVarA.f38013b).a(kVarA.f38014c).a(f());
            if (z10 && kVarA.f38013b == 100) {
                return null;
            }
            if (kVarA.f38013b == 100) {
                this.f38019e = 3;
                return aVarA;
            }
            this.f38019e = 4;
            return aVarA;
        } catch (EOFException e11) {
            IOException iOException = new IOException("unexpected end of stream on " + this.f38016b);
            iOException.initCause(e11);
            throw iOException;
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public z a(y yVar) throws IOException {
        com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = this.f38016b;
        gVar.f37974f.responseBodyStart(gVar.f37973e);
        String strB = yVar.b(HttpHeaders.CONTENT_TYPE);
        if (!com.mbridge.msdk.thrid.okhttp.internal.http.e.b(yVar)) {
            return new h(strB, 0L, l.a(b(0L)));
        }
        if ("chunked".equalsIgnoreCase(yVar.b("Transfer-Encoding"))) {
            return new h(strB, -1L, l.a(a(yVar.r().g())));
        }
        long jA = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(yVar);
        return jA != -1 ? new h(strB, jA, l.a(b(jA))) : new h(strB, -1L, l.a(d()));
    }

    public r a(long j11) {
        if (this.f38019e == 1) {
            this.f38019e = 2;
            return new e(j11);
        }
        throw new IllegalStateException("state: " + this.f38019e);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public r a(w wVar, long j11) {
        if ("chunked".equalsIgnoreCase(wVar.a("Transfer-Encoding"))) {
            return c();
        }
        if (j11 != -1) {
            return a(j11);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    public s a(q qVar) throws IOException {
        if (this.f38019e == 4) {
            this.f38019e = 5;
            return new d(qVar);
        }
        throw new IllegalStateException("state: " + this.f38019e);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void a() throws IOException {
        this.f38018d.flush();
    }

    public void a(p pVar, String str) throws IOException {
        if (this.f38019e != 0) {
            throw new IllegalStateException("state: " + this.f38019e);
        }
        this.f38018d.a(str).a("\r\n");
        int iB = pVar.b();
        for (int i11 = 0; i11 < iB; i11++) {
            this.f38018d.a(pVar.a(i11)).a(": ").a(pVar.b(i11)).a("\r\n");
        }
        this.f38018d.a("\r\n");
        this.f38019e = 1;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void a(w wVar) throws IOException {
        a(wVar.c(), com.mbridge.msdk.thrid.okhttp.internal.http.i.a(wVar, this.f38016b.c().c().b().type()));
    }

    void a(i iVar) {
        com.mbridge.msdk.thrid.okio.t tVarG = iVar.g();
        iVar.a(com.mbridge.msdk.thrid.okio.t.f38475d);
        tVarG.a();
        tVarG.b();
    }

    public s b(long j11) throws IOException {
        if (this.f38019e == 4) {
            this.f38019e = 5;
            return new f(j11);
        }
        throw new IllegalStateException("state: " + this.f38019e);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void b() throws IOException {
        this.f38018d.flush();
    }

    public r c() {
        if (this.f38019e == 1) {
            this.f38019e = 2;
            return new c();
        }
        throw new IllegalStateException("state: " + this.f38019e);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void cancel() {
        com.mbridge.msdk.thrid.okhttp.internal.connection.c cVarC = this.f38016b.c();
        if (cVarC != null) {
            cVarC.d();
        }
    }

    public s d() throws IOException {
        if (this.f38019e != 4) {
            throw new IllegalStateException("state: " + this.f38019e);
        }
        com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = this.f38016b;
        if (gVar == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f38019e = 5;
        gVar.e();
        return new g();
    }

    public p f() throws IOException {
        p.a aVar = new p.a();
        while (true) {
            String strE = e();
            if (strE.length() == 0) {
                return aVar.a();
            }
            com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(aVar, strE);
        }
    }
}
