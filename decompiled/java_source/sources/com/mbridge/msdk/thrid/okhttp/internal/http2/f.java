package com.mbridge.msdk.thrid.okhttp.internal.http2;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.u;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okhttp.z;
import com.mbridge.msdk.thrid.okio.s;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.http2.Header;

/* JADX INFO: loaded from: classes5.dex */
public final class f implements com.mbridge.msdk.thrid.okhttp.internal.http.c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final List<String> f38086f = com.mbridge.msdk.thrid.okhttp.internal.c.a("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", Header.TARGET_METHOD_UTF8, Header.TARGET_PATH_UTF8, Header.TARGET_SCHEME_UTF8, Header.TARGET_AUTHORITY_UTF8);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final List<String> f38087g = com.mbridge.msdk.thrid.okhttp.internal.c.a("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r.a f38088a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.internal.connection.g f38089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g f38090c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private i f38091d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final u f38092e;

    class a extends com.mbridge.msdk.thrid.okio.h {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f38093b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f38094c;

        a(s sVar) {
            super(sVar);
            this.f38093b = false;
            this.f38094c = 0L;
        }

        private void a(IOException iOException) {
            if (this.f38093b) {
                return;
            }
            this.f38093b = true;
            f fVar = f.this;
            fVar.f38089b.a(false, fVar, this.f38094c, iOException);
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j11) throws IOException {
            try {
                long jB = d().b(cVar, j11);
                if (jB > 0) {
                    this.f38094c += jB;
                }
                return jB;
            } catch (IOException e11) {
                a(e11);
                throw e11;
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.h, com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            a(null);
        }
    }

    public f(t tVar, r.a aVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, g gVar2) {
        this.f38088a = aVar;
        this.f38089b = gVar;
        this.f38090c = gVar2;
        List<u> listU = tVar.u();
        u uVar = u.H2_PRIOR_KNOWLEDGE;
        this.f38092e = listU.contains(uVar) ? uVar : u.HTTP_2;
    }

    public static y.a a(p pVar, u uVar) throws IOException {
        p.a aVar = new p.a();
        int iB = pVar.b();
        com.mbridge.msdk.thrid.okhttp.internal.http.k kVarA = null;
        for (int i11 = 0; i11 < iB; i11++) {
            String strA = pVar.a(i11);
            String strB = pVar.b(i11);
            if (strA.equals(Header.RESPONSE_STATUS_UTF8)) {
                kVarA = com.mbridge.msdk.thrid.okhttp.internal.http.k.a("HTTP/1.1 " + strB);
            } else if (!f38087g.contains(strA)) {
                com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(aVar, strA, strB);
            }
        }
        if (kVarA != null) {
            return new y.a().a(uVar).a(kVarA.f38013b).a(kVarA.f38014c).a(aVar.a());
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    public static List<c> b(w wVar) {
        p pVarC = wVar.c();
        ArrayList arrayList = new ArrayList(pVarC.b() + 4);
        arrayList.add(new c(c.f38055f, wVar.e()));
        arrayList.add(new c(c.f38056g, com.mbridge.msdk.thrid.okhttp.internal.http.i.a(wVar.g())));
        String strA = wVar.a(HttpHeaders.HOST);
        if (strA != null) {
            arrayList.add(new c(c.f38058i, strA));
        }
        arrayList.add(new c(c.f38057h, wVar.g().l()));
        int iB = pVarC.b();
        for (int i11 = 0; i11 < iB; i11++) {
            com.mbridge.msdk.thrid.okio.f fVarC = com.mbridge.msdk.thrid.okio.f.c(pVarC.a(i11).toLowerCase(Locale.US));
            if (!f38086f.contains(fVarC.h())) {
                arrayList.add(new c(fVarC, pVarC.b(i11)));
            }
        }
        return arrayList;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public y.a a(boolean z10) throws IOException {
        y.a aVarA = a(this.f38091d.j(), this.f38092e);
        if (z10 && com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(aVarA) == 100) {
            return null;
        }
        return aVarA;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public z a(y yVar) throws IOException {
        com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = this.f38089b;
        gVar.f37974f.responseBodyStart(gVar.f37973e);
        return new com.mbridge.msdk.thrid.okhttp.internal.http.h(yVar.b(HttpHeaders.CONTENT_TYPE), com.mbridge.msdk.thrid.okhttp.internal.http.e.a(yVar), com.mbridge.msdk.thrid.okio.l.a(new a(this.f38091d.e())));
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public com.mbridge.msdk.thrid.okio.r a(w wVar, long j11) {
        return this.f38091d.d();
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void a() throws IOException {
        this.f38091d.d().close();
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void a(w wVar) throws IOException {
        if (this.f38091d != null) {
            return;
        }
        i iVarA = this.f38090c.a(b(wVar), wVar.a() != null);
        this.f38091d = iVarA;
        com.mbridge.msdk.thrid.okio.t tVarH = iVarA.h();
        long jB = this.f38088a.b();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        tVarH.a(jB, timeUnit);
        this.f38091d.l().a(this.f38088a.c(), timeUnit);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void b() throws IOException {
        this.f38090c.flush();
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void cancel() {
        i iVar = this.f38091d;
        if (iVar != null) {
            iVar.c(b.CANCEL);
        }
    }
}
