package androidx.collection;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f2333a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long[] f2334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f2335c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2336d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2337e;

    private t() {
        this.f2333a = v0.f2353a;
        this.f2334b = w.a();
        this.f2335c = r.a();
    }

    public /* synthetic */ t(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final int a(long j11) {
        int iA = s.a(j11) * (-862048943);
        int i11 = iA ^ (iA << 16);
        int i12 = i11 & 127;
        int i13 = this.f2336d;
        int i14 = (i11 >>> 7) & i13;
        int i15 = 0;
        while (true) {
            long[] jArr = this.f2333a;
            int i16 = i14 >> 3;
            int i17 = (i14 & 7) << 3;
            long j12 = ((jArr[i16 + 1] << (64 - i17)) & ((-i17) >> 63)) | (jArr[i16] >>> i17);
            long j13 = (((long) i12) * 72340172838076673L) ^ j12;
            for (long j14 = (~j13) & (j13 - 72340172838076673L) & (-9187201950435737472L); j14 != 0; j14 &= j14 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j14) >> 3) + i14) & i13;
                if (this.f2334b[iNumberOfTrailingZeros] == j11) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((j12 & ((~j12) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i15 += 8;
            i14 = (i14 + i15) & i13;
        }
    }

    public final int b(long j11) {
        int iA = a(j11);
        if (iA >= 0) {
            return this.f2335c[iA];
        }
        throw new NoSuchElementException("Cannot find value for key " + j11);
    }

    public final int c() {
        return this.f2336d;
    }

    public final int d() {
        return this.f2337e;
    }

    public final boolean e() {
        return this.f2337e == 0;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0065 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0067 A[LOOP:0: B:14:0x0027->B:28:0x0067, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:32:0x006a A[SYNTHETIC] */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        if (tVar.d() != d()) {
            return false;
        }
        long[] jArr = this.f2334b;
        int[] iArr = this.f2335c;
        long[] jArr2 = this.f2333a;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i11 = 0;
            while (true) {
                long j11 = jArr2[i11];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8;
                    int i13 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j11) < 128) {
                            int i15 = (i11 << 3) + i14;
                            if (iArr[i15] != tVar.b(jArr[i15])) {
                                return false;
                            }
                            i12 = 8;
                        }
                        j11 >>= i12;
                    }
                    if (i13 == i12) {
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
        long[] jArr = this.f2334b;
        int[] iArr = this.f2335c;
        long[] jArr2 = this.f2333a;
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
                            int i15 = (i12 << 3) + i14;
                            iA += iArr[i15] ^ s.a(jArr[i15]);
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
        int i11;
        int i12;
        if (e()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('{');
        long[] jArr = this.f2334b;
        int[] iArr = this.f2335c;
        long[] jArr2 = this.f2333a;
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
                            int i18 = iArr[i17];
                            sb2.append(j12);
                            sb2.append(UrlUtils.EQUAL_MARK);
                            sb2.append(i18);
                            i14++;
                            if (i14 < this.f2337e) {
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
                    int i19 = i13;
                    if (i15 != 8) {
                        break;
                    }
                    i11 = i19;
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
