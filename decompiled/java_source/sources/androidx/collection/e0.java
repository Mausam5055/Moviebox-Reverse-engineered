package androidx.collection;

import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class e0 extends o {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f2272f;

    public e0() {
        this(0, 1, null);
    }

    public e0(int i11) {
        super(null);
        if (!(i11 >= 0)) {
            n.d.a("Capacity must be a positive value.");
        }
        o(v0.g(i11));
    }

    public /* synthetic */ e0(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 6 : i11);
    }

    private final void h() {
        if (this.f2306d <= 8 || Long.compare(ULong.b(ULong.b(this.f2307e) * 32) ^ Long.MIN_VALUE, ULong.b(ULong.b(this.f2306d) * 25) ^ Long.MIN_VALUE) > 0) {
            s(v0.e(this.f2306d));
        } else {
            j();
        }
    }

    private final void j() {
        int[] iArr;
        int i11;
        int i12;
        long[] jArr = this.f2303a;
        int i13 = this.f2306d;
        int[] iArr2 = this.f2304b;
        Object[] objArr = this.f2305c;
        v0.a(jArr, i13);
        char c11 = 0;
        int i14 = 0;
        int iB = -1;
        while (i14 != i13) {
            int i15 = i14 >> 3;
            int i16 = (i14 & 7) << 3;
            long j11 = (jArr[i15] >> i16) & 255;
            if (j11 == 128) {
                iB = i14;
                i14++;
            } else {
                if (j11 == 254) {
                    int i17 = iArr2[i14] * (-862048943);
                    int i18 = i17 ^ (i17 << 16);
                    int i19 = i18 >>> 7;
                    int iL = l(i19);
                    int i20 = i19 & i13;
                    if (((iL - i20) & i13) / 8 == ((i14 - i20) & i13) / 8) {
                        jArr[i15] = (((long) (i18 & 127)) << i16) | ((~(255 << i16)) & jArr[i15]);
                        jArr[ArraysKt.a0(jArr)] = (jArr[c11] & 72057594037927935L) | Long.MIN_VALUE;
                    } else {
                        int i21 = iL >> 3;
                        long j12 = jArr[i21];
                        int i22 = (iL & 7) << 3;
                        if (((j12 >> i22) & 255) == 128) {
                            int i23 = i14;
                            iArr = iArr2;
                            jArr[i21] = (j12 & (~(255 << i22))) | (((long) (i18 & 127)) << i22);
                            jArr[i15] = (jArr[i15] & (~(255 << i16))) | (128 << i16);
                            iArr[iL] = iArr[i23];
                            iArr[i23] = 0;
                            objArr[iL] = objArr[i23];
                            objArr[i23] = null;
                            i12 = i23;
                            iB = i12;
                            i11 = i13;
                        } else {
                            int i24 = i13;
                            iArr = iArr2;
                            int i25 = i14;
                            jArr[i21] = (((long) (i18 & 127)) << i22) | (j12 & (~(255 << i22)));
                            if (iB == -1) {
                                i11 = i24;
                                iB = v0.b(jArr, i25 + 1, i11);
                            } else {
                                i11 = i24;
                            }
                            iArr[iB] = iArr[iL];
                            iArr[iL] = iArr[i25];
                            iArr[i25] = iArr[iB];
                            objArr[iB] = objArr[iL];
                            objArr[iL] = objArr[i25];
                            objArr[i25] = objArr[iB];
                            i12 = i25 - 1;
                        }
                        c11 = 0;
                        jArr[ArraysKt.a0(jArr)] = (jArr[0] & 72057594037927935L) | Long.MIN_VALUE;
                        i14 = i12 + 1;
                        i13 = i11;
                        iArr2 = iArr;
                    }
                }
                i14++;
            }
        }
        m();
    }

    private final int k(int i11) {
        int i12 = (-862048943) * i11;
        int i13 = i12 ^ (i12 << 16);
        int i14 = i13 >>> 7;
        int i15 = i13 & 127;
        int i16 = this.f2306d;
        int i17 = i14 & i16;
        int i18 = 0;
        while (true) {
            long[] jArr = this.f2303a;
            int i19 = i17 >> 3;
            int i20 = (i17 & 7) << 3;
            long j11 = ((jArr[i19 + 1] << (64 - i20)) & ((-i20) >> 63)) | (jArr[i19] >>> i20);
            long j12 = i15;
            int i21 = i18;
            long j13 = j11 ^ (j12 * 72340172838076673L);
            for (long j14 = (~j13) & (j13 - 72340172838076673L) & (-9187201950435737472L); j14 != 0; j14 &= j14 - 1) {
                int iNumberOfTrailingZeros = (i17 + (Long.numberOfTrailingZeros(j14) >> 3)) & i16;
                if (this.f2304b[iNumberOfTrailingZeros] == i11) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j11) << 6) & j11 & (-9187201950435737472L)) != 0) {
                int iL = l(i14);
                if (this.f2272f == 0 && ((this.f2303a[iL >> 3] >> ((iL & 7) << 3)) & 255) != 254) {
                    h();
                    iL = l(i14);
                }
                this.f2307e++;
                int i22 = this.f2272f;
                long[] jArr2 = this.f2303a;
                int i23 = iL >> 3;
                long j15 = jArr2[i23];
                int i24 = (iL & 7) << 3;
                this.f2272f = i22 - (((j15 >> i24) & 255) == 128 ? 1 : 0);
                int i25 = this.f2306d;
                long j16 = ((~(255 << i24)) & j15) | (j12 << i24);
                jArr2[i23] = j16;
                jArr2[(((iL - 7) & i25) + (i25 & 7)) >> 3] = j16;
                return iL;
            }
            i18 = i21 + 8;
            i17 = (i17 + i18) & i16;
        }
    }

    private final int l(int i11) {
        int i12 = this.f2306d;
        int i13 = i11 & i12;
        int i14 = 0;
        while (true) {
            long[] jArr = this.f2303a;
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

    private final void m() {
        this.f2272f = v0.c(d()) - this.f2307e;
    }

    private final void n(int i11) {
        long[] jArr;
        if (i11 == 0) {
            jArr = v0.f2353a;
        } else {
            jArr = new long[((i11 + 15) & (-8)) >> 3];
            ArraysKt.z(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.f2303a = jArr;
        int i12 = i11 >> 3;
        long j11 = 255 << ((i11 & 7) << 3);
        jArr[i12] = (jArr[i12] & (~j11)) | j11;
        m();
    }

    private final void o(int i11) {
        int iMax = i11 > 0 ? Math.max(7, v0.f(i11)) : 0;
        this.f2306d = iMax;
        n(iMax);
        this.f2304b = new int[iMax];
        this.f2305c = new Object[iMax];
    }

    private final void s(int i11) {
        e0 e0Var = this;
        long[] jArr = e0Var.f2303a;
        int[] iArr = e0Var.f2304b;
        Object[] objArr = e0Var.f2305c;
        int i12 = e0Var.f2306d;
        o(i11);
        long[] jArr2 = e0Var.f2303a;
        int[] iArr2 = e0Var.f2304b;
        Object[] objArr2 = e0Var.f2305c;
        int i13 = e0Var.f2306d;
        int i14 = 0;
        while (i14 < i12) {
            if (((jArr[i14 >> 3] >> ((i14 & 7) << 3)) & 255) < 128) {
                int i15 = iArr[i14];
                int i16 = (-862048943) * i15;
                int i17 = i16 ^ (i16 << 16);
                int iL = e0Var.l(i17 >>> 7);
                long j11 = i17 & 127;
                int i18 = iL >> 3;
                int i19 = (iL & 7) << 3;
                long j12 = (jArr2[i18] & (~(255 << i19))) | (j11 << i19);
                jArr2[i18] = j12;
                jArr2[(((iL - 7) & i13) + (i13 & 7)) >> 3] = j12;
                iArr2[iL] = i15;
                objArr2[iL] = objArr[i14];
            }
            i14++;
            e0Var = this;
            jArr = jArr;
        }
    }

    public final void i() {
        this.f2307e = 0;
        long[] jArr = this.f2303a;
        if (jArr != v0.f2353a) {
            ArraysKt.z(jArr, -9187201950435737472L, 0, 0, 6, null);
            long[] jArr2 = this.f2303a;
            int i11 = this.f2306d;
            int i12 = i11 >> 3;
            long j11 = 255 << ((i11 & 7) << 3);
            jArr2[i12] = (jArr2[i12] & (~j11)) | j11;
        }
        ArraysKt.w(this.f2305c, null, 0, this.f2306d);
        m();
    }

    public final Object p(int i11, Object obj) {
        int iK = k(i11);
        Object[] objArr = this.f2305c;
        Object obj2 = objArr[iK];
        this.f2304b[iK] = i11;
        objArr[iK] = obj;
        return obj2;
    }

    public final Object q(int i11) {
        int iNumberOfTrailingZeros;
        int i12 = (-862048943) * i11;
        int i13 = i12 ^ (i12 << 16);
        int i14 = i13 & 127;
        int i15 = this.f2306d;
        int i16 = (i13 >>> 7) & i15;
        int i17 = 0;
        loop0: while (true) {
            long[] jArr = this.f2303a;
            int i18 = i16 >> 3;
            int i19 = (i16 & 7) << 3;
            long j11 = ((jArr[i18 + 1] << (64 - i19)) & ((-i19) >> 63)) | (jArr[i18] >>> i19);
            long j12 = (((long) i14) * 72340172838076673L) ^ j11;
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j13) >> 3) + i16) & i15;
                if (this.f2304b[iNumberOfTrailingZeros] == i11) {
                    break loop0;
                }
            }
            if ((j11 & ((~j11) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i17 += 8;
            i16 = (i16 + i17) & i15;
        }
        if (iNumberOfTrailingZeros >= 0) {
            return r(iNumberOfTrailingZeros);
        }
        return null;
    }

    public final Object r(int i11) {
        this.f2307e--;
        long[] jArr = this.f2303a;
        int i12 = this.f2306d;
        int i13 = i11 >> 3;
        int i14 = (i11 & 7) << 3;
        long j11 = (jArr[i13] & (~(255 << i14))) | (254 << i14);
        jArr[i13] = j11;
        jArr[(((i11 - 7) & i12) + (i12 & 7)) >> 3] = j11;
        Object[] objArr = this.f2305c;
        Object obj = objArr[i11];
        objArr[i11] = null;
        return obj;
    }

    public final void t(int i11, Object obj) {
        int iK = k(i11);
        this.f2304b[iK] = i11;
        this.f2305c[iK] = obj;
    }
}
