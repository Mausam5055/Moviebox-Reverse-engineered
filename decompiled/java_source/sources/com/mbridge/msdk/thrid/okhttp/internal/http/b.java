package com.mbridge.msdk.thrid.okhttp.internal.http;

import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okio.l;
import java.io.IOException;
import java.net.ProtocolException;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f37985a;

    static final class a extends com.mbridge.msdk.thrid.okio.g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f37986b;

        a(com.mbridge.msdk.thrid.okio.r rVar) {
            super(rVar);
        }

        @Override // com.mbridge.msdk.thrid.okio.g, com.mbridge.msdk.thrid.okio.r
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j11) throws IOException {
            super.a(cVar, j11);
            this.f37986b += j11;
        }
    }

    public b(boolean z10) {
        this.f37985a = z10;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r
    public y a(r.a aVar) throws IOException {
        g gVar = (g) aVar;
        c cVarH = gVar.h();
        com.mbridge.msdk.thrid.okhttp.internal.connection.g gVarI = gVar.i();
        com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar = (com.mbridge.msdk.thrid.okhttp.internal.connection.c) gVar.f();
        w wVarD = gVar.d();
        long jCurrentTimeMillis = System.currentTimeMillis();
        gVar.g().requestHeadersStart(gVar.e());
        cVarH.a(wVarD);
        gVar.g().requestHeadersEnd(gVar.e(), wVarD);
        y.a aVarA = null;
        if (f.a(wVarD.e()) && wVarD.a() != null) {
            if ("100-continue".equalsIgnoreCase(wVarD.a("Expect"))) {
                cVarH.b();
                gVar.g().responseHeadersStart(gVar.e());
                aVarA = cVarH.a(true);
            }
            if (aVarA == null) {
                gVar.g().requestBodyStart(gVar.e());
                a aVar2 = new a(cVarH.a(wVarD, wVarD.a().a()));
                com.mbridge.msdk.thrid.okio.d dVarA = l.a(aVar2);
                wVarD.a().a(dVarA);
                dVarA.close();
                gVar.g().requestBodyEnd(gVar.e(), aVar2.f37986b);
            } else if (!cVar.f()) {
                gVarI.e();
            }
        }
        cVarH.a();
        if (aVarA == null) {
            gVar.g().responseHeadersStart(gVar.e());
            aVarA = cVarH.a(false);
        }
        y yVarA = aVarA.a(wVarD).a(gVarI.c().b()).b(jCurrentTimeMillis).a(System.currentTimeMillis()).a();
        int iK = yVarA.k();
        if (iK == 100) {
            yVarA = cVarH.a(false).a(wVarD).a(gVarI.c().b()).b(jCurrentTimeMillis).a(System.currentTimeMillis()).a();
            iK = yVarA.k();
        }
        gVar.g().responseHeadersEnd(gVar.e(), yVarA);
        y yVarA2 = (this.f37985a && iK == 101) ? yVarA.o().a(com.mbridge.msdk.thrid.okhttp.internal.c.f37903c).a() : yVarA.o().a(cVarH.a(yVarA)).a();
        if ("close".equalsIgnoreCase(yVarA2.r().a("Connection")) || "close".equalsIgnoreCase(yVarA2.b("Connection"))) {
            gVarI.e();
        }
        if ((iK != 204 && iK != 205) || yVarA2.d().h() <= 0) {
            return yVarA2;
        }
        throw new ProtocolException("HTTP " + iK + " had non-zero Content-Length: " + yVarA2.d().h());
    }
}
