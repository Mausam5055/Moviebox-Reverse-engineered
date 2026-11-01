package com.mbridge.msdk.thrid.okhttp.internal.cache;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.u;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okhttp.z;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements r {
    public a(c cVar) {
    }

    private static p a(p pVar, p pVar2) {
        p.a aVar = new p.a();
        int iB = pVar.b();
        for (int i11 = 0; i11 < iB; i11++) {
            String strA = pVar.a(i11);
            String strB = pVar.b(i11);
            if ((!"Warning".equalsIgnoreCase(strA) || !strB.startsWith("1")) && (a(strA) || !b(strA) || pVar2.b(strA) == null)) {
                com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(aVar, strA, strB);
            }
        }
        int iB2 = pVar2.b();
        for (int i12 = 0; i12 < iB2; i12++) {
            String strA2 = pVar2.a(i12);
            if (!a(strA2) && b(strA2)) {
                com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(aVar, strA2, pVar2.b(i12));
            }
        }
        return aVar.a();
    }

    private static y a(y yVar) {
        return (yVar == null || yVar.d() == null) ? yVar : yVar.o().a((z) null).a();
    }

    static boolean a(String str) {
        return HttpHeaders.CONTENT_LENGTH.equalsIgnoreCase(str) || HttpHeaders.CONTENT_ENCODING.equalsIgnoreCase(str) || HttpHeaders.CONTENT_TYPE.equalsIgnoreCase(str);
    }

    static boolean b(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r
    public y a(r.a aVar) throws IOException {
        b bVarC = new b.a(System.currentTimeMillis(), aVar.d(), null).c();
        w wVar = bVarC.f37922a;
        y yVar = bVarC.f37923b;
        if (wVar == null && yVar == null) {
            return new y.a().a(aVar.d()).a(u.HTTP_1_1).a(504).a("Unsatisfiable Request (only-if-cached)").a(com.mbridge.msdk.thrid.okhttp.internal.c.f37903c).b(-1L).a(System.currentTimeMillis()).a();
        }
        if (wVar == null) {
            return yVar.o().a(a(yVar)).a();
        }
        y yVarA = aVar.a(wVar);
        if (yVar != null) {
            if (yVarA.k() == 304) {
                yVar.o().a(a(yVar.m(), yVarA.m())).b(yVarA.s()).a(yVarA.q()).a(a(yVar)).c(a(yVarA)).a();
                yVarA.d().close();
                throw null;
            }
            com.mbridge.msdk.thrid.okhttp.internal.c.a(yVar.d());
        }
        return yVarA.o().a(a(yVar)).c(a(yVarA)).a();
    }
}
