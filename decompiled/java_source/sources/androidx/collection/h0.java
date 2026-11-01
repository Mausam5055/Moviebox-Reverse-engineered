package androidx.collection;

import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class h0 extends u {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f2280f;

    public h0() {
        this(0, 1, null);
    }

    public h0(int i11) {
        super(null);
        if (!(i11 >= 0)) {
            n.d.a("Capacity must be a positive value.");
        }
        m(v0.g(i11));
    }

    public /* synthetic */ h0(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 6 : i11);
    }

    private final void f() {
        if (this.f2342d <= 8 || Long.compare(ULong.b(ULong.b(this.f2343e) * 32) ^ Long.MIN_VALUE, ULong.b(ULong.b(this.f2342d) * 25) ^ Long.MIN_VALUE) > 0) {
            n(v0.e(this.f2342d));
        } else {
            h();
        }
    }

    private final void h() {
        long[] jArr;
        int i11;
        int i12;
        long[] jArr2 = this.f2339a;
        int i13 = this.f2342d;
        long[] jArr3 = this.f2340b;
        Object[] objArr = this.f2341c;
        v0.a(jArr2, i13);
        char c11 = 0;
        int i14 = 0;
        int iB = -1;
        while (i14 != i13) {
            int i15 = i14 >> 3;
            int i16 = (i14 & 7) << 3;
            long j11 = (jArr2[i15] >> i16) & 255;
            if (j11 == 128) {
                iB = i14;
                i14++;
            } else {
                if (j11 == 254) {
                    int iA = s.a(jArr3[i14]) * (-862048943);
                    int i17 = iA ^ (iA << 16);
                    int i18 = i17 >>> 7;
                    int iJ = j(i18);
                    int i19 = i18 & i13;
                    if (((iJ - i19) & i13) / 8 == ((i14 - i19) & i13) / 8) {
                        jArr2[i15] = (((long) (i17 & 127)) << i16) | ((~(255 << i16)) & jArr2[i15]);
                        jArr2[ArraysKt.a0(jArr2)] = (jArr2[c11] & 72057594037927935L) | Long.MIN_VALUE;
                    } else {
                        int i20 = iJ >> 3;
                        long j12 = jArr2[i20];
                        int i21 = (iJ & 7) << 3;
                        if (((j12 >> i21) & 255) == 128) {
                            int i22 = i14;
                            jArr = jArr3;
                            jArr2[i20] = (j12 & (~(255 << i21))) | (((long) (i17 & 127)) << i21);
                            jArr2[i15] = (jArr2[i15] & (~(255 << i16))) | (128 << i16);
                            jArr[iJ] = jArr[i22];
                            jArr[i22] = 0;
                            objArr[iJ] = objArr[i22];
                            objArr[i22] = null;
                            i12 = i22;
                            iB = i12;
                            i11 = i13;
                        } else {
                            int i23 = i13;
                            jArr = jArr3;
                            int i24 = i14;
                            jArr2[i20] = (((long) (i17 & 127)) << i21) | (j12 & (~(255 << i21)));
                            if (iB == -1) {
                                i11 = i23;
                                iB = v0.b(jArr2, i24 + 1, i11);
                            } else {
                                i11 = i23;
                            }
                            jArr[iB] = jArr[iJ];
                            jArr[iJ] = jArr[i24];
                            jArr[i24] = jArr[iB];
                            objArr[iB] = objArr[iJ];
                            objArr[iJ] = objArr[i24];
                            objArr[i24] = objArr[iB];
                            i12 = i24 - 1;
                        }
                        c11 = 0;
                        jArr2[ArraysKt.a0(jArr2)] = (jArr2[0] & 72057594037927935L) | Long.MIN_VALUE;
                        i14 = i12 + 1;
                        i13 = i11;
                        jArr3 = jArr;
                    }
                }
                i14++;
            }
        }
        k();
    }

    private final int i(long j11) {
        int iA = s.a(j11) * (-862048943);
        int i11 = iA ^ (iA << 16);
        int i12 = i11 >>> 7;
        int i13 = i11 & 127;
        int i14 = this.f2342d;
        int i15 = i12 & i14;
        int i16 = 0;
        while (true) {
            long[] jArr = this.f2339a;
            int i17 = i15 >> 3;
            int i18 = (i15 & 7) << 3;
            long j12 = ((jArr[i17 + 1] << (64 - i18)) & ((-i18) >> 63)) | (jArr[i17] >>> i18);
            long j13 = i13;
            int i19 = i16;
            long j14 = j12 ^ (j13 * 72340172838076673L);
            for (long j15 = (~j14) & (j14 - 72340172838076673L) & (-9187201950435737472L); j15 != 0; j15 &= j15 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j15) >> 3) + i15) & i14;
                if (this.f2340b[iNumberOfTrailingZeros] == j11) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j12) << 6) & j12 & (-9187201950435737472L)) != 0) {
                int iJ = j(i12);
                if (this.f2280f == 0 && ((this.f2339a[iJ >> 3] >> ((iJ & 7) << 3)) & 255) != 254) {
                    f();
                    iJ = j(i12);
                }
                this.f2343e++;
                int i20 = this.f2280f;
                long[] jArr2 = this.f2339a;
                int i21 = iJ >> 3;
                long j16 = jArr2[i21];
                int i22 = (iJ & 7) << 3;
                this.f2280f = i20 - (((j16 >> i22) & 255) == 128 ? 1 : 0);
                int i23 = this.f2342d;
                long j17 = ((~(255 << i22)) & j16) | (j13 << i22);
                jArr2[i21] = j17;
                jArr2[(((iJ - 7) & i23) + (i23 & 7)) >> 3] = j17;
                return iJ;
            }
            i16 = i19 + 8;
            i15 = (i15 + i16) & i14;
        }
    }

    private final int j(int i11) {
        int i12 = this.f2342d;
        int i13 = i11 & i12;
        int i14 = 0;
        while (true) {
            long[] jArr = this.f2339a;
            int i15 = i13 >> 3;
            int i16 = (i13 & 7) << 3;
            long j11 = ((jArr[i15 + 1] << (64 - i16)) & ((-i16) >> 63)) | (jArr[i15] >>> i16);
            long j12 = j11 & ((~j11) << 7) & (-9187201950435737472L);
            if (j12 != 0) {
                return (i13 + (Long.numberOfTrailingZeros(j12) >> 3)) & i12;
            }
            i14 += 8;
            i13 = (i13 + i14) & i12;
        }
    }

    private final void k() {
        this.f2280f = v0.c(c()) - this.f2343e;
    }

    private final void l(int i11) {
        long[] jArr;
        if (i11 == 0) {
            jArr = v0.f2353a;
        } else {
            jArr = new long[((i11 + 15) & (-8)) >> 3];
            ArraysKt.z(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.f2339a = jArr;
        int i12 = i11 >> 3;
        long j11 = 255 << ((i11 & 7) << 3);
        jArr[i12] = (jArr[i12] & (~j11)) | j11;
        k();
    }

    private final void m(int i11) {
        int iMax = i11 > 0 ? Math.max(7, v0.f(i11)) : 0;
        this.f2342d = iMax;
        l(iMax);
        this.f2340b = new long[iMax];
        this.f2341c = new Object[iMax];
    }

    private final void n(int i11) {
        h0 h0Var = this;
        long[] jArr = h0Var.f2339a;
        long[] jArr2 = h0Var.f2340b;
        Object[] objArr = h0Var.f2341c;
        int i12 = h0Var.f2342d;
        m(i11);
        long[] jArr3 = h0Var.f2339a;
        long[] jArr4 = h0Var.f2340b;
        Object[] objArr2 = h0Var.f2341c;
        int i13 = h0Var.f2342d;
        int i14 = 0;
        while (i14 < i12) {
            if (((jArr[i14 >> 3] >> ((i14 & 7) << 3)) & 255) < 128) {
                long j11 = jArr2[i14];
                int iA = s.a(j11) * (-862048943);
                int i15 = iA ^ (iA << 16);
                int iJ = h0Var.j(i15 >>> 7);
                long j12 = i15 & 127;
                int i16 = iJ >> 3;
                int i17 = (iJ & 7) << 3;
                long j13 = (jArr3[i16] & (~(255 << i17))) | (j12 << i17);
                jArr3[i16] = j13;
                jArr3[(((iJ - 7) & i13) + (i13 & 7)) >> 3] = j13;
                jArr4[iJ] = j11;
                objArr2[iJ] = objArr[i14];
            }
            i14++;
            h0Var = this;
            jArr = jArr;
        }
    }

    public final void g() {
        this.f2343e = 0;
        long[] jArr = this.f2339a;
        if (jArr != v0.f2353a) {
            ArraysKt.z(jArr, -9187201950435737472L, 0, 0, 6, null);
            long[] jArr2 = this.f2339a;
            int i11 = this.f2342d;
            int i12 = i11 >> 3;
            long j11 = 255 << ((i11 & 7) << 3);
            jArr2[i12] = (jArr2[i12] & (~j11)) | j11;
        }
        ArraysKt.w(this.f2341c, null, 0, this.f2342d);
        k();
    }

    public final void o(long j11, Object obj) {
        int i11 = i(j11);
        this.f2340b[i11] = j11;
        this.f2341c[i11] = obj;
    }
}
