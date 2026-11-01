package u9;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements k {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final c f76689g = new c(null, new a[0], 0, C.TIME_UNSET, 0);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final a f76690h = new a(0).j(0);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final k.a f76691i = new k.a() { // from class: u9.a
        @Override // com.google.android.exoplayer2.k.a
        public final k a(Bundle bundle) {
            return c.b(bundle);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f76692a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f76693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f76694c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f76695d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f76696e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a[] f76697f;

    public static final class a implements k {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final k.a f76698h = new k.a() { // from class: u9.b
            @Override // com.google.android.exoplayer2.k.a
            public final k a(Bundle bundle) {
                return c.a.d(bundle);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f76699a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f76700b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Uri[] f76701c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int[] f76702d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long[] f76703e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f76704f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final boolean f76705g;

        public a(long j11) {
            this(j11, -1, new int[0], new Uri[0], new long[0], 0L, false);
        }

        private a(long j11, int i11, int[] iArr, Uri[] uriArr, long[] jArr, long j12, boolean z10) {
            com.google.android.exoplayer2.util.a.a(iArr.length == uriArr.length);
            this.f76699a = j11;
            this.f76700b = i11;
            this.f76702d = iArr;
            this.f76701c = uriArr;
            this.f76703e = jArr;
            this.f76704f = j12;
            this.f76705g = z10;
        }

        private static long[] b(long[] jArr, int i11) {
            int length = jArr.length;
            int iMax = Math.max(i11, length);
            long[] jArrCopyOf = Arrays.copyOf(jArr, iMax);
            Arrays.fill(jArrCopyOf, length, iMax, C.TIME_UNSET);
            return jArrCopyOf;
        }

        private static int[] c(int[] iArr, int i11) {
            int length = iArr.length;
            int iMax = Math.max(i11, length);
            int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
            Arrays.fill(iArrCopyOf, length, iMax, 0);
            return iArrCopyOf;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static a d(Bundle bundle) {
            long j11 = bundle.getLong(h(0));
            int i11 = bundle.getInt(h(1), -1);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(h(2));
            int[] intArray = bundle.getIntArray(h(3));
            long[] longArray = bundle.getLongArray(h(4));
            long j12 = bundle.getLong(h(5));
            boolean z10 = bundle.getBoolean(h(6));
            if (intArray == null) {
                intArray = new int[0];
            }
            return new a(j11, i11, intArray, parcelableArrayList == null ? new Uri[0] : (Uri[]) parcelableArrayList.toArray(new Uri[0]), longArray == null ? new long[0] : longArray, j12, z10);
        }

        private static String h(int i11) {
            return Integer.toString(i11, 36);
        }

        public int e() {
            return f(-1);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f76699a == aVar.f76699a && this.f76700b == aVar.f76700b && Arrays.equals(this.f76701c, aVar.f76701c) && Arrays.equals(this.f76702d, aVar.f76702d) && Arrays.equals(this.f76703e, aVar.f76703e) && this.f76704f == aVar.f76704f && this.f76705g == aVar.f76705g;
        }

        public int f(int i11) {
            int i12;
            int i13 = i11 + 1;
            while (true) {
                int[] iArr = this.f76702d;
                if (i13 >= iArr.length || this.f76705g || (i12 = iArr[i13]) == 0 || i12 == 1) {
                    break;
                }
                i13++;
            }
            return i13;
        }

        public boolean g() {
            if (this.f76700b == -1) {
                return true;
            }
            for (int i11 = 0; i11 < this.f76700b; i11++) {
                int i12 = this.f76702d[i11];
                if (i12 == 0 || i12 == 1) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int i11 = this.f76700b * 31;
            long j11 = this.f76699a;
            int iHashCode = (((((((i11 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + Arrays.hashCode(this.f76701c)) * 31) + Arrays.hashCode(this.f76702d)) * 31) + Arrays.hashCode(this.f76703e)) * 31;
            long j12 = this.f76704f;
            return ((iHashCode + ((int) (j12 ^ (j12 >>> 32)))) * 31) + (this.f76705g ? 1 : 0);
        }

        public boolean i() {
            return this.f76700b == -1 || e() < this.f76700b;
        }

        public a j(int i11) {
            int[] iArrC = c(this.f76702d, i11);
            long[] jArrB = b(this.f76703e, i11);
            return new a(this.f76699a, i11, iArrC, (Uri[]) Arrays.copyOf(this.f76701c, i11), jArrB, this.f76704f, this.f76705g);
        }

        @Override // com.google.android.exoplayer2.k
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(h(0), this.f76699a);
            bundle.putInt(h(1), this.f76700b);
            bundle.putParcelableArrayList(h(2), new ArrayList<>(Arrays.asList(this.f76701c)));
            bundle.putIntArray(h(3), this.f76702d);
            bundle.putLongArray(h(4), this.f76703e);
            bundle.putLong(h(5), this.f76704f);
            bundle.putBoolean(h(6), this.f76705g);
            return bundle;
        }
    }

    private c(Object obj, a[] aVarArr, long j11, long j12, int i11) {
        this.f76692a = obj;
        this.f76694c = j11;
        this.f76695d = j12;
        this.f76693b = aVarArr.length + i11;
        this.f76697f = aVarArr;
        this.f76696e = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c b(Bundle bundle) {
        a[] aVarArr;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(g(1));
        if (parcelableArrayList == null) {
            aVarArr = new a[0];
        } else {
            a[] aVarArr2 = new a[parcelableArrayList.size()];
            for (int i11 = 0; i11 < parcelableArrayList.size(); i11++) {
                aVarArr2[i11] = (a) a.f76698h.a((Bundle) parcelableArrayList.get(i11));
            }
            aVarArr = aVarArr2;
        }
        return new c(null, aVarArr, bundle.getLong(g(2), 0L), bundle.getLong(g(3), C.TIME_UNSET), bundle.getInt(g(4)));
    }

    private boolean f(long j11, long j12, int i11) {
        if (j11 == Long.MIN_VALUE) {
            return false;
        }
        long j13 = c(i11).f76699a;
        if (j13 == Long.MIN_VALUE) {
            return j12 == C.TIME_UNSET || j11 < j12;
        }
        return j11 < j13;
    }

    private static String g(int i11) {
        return Integer.toString(i11, 36);
    }

    public a c(int i11) {
        int i12 = this.f76696e;
        return i11 < i12 ? f76690h : this.f76697f[i11 - i12];
    }

    public int d(long j11, long j12) {
        if (j11 == Long.MIN_VALUE) {
            return -1;
        }
        if (j12 != C.TIME_UNSET && j11 >= j12) {
            return -1;
        }
        int i11 = this.f76696e;
        while (i11 < this.f76693b && ((c(i11).f76699a != Long.MIN_VALUE && c(i11).f76699a <= j11) || !c(i11).i())) {
            i11++;
        }
        if (i11 < this.f76693b) {
            return i11;
        }
        return -1;
    }

    public int e(long j11, long j12) {
        int i11 = this.f76693b - 1;
        while (i11 >= 0 && f(j11, j12, i11)) {
            i11--;
        }
        if (i11 < 0 || !c(i11).g()) {
            return -1;
        }
        return i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return p0.c(this.f76692a, cVar.f76692a) && this.f76693b == cVar.f76693b && this.f76694c == cVar.f76694c && this.f76695d == cVar.f76695d && this.f76696e == cVar.f76696e && Arrays.equals(this.f76697f, cVar.f76697f);
    }

    public int hashCode() {
        int i11 = this.f76693b * 31;
        Object obj = this.f76692a;
        return ((((((((i11 + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.f76694c)) * 31) + ((int) this.f76695d)) * 31) + this.f76696e) * 31) + Arrays.hashCode(this.f76697f);
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (a aVar : this.f76697f) {
            arrayList.add(aVar.toBundle());
        }
        bundle.putParcelableArrayList(g(1), arrayList);
        bundle.putLong(g(2), this.f76694c);
        bundle.putLong(g(3), this.f76695d);
        bundle.putInt(g(4), this.f76696e);
        return bundle;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdPlaybackState(adsId=");
        sb2.append(this.f76692a);
        sb2.append(", adResumePositionUs=");
        sb2.append(this.f76694c);
        sb2.append(", adGroups=[");
        for (int i11 = 0; i11 < this.f76697f.length; i11++) {
            sb2.append("adGroup(timeUs=");
            sb2.append(this.f76697f[i11].f76699a);
            sb2.append(", ads=[");
            for (int i12 = 0; i12 < this.f76697f[i11].f76702d.length; i12++) {
                sb2.append("ad(state=");
                int i13 = this.f76697f[i11].f76702d[i12];
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
                sb2.append(this.f76697f[i11].f76703e[i12]);
                sb2.append(')');
                if (i12 < this.f76697f[i11].f76702d.length - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append("])");
            if (i11 < this.f76697f.length - 1) {
                sb2.append(", ");
            }
        }
        sb2.append("])");
        return sb2.toString();
    }
}
