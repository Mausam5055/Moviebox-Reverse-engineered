package androidx.collection;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f2319a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f2320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2321c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2322d;

    private q() {
        this.f2319a = v0.f2353a;
        this.f2320b = r.a();
    }

    public /* synthetic */ q(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ String e(q qVar, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i11, CharSequence charSequence4, int i12, Object obj) {
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
        return qVar.d(charSequence, charSequence5, charSequence6, i13, charSequence4);
    }

    public final boolean a(int i11) {
        int iNumberOfTrailingZeros;
        int i12 = (-862048943) * i11;
        int i13 = i12 ^ (i12 << 16);
        int i14 = i13 & 127;
        int i15 = this.f2321c;
        int i16 = (i13 >>> 7) & i15;
        int i17 = 0;
        loop0: while (true) {
            long[] jArr = this.f2319a;
            int i18 = i16 >> 3;
            int i19 = (i16 & 7) << 3;
            long j11 = ((jArr[i18 + 1] << (64 - i19)) & ((-i19) >> 63)) | (jArr[i18] >>> i19);
            long j12 = (((long) i14) * 72340172838076673L) ^ j11;
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j13) >> 3) + i16) & i15;
                if (this.f2320b[iNumberOfTrailingZeros] == i11) {
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

    public final int b() {
        return this.f2321c;
    }

    public final boolean c() {
        return this.f2322d != 0;
    }

    public final String d(CharSequence separator, CharSequence prefix, CharSequence postfix, int i11, CharSequence truncated) {
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        int[] iArr = this.f2320b;
        long[] jArr = this.f2319a;
        int length = jArr.length - 2;
        if (length < 0) {
            sb2.append(postfix);
            break;
        }
        int i12 = 0;
        int i13 = 0;
        loop0: while (true) {
            long j11 = jArr[i12];
            if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i14 = 8;
                int i15 = 8 - ((~(i12 - length)) >>> 31);
                int i16 = 0;
                while (i16 < i15) {
                    if ((j11 & 255) < 128) {
                        int i17 = iArr[(i12 << 3) + i16];
                        if (i13 == i11) {
                            sb2.append(truncated);
                            break loop0;
                        }
                        if (i13 != 0) {
                            sb2.append(separator);
                        }
                        sb2.append(i17);
                        i13++;
                    }
                    j11 >>= 8;
                    i16++;
                    i14 = 8;
                }
                if (i15 == i14) {
                }
                sb2.append(postfix);
                break;
            }
            if (i12 == length) {
                sb2.append(postfix);
                break;
            }
            i12++;
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
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        if (qVar.f2322d != this.f2322d) {
            return false;
        }
        int[] iArr = this.f2320b;
        long[] jArr = this.f2319a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i11 = 0;
            while (true) {
                long j11 = jArr[i11];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j11) < 128 && !qVar.a(iArr[(i11 << 3) + i13])) {
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
        int[] iArr = this.f2320b;
        long[] jArr = this.f2319a;
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
                            i13 += iArr[(i12 << 3) + i15];
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

    public String toString() {
        return e(this, null, "[", "]", 0, null, 25, null);
    }
}
