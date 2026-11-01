package com.mbridge.msdk.thrid.okhttp.internal.http2;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final com.mbridge.msdk.thrid.okio.f f38082a = com.mbridge.msdk.thrid.okio.f.c("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f38083b = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String[] f38084c = new String[64];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final String[] f38085d = new String[256];

    static {
        int i11 = 0;
        int i12 = 0;
        while (true) {
            String[] strArr = f38085d;
            if (i12 >= strArr.length) {
                break;
            }
            strArr[i12] = com.mbridge.msdk.thrid.okhttp.internal.c.a("%8s", Integer.toBinaryString(i12)).replace(' ', '0');
            i12++;
        }
        String[] strArr2 = f38084c;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        strArr2[9] = strArr2[1] + "|PADDED";
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i13 = 0; i13 < 3; i13++) {
            int i14 = iArr2[i13];
            int i15 = iArr[0];
            String[] strArr3 = f38084c;
            int i16 = i15 | i14;
            strArr3[i16] = strArr3[i15] + '|' + strArr3[i14];
            strArr3[i16 | 8] = strArr3[i15] + '|' + strArr3[i14] + "|PADDED";
        }
        while (true) {
            String[] strArr4 = f38084c;
            if (i11 >= strArr4.length) {
                return;
            }
            if (strArr4[i11] == null) {
                strArr4[i11] = f38085d[i11];
            }
            i11++;
        }
    }

    private e() {
    }

    static IllegalArgumentException a(String str, Object... objArr) {
        throw new IllegalArgumentException(com.mbridge.msdk.thrid.okhttp.internal.c.a(str, objArr));
    }

    static String a(byte b11, byte b12) {
        if (b12 == 0) {
            return "";
        }
        if (b11 != 2 && b11 != 3) {
            if (b11 == 4 || b11 == 6) {
                return b12 == 1 ? "ACK" : f38085d[b12];
            }
            if (b11 != 7 && b11 != 8) {
                String[] strArr = f38084c;
                String str = b12 < strArr.length ? strArr[b12] : f38085d[b12];
                if (b11 != 5 || (b12 & 4) == 0) {
                    return (b11 != 0 || (b12 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED");
                }
                return str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return f38085d[b12];
    }

    static String a(boolean z10, int i11, int i12, byte b11, byte b12) {
        String[] strArr = f38083b;
        return com.mbridge.msdk.thrid.okhttp.internal.c.a("%s 0x%08x %5d %-13s %s", z10 ? "<<" : ">>", Integer.valueOf(i11), Integer.valueOf(i12), b11 < strArr.length ? strArr[b11] : com.mbridge.msdk.thrid.okhttp.internal.c.a("0x%02x", Byte.valueOf(b11)), a(b11, b12));
    }

    static IOException b(String str, Object... objArr) throws IOException {
        throw new IOException(com.mbridge.msdk.thrid.okhttp.internal.c.a(str, objArr));
    }
}
