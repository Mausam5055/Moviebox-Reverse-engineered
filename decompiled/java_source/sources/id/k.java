package id;

import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static k f65183a = new e();

    /* JADX WARN: Code duplicated, block: B:18:0x0035  */
    /* JADX WARN: Code duplicated, block: B:20:0x0039 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x003b  */
    /* JADX WARN: Code duplicated, block: B:40:0x0072  */
    /* JADX WARN: Code duplicated, block: B:42:0x0076 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x0078  */
    /* JADX WARN: Code duplicated, block: B:55:0x0041 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x007e A[SYNTHETIC] */
    protected static void a(b bVar, float[] fArr) {
        int iN = bVar.n();
        int iK = bVar.k();
        int length = fArr.length - 1;
        boolean z10 = true;
        for (int i11 = 0; i11 < length && z10; i11 += 2) {
            int i12 = (int) fArr[i11];
            int i13 = i11 + 1;
            int i14 = (int) fArr[i13];
            if (i12 < -1 || i12 > iN || i14 < -1 || i14 > iK) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (i12 == -1) {
                fArr[i11] = 0.0f;
            } else {
                if (i12 == iN) {
                    fArr[i11] = iN - 1;
                } else {
                    z10 = false;
                }
                if (i14 == -1) {
                    fArr[i13] = 0.0f;
                } else {
                    if (i14 == iK) {
                        fArr[i13] = iK - 1;
                    }
                }
                z10 = true;
            }
            z10 = true;
            if (i14 == -1) {
                fArr[i13] = 0.0f;
            } else {
                if (i14 == iK) {
                    fArr[i13] = iK - 1;
                }
            }
            z10 = true;
        }
        boolean z11 = true;
        for (int length2 = fArr.length - 2; length2 >= 0 && z11; length2 -= 2) {
            int i15 = (int) fArr[length2];
            int i16 = length2 + 1;
            int i17 = (int) fArr[i16];
            if (i15 < -1 || i15 > iN || i17 < -1 || i17 > iK) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (i15 == -1) {
                fArr[length2] = 0.0f;
            } else {
                if (i15 == iN) {
                    fArr[length2] = iN - 1;
                } else {
                    z11 = false;
                }
                if (i17 == -1) {
                    fArr[i16] = 0.0f;
                } else {
                    if (i17 == iK) {
                        fArr[i16] = iK - 1;
                    }
                }
                z11 = true;
            }
            z11 = true;
            if (i17 == -1) {
                fArr[i16] = 0.0f;
            } else {
                if (i17 == iK) {
                    fArr[i16] = iK - 1;
                }
            }
            z11 = true;
        }
    }

    public static k b() {
        return f65183a;
    }

    public abstract b c(b bVar, int i11, int i12, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, float f21, float f22, float f23, float f24, float f25, float f26);

    public abstract b d(b bVar, int i11, int i12, n nVar);
}
