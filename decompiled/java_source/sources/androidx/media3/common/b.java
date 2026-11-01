package androidx.media3.common;

import android.net.Uri;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final b f9873g = new b(null, new a[0], 0, C.TIME_UNSET, 0);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final a f9874h = new a(0).h(0);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f9875i = a1.C0(1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f9876j = a1.C0(2);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f9877k = a1.C0(3);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f9878l = a1.C0(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f9879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f9880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f9881c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f9882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f9883e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a[] f9884f;

    public static final class a {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final String f9885l = a1.C0(0);

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final String f9886m = a1.C0(1);

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static final String f9887n = a1.C0(2);

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static final String f9888o = a1.C0(3);

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private static final String f9889p = a1.C0(4);

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final String f9890q = a1.C0(5);

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private static final String f9891r = a1.C0(6);

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private static final String f9892s = a1.C0(7);

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        static final String f9893t = a1.C0(8);

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        static final String f9894u = a1.C0(9);

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        static final String f9895v = a1.C0(10);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f9896a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f9897b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f9898c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Uri[] f9899d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final t[] f9900e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int[] f9901f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final long[] f9902g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String[] f9903h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f9904i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f9905j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final boolean f9906k;

        public a(long j11) {
            this(j11, -1, -1, new int[0], new t[0], new long[0], 0L, false, new String[0], false);
        }

        private a(long j11, int i11, int i12, int[] iArr, t[] tVarArr, long[] jArr, long j12, boolean z10, String[] strArr, boolean z11) {
            int i13 = 0;
            androidx.media3.common.util.a.a(iArr.length == tVarArr.length);
            this.f9896a = j11;
            this.f9897b = i11;
            this.f9898c = i12;
            this.f9901f = iArr;
            this.f9900e = tVarArr;
            this.f9902g = jArr;
            this.f9904i = j12;
            this.f9905j = z10;
            this.f9899d = new Uri[tVarArr.length];
            while (true) {
                Uri[] uriArr = this.f9899d;
                if (i13 >= uriArr.length) {
                    this.f9903h = strArr;
                    this.f9906k = z11;
                    return;
                } else {
                    t tVar = tVarArr[i13];
                    uriArr[i13] = tVar == null ? null : ((t.h) androidx.media3.common.util.a.e(tVar.f10211b)).f10303a;
                    i13++;
                }
            }
        }

        private static long[] a(long[] jArr, int i11) {
            int length = jArr.length;
            int iMax = Math.max(i11, length);
            long[] jArrCopyOf = Arrays.copyOf(jArr, iMax);
            Arrays.fill(jArrCopyOf, length, iMax, C.TIME_UNSET);
            return jArrCopyOf;
        }

        private static int[] b(int[] iArr, int i11) {
            int length = iArr.length;
            int iMax = Math.max(i11, length);
            int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
            Arrays.fill(iArrCopyOf, length, iMax, 0);
            return iArrCopyOf;
        }

        public int c() {
            return d(-1);
        }

        public int d(int i11) {
            int i12;
            int i13 = i11 + 1;
            while (true) {
                int[] iArr = this.f9901f;
                if (i13 >= iArr.length || this.f9905j || (i12 = iArr[i13]) == 0 || i12 == 1) {
                    break;
                }
                i13++;
            }
            return i13;
        }

        public boolean e() {
            if (this.f9897b == -1) {
                return true;
            }
            for (int i11 = 0; i11 < this.f9897b; i11++) {
                int i12 = this.f9901f[i11];
                if (i12 == 0 || i12 == 1) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f9896a == aVar.f9896a && this.f9897b == aVar.f9897b && this.f9898c == aVar.f9898c && Arrays.equals(this.f9900e, aVar.f9900e) && Arrays.equals(this.f9901f, aVar.f9901f) && Arrays.equals(this.f9902g, aVar.f9902g) && this.f9904i == aVar.f9904i && this.f9905j == aVar.f9905j && Arrays.equals(this.f9903h, aVar.f9903h) && this.f9906k == aVar.f9906k;
        }

        public boolean f() {
            return this.f9906k && this.f9896a == Long.MIN_VALUE && this.f9897b == -1;
        }

        public boolean g() {
            return this.f9897b == -1 || c() < this.f9897b;
        }

        public a h(int i11) {
            int[] iArrB = b(this.f9901f, i11);
            long[] jArrA = a(this.f9902g, i11);
            return new a(this.f9896a, i11, this.f9898c, iArrB, (t[]) Arrays.copyOf(this.f9900e, i11), jArrA, this.f9904i, this.f9905j, (String[]) Arrays.copyOf(this.f9903h, i11), this.f9906k);
        }

        public int hashCode() {
            int i11 = ((this.f9897b * 31) + this.f9898c) * 31;
            long j11 = this.f9896a;
            int iHashCode = (((((((i11 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + Arrays.hashCode(this.f9900e)) * 31) + Arrays.hashCode(this.f9901f)) * 31) + Arrays.hashCode(this.f9902g)) * 31;
            long j12 = this.f9904i;
            return ((((((iHashCode + ((int) (j12 ^ (j12 >>> 32)))) * 31) + (this.f9905j ? 1 : 0)) * 31) + Arrays.hashCode(this.f9903h)) * 31) + (this.f9906k ? 1 : 0);
        }
    }

    private b(Object obj, a[] aVarArr, long j11, long j12, int i11) {
        this.f9879a = obj;
        this.f9881c = j11;
        this.f9882d = j12;
        this.f9880b = aVarArr.length + i11;
        this.f9884f = aVarArr;
        this.f9883e = i11;
    }

    private boolean e(long j11, long j12, int i11) {
        if (j11 == Long.MIN_VALUE) {
            return false;
        }
        a aVarA = a(i11);
        long j13 = aVarA.f9896a;
        if (j13 == Long.MIN_VALUE) {
            return j12 == C.TIME_UNSET || aVarA.f() || j11 < j12;
        }
        return j11 < j13;
    }

    public a a(int i11) {
        int i12 = this.f9883e;
        return i11 < i12 ? f9874h : this.f9884f[i11 - i12];
    }

    public int b(long j11, long j12) {
        if (j11 == Long.MIN_VALUE) {
            return -1;
        }
        if (j12 != C.TIME_UNSET && j11 >= j12) {
            return -1;
        }
        int i11 = this.f9883e;
        while (i11 < this.f9880b && ((a(i11).f9896a != Long.MIN_VALUE && a(i11).f9896a <= j11) || !a(i11).g())) {
            i11++;
        }
        if (i11 < this.f9880b) {
            return i11;
        }
        return -1;
    }

    public int c(long j11, long j12) {
        int i11 = this.f9880b - 1;
        int i12 = i11 - (d(i11) ? 1 : 0);
        while (i12 >= 0 && e(j11, j12, i12)) {
            i12--;
        }
        if (i12 < 0 || !a(i12).e()) {
            return -1;
        }
        return i12;
    }

    public boolean d(int i11) {
        return i11 == this.f9880b - 1 && a(i11).f();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return Objects.equals(this.f9879a, bVar.f9879a) && this.f9880b == bVar.f9880b && this.f9881c == bVar.f9881c && this.f9882d == bVar.f9882d && this.f9883e == bVar.f9883e && Arrays.equals(this.f9884f, bVar.f9884f);
    }

    public int hashCode() {
        int i11 = this.f9880b * 31;
        Object obj = this.f9879a;
        return ((((((((i11 + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.f9881c)) * 31) + ((int) this.f9882d)) * 31) + this.f9883e) * 31) + Arrays.hashCode(this.f9884f);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdPlaybackState(adsId=");
        sb2.append(this.f9879a);
        sb2.append(", adResumePositionUs=");
        sb2.append(this.f9881c);
        sb2.append(", adGroups=[");
        for (int i11 = 0; i11 < this.f9884f.length; i11++) {
            sb2.append("adGroup(timeUs=");
            sb2.append(this.f9884f[i11].f9896a);
            sb2.append(", ads=[");
            for (int i12 = 0; i12 < this.f9884f[i11].f9901f.length; i12++) {
                sb2.append("ad(state=");
                int i13 = this.f9884f[i11].f9901f[i12];
                if (i13 == 0) {
                    sb2.append('_');
                } else if (i13 == 1) {
                    sb2.append('R');
                } else if (i13 == 2) {
                    sb2.append('S');
                } else if (i13 == 3) {
                    sb2.append('P');
                } else if (i13 != 4) {
                    sb2.append('?');
                } else {
                    sb2.append('!');
                }
                sb2.append(", durationUs=");
                sb2.append(this.f9884f[i11].f9902g[i12]);
                sb2.append(')');
                if (i12 < this.f9884f[i11].f9901f.length - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append("])");
            if (i11 < this.f9884f.length - 1) {
                sb2.append(", ");
            }
        }
        sb2.append("])");
        return sb2.toString();
    }
}
