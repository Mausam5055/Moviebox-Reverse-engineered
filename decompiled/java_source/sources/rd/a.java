package rd;

import com.google.zxing.NotFoundException;
import qd.p;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a extends p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f74311b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int[] f74314e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int[] f74315f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f74310a = new int[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float[] f74312c = new float[4];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float[] f74313d = new float[4];

    protected a() {
        int[] iArr = new int[8];
        this.f74311b = iArr;
        this.f74314e = new int[iArr.length / 2];
        this.f74315f = new int[iArr.length / 2];
    }

    protected static void h(int[] iArr, float[] fArr) {
        int i11 = 0;
        float f11 = fArr[0];
        for (int i12 = 1; i12 < iArr.length; i12++) {
            float f12 = fArr[i12];
            if (f12 < f11) {
                i11 = i12;
                f11 = f12;
            }
        }
        iArr[i11] = iArr[i11] - 1;
    }

    protected static void o(int[] iArr, float[] fArr) {
        int i11 = 0;
        float f11 = fArr[0];
        for (int i12 = 1; i12 < iArr.length; i12++) {
            float f12 = fArr[i12];
            if (f12 > f11) {
                i11 = i12;
                f11 = f12;
            }
        }
        iArr[i11] = iArr[i11] + 1;
    }

    protected static boolean p(int[] iArr) {
        int i11 = iArr[0] + iArr[1];
        float f11 = i11 / ((iArr[2] + i11) + iArr[3]);
        if (f11 < 0.7916667f || f11 > 0.89285713f) {
            return false;
        }
        int i12 = Integer.MAX_VALUE;
        int i13 = Integer.MIN_VALUE;
        for (int i14 : iArr) {
            if (i14 > i13) {
                i13 = i14;
            }
            if (i14 < i12) {
                i12 = i14;
            }
        }
        return i13 < i12 * 10;
    }

    protected static int q(int[] iArr, int[][] iArr2) throws NotFoundException {
        for (int i11 = 0; i11 < iArr2.length; i11++) {
            if (p.e(iArr, iArr2[i11], 0.45f) < 0.2f) {
                return i11;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    protected final int[] i() {
        return this.f74311b;
    }

    protected final int[] j() {
        return this.f74310a;
    }

    protected final int[] k() {
        return this.f74315f;
    }

    protected final float[] l() {
        return this.f74313d;
    }

    protected final int[] m() {
        return this.f74314e;
    }

    protected final float[] n() {
        return this.f74312c;
    }
}
