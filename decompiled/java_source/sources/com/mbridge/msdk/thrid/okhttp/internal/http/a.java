package com.mbridge.msdk.thrid.okhttp.internal.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.x;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okio.l;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okhttp.k f37984a;

    public a(com.mbridge.msdk.thrid.okhttp.k kVar) {
        this.f37984a = kVar;
    }

    private String a(List<com.mbridge.msdk.thrid.okhttp.j> list) {
        StringBuilder sb2 = new StringBuilder();
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (i11 > 0) {
                sb2.append("; ");
            }
            com.mbridge.msdk.thrid.okhttp.j jVar = list.get(i11);
            sb2.append(jVar.a());
            sb2.append('=');
            sb2.append(jVar.b());
        }
        return sb2.toString();
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r
    public y a(r.a aVar) throws IOException {
        w wVarD = aVar.d();
        w.a aVarF = wVarD.f();
        x xVarA = wVarD.a();
        if (xVarA != null) {
            xVarA.b();
            long jA = xVarA.a();
            if (jA != -1) {
                aVarF.b(HttpHeaders.CONTENT_LENGTH, Long.toString(jA));
                aVarF.a("Transfer-Encoding");
            } else {
                aVarF.b("Transfer-Encoding", "chunked");
                aVarF.a(HttpHeaders.CONTENT_LENGTH);
            }
        }
        boolean z10 = false;
        if (wVarD.a(HttpHeaders.HOST) == null) {
            aVarF.b(HttpHeaders.HOST, com.mbridge.msdk.thrid.okhttp.internal.c.a(wVarD.g(), false));
        }
        if (wVarD.a("Connection") == null) {
            aVarF.b("Connection", "Keep-Alive");
        }
        if (wVarD.a("Accept-Encoding") == null && wVarD.a("Range") == null) {
            aVarF.b("Accept-Encoding", "gzip");
            z10 = true;
        }
        List<com.mbridge.msdk.thrid.okhttp.j> listA = this.f37984a.a(wVarD.g());
        if (!listA.isEmpty()) {
            aVarF.b("Cookie", a(listA));
        }
        if (wVarD.a("User-Agent") == null) {
            aVarF.b("User-Agent", com.mbridge.msdk.thrid.okhttp.internal.d.a());
        }
        y yVarA = aVar.a(aVarF.a());
        e.a(this.f37984a, wVarD.g(), yVarA.m());
        y.a aVarA = yVarA.o().a(wVarD);
        if (z10 && "gzip".equalsIgnoreCase(yVarA.b(HttpHeaders.CONTENT_ENCODING)) && e.b(yVarA)) {
            com.mbridge.msdk.thrid.okio.j jVar = new com.mbridge.msdk.thrid.okio.j(yVarA.d().k());
            aVarA.a(yVarA.m().a().b(HttpHeaders.CONTENT_ENCODING).b(HttpHeaders.CONTENT_LENGTH).a());
            aVarA.a(new h(yVarA.b(HttpHeaders.CONTENT_TYPE), -1L, l.a(jVar)));
        }
        return aVarA.a();
    }
}
