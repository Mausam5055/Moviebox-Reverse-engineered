package androidx.collection;

import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class i0 extends v {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2285e;

    public i0() {
        this(0, 1, null);
    }

    public i0(int i11) {
        super(null);
        if (!(i11 >= 0)) {
            n.d.a("Capacity must be a positive value.");
        }
        k(v0.g(i11));
    }

    public /* synthetic */ i0(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 6 : i11);
    }

    private final void e() {
        if (this.f2351c <= 8 || Long.compare(ULong.b(ULong.b(this.f2352d) * 32) ^ Long.MIN_VALUE, ULong.b(ULong.b(this.f2351c) * 25) ^ Long.MIN_VALUE) > 0) {
            o(v0.e(this.f2351c));
        } else {
            f();
        }
    }

    private final void f() {
        int i11;
        long[] jArr = this.f2349a;
        int i12 = this.f2351c;
        long[] jArr2 = this.f2350b;
        v0.a(jArr, i12);
        char c11 = 0;
        int i13 = 0;
        int iB = -1;
        while (i13 != i12) {
            int i14 = i13 >> 3;
            int i15 = (i13 & 7) << 3;
            long j11 = (jArr[i14] >> i15) & 255;
            if (j11 == 128) {
                iB = i13;
                i13++;
            } else {
                if (j11 == 254) {
                    int iA = s.a(jArr2[i13]) * (-862048943);
                    int i16 = iA ^ (iA << 16);
                    int i17 = i16 >>> 7;
                    int iH = h(i17);
                    int i18 = i17 & i12;
                    if (((iH - i18) & i12) / 8 == ((i13 - i18) & i12) / 8) {
                        jArr[i14] = (((long) (i16 & 127)) << i15) | ((~(255 << i15)) & jArr[i14]);
                        jArr[ArraysKt.a0(jArr)] = (jArr[c11] & 72057594037927935L) | Long.MIN_VALUE;
                    } else {
                        int i19 = iH >> 3;
                        long j12 = jArr[i19];
                        int i20 = (iH & 7) << 3;
                        if (((j12 >> i20) & 255) == 128) {
                            int i21 = i13;
                            jArr[i19] = (((long) (i16 & 127)) << i20) | (j12 & (~(255 << i20)));
                            jArr[i14] = (jArr[i14] & (~(255 << i15))) | (128 << i15);
                            jArr2[iH] = jArr2[i21];
                            jArr2[i21] = 0;
                            i11 = i21;
                            iB = i11;
                        } else {
                            int i22 = i13;
                            jArr[i19] = (((long) (i16 & 127)) << i20) | (j12 & (~(255 << i20)));
                            if (iB == -1) {
                                iB = v0.b(jArr, i22 + 1, i12);
                            }
                            jArr2[iB] = jArr2[iH];
                            jArr2[iH] = jArr2[i22];
                            jArr2[i22] = jArr2[iB];
                            i11 = i22 - 1;
                        }
                        jArr[ArraysKt.a0(jArr)] = (jArr[0] & 72057594037927935L) | Long.MIN_VALUE;
                        i13 = i11 + 1;
                        c11 = 0;
                    }
                }
                i13++;
            }
        }
        i();
    }

    private final int g(long j11) {
        int iA = s.a(j11) * (-862048943);
        int i11 = iA ^ (iA << 16);
        int i12 = i11 >>> 7;
        int i13 = i11 & 127;
        int i14 = this.f2351c;
        int i15 = i12 & i14;
        int i16 = 0;
        while (true) {
            long[] jArr = this.f2349a;
            int i17 = i15 >> 3;
            int i18 = (i15 & 7) << 3;
            long j12 = ((jArr[i17 + 1] << (64 - i18)) & ((-i18) >> 63)) | (jArr[i17] >>> i18);
            long j13 = i13;
            int i19 = i16;
            long j14 = j12 ^ (j13 * 72340172838076673L);
            for (long j15 = (~j14) & (j14 - 72340172838076673L) & (-9187201950435737472L); j15 != 0; j15 &= j15 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j15) >> 3) + i15) & i14;
                if (this.f2350b[iNumberOfTrailingZeros] == j11) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j12) << 6) & j12 & (-9187201950435737472L)) != 0) {
                int iH = h(i12);
                if (this.f2285e == 0 && ((this.f2349a[iH >> 3] >> ((iH & 7) << 3)) & 255) != 254) {
                    e();
                    iH = h(i12);
                }
                this.f2352d++;
                int i20 = this.f2285e;
                long[] jArr2 = this.f2349a;
                int i21 = iH >> 3;
                long j16 = jArr2[i21];
                int i22 = (iH & 7) << 3;
                this.f2285e = i20 - (((j16 >> i22) & 255) == 128 ? 1 : 0);
                int i23 = this.f2351c;
                long j17 = ((~(255 << i22)) & j16) | (j13 << i22);
                jArr2[i21] = j17;
                jArr2[(((iH - 7) & i23) + (i23 & 7)) >> 3] = j17;
                return iH;
            }
            i16 = i19 + 8;
            i15 = (i15 + i16) & i14;
        }
    }

    private final int h(int i11) {
        int i12 = this.f2351c;
        int i13 = i11 & i12;
        int i14 = 0;
        while (true) {
            long[] jArr = this.f2349a;
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

    private final void i() {
        this.f2285e = v0.c(b()) - this.f2352d;
    }

    private final void j(int i11) {
        long[] jArr;
        if (i11 == 0) {
            jArr = v0.f2353a;
        } else {
            jArr = new long[((i11 + 15) & (-8)) >> 3];
            ArraysKt.z(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.f2349a = jArr;
        int i12 = i11 >> 3;
        long j11 = 255 << ((i11 & 7) << 3);
        jArr[i12] = (jArr[i12] & (~j11)) | j11;
        i();
    }

    private final void k(int i11) {
        int iMax = i11 > 0 ? Math.max(7, v0.f(i11)) : 0;
        this.f2351c = iMax;
        j(iMax);
        this.f2350b = new long[iMax];
    }

    private final void n(int i11) {
        this.f2352d--;
        long[] jArr = this.f2349a;
        int i12 = this.f2351c;
        int i13 = i11 >> 3;
        int i14 = (i11 & 7) << 3;
        long j11 = (jArr[i13] & (~(255 << i14))) | (254 << i14);
        jArr[i13] = j11;
        jArr[(((i11 - 7) & i12) + (i12 & 7)) >> 3] = j11;
    }

    private final void o(int i11) {
        long[] jArr = this.f2349a;
        long[] jArr2 = this.f2350b;
        int i12 = this.f2351c;
        k(i11);
        long[] jArr3 = this.f2349a;
        long[] jArr4 = this.f2350b;
        int i13 = this.f2351c;
        for (int i14 = 0; i14 < i12; i14++) {
            if (((jArr[i14 >> 3] >> ((i14 & 7) << 3)) & 255) < 128) {
                long j11 = jArr2[i14];
                int iA = s.a(j11) * (-862048943);
                int i15 = iA ^ (iA << 16);
                int iH = h(i15 >>> 7);
                long j12 = i15 & 127;
                int i16 = iH >> 3;
                int i17 = (iH & 7) << 3;
                long j13 = (jArr3[i16] & (~(255 << i17))) | (j12 << i17);
                jArr3[i16] = j13;
                jArr3[(((iH - 7) & i13) + (i13 & 7)) >> 3] = j13;
                jArr4[iH] = j11;
            }
        }
    }

    public final void l(long j11) {
        this.f2350b[g(j11)] = j11;
    }

    public final boolean m(long j11) {
        int iNumberOfTrailingZeros;
        int iA = s.a(j11) * (-862048943);
        int i11 = iA ^ (iA << 16);
        int i12 = i11 & 127;
        int i13 = this.f2351c;
        int i14 = (i11 >>> 7) & i13;
        int i15 = 0;
        loop0: while (true) {
            long[] jArr = this.f2349a;
            int i16 = i14 >> 3;
            int i17 = (i14 & 7) << 3;
            long j12 = ((jArr[i16 + 1] << (64 - i17)) & ((-i17) >> 63)) | (jArr[i16] >>> i17);
            long j13 = (((long) i12) * 72340172838076673L) ^ j12;
            for (long j14 = (~j13) & (j13 - 72340172838076673L) & (-9187201950435737472L); j14 != 0; j14 &= j14 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j14) >> 3) + i14) & i13;
                if (this.f2350b[iNumberOfTrailingZeros] == j11) {
                    break loop0;
                }
            }
            if ((j12 & ((~j12) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i15 += 8;
            i14 = (i14 + i15) & i13;
        }
        boolean z10 = iNumberOfTrailingZeros >= 0;
        if (z10) {
            n(iNumberOfTrailingZeros);
        }
        return z10;
    }
}
