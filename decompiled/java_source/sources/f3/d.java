package f3;

import androidx.media3.common.util.a1;

/* JADX INFO: loaded from: classes2.dex */
abstract class d {

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long[] f62192a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f62193b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f62194c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long[] f62195d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int[] f62196e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f62197f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final long f62198g;

        private b(long[] jArr, int[] iArr, int i11, long[] jArr2, int[] iArr2, long j11, long j12) {
            this.f62192a = jArr;
            this.f62193b = iArr;
            this.f62194c = i11;
            this.f62195d = jArr2;
            this.f62196e = iArr2;
            this.f62197f = j11;
            this.f62198g = j12;
        }
    }

    public static b a(int i11, long[] jArr, int[] iArr, long j11) {
        int[] iArr2 = iArr;
        int i12 = 8192 / i11;
        int i13 = 0;
        int iK = 0;
        for (int i14 : iArr2) {
            iK += a1.k(i14, i12);
        }
        long[] jArr2 = new long[iK];
        int[] iArr3 = new int[iK];
        long[] jArr3 = new long[iK];
        int[] iArr4 = new int[iK];
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int iMax = 0;
        while (i13 < iArr2.length) {
            int i18 = iArr2[i13];
            long j12 = jArr[i13];
            while (i18 > 0) {
                int iMin = Math.min(i12, i18);
                jArr2[i17] = j12;
                int i19 = i11 * iMin;
                iArr3[i17] = i19;
                i16 += i19;
                iMax = Math.max(iMax, i19);
                jArr3[i17] = ((long) i15) * j11;
                iArr4[i17] = 1;
                j12 += (long) iArr3[i17];
                i15 += iMin;
                i18 -= iMin;
                i17++;
                i12 = i12;
            }
            i13++;
            iArr2 = iArr;
        }
        return new b(jArr2, iArr3, iMax, jArr3, iArr4, j11 * ((long) i15), i16);
    }
}
