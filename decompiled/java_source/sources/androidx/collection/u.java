package androidx.collection;

import com.cloud.tmc.kernel.utils.UrlUtils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f2339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long[] f2340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f2341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2342d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2343e;

    private u() {
        this.f2339a = v0.f2353a;
        this.f2340b = w.a();
        this.f2341c = n.a.f70053c;
    }

    public /* synthetic */ u(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(long j11) {
        int iNumberOfTrailingZeros;
        int iA = s.a(j11) * (-862048943);
        int i11 = iA ^ (iA << 16);
        int i12 = i11 & 127;
        int i13 = this.f2342d;
        int i14 = (i11 >>> 7) & i13;
        int i15 = 0;
        loop0: while (true) {
            long[] jArr = this.f2339a;
            int i16 = i14 >> 3;
            int i17 = (i14 & 7) << 3;
            long j12 = ((jArr[i16 + 1] << (64 - i17)) & ((-i17) >> 63)) | (jArr[i16] >>> i17);
            long j13 = (((long) i12) * 72340172838076673L) ^ j12;
            for (long j14 = (~j13) & (j13 - 72340172838076673L) & (-9187201950435737472L); j14 != 0; j14 &= j14 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j14) >> 3) + i14) & i13;
                if (this.f2340b[iNumberOfTrailingZeros] == j11) {
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
        return iNumberOfTrailingZeros >= 0;
    }

    public final Object b(long j11) {
        int iNumberOfTrailingZeros;
        int iA = s.a(j11) * (-862048943);
        int i11 = iA ^ (iA << 16);
        int i12 = i11 & 127;
        int i13 = this.f2342d;
        int i14 = (i11 >>> 7) & i13;
        int i15 = 0;
        loop0: while (true) {
            long[] jArr = this.f2339a;
            int i16 = i14 >> 3;
            int i17 = (i14 & 7) << 3;
            long j12 = ((jArr[i16 + 1] << (64 - i17)) & ((-i17) >> 63)) | (jArr[i16] >>> i17);
            long j13 = (((long) i12) * 72340172838076673L) ^ j12;
            for (long j14 = (~j13) & (j13 - 72340172838076673L) & (-9187201950435737472L); j14 != 0; j14 &= j14 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j14) >> 3) + i14) & i13;
                if (this.f2340b[iNumberOfTrailingZeros] == j11) {
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
        if (iNumberOfTrailingZeros >= 0) {
            return this.f2341c[iNumberOfTrailingZeros];
        }
        return null;
    }

    public final int c() {
        return this.f2342d;
    }

    public final int d() {
        return this.f2343e;
    }

    public final boolean e() {
        return this.f2343e == 0;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0078 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x007a A[LOOP:0: B:14:0x0027->B:35:0x007a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:38:0x007d A[EDGE_INSN: B:38:0x007d->B:36:0x007d BREAK  A[LOOP:0: B:14:0x0027->B:35:0x007a], SYNTHETIC] */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        if (uVar.d() != d()) {
            return false;
        }
        long[] jArr = this.f2340b;
        Object[] objArr = this.f2341c;
        long[] jArr2 = this.f2339a;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i11 = 0;
            while (true) {
                long j11 = jArr2[i11];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i11 != length) {
                        break;
                        break;
                    }
                    i11++;
                } else {
                    int i12 = 8;
                    int i13 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j11) < 128) {
                            int i15 = (i11 << 3) + i14;
                            long j12 = jArr[i15];
                            Object obj2 = objArr[i15];
                            if (obj2 == null) {
                                if (uVar.b(j12) != null || !uVar.a(j12)) {
                                    return false;
                                }
                            } else if (!Intrinsics.c(obj2, uVar.b(j12))) {
                                return false;
                            }
                            i12 = 8;
                        }
                        j11 >>= i12;
                    }
                    if (i13 != i12) {
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

    public int hashCode() {
        long[] jArr = this.f2340b;
        Object[] objArr = this.f2341c;
        long[] jArr2 = this.f2339a;
        int length = jArr2.length - 2;
        int i11 = 0;
        if (length >= 0) {
            int i12 = 0;
            int iHashCode = 0;
            while (true) {
                long j11 = jArr2[i12];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8 - ((~(i12 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j11) < 128) {
                            int i15 = (i12 << 3) + i14;
                            long j12 = jArr[i15];
                            Object obj = objArr[i15];
                            iHashCode += (obj != null ? obj.hashCode() : 0) ^ s.a(j12);
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

    public String toString() {
        int i11;
        int i12;
        if (e()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('{');
        long[] jArr = this.f2340b;
        Object[] objArr = this.f2341c;
        long[] jArr2 = this.f2339a;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i13 = 0;
            int i14 = 0;
            while (true) {
                long j11 = jArr2[i13];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i15 = 8 - ((~(i13 - length)) >>> 31);
                    int i16 = 0;
                    while (i16 < i15) {
                        if ((255 & j11) < 128) {
                            int i17 = (i13 << 3) + i16;
                            i12 = i13;
                            long j12 = jArr[i17];
                            Object obj = objArr[i17];
                            sb2.append(j12);
                            sb2.append(UrlUtils.EQUAL_MARK);
                            if (obj == this) {
                                obj = "(this)";
                            }
                            sb2.append(obj);
                            i14++;
                            if (i14 < this.f2343e) {
                                sb2.append(',');
                                sb2.append(' ');
                            }
                        } else {
                            i12 = i13;
                        }
                        j11 >>= 8;
                        i16++;
                        i13 = i12;
                    }
                    int i18 = i13;
                    if (i15 != 8) {
                        break;
                    }
                    i11 = i18;
                } else {
                    i11 = i13;
                }
                if (i11 == length) {
                    break;
                }
                i13 = i11 + 1;
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        Intrinsics.g(string, "s.append('}').toString()");
        return string;
    }
}
