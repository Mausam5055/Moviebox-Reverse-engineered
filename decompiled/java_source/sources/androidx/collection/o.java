package androidx.collection;

import com.cloud.tmc.kernel.utils.UrlUtils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f2303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f2304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f2305c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2306d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2307e;

    private o() {
        this.f2303a = v0.f2353a;
        this.f2304b = r.a();
        this.f2305c = n.a.f70053c;
    }

    public /* synthetic */ o(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(int i11) {
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
        return iNumberOfTrailingZeros >= 0;
    }

    public final boolean b(int i11) {
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
        return iNumberOfTrailingZeros >= 0;
    }

    public final Object c(int i11) {
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
            return this.f2305c[iNumberOfTrailingZeros];
        }
        return null;
    }

    public final int d() {
        return this.f2306d;
    }

    public final int e() {
        return this.f2307e;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0073 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x0075 A[LOOP:0: B:14:0x0027->B:33:0x0075, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:35:0x0078 A[EDGE_INSN: B:35:0x0078->B:34:0x0078 BREAK  A[LOOP:0: B:14:0x0027->B:33:0x0075], SYNTHETIC] */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (oVar.e() != e()) {
            return false;
        }
        int[] iArr = this.f2304b;
        Object[] objArr = this.f2305c;
        long[] jArr = this.f2303a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i11 = 0;
            while (true) {
                long j11 = jArr[i11];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i11 != length) {
                        break;
                        break;
                    }
                    i11++;
                } else {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j11) < 128) {
                            int i14 = (i11 << 3) + i13;
                            int i15 = iArr[i14];
                            Object obj2 = objArr[i14];
                            if (obj2 == null) {
                                if (oVar.c(i15) != null || !oVar.b(i15)) {
                                    return false;
                                }
                            } else if (!Intrinsics.c(obj2, oVar.c(i15))) {
                                return false;
                            }
                        }
                        j11 >>= 8;
                    }
                    if (i12 != 8) {
                        break;
                    }
                    if (i11 != length) {
                        break;
                    }
                    i11++;
                }
            }
        }
        return true;
    }

    public final boolean f() {
        return this.f2307e == 0;
    }

    public final boolean g() {
        return this.f2307e != 0;
    }

    public int hashCode() {
        int[] iArr = this.f2304b;
        Object[] objArr = this.f2305c;
        long[] jArr = this.f2303a;
        int length = jArr.length - 2;
        int i11 = 0;
        if (length >= 0) {
            int i12 = 0;
            int iHashCode = 0;
            while (true) {
                long j11 = jArr[i12];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8 - ((~(i12 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j11) < 128) {
                            int i15 = (i12 << 3) + i14;
                            int i16 = iArr[i15];
                            Object obj = objArr[i15];
                            iHashCode += (obj != null ? obj.hashCode() : 0) ^ i16;
                        }
                        j11 >>= 8;
                    }
                    if (i13 != 8) {
                        return iHashCode;
                    }
                }
                if (i12 != length) {
                    i12++;
                } else {
                    i11 = iHashCode;
                }
            }
        }
        return i11;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0074 A[DONT_INVERT, PHI: r8
  0x0074: PHI (r8v2 int) = (r8v1 int), (r8v3 int) binds: [B:10:0x0031, B:22:0x0072] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:24:0x0076 A[LOOP:0: B:9:0x0023->B:24:0x0076, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:28:0x0079 A[EDGE_INSN: B:28:0x0079->B:25:0x0079 BREAK  A[LOOP:0: B:9:0x0023->B:24:0x0076], SYNTHETIC] */
    public String toString() {
        if (f()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('{');
        int[] iArr = this.f2304b;
        Object[] objArr = this.f2305c;
        long[] jArr = this.f2303a;
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
                            Object obj = objArr[i15];
                            sb2.append(i16);
                            sb2.append(UrlUtils.EQUAL_MARK);
                            if (obj == this) {
                                obj = "(this)";
                            }
                            sb2.append(obj);
                            i12++;
                            if (i12 < this.f2307e) {
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
