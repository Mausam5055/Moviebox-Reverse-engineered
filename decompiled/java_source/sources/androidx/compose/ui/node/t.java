package androidx.compose.ui.node;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f5448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f5449b;

    public t(int i11) {
        this.f5448a = new int[i11];
    }

    private final boolean a(int i11, int i12) {
        int[] iArr = this.f5448a;
        int i13 = iArr[i11];
        int i14 = iArr[i12];
        if (i13 >= i14) {
            return i13 == i14 && iArr[i11 + 1] <= iArr[i12 + 1];
        }
        return true;
    }

    private final int e(int i11, int i12, int i13) {
        int i14 = i11 - i13;
        while (i11 < i12) {
            if (a(i11, i12)) {
                i14 += i13;
                k(i14, i11);
            }
            i11 += i13;
        }
        int i15 = i14 + i13;
        k(i15, i12);
        return i15;
    }

    private final void i(int i11, int i12, int i13) {
        if (i11 < i12) {
            int iE = e(i11, i12, i13);
            i(i11, iE - i13, i13);
            i(iE + i13, i12, i13);
        }
    }

    private final void k(int i11, int i12) {
        int[] iArr = this.f5448a;
        o0.i(iArr, i11, i12);
        o0.i(iArr, i11 + 1, i12 + 1);
        o0.i(iArr, i11 + 2, i12 + 2);
    }

    public final int b(int i11) {
        return this.f5448a[i11];
    }

    public final int c() {
        return this.f5449b;
    }

    public final boolean d() {
        return this.f5449b != 0;
    }

    public final int f() {
        int[] iArr = this.f5448a;
        int i11 = this.f5449b - 1;
        this.f5449b = i11;
        return iArr[i11];
    }

    public final void g(int i11, int i12, int i13) {
        int i14 = this.f5449b;
        int i15 = i14 + 3;
        int[] iArr = this.f5448a;
        if (i15 >= iArr.length) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length * 2);
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f5448a = iArrCopyOf;
        }
        int[] iArr2 = this.f5448a;
        iArr2[i14] = i11 + i13;
        iArr2[i14 + 1] = i12 + i13;
        iArr2[i14 + 2] = i13;
        this.f5449b = i15;
    }

    public final void h(int i11, int i12, int i13, int i14) {
        int i15 = this.f5449b;
        int i16 = i15 + 4;
        int[] iArr = this.f5448a;
        if (i16 >= iArr.length) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length * 2);
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f5448a = iArrCopyOf;
        }
        int[] iArr2 = this.f5448a;
        iArr2[i15] = i11;
        iArr2[i15 + 1] = i12;
        iArr2[i15 + 2] = i13;
        iArr2[i15 + 3] = i14;
        this.f5449b = i16;
    }

    public final void j() {
        int i11 = this.f5449b;
        if (!(i11 % 3 == 0)) {
            g0.a.b("Array size not a multiple of 3");
        }
        if (i11 > 3) {
            i(0, i11 - 3, 3);
        }
    }
}
