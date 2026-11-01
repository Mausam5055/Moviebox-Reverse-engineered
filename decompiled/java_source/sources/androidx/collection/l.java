package androidx.collection;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f2293a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f2294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f2295c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2296d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2297e;

    private l() {
        this.f2293a = v0.f2353a;
        this.f2294b = r.a();
        this.f2295c = r.a();
    }

    public /* synthetic */ l(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(int i11) {
        return b(i11) >= 0;
    }

    public final int b(int i11) {
        int i12 = (-862048943) * i11;
        int i13 = i12 ^ (i12 << 16);
        int i14 = i13 & 127;
        int i15 = this.f2296d;
        int i16 = (i13 >>> 7) & i15;
        int i17 = 0;
        while (true) {
            long[] jArr = this.f2293a;
            int i18 = i16 >> 3;
            int i19 = (i16 & 7) << 3;
            long j11 = ((jArr[i18 + 1] << (64 - i19)) & ((-i19) >> 63)) | (jArr[i18] >>> i19);
            long j12 = (((long) i14) * 72340172838076673L) ^ j11;
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j13) >> 3) + i16) & i15;
                if (this.f2294b[iNumberOfTrailingZeros] == i11) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((j11 & ((~j11) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i17 += 8;
            i16 = (i16 + i17) & i15;
        }
    }

    public final int c(int i11) {
        int iB = b(i11);
        if (iB >= 0) {
            return this.f2295c[iB];
        }
        throw new NoSuchElementException("Cannot find value for key " + i11);
    }

    public final int d() {
        return this.f2296d;
    }

    public final int e(int i11, int i12) {
        int iB = b(i11);
        return iB >= 0 ? this.f2295c[iB] : i12;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0060 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0062 A[LOOP:0: B:14:0x0027->B:26:0x0062, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x0065 A[SYNTHETIC] */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (lVar.f() != f()) {
            return false;
        }
        int[] iArr = this.f2294b;
        int[] iArr2 = this.f2295c;
        long[] jArr = this.f2293a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i11 = 0;
            while (true) {
                long j11 = jArr[i11];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j11) < 128) {
                            int i14 = (i11 << 3) + i13;
                            if (iArr2[i14] != lVar.c(iArr[i14])) {
                                return false;
                            }
                        }
                        j11 >>= 8;
                    }
                    if (i12 == 8) {
                        if (i11 != length) {
                            i11++;
                        }
                    }
                } else if (i11 != length) {
                    i11++;
                }
            }
        }
        return true;
    }

    public final int f() {
        return this.f2297e;
    }

    public final boolean g() {
        return this.f2297e == 0;
    }

    public int hashCode() {
        int[] iArr = this.f2294b;
        int[] iArr2 = this.f2295c;
        long[] jArr = this.f2293a;
        int length = jArr.length - 2;
        int i11 = 0;
        if (length >= 0) {
            int i12 = 0;
            int i13 = 0;
            while (true) {
                long j11 = jArr[i12];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i14 = 8 - ((~(i12 - length)) >>> 31);
                    for (int i15 = 0; i15 < i14; i15++) {
                        if ((255 & j11) < 128) {
                            int i16 = (i12 << 3) + i15;
                            i13 += iArr2[i16] ^ iArr[i16];
                        }
                        j11 >>= 8;
                    }
                    if (i14 != 8) {
                        return i13;
                    }
                }
                if (i12 != length) {
                    i12++;
                } else {
                    i11 = i13;
                }
            }
        }
        return i11;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0070 A[DONT_INVERT, PHI: r8
  0x0070: PHI (r8v2 int) = (r8v1 int), (r8v3 int) binds: [B:10:0x0031, B:19:0x006e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:21:0x0072 A[LOOP:0: B:9:0x0023->B:21:0x0072, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x0075 A[EDGE_INSN: B:25:0x0075->B:22:0x0075 BREAK  A[LOOP:0: B:9:0x0023->B:21:0x0072], SYNTHETIC] */
    public String toString() {
        if (g()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('{');
        int[] iArr = this.f2294b;
        int[] iArr2 = this.f2295c;
        long[] jArr = this.f2293a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i11 = 0;
            int i12 = 0;
            while (true) {
                long j11 = jArr[i11];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i11 != length) {
                        break;
                        break;
                    }
                    i11++;
                } else {
                    int i13 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j11) < 128) {
                            int i15 = (i11 << 3) + i14;
                            int i16 = iArr[i15];
                            int i17 = iArr2[i15];
                            sb2.append(i16);
                            sb2.append(UrlUtils.EQUAL_MARK);
                            sb2.append(i17);
                            i12++;
                            if (i12 < this.f2297e) {
                                sb2.append(',');
                                sb2.append(' ');
                            }
                        }
                        j11 >>= 8;
                    }
                    if (i13 != 8) {
                        break;
                    }
                    if (i11 != length) {
                        break;
                    }
                    i11++;
                }
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        Intrinsics.g(string, "s.append('}').toString()");
        return string;
    }
}
