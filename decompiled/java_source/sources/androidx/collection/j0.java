package androidx.collection;

import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class j0 extends o0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f2288f;

    public j0() {
        this(0, 1, null);
    }

    public j0(int i11) {
        super(null);
        if (!(i11 >= 0)) {
            n.d.a("Capacity must be a positive value.");
        }
        o(v0.g(i11));
    }

    public /* synthetic */ j0(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 6 : i11);
    }

    private final void h() {
        if (this.f2311d <= 8 || Long.compare(ULong.b(ULong.b(this.f2312e) * 32) ^ Long.MIN_VALUE, ULong.b(ULong.b(this.f2311d) * 25) ^ Long.MIN_VALUE) > 0) {
            q(v0.e(this.f2311d));
        } else {
            j();
        }
    }

    private final void j() {
        Object[] objArr;
        int i11;
        int i12;
        long[] jArr = this.f2308a;
        int i13 = this.f2311d;
        Object[] objArr2 = this.f2309b;
        float[] fArr = this.f2310c;
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
                    int iK = k(i19);
                    int i20 = i19 & i13;
                    if (((iK - i20) & i13) / 8 == ((i15 - i20) & i13) / 8) {
                        jArr[i16] = (((long) (i18 & 127)) << i17) | ((~(255 << i17)) & jArr[i16]);
                        jArr[ArraysKt.a0(jArr)] = (jArr[i14] & 72057594037927935L) | Long.MIN_VALUE;
                    } else {
                        int i21 = iK >> 3;
                        long j12 = jArr[i21];
                        int i22 = (iK & 7) << 3;
                        if (((j12 >> i22) & 255) == 128) {
                            int i23 = i15;
                            objArr = objArr2;
                            jArr[i21] = (j12 & (~(255 << i22))) | (((long) (i18 & 127)) << i22);
                            jArr[i16] = (jArr[i16] & (~(255 << i17))) | (128 << i17);
                            objArr[iK] = objArr[i23];
                            objArr[i23] = null;
                            fArr[iK] = fArr[i23];
                            fArr[i23] = 0.0f;
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
                            objArr[iB] = objArr[iK];
                            objArr[iK] = objArr[i25];
                            objArr[i25] = objArr[iB];
                            fArr[iB] = fArr[iK];
                            fArr[iK] = fArr[i25];
                            fArr[i25] = fArr[iB];
                            i12 = i25 - 1;
                        }
                        i14 = 0;
                        jArr[ArraysKt.a0(jArr)] = (jArr[0] & 72057594037927935L) | Long.MIN_VALUE;
                        i15 = i12 + 1;
                        i13 = i11;
                        objArr2 = objArr;
                    }
                }
                i15++;
            }
        }
        m();
    }

    private final int k(int i11) {
        int i12 = this.f2311d;
        int i13 = i11 & i12;
        int i14 = 0;
        while (true) {
            long[] jArr = this.f2308a;
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

    private final int l(Object obj) {
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i11 = iHashCode ^ (iHashCode << 16);
        int i12 = i11 >>> 7;
        int i13 = i11 & 127;
        int i14 = this.f2311d;
        int i15 = i12 & i14;
        int i16 = 0;
        while (true) {
            long[] jArr = this.f2308a;
            int i17 = i15 >> 3;
            int i18 = (i15 & 7) << 3;
            long j11 = ((jArr[i17 + 1] << (64 - i18)) & ((-i18) >> 63)) | (jArr[i17] >>> i18);
            long j12 = i13;
            int i19 = i13;
            long j13 = j11 ^ (j12 * 72340172838076673L);
            for (long j14 = (~j13) & (j13 - 72340172838076673L) & (-9187201950435737472L); j14 != 0; j14 &= j14 - 1) {
                int iNumberOfTrailingZeros = (i15 + (Long.numberOfTrailingZeros(j14) >> 3)) & i14;
                if (Intrinsics.c(this.f2309b[iNumberOfTrailingZeros], obj)) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j11) << 6) & j11 & (-9187201950435737472L)) != 0) {
                int iK = k(i12);
                if (this.f2288f == 0 && ((this.f2308a[iK >> 3] >> ((iK & 7) << 3)) & 255) != 254) {
                    h();
                    iK = k(i12);
                }
                this.f2312e++;
                int i20 = this.f2288f;
                long[] jArr2 = this.f2308a;
                int i21 = iK >> 3;
                long j15 = jArr2[i21];
                int i22 = (iK & 7) << 3;
                this.f2288f = i20 - (((j15 >> i22) & 255) == 128 ? 1 : 0);
                int i23 = this.f2311d;
                long j16 = ((~(255 << i22)) & j15) | (j12 << i22);
                jArr2[i21] = j16;
                jArr2[(((iK - 7) & i23) + (i23 & 7)) >> 3] = j16;
                return ~iK;
            }
            i16 += 8;
            i15 = (i15 + i16) & i14;
            i13 = i19;
        }
    }

    private final void m() {
        this.f2288f = v0.c(d()) - this.f2312e;
    }

    private final void n(int i11) {
        long[] jArr;
        if (i11 == 0) {
            jArr = v0.f2353a;
        } else {
            jArr = new long[((i11 + 15) & (-8)) >> 3];
            ArraysKt.z(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.f2308a = jArr;
        int i12 = i11 >> 3;
        long j11 = 255 << ((i11 & 7) << 3);
        jArr[i12] = (jArr[i12] & (~j11)) | j11;
        m();
    }

    private final void o(int i11) {
        int iMax = i11 > 0 ? Math.max(7, v0.f(i11)) : 0;
        this.f2311d = iMax;
        n(iMax);
        this.f2309b = new Object[iMax];
        this.f2310c = new float[iMax];
    }

    private final void q(int i11) {
        int i12;
        long[] jArr = this.f2308a;
        Object[] objArr = this.f2309b;
        float[] fArr = this.f2310c;
        int i13 = this.f2311d;
        o(i11);
        long[] jArr2 = this.f2308a;
        Object[] objArr2 = this.f2309b;
        float[] fArr2 = this.f2310c;
        int i14 = this.f2311d;
        int i15 = 0;
        while (i15 < i13) {
            if (((jArr[i15 >> 3] >> ((i15 & 7) << 3)) & 255) < 128) {
                Object obj = objArr[i15];
                int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
                int i16 = iHashCode ^ (iHashCode << 16);
                int iK = k(i16 >>> 7);
                i12 = i15;
                long j11 = i16 & 127;
                int i17 = iK >> 3;
                int i18 = (iK & 7) << 3;
                long j12 = (j11 << i18) | (jArr2[i17] & (~(255 << i18)));
                jArr2[i17] = j12;
                jArr2[(((iK - 7) & i14) + (i14 & 7)) >> 3] = j12;
                objArr2[iK] = obj;
                fArr2[iK] = fArr[i12];
            } else {
                i12 = i15;
            }
            i15 = i12 + 1;
        }
    }

    public final void i() {
        this.f2312e = 0;
        long[] jArr = this.f2308a;
        if (jArr != v0.f2353a) {
            ArraysKt.z(jArr, -9187201950435737472L, 0, 0, 6, null);
            long[] jArr2 = this.f2308a;
            int i11 = this.f2311d;
            int i12 = i11 >> 3;
            long j11 = 255 << ((i11 & 7) << 3);
            jArr2[i12] = (jArr2[i12] & (~j11)) | j11;
        }
        ArraysKt.w(this.f2309b, null, 0, this.f2311d);
        m();
    }

    public final void p(o0 from) {
        Intrinsics.h(from, "from");
        Object[] objArr = from.f2309b;
        float[] fArr = from.f2310c;
        long[] jArr = from.f2308a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i11 = 0;
        while (true) {
            long j11 = jArr[i11];
            if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8 - ((~(i11 - length)) >>> 31);
                for (int i13 = 0; i13 < i12; i13++) {
                    if ((255 & j11) < 128) {
                        int i14 = (i11 << 3) + i13;
                        r(objArr[i14], fArr[i14]);
                    }
                    j11 >>= 8;
                }
                if (i12 != 8) {
                    return;
                }
            }
            if (i11 == length) {
                return;
            } else {
                i11++;
            }
        }
    }

    public final void r(Object obj, float f11) {
        int iL = l(obj);
        if (iL < 0) {
            iL = ~iL;
        }
        this.f2309b[iL] = obj;
        this.f2310c[iL] = f11;
    }
}
