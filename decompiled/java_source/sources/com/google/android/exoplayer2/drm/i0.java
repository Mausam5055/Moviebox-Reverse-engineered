package com.google.android.exoplayer2.drm;

import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public final class i0 implements j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.k.a f24989a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f24990b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f24991c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f24992d;

    public i0(String str, boolean z10, com.google.android.exoplayer2.upstream.k.a aVar) {
        com.google.android.exoplayer2.util.a.a((z10 && TextUtils.isEmpty(str)) ? false : true);
        this.f24989a = aVar;
        this.f24990b = str;
        this.f24991c = z10;
        this.f24992d = new HashMap();
    }

    private static byte[] c(com.google.android.exoplayer2.upstream.k.a aVar, String str, byte[] bArr, Map map) throws MediaDrmCallbackException {
        com.google.android.exoplayer2.upstream.i0 i0Var = new com.google.android.exoplayer2.upstream.i0(aVar.createDataSource());
        com.google.android.exoplayer2.upstream.n nVarA = new com.google.android.exoplayer2.upstream.n.b().j(str).e(map).d(2).c(bArr).b(1).a();
        int i11 = 0;
        com.google.android.exoplayer2.upstream.n nVarA2 = nVarA;
        while (true) {
            try {
                com.google.android.exoplayer2.upstream.l lVar = new com.google.android.exoplayer2.upstream.l(i0Var, nVarA2);
                try {
                    try {
                        byte[] bArrY0 = p0.Y0(lVar);
                        p0.n(lVar);
                        return bArrY0;
                    } catch (HttpDataSource$InvalidResponseCodeException e11) {
                        String strD = d(e11, i11);
                        if (strD == null) {
                            throw e11;
                        }
                        i11++;
                        nVarA2 = nVarA2.a().j(strD).a();
                        p0.n(lVar);
                    }
                } catch (Throwable th2) {
                    p0.n(lVar);
                    throw th2;
                }
            } catch (Exception e12) {
                throw new MediaDrmCallbackException(nVarA, (Uri) com.google.android.exoplayer2.util.a.e(i0Var.h()), i0Var.getResponseHeaders(), i0Var.f(), e12);
            }
        }
    }

    private static String d(HttpDataSource$InvalidResponseCodeException httpDataSource$InvalidResponseCodeException, int i11) {
        Map<String, List<String>> map;
        List<String> list;
        int i12 = httpDataSource$InvalidResponseCodeException.responseCode;
        if ((i12 != 307 && i12 != 308) || i11 >= 5 || (map = httpDataSource$InvalidResponseCodeException.headerFields) == null || (list = map.get(HttpHeaders.LOCATION)) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override // com.google.android.exoplayer2.drm.j0
    public byte[] a(UUID uuid, c0.d dVar) {
        return c(this.f24989a, dVar.b() + "&signedRequest=" + p0.D(dVar.a()), null, Collections.emptyMap());
    }

    @Override // com.google.android.exoplayer2.drm.j0
    public byte[] b(UUID uuid, c0.a aVar) throws MediaDrmCallbackException {
        String str;
        String strB = aVar.b();
        if (this.f24991c || TextUtils.isEmpty(strB)) {
            strB = this.f24990b;
        }
        if (TextUtils.isEmpty(strB)) {
            com.google.android.exoplayer2.upstream.n.b bVar = new com.google.android.exoplayer2.upstream.n.b();
            Uri uri = Uri.EMPTY;
            throw new MediaDrmCallbackException(bVar.i(uri).a(), uri, ImmutableMap.of(), 0L, new IllegalStateException("No license URL"));
        }
        HashMap map = new HashMap();
        UUID uuid2 = com.google.android.exoplayer2.l.f25190e;
        if (uuid2.equals(uuid)) {
            str = "text/xml";
        } else {
            str = com.google.android.exoplayer2.l.f25188c.equals(uuid) ? "application/json" : OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE;
        }
        map.put(HttpHeaders.CONTENT_TYPE, str);
        if (uuid2.equals(uuid)) {
            map.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        }
        synchronized (this.f24992d) {
            map.putAll(this.f24992d);
        }
        return c(this.f24989a, strB, aVar.a(), map);
    }

    public void e(String str, String str2) {
        com.google.android.exoplayer2.util.a.e(str);
        com.google.android.exoplayer2.util.a.e(str2);
        synchronized (this.f24992d) {
            this.f24992d.put(str, str2);
        }
    }
}
