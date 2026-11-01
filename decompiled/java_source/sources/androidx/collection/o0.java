package androidx.collection;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f2308a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f2309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float[] f2310c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2311d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2312e;

    private o0() {
        this.f2308a = v0.f2353a;
        this.f2309b = n.a.f70053c;
        this.f2310c = j.a();
    }

    public /* synthetic */ o0(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(Object obj) {
        return b(obj) >= 0;
    }

    public final int b(Object obj) {
        int i11 = 0;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i12 = iHashCode ^ (iHashCode << 16);
        int i13 = i12 & 127;
        int i14 = this.f2311d;
        int i15 = i12 >>> 7;
        while (true) {
            int i16 = i15 & i14;
            long[] jArr = this.f2308a;
            int i17 = i16 >> 3;
            int i18 = (i16 & 7) << 3;
            long j11 = ((jArr[i17 + 1] << (64 - i18)) & ((-i18) >> 63)) | (jArr[i17] >>> i18);
            long j12 = (((long) i13) * 72340172838076673L) ^ j11;
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j13) >> 3) + i16) & i14;
                if (Intrinsics.c(this.f2309b[iNumberOfTrailingZeros], obj)) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((j11 & ((~j11) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i11 += 8;
            i15 = i16 + i11;
        }
    }

    public final float c(Object obj) {
        int iB = b(obj);
        if (iB >= 0) {
            return this.f2310c[iB];
        }
        throw new NoSuchElementException("There is no key " + obj + " in the map");
    }

    public final int d() {
        return this.f2311d;
    }

    public final float e(Object obj, float f11) {
        int iB = b(obj);
        return iB >= 0 ? this.f2310c[iB] : f11;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0063 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x0065 A[LOOP:0: B:14:0x0027->B:27:0x0065, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:31:0x0068 A[SYNTHETIC] */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o0)) {
            return false;
        }
        o0 o0Var = (o0) obj;
        if (o0Var.f() != f()) {
            return false;
        }
        Object[] objArr = this.f2309b;
        float[] fArr = this.f2310c;
        long[] jArr = this.f2308a;
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
                            if (fArr[i14] != o0Var.c(objArr[i14])) {
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
        return this.f2312e;
    }

    public final boolean g() {
        return this.f2312e == 0;
    }

    public int hashCode() {
        Object[] objArr = this.f2309b;
        float[] fArr = this.f2310c;
        long[] jArr = this.f2308a;
        int length = jArr.length - 2;
        int i11 = 0;
        if (length >= 0) {
            int i12 = 0;
            int iFloatToIntBits = 0;
            while (true) {
                long j11 = jArr[i12];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8 - ((~(i12 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j11) < 128) {
                            int i15 = (i12 << 3) + i14;
                            Object obj = objArr[i15];
                            iFloatToIntBits += Float.floatToIntBits(fArr[i15]) ^ (obj != null ? obj.hashCode() : 0);
                        }
                        j11 >>= 8;
                    }
                    if (i13 != 8) {
                        return iFloatToIntBits;
                    }
                }
                if (i12 != length) {
                    i12++;
                } else {
                    i11 = iFloatToIntBits;
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
        if (g()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('{');
        Object[] objArr = this.f2309b;
        float[] fArr = this.f2310c;
        long[] jArr = this.f2308a;
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
                            float f11 = fArr[i15];
                            if (obj == this) {
                                obj = "(this)";
                            }
                            sb2.append(obj);
                            sb2.append(UrlUtils.EQUAL_MARK);
                            sb2.append(f11);
                            i12++;
                            if (i12 < this.f2312e) {
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
