package com.google.zxing.oned.rss.expanded.decoders;

/* JADX INFO: loaded from: classes4.dex */
abstract class h extends j {
    h(id.a aVar) {
        super(aVar);
    }

    private static void e(StringBuilder sb2, int i11) {
        int i12 = 0;
        for (int i13 = 0; i13 < 13; i13++) {
            int iCharAt = sb2.charAt(i13 + i11) - '0';
            if ((i13 & 1) == 0) {
                iCharAt *= 3;
            }
            i12 += iCharAt;
        }
        int i14 = 10 - (i12 % 10);
        sb2.append(i14 != 10 ? i14 : 0);
    }

    final void f(StringBuilder sb2, int i11) {
        sb2.append("(01)");
        int length = sb2.length();
        sb2.append('9');
        g(sb2, i11, length);
    }

    final void g(StringBuilder sb2, int i11, int i12) {
        for (int i13 = 0; i13 < 4; i13++) {
            int iF = b().f((i13 * 10) + i11, 10);
            if (iF / 100 == 0) {
                sb2.append('0');
            }
            if (iF / 10 == 0) {
                sb2.append('0');
            }
            sb2.append(iF);
        }
        e(sb2, i12);
    }
}
