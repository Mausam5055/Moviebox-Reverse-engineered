package com.google.zxing.oned;

import com.google.zxing.NotFoundException;
import qd.p;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int[][] f32923a = {new int[]{2, 1, 2, 2, 2, 2}, new int[]{2, 2, 2, 1, 2, 2}, new int[]{2, 2, 2, 2, 2, 1}, new int[]{1, 2, 1, 2, 2, 3}, new int[]{1, 2, 1, 3, 2, 2}, new int[]{1, 3, 1, 2, 2, 2}, new int[]{1, 2, 2, 2, 1, 3}, new int[]{1, 2, 2, 3, 1, 2}, new int[]{1, 3, 2, 2, 1, 2}, new int[]{2, 2, 1, 2, 1, 3}, new int[]{2, 2, 1, 3, 1, 2}, new int[]{2, 3, 1, 2, 1, 2}, new int[]{1, 1, 2, 2, 3, 2}, new int[]{1, 2, 2, 1, 3, 2}, new int[]{1, 2, 2, 2, 3, 1}, new int[]{1, 1, 3, 2, 2, 2}, new int[]{1, 2, 3, 1, 2, 2}, new int[]{1, 2, 3, 2, 2, 1}, new int[]{2, 2, 3, 2, 1, 1}, new int[]{2, 2, 1, 1, 3, 2}, new int[]{2, 2, 1, 2, 3, 1}, new int[]{2, 1, 3, 2, 1, 2}, new int[]{2, 2, 3, 1, 1, 2}, new int[]{3, 1, 2, 1, 3, 1}, new int[]{3, 1, 1, 2, 2, 2}, new int[]{3, 2, 1, 1, 2, 2}, new int[]{3, 2, 1, 2, 2, 1}, new int[]{3, 1, 2, 2, 1, 2}, new int[]{3, 2, 2, 1, 1, 2}, new int[]{3, 2, 2, 2, 1, 1}, new int[]{2, 1, 2, 1, 2, 3}, new int[]{2, 1, 2, 3, 2, 1}, new int[]{2, 3, 2, 1, 2, 1}, new int[]{1, 1, 1, 3, 2, 3}, new int[]{1, 3, 1, 1, 2, 3}, new int[]{1, 3, 1, 3, 2, 1}, new int[]{1, 1, 2, 3, 1, 3}, new int[]{1, 3, 2, 1, 1, 3}, new int[]{1, 3, 2, 3, 1, 1}, new int[]{2, 1, 1, 3, 1, 3}, new int[]{2, 3, 1, 1, 1, 3}, new int[]{2, 3, 1, 3, 1, 1}, new int[]{1, 1, 2, 1, 3, 3}, new int[]{1, 1, 2, 3, 3, 1}, new int[]{1, 3, 2, 1, 3, 1}, new int[]{1, 1, 3, 1, 2, 3}, new int[]{1, 1, 3, 3, 2, 1}, new int[]{1, 3, 3, 1, 2, 1}, new int[]{3, 1, 3, 1, 2, 1}, new int[]{2, 1, 1, 3, 3, 1}, new int[]{2, 3, 1, 1, 3, 1}, new int[]{2, 1, 3, 1, 1, 3}, new int[]{2, 1, 3, 3, 1, 1}, new int[]{2, 1, 3, 1, 3, 1}, new int[]{3, 1, 1, 1, 2, 3}, new int[]{3, 1, 1, 3, 2, 1}, new int[]{3, 3, 1, 1, 2, 1}, new int[]{3, 1, 2, 1, 1, 3}, new int[]{3, 1, 2, 3, 1, 1}, new int[]{3, 3, 2, 1, 1, 1}, new int[]{3, 1, 4, 1, 1, 1}, new int[]{2, 2, 1, 4, 1, 1}, new int[]{4, 3, 1, 1, 1, 1}, new int[]{1, 1, 1, 2, 2, 4}, new int[]{1, 1, 1, 4, 2, 2}, new int[]{1, 2, 1, 1, 2, 4}, new int[]{1, 2, 1, 4, 2, 1}, new int[]{1, 4, 1, 1, 2, 2}, new int[]{1, 4, 1, 2, 2, 1}, new int[]{1, 1, 2, 2, 1, 4}, new int[]{1, 1, 2, 4, 1, 2}, new int[]{1, 2, 2, 1, 1, 4}, new int[]{1, 2, 2, 4, 1, 1}, new int[]{1, 4, 2, 1, 1, 2}, new int[]{1, 4, 2, 2, 1, 1}, new int[]{2, 4, 1, 2, 1, 1}, new int[]{2, 2, 1, 1, 1, 4}, new int[]{4, 1, 3, 1, 1, 1}, new int[]{2, 4, 1, 1, 1, 2}, new int[]{1, 3, 4, 1, 1, 1}, new int[]{1, 1, 1, 2, 4, 2}, new int[]{1, 2, 1, 1, 4, 2}, new int[]{1, 2, 1, 2, 4, 1}, new int[]{1, 1, 4, 2, 1, 2}, new int[]{1, 2, 4, 1, 1, 2}, new int[]{1, 2, 4, 2, 1, 1}, new int[]{4, 1, 1, 2, 1, 2}, new int[]{4, 2, 1, 1, 1, 2}, new int[]{4, 2, 1, 2, 1, 1}, new int[]{2, 1, 2, 1, 4, 1}, new int[]{2, 1, 4, 1, 2, 1}, new int[]{4, 1, 2, 1, 2, 1}, new int[]{1, 1, 1, 1, 4, 3}, new int[]{1, 1, 1, 3, 4, 1}, new int[]{1, 3, 1, 1, 4, 1}, new int[]{1, 1, 4, 1, 1, 3}, new int[]{1, 1, 4, 3, 1, 1}, new int[]{4, 1, 1, 1, 1, 3}, new int[]{4, 1, 1, 3, 1, 1}, new int[]{1, 1, 3, 1, 4, 1}, new int[]{1, 1, 4, 1, 3, 1}, new int[]{3, 1, 1, 1, 4, 1}, new int[]{4, 1, 1, 1, 3, 1}, new int[]{2, 1, 1, 4, 1, 2}, new int[]{2, 1, 1, 2, 1, 4}, new int[]{2, 1, 1, 2, 3, 2}, new int[]{2, 3, 3, 1, 1, 1, 2}};

    private static int h(id.a aVar, int[] iArr, int i11) throws NotFoundException {
        p.f(aVar, i11, iArr);
        float f11 = 0.25f;
        int i12 = -1;
        int i13 = 0;
        while (true) {
            int[][] iArr2 = f32923a;
            if (i13 >= iArr2.length) {
                break;
            }
            float fE = p.e(iArr, iArr2[i13], 0.7f);
            if (fE < f11) {
                i12 = i13;
                f11 = fE;
            }
            i13++;
        }
        if (i12 >= 0) {
            return i12;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int[] i(id.a aVar) throws NotFoundException {
        int iM = aVar.m();
        int iK = aVar.k(0);
        int[] iArr = new int[6];
        boolean z10 = false;
        int i11 = 0;
        int i12 = iK;
        while (iK < iM) {
            if (aVar.i(iK) != z10) {
                iArr[i11] = iArr[i11] + 1;
            } else {
                if (i11 == 5) {
                    int i13 = -1;
                    float f11 = 0.25f;
                    for (int i14 = 103; i14 <= 105; i14++) {
                        float fE = p.e(iArr, f32923a[i14], 0.7f);
                        if (fE < f11) {
                            i13 = i14;
                            f11 = fE;
                        }
                    }
                    if (i13 >= 0 && aVar.o(Math.max(0, i12 - ((iK - i12) / 2)), i12, false)) {
                        return new int[]{i12, iK, i13};
                    }
                    i12 += iArr[0] + iArr[1];
                    int i15 = i11 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i15);
                    iArr[i15] = 0;
                    iArr[i11] = 0;
                    i11--;
                } else {
                    i11++;
                }
                iArr[i11] = 1;
                z10 = !z10;
            }
            iK++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x016c  */
    /* JADX WARN: Code duplicated, block: B:102:0x016f  */
    /* JADX WARN: Code duplicated, block: B:103:0x0174  */
    /* JADX WARN: Code duplicated, block: B:105:0x0178  */
    /* JADX WARN: Code duplicated, block: B:107:0x017c  */
    /* JADX WARN: Code duplicated, block: B:110:0x0186  */
    /* JADX WARN: Code duplicated, block: B:112:0x018a  */
    /* JADX WARN: Code duplicated, block: B:114:0x018e  */
    /* JADX WARN: Code duplicated, block: B:116:0x0192  */
    /* JADX WARN: Code duplicated, block: B:118:0x0198  */
    /* JADX WARN: Code duplicated, block: B:119:0x019b  */
    /* JADX WARN: Code duplicated, block: B:121:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:123:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:125:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:126:0x01af  */
    /* JADX WARN: Code duplicated, block: B:127:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:128:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:129:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:132:0x01c2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:133:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:134:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:162:0x01d5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x01c7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:17:0x005f  */
    /* JADX WARN: Code duplicated, block: B:19:0x006f  */
    /* JADX WARN: Code duplicated, block: B:21:0x0073  */
    /* JADX WARN: Code duplicated, block: B:24:0x007e A[LOOP:1: B:23:0x007c->B:24:0x007e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x0087  */
    /* JADX WARN: Code duplicated, block: B:28:0x008e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0092 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x0094 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x0096  */
    /* JADX WARN: Code duplicated, block: B:32:0x009d  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x00ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:39:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:41:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c6 A[FALL_THROUGH, PHI: r22
  0x00c6: PHI (r22v16 int) = (r22v1 int), (r22v14 int), (r22v14 int), (r22v14 int) binds: [B:43:0x00c3, B:52:0x00da, B:56:0x00e6, B:55:0x00e2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:46:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:48:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:53:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:55:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:58:0x00ee A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:59:0x00f0 A[PHI: r21
  0x00f0: PHI (r21v10 boolean) = (r21v5 boolean), (r21v14 boolean) binds: [B:95:0x0161, B:58:0x00ee] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:61:0x00f6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:62:0x00f8 A[PHI: r21
  0x00f8: PHI (r21v9 boolean) = (r21v5 boolean), (r21v14 boolean) binds: [B:98:0x0166, B:61:0x00f6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:64:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:66:0x0103 A[PHI: r21
  0x0103: PHI (r21v8 boolean) = (r21v5 boolean), (r21v14 boolean) binds: [B:79:0x0132, B:43:0x00c3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:67:0x0108  */
    /* JADX WARN: Code duplicated, block: B:68:0x010b A[PHI: r21
  0x010b: PHI (r21v7 boolean) = (r21v5 boolean), (r21v14 boolean) binds: [B:79:0x0132, B:43:0x00c3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:69:0x0110  */
    /* JADX WARN: Code duplicated, block: B:71:0x0117 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x0119 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x011b  */
    /* JADX WARN: Code duplicated, block: B:74:0x0122  */
    /* JADX WARN: Code duplicated, block: B:75:0x012a  */
    /* JADX WARN: Code duplicated, block: B:77:0x012e  */
    /* JADX WARN: Code duplicated, block: B:79:0x0132  */
    /* JADX WARN: Code duplicated, block: B:80:0x0135 A[FALL_THROUGH, PHI: r22
  0x0135: PHI (r22v8 int) = (r22v1 int), (r22v6 int), (r22v6 int), (r22v6 int) binds: [B:79:0x0132, B:87:0x0148, B:91:0x0154, B:90:0x0150] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:81:0x0137  */
    /* JADX WARN: Code duplicated, block: B:83:0x013d  */
    /* JADX WARN: Code duplicated, block: B:84:0x0140  */
    /* JADX WARN: Code duplicated, block: B:86:0x0146  */
    /* JADX WARN: Code duplicated, block: B:88:0x014a  */
    /* JADX WARN: Code duplicated, block: B:90:0x0150  */
    /* JADX WARN: Code duplicated, block: B:91:0x0154  */
    /* JADX WARN: Code duplicated, block: B:92:0x015a  */
    /* JADX WARN: Code duplicated, block: B:94:0x015f  */
    /* JADX WARN: Code duplicated, block: B:95:0x0161 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:98:0x0166 A[ADDED_TO_REGION] */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:68:0x010b
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // qd.p
    public com.google.zxing.j c(int r27, id.a r28, java.util.Map r29) {
        /*
            Method dump skipped, instruction units count: 718
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.a.c(int, id.a, java.util.Map):com.google.zxing.j");
    }
}
