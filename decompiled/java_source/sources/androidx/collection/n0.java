package androidx.collection;

import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class n0 extends u0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f2302f;

    public n0() {
        this(0, 1, null);
    }

    public n0(int i11) {
        super(null);
        if (!(i11 >= 0)) {
            n.d.a("Capacity must be a positive value.");
        }
        n(v0.g(i11));
    }

    public /* synthetic */ n0(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 6 : i11);
    }

    private final void g() {
        if (this.f2347d <= 8 || Long.compare(ULong.b(ULong.b(this.f2348e) * 32) ^ Long.MIN_VALUE, ULong.b(ULong.b(this.f2347d) * 25) ^ Long.MIN_VALUE) > 0) {
            q(v0.e(this.f2347d));
        } else {
            i();
        }
    }

    private final void i() {
        Object[] objArr;
        int i11;
        int i12;
        long[] jArr = this.f2344a;
        int i13 = this.f2347d;
        Object[] objArr2 = this.f2345b;
        Object[] objArr3 = this.f2346c;
        v0.a(jArr, i13);
        int i14 = 0;
        int i15 = 0;
        int iB = -1;
        while (i15 != i13) {
            int i16 = i15 >> 3;
            int i17 = (i15 & 7) << 3;
            long j11 = (jArr[i16] >> i17) & 255;
            if (j11 == 128) {
                iB = i15;
                i15++;
            } else {
                if (j11 == 254) {
                    Object obj = objArr2[i15];
                    int iHashCode = (obj != null ? obj.hashCode() : i14) * (-862048943);
                    int i18 = iHashCode ^ (iHashCode << 16);
                    int i19 = i18 >>> 7;
                    int iJ = j(i19);
                    int i20 = i19 & i13;
                    if (((iJ - i20) & i13) / 8 == ((i15 - i20) & i13) / 8) {
                        jArr[i16] = (((long) (i18 & 127)) << i17) | ((~(255 << i17)) & jArr[i16]);
                        jArr[ArraysKt.a0(jArr)] = jArr[i14];
                    } else {
                        int i21 = iJ >> 3;
                        long j12 = jArr[i21];
                        int i22 = (iJ & 7) << 3;
                        if (((j12 >> i22) & 255) == 128) {
                            int i23 = i15;
                            objArr = objArr2;
                            jArr[i21] = (j12 & (~(255 << i22))) | (((long) (i18 & 127)) << i22);
                            jArr[i16] = (jArr[i16] & (~(255 << i17))) | (128 << i17);
                            objArr[iJ] = objArr[i23];
                            objArr[i23] = null;
                            objArr3[iJ] = objArr3[i23];
                            objArr3[i23] = null;
                            i12 = i23;
                            iB = i12;
                            i11 = i13;
                        } else {
                            int i24 = i13;
                            objArr = objArr2;
                            int i25 = i15;
                            jArr[i21] = (((long) (i18 & 127)) << i22) | (j12 & (~(255 << i22)));
                            if (iB == -1) {
                                i11 = i24;
                                iB = v0.b(jArr, i25 + 1, i11);
                            } else {
                                i11 = i24;
                            }
                            objArr[iB] = objArr[iJ];
                            objArr[iJ] = objArr[i25];
                            objArr[i25] = objArr[iB];
                            objArr3[iB] = objArr3[iJ];
                            objArr3[iJ] = objArr3[i25];
                            objArr3[i25] = objArr3[iB];
                            i12 = i25 - 1;
                        }
                        i14 = 0;
                        jArr[ArraysKt.a0(jArr)] = jArr[0];
                        i15 = i12 + 1;
                        i13 = i11;
                        objArr2 = objArr;
                    }
                }
                i15++;
            }
        }
        l();
    }

    private final int j(int i11) {
        int i12 = this.f2347d;
        int i13 = i11 & i12;
        int i14 = 0;
        while (true) {
            long[] jArr = this.f2344a;
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

    private final void l() {
        this.f2302f = v0.c(c()) - this.f2348e;
    }

    private final void m(int i11) {
        long[] jArr;
        if (i11 == 0) {
            jArr = v0.f2353a;
        } else {
            jArr = new long[((i11 + 15) & (-8)) >> 3];
            ArraysKt.z(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.f2344a = jArr;
        int i12 = i11 >> 3;
        long j11 = 255 << ((i11 & 7) << 3);
        jArr[i12] = (jArr[i12] & (~j11)) | j11;
        l();
    }

    private final void n(int i11) {
        int iMax = i11 > 0 ? Math.max(7, v0.f(i11)) : 0;
        this.f2347d = iMax;
        m(iMax);
        this.f2345b = new Object[iMax];
        this.f2346c = new Object[iMax];
    }

    private final void q(int i11) {
        int i12;
        long[] jArr = this.f2344a;
        Object[] objArr = this.f2345b;
        Object[] objArr2 = this.f2346c;
        int i13 = this.f2347d;
        n(i11);
        long[] jArr2 = this.f2344a;
        Object[] objArr3 = this.f2345b;
        Object[] objArr4 = this.f2346c;
        int i14 = this.f2347d;
        int i15 = 0;
        while (i15 < i13) {
            if (((jArr[i15 >> 3] >> ((i15 & 7) << 3)) & 255) < 128) {
                Object obj = objArr[i15];
                int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
                int i16 = iHashCode ^ (iHashCode << 16);
                int iJ = j(i16 >>> 7);
                i12 = i15;
                long j11 = i16 & 127;
                int i17 = iJ >> 3;
                int i18 = (iJ & 7) << 3;
                long j12 = (j11 << i18) | (jArr2[i17] & (~(255 << i18)));
                jArr2[i17] = j12;
                jArr2[(((iJ - 7) & i14) + (i14 & 7)) >> 3] = j12;
                objArr3[iJ] = obj;
                objArr4[iJ] = objArr2[i12];
            } else {
                i12 = i15;
            }
            i15 = i12 + 1;
        }
    }

    public final void h() {
        this.f2348e = 0;
        long[] jArr = this.f2344a;
        if (jArr != v0.f2353a) {
            ArraysKt.z(jArr, -9187201950435737472L, 0, 0, 6, null);
            long[] jArr2 = this.f2344a;
            int i11 = this.f2347d;
            int i12 = i11 >> 3;
            long j11 = 255 << ((i11 & 7) << 3);
            jArr2[i12] = (jArr2[i12] & (~j11)) | j11;
        }
        ArraysKt.w(this.f2346c, null, 0, this.f2347d);
        ArraysKt.w(this.f2345b, null, 0, this.f2347d);
        l();
    }

    public final int k(Object obj) {
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i11 = iHashCode ^ (iHashCode << 16);
        int i12 = i11 >>> 7;
        int i13 = i11 & 127;
        int i14 = this.f2347d;
        int i15 = i12 & i14;
        int i16 = 0;
        while (true) {
            long[] jArr = this.f2344a;
            int i17 = i15 >> 3;
            int i18 = (i15 & 7) << 3;
            long j11 = ((jArr[i17 + 1] << (64 - i18)) & ((-i18) >> 63)) | (jArr[i17] >>> i18);
            long j12 = i13;
            int i19 = i13;
            long j13 = j11 ^ (j12 * 72340172838076673L);
            for (long j14 = (~j13) & (j13 - 72340172838076673L) & (-9187201950435737472L); j14 != 0; j14 &= j14 - 1) {
                int iNumberOfTrailingZeros = (i15 + (Long.numberOfTrailingZeros(j14) >> 3)) & i14;
                if (Intrinsics.c(this.f2345b[iNumberOfTrailingZeros], obj)) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j11) << 6) & j11 & (-9187201950435737472L)) != 0) {
                int iJ = j(i12);
                if (this.f2302f == 0 && ((this.f2344a[iJ >> 3] >> ((iJ & 7) << 3)) & 255) != 254) {
                    g();
                    iJ = j(i12);
                }
                this.f2348e++;
                int i20 = this.f2302f;
                long[] jArr2 = this.f2344a;
                int i21 = iJ >> 3;
                long j15 = jArr2[i21];
                int i22 = (iJ & 7) << 3;
                this.f2302f = i20 - (((j15 >> i22) & 255) == 128 ? 1 : 0);
                int i23 = this.f2347d;
                long j16 = ((~(255 << i22)) & j15) | (j12 << i22);
                jArr2[i21] = j16;
                jArr2[(((iJ - 7) & i23) + (i23 & 7)) >> 3] = j16;
                return ~iJ;
            }
            i16 += 8;
            i15 = (i15 + i16) & i14;
            i13 = i19;
        }
    }

    public final Object o(Object obj) {
        int iNumberOfTrailingZeros;
        int i11 = 0;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i12 = iHashCode ^ (iHashCode << 16);
        int i13 = i12 & 127;
        int i14 = this.f2347d;
        int i15 = i12 >>> 7;
        loop0: while (true) {
            int i16 = i15 & i14;
            long[] jArr = this.f2344a;
            int i17 = i16 >> 3;
            int i18 = (i16 & 7) << 3;
            long j11 = ((jArr[i17 + 1] << (64 - i18)) & ((-i18) >> 63)) | (jArr[i17] >>> i18);
            long j12 = (((long) i13) * 72340172838076673L) ^ j11;
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j13) >> 3) + i16) & i14;
                if (Intrinsics.c(this.f2345b[iNumberOfTrailingZeros], obj)) {
                    break loop0;
                }
            }
            if ((j11 & ((~j11) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i11 += 8;
            i15 = i16 + i11;
        }
        if (iNumberOfTrailingZeros >= 0) {
            return p(iNumberOfTrailingZeros);
        }
        return null;
    }

    public final Object p(int i11) {
        this.f2348e--;
        long[] jArr = this.f2344a;
        int i12 = this.f2347d;
        int i13 = i11 >> 3;
        int i14 = (i11 & 7) << 3;
        long j11 = (jArr[i13] & (~(255 << i14))) | (254 << i14);
        jArr[i13] = j11;
        jArr[(((i11 - 7) & i12) + (i12 & 7)) >> 3] = j11;
        this.f2345b[i11] = null;
        Object[] objArr = this.f2346c;
        Object obj = objArr[i11];
        objArr[i11] = null;
        return obj;
    }

    public final void r(Object obj, Object obj2) {
        int iK = k(obj);
        if (iK < 0) {
            iK = ~iK;
        }
        this.f2345b[iK] = obj;
        this.f2346c[iK] = obj2;
    }
}
