package com.mbridge.msdk.thrid.okhttp.internal.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.q;
import com.mbridge.msdk.thrid.okhttp.y;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.mbridge.msdk.thrid.okio.f f37990a = com.mbridge.msdk.thrid.okio.f.c("\"\\");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.mbridge.msdk.thrid.okio.f f37991b = com.mbridge.msdk.thrid.okio.f.c("\t ,=");

    public static int a(String str, int i11) {
        try {
            long j11 = Long.parseLong(str);
            if (j11 > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (j11 < 0) {
                return 0;
            }
            return (int) j11;
        } catch (NumberFormatException unused) {
            return i11;
        }
    }

    public static int a(String str, int i11, String str2) {
        while (i11 < str.length() && str2.indexOf(str.charAt(i11)) == -1) {
            i11++;
        }
        return i11;
    }

    public static long a(p pVar) {
        return a(pVar.b(HttpHeaders.CONTENT_LENGTH));
    }

    public static long a(y yVar) {
        return a(yVar.m());
    }

    private static long a(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static void a(com.mbridge.msdk.thrid.okhttp.k kVar, q qVar, p pVar) {
        if (kVar == com.mbridge.msdk.thrid.okhttp.k.f38272a) {
            return;
        }
        List<com.mbridge.msdk.thrid.okhttp.j> listA = com.mbridge.msdk.thrid.okhttp.j.a(qVar, pVar);
        if (listA.isEmpty()) {
            return;
        }
        kVar.a(qVar, listA);
    }

    public static int b(String str, int i11) {
        char cCharAt;
        while (i11 < str.length() && ((cCharAt = str.charAt(i11)) == ' ' || cCharAt == '\t')) {
            i11++;
        }
        return i11;
    }

    public static boolean b(y yVar) {
        if (yVar.r().e().equals("HEAD")) {
            return false;
        }
        int iK = yVar.k();
        return (((iK >= 100 && iK < 200) || iK == 204 || iK == 304) && a(yVar) == -1 && !"chunked".equalsIgnoreCase(yVar.b("Transfer-Encoding"))) ? false : true;
    }
}
