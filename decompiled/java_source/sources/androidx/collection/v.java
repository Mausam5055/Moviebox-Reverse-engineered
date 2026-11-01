package androidx.collection;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f2349a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long[] f2350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2351c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2352d;

    private v() {
        this.f2349a = v0.f2353a;
        this.f2350b = w.a();
    }

    public /* synthetic */ v(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ String d(v vVar, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i11, CharSequence charSequence4, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
        }
        if ((i12 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i12 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i12 & 4) == 0 ? charSequence3 : "";
        if ((i12 & 8) != 0) {
            i11 = -1;
        }
        int i13 = i11;
        if ((i12 & 16) != 0) {
            charSequence4 = "...";
        }
        return vVar.c(charSequence, charSequence5, charSequence6, i13, charSequence4);
    }

    public final boolean a(long j11) {
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
        return iNumberOfTrailingZeros >= 0;
    }

    public final int b() {
        return this.f2351c;
    }

    public final String c(CharSequence separator, CharSequence prefix, CharSequence postfix, int i11, CharSequence truncated) {
        int i12;
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        long[] jArr = this.f2350b;
        long[] jArr2 = this.f2349a;
        int length = jArr2.length - 2;
        if (length < 0) {
            sb2.append(postfix);
            break;
        }
        int i13 = 0;
        int i14 = 0;
        loop0: while (true) {
            long j11 = jArr2[i13];
            if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i15 = 8;
                int i16 = 8 - ((~(i13 - length)) >>> 31);
                int i17 = 0;
                while (i17 < i16) {
                    if ((j11 & 255) < 128) {
                        long j12 = jArr[(i13 << 3) + i17];
                        if (i14 == i11) {
                            sb2.append(truncated);
                            break loop0;
                        }
                        if (i14 != 0) {
                            sb2.append(separator);
                        }
                        sb2.append(j12);
                        i14++;
                    }
                    j11 >>= 8;
                    i17++;
                    i15 = 8;
                    i13 = i13;
                }
                int i18 = i13;
                if (i16 == i15) {
                    i12 = i18;
                }
                sb2.append(postfix);
                break;
            }
            i12 = i13;
            if (i12 == length) {
                sb2.append(postfix);
                break;
            }
            i13 = i12 + 1;
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0058 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x005a A[LOOP:0: B:14:0x0021->B:26:0x005a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x005d A[SYNTHETIC] */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        if (vVar.f2352d != this.f2352d) {
            return false;
        }
        long[] jArr = this.f2350b;
        long[] jArr2 = this.f2349a;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i11 = 0;
            while (true) {
                long j11 = jArr2[i11];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j11) < 128 && !vVar.a(jArr[(i11 << 3) + i13])) {
                            return false;
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

    public int hashCode() {
        long[] jArr = this.f2350b;
        long[] jArr2 = this.f2349a;
        int length = jArr2.length - 2;
        int i11 = 0;
        if (length >= 0) {
            int i12 = 0;
            int iA = 0;
            while (true) {
                long j11 = jArr2[i12];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8 - ((~(i12 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j11) < 128) {
                            iA += s.a(jArr[(i12 << 3) + i14]);
                        }
                        j11 >>= 8;
                    }
                    if (i13 != 8) {
                        return iA;
                    }
                }
                if (i12 != length) {
                    i12++;
                } else {
                    i11 = iA;
                }
            }
        }
        return i11;
    }

    public String toString() {
        return d(this, null, "[", "]", 0, null, 25, null);
    }
}
