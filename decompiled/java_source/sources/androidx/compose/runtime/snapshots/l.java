package androidx.compose.runtime.snapshots;

import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f4013b = new int[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int[] f4014c = new int[16];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int[] f4015d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4016e;

    public l() {
        int[] iArr = new int[16];
        int i11 = 0;
        while (i11 < 16) {
            int i12 = i11 + 1;
            iArr[i11] = i12;
            i11 = i12;
        }
        this.f4015d = iArr;
    }

    private final int b() {
        int length = this.f4015d.length;
        if (this.f4016e >= length) {
            int i11 = length * 2;
            int[] iArr = new int[i11];
            int i12 = 0;
            while (i12 < i11) {
                int i13 = i12 + 1;
                iArr[i12] = i13;
                i12 = i13;
            }
            ArraysKt.q(this.f4015d, iArr, 0, 0, 0, 14, null);
            this.f4015d = iArr;
        }
        int i14 = this.f4016e;
        this.f4016e = this.f4015d[i14];
        return i14;
    }

    private final void c(int i11) {
        int[] iArr = this.f4013b;
        int length = iArr.length;
        if (i11 <= length) {
            return;
        }
        int i12 = length * 2;
        int[] iArr2 = new int[i12];
        int[] iArr3 = new int[i12];
        ArraysKt.q(iArr, iArr2, 0, 0, 0, 14, null);
        ArraysKt.q(this.f4014c, iArr3, 0, 0, 0, 14, null);
        this.f4013b = iArr2;
        this.f4014c = iArr3;
    }

    private final void d(int i11) {
        this.f4015d[i11] = this.f4016e;
        this.f4016e = i11;
    }

    private final void g(int i11) {
        int i12;
        int[] iArr = this.f4013b;
        int i13 = this.f4012a >> 1;
        while (i11 < i13) {
            int i14 = (i11 + 1) << 1;
            int i15 = i14 - 1;
            if (i14 >= this.f4012a || (i12 = iArr[i14]) >= iArr[i15]) {
                if (iArr[i15] >= iArr[i11]) {
                    return;
                }
                i(i15, i11);
                i11 = i15;
            } else {
                if (i12 >= iArr[i11]) {
                    return;
                }
                i(i14, i11);
                i11 = i14;
            }
        }
    }

    private final void h(int i11) {
        int[] iArr = this.f4013b;
        int i12 = iArr[i11];
        while (i11 > 0) {
            int i13 = ((i11 + 1) >> 1) - 1;
            if (iArr[i13] <= i12) {
                return;
            }
            i(i13, i11);
            i11 = i13;
        }
    }

    private final void i(int i11, int i12) {
        int[] iArr = this.f4013b;
        int[] iArr2 = this.f4014c;
        int[] iArr3 = this.f4015d;
        int i13 = iArr[i11];
        iArr[i11] = iArr[i12];
        iArr[i12] = i13;
        int i14 = iArr2[i11];
        iArr2[i11] = iArr2[i12];
        iArr2[i12] = i14;
        iArr3[iArr2[i11]] = i11;
        iArr3[iArr2[i12]] = i12;
    }

    public final int a(int i11) {
        c(this.f4012a + 1);
        int i12 = this.f4012a;
        this.f4012a = i12 + 1;
        int iB = b();
        this.f4013b[i12] = i11;
        this.f4014c[i12] = iB;
        this.f4015d[iB] = i12;
        h(i12);
        return iB;
    }

    public final int e(int i11) {
        return this.f4012a > 0 ? this.f4013b[0] : i11;
    }

    public final void f(int i11) {
        int i12 = this.f4015d[i11];
        i(i12, this.f4012a - 1);
        this.f4012a--;
        h(i12);
        g(i12);
        d(i11);
    }
}
