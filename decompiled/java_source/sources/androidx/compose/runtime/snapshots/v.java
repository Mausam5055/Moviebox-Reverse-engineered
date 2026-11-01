package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.h3;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f4027b = new int[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private h3[] f4028c = new h3[16];

    private final int b(Object obj, int i11) {
        int i12 = this.f4026a - 1;
        int i13 = 0;
        while (i13 <= i12) {
            int i14 = (i13 + i12) >>> 1;
            int i15 = this.f4027b[i14];
            if (i15 < i11) {
                i13 = i14 + 1;
            } else {
                if (i15 <= i11) {
                    h3 h3Var = this.f4028c[i14];
                    return obj == (h3Var != null ? h3Var.get() : null) ? i14 : c(i14, obj, i11);
                }
                i12 = i14 - 1;
            }
        }
        return -(i13 + 1);
    }

    private final int c(int i11, Object obj, int i12) {
        int i13 = i11 - 1;
        while (true) {
            if (-1 >= i13 || this.f4027b[i13] != i12) {
                break;
            }
            h3 h3Var = this.f4028c[i13];
            if ((h3Var != null ? h3Var.get() : null) == obj) {
                return i13;
            }
            i13--;
        }
        int i14 = i11 + 1;
        int i15 = this.f4026a;
        while (i14 < i15) {
            if (this.f4027b[i14] != i12) {
                return -(i14 + 1);
            }
            h3 h3Var2 = this.f4028c[i14];
            if ((h3Var2 != null ? h3Var2.get() : null) == obj) {
                return i14;
            }
            i14++;
        }
        i14 = this.f4026a;
        return -(i14 + 1);
    }

    public final boolean a(Object obj) {
        int iB;
        int i11 = this.f4026a;
        int iC = androidx.compose.runtime.b.c(obj);
        if (i11 > 0) {
            iB = b(obj, iC);
            if (iB >= 0) {
                return false;
            }
        } else {
            iB = -1;
        }
        int i12 = -(iB + 1);
        h3[] h3VarArr = this.f4028c;
        int length = h3VarArr.length;
        if (i11 == length) {
            int i13 = length * 2;
            h3[] h3VarArr2 = new h3[i13];
            int[] iArr = new int[i13];
            int i14 = i12 + 1;
            ArraysKt.n(h3VarArr, h3VarArr2, i14, i12, i11);
            ArraysKt.r(this.f4028c, h3VarArr2, 0, 0, i12, 6, null);
            ArraysKt.l(this.f4027b, iArr, i14, i12, i11);
            ArraysKt.q(this.f4027b, iArr, 0, 0, i12, 6, null);
            this.f4028c = h3VarArr2;
            this.f4027b = iArr;
        } else {
            int i15 = i12 + 1;
            ArraysKt.n(h3VarArr, h3VarArr, i15, i12, i11);
            int[] iArr2 = this.f4027b;
            ArraysKt.l(iArr2, iArr2, i15, i12, i11);
        }
        this.f4028c[i12] = new h3(obj);
        this.f4027b[i12] = iC;
        this.f4026a++;
        return true;
    }

    public final int[] d() {
        return this.f4027b;
    }

    public final int e() {
        return this.f4026a;
    }

    public final h3[] f() {
        return this.f4028c;
    }

    public final void g(int i11) {
        this.f4026a = i11;
    }
}
