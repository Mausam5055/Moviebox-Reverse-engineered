package androidx.collection;

import com.cloud.tmc.kernel.utils.UrlUtils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f2344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f2345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f2346c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2347d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2348e;

    private u0() {
        this.f2344a = v0.f2353a;
        Object[] objArr = n.a.f70053c;
        this.f2345b = objArr;
        this.f2346c = objArr;
    }

    public /* synthetic */ u0(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(Object obj) {
        int iNumberOfTrailingZeros;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i11 = iHashCode ^ (iHashCode << 16);
        int i12 = i11 & 127;
        int i13 = this.f2347d;
        int i14 = (i11 >>> 7) & i13;
        int i15 = 0;
        loop0: while (true) {
            long[] jArr = this.f2344a;
            int i16 = i14 >> 3;
            int i17 = (i14 & 7) << 3;
            long j11 = ((jArr[i16 + 1] << (64 - i17)) & ((-i17) >> 63)) | (jArr[i16] >>> i17);
            long j12 = (((long) i12) * 72340172838076673L) ^ j11;
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j13) >> 3) + i14) & i13;
                if (Intrinsics.c(this.f2345b[iNumberOfTrailingZeros], obj)) {
                    break loop0;
                }
            }
            if ((j11 & ((~j11) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i15 += 8;
            i14 = (i14 + i15) & i13;
        }
        return iNumberOfTrailingZeros >= 0;
    }

    public final Object b(Object obj) {
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
            return this.f2346c[iNumberOfTrailingZeros];
        }
        return null;
    }

    public final int c() {
        return this.f2347d;
    }

    public final int d() {
        return this.f2348e;
    }

    public final boolean e() {
        return this.f2348e == 0;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0073 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x0075 A[LOOP:0: B:14:0x0027->B:33:0x0075, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:35:0x0078 A[EDGE_INSN: B:35:0x0078->B:34:0x0078 BREAK  A[LOOP:0: B:14:0x0027->B:33:0x0075], SYNTHETIC] */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof u0)) {
            return false;
        }
        u0 u0Var = (u0) obj;
        if (u0Var.d() != d()) {
            return false;
        }
        Object[] objArr = this.f2345b;
        Object[] objArr2 = this.f2346c;
        long[] jArr = this.f2344a;
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
                            Object obj2 = objArr[i14];
                            Object obj3 = objArr2[i14];
                            if (obj3 == null) {
                                if (u0Var.b(obj2) != null || !u0Var.a(obj2)) {
                                    return false;
                                }
                            } else if (!Intrinsics.c(obj3, u0Var.b(obj2))) {
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
        return this.f2348e != 0;
    }

    public int hashCode() {
        Object[] objArr = this.f2345b;
        Object[] objArr2 = this.f2346c;
        long[] jArr = this.f2344a;
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
                            Object obj = objArr[i15];
                            Object obj2 = objArr2[i15];
                            iHashCode += (obj2 != null ? obj2.hashCode() : 0) ^ (obj != null ? obj.hashCode() : 0);
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

    /* JADX WARN: Code duplicated, block: B:26:0x007a A[DONT_INVERT, PHI: r8
  0x007a: PHI (r8v2 int) = (r8v1 int), (r8v3 int) binds: [B:10:0x0031, B:25:0x0078] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:27:0x007c A[LOOP:0: B:9:0x0023->B:27:0x007c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:31:0x007f A[EDGE_INSN: B:31:0x007f->B:28:0x007f BREAK  A[LOOP:0: B:9:0x0023->B:27:0x007c], SYNTHETIC] */
    public String toString() {
        if (e()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('{');
        Object[] objArr = this.f2345b;
        Object[] objArr2 = this.f2346c;
        long[] jArr = this.f2344a;
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
                            Object obj = objArr[i15];
                            Object obj2 = objArr2[i15];
                            if (obj == this) {
                                obj = "(this)";
                            }
                            sb2.append(obj);
                            sb2.append(UrlUtils.EQUAL_MARK);
                            if (obj2 == this) {
                                obj2 = "(this)";
                            }
                            sb2.append(obj2);
                            i12++;
                            if (i12 < this.f2348e) {
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
