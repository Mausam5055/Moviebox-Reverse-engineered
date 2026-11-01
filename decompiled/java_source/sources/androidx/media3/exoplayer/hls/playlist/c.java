package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.media3.common.DrmInitData;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends c2.d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f11871d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f11872e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f11873f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f11874g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f11875h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f11876i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11877j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f11878k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f11879l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final long f11880m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f11881n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f11882o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f11883p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final DrmInitData f11884q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final List f11885r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final List f11886s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Map f11887t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final long f11888u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final h f11889v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final ImmutableList f11890w;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f11891a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f11892b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final double f11893c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f11894d;

        public b(String str, double d11) {
            this.f11891a = str;
            this.f11892b = 2;
            this.f11893c = d11;
            this.f11894d = null;
        }

        public b(String str, String str2, int i11) {
            boolean z10 = true;
            if (i11 == 1 && !str2.startsWith("0x") && !str2.startsWith("0X")) {
                z10 = false;
            }
            androidx.media3.common.util.a.g(z10);
            this.f11891a = str;
            this.f11892b = i11;
            this.f11894d = str2;
            this.f11893c = 0.0d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f11892b == bVar.f11892b && Double.compare(this.f11893c, bVar.f11893c) == 0 && Objects.equals(this.f11891a, bVar.f11891a) && Objects.equals(this.f11894d, bVar.f11894d);
        }

        public int hashCode() {
            return Objects.hash(this.f11891a, Integer.valueOf(this.f11892b), Double.valueOf(this.f11893c), this.f11894d);
        }
    }

    /* JADX INFO: renamed from: androidx.media3.exoplayer.hls.playlist.c$c, reason: collision with other inner class name */
    public static final class C0099c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f11895a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f11896b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Uri f11897c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f11898d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f11899e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f11900f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final long f11901g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final List f11902h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f11903i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f11904j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final long f11905k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final ImmutableList f11906l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final ImmutableList f11907m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final ImmutableList f11908n;

        public C0099c(String str, Uri uri, Uri uri2, long j11, long j12, long j13, long j14, List list, boolean z10, long j15, long j16, List list2, List list3, List list4) {
            androidx.media3.common.util.a.a((uri == null || uri2 == null) && !(uri == null && uri2 == null));
            this.f11895a = str;
            this.f11896b = uri;
            this.f11897c = uri2;
            this.f11898d = j11;
            this.f11899e = j12;
            this.f11900f = j13;
            this.f11901g = j14;
            this.f11902h = list;
            this.f11903i = z10;
            this.f11904j = j15;
            this.f11905k = j16;
            this.f11906l = ImmutableList.copyOf((Collection) list2);
            this.f11907m = ImmutableList.copyOf((Collection) list3);
            this.f11908n = ImmutableList.copyOf((Collection) list4);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0099c)) {
                return false;
            }
            C0099c c0099c = (C0099c) obj;
            return this.f11898d == c0099c.f11898d && this.f11899e == c0099c.f11899e && this.f11900f == c0099c.f11900f && this.f11901g == c0099c.f11901g && this.f11903i == c0099c.f11903i && this.f11904j == c0099c.f11904j && this.f11905k == c0099c.f11905k && Objects.equals(this.f11895a, c0099c.f11895a) && Objects.equals(this.f11896b, c0099c.f11896b) && Objects.equals(this.f11897c, c0099c.f11897c) && Objects.equals(this.f11902h, c0099c.f11902h) && Objects.equals(this.f11906l, c0099c.f11906l) && Objects.equals(this.f11907m, c0099c.f11907m) && Objects.equals(this.f11908n, c0099c.f11908n);
        }

        public int hashCode() {
            return Objects.hash(this.f11895a, this.f11896b, this.f11897c, Long.valueOf(this.f11898d), Long.valueOf(this.f11899e), Long.valueOf(this.f11900f), Long.valueOf(this.f11901g), this.f11902h, Boolean.valueOf(this.f11903i), Long.valueOf(this.f11904j), Long.valueOf(this.f11905k), this.f11906l, this.f11907m, this.f11908n);
        }
    }

    public static final class d extends g {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final boolean f11909l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final boolean f11910m;

        public d(String str, f fVar, long j11, int i11, long j12, DrmInitData drmInitData, String str2, String str3, long j13, long j14, boolean z10, boolean z11, boolean z12) {
            super(str, fVar, j11, i11, j12, drmInitData, str2, str3, j13, j14, z10);
            this.f11909l = z11;
            this.f11910m = z12;
        }

        public d b(long j11, int i11) {
            return new d(this.f11916a, this.f11917b, this.f11918c, i11, j11, this.f11921f, this.f11922g, this.f11923h, this.f11924i, this.f11925j, this.f11926k, this.f11909l, this.f11910m);
        }
    }

    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f11911a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f11912b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f11913c;

        public e(Uri uri, long j11, int i11) {
            this.f11911a = uri;
            this.f11912b = j11;
            this.f11913c = i11;
        }
    }

    public static final class f extends g {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final String f11914l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final List f11915m;

        public f(String str, long j11, long j12, String str2, String str3) {
            this(str, null, "", 0L, -1, C.TIME_UNSET, null, str2, str3, j11, j12, false, ImmutableList.of());
        }

        public f(String str, f fVar, String str2, long j11, int i11, long j12, DrmInitData drmInitData, String str3, String str4, long j13, long j14, boolean z10, List list) {
            super(str, fVar, j11, i11, j12, drmInitData, str3, str4, j13, j14, z10);
            this.f11914l = str2;
            this.f11915m = ImmutableList.copyOf((Collection) list);
        }

        public f b(long j11, int i11) {
            ArrayList arrayList = new ArrayList();
            long j12 = j11;
            for (int i12 = 0; i12 < this.f11915m.size(); i12++) {
                d dVar = (d) this.f11915m.get(i12);
                arrayList.add(dVar.b(j12, i11));
                j12 += dVar.f11918c;
            }
            return new f(this.f11916a, this.f11917b, this.f11914l, this.f11918c, i11, j11, this.f11921f, this.f11922g, this.f11923h, this.f11924i, this.f11925j, this.f11926k, arrayList);
        }
    }

    public static class g implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f11916a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final f f11917b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f11918c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f11919d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f11920e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final DrmInitData f11921f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final String f11922g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f11923h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f11924i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f11925j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final boolean f11926k;

        private g(String str, f fVar, long j11, int i11, long j12, DrmInitData drmInitData, String str2, String str3, long j13, long j14, boolean z10) {
            this.f11916a = str;
            this.f11917b = fVar;
            this.f11918c = j11;
            this.f11919d = i11;
            this.f11920e = j12;
            this.f11921f = drmInitData;
            this.f11922g = str2;
            this.f11923h = str3;
            this.f11924i = j13;
            this.f11925j = j14;
            this.f11926k = z10;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(Long l11) {
            if (this.f11920e > l11.longValue()) {
                return 1;
            }
            return this.f11920e < l11.longValue() ? -1 : 0;
        }
    }

    public static final class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f11927a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f11928b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f11929c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f11930d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f11931e;

        public h(long j11, boolean z10, long j12, long j13, boolean z11) {
            this.f11927a = j11;
            this.f11928b = z10;
            this.f11929c = j12;
            this.f11930d = j13;
            this.f11931e = z11;
        }
    }

    public c(int i11, String str, List list, long j11, boolean z10, long j12, boolean z11, int i12, long j13, int i13, long j14, long j15, boolean z12, boolean z13, boolean z14, DrmInitData drmInitData, List list2, List list3, h hVar, Map map, List list4) {
        super(str, list, z12);
        this.f11871d = i11;
        this.f11875h = j12;
        this.f11874g = z10;
        this.f11876i = z11;
        this.f11877j = i12;
        this.f11878k = j13;
        this.f11879l = i13;
        this.f11880m = j14;
        this.f11881n = j15;
        this.f11882o = z13;
        this.f11883p = z14;
        this.f11884q = drmInitData;
        this.f11885r = ImmutableList.copyOf((Collection) list2);
        this.f11886s = ImmutableList.copyOf((Collection) list3);
        this.f11887t = ImmutableMap.copyOf(map);
        this.f11890w = ImmutableList.copyOf((Collection) list4);
        if (!list3.isEmpty()) {
            d dVar = (d) g3.g(list3);
            this.f11888u = dVar.f11920e + dVar.f11918c;
        } else if (list2.isEmpty()) {
            this.f11888u = 0L;
        } else {
            f fVar = (f) g3.g(list2);
            this.f11888u = fVar.f11920e + fVar.f11918c;
        }
        this.f11872e = j11 != C.TIME_UNSET ? j11 >= 0 ? Math.min(this.f11888u, j11) : Math.max(0L, this.f11888u + j11) : C.TIME_UNSET;
        this.f11873f = j11 >= 0;
        this.f11889v = hVar;
    }

    @Override // androidx.media3.exoplayer.offline.q
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c copy(List list) {
        return this;
    }

    public c b(long j11, int i11) {
        return new c(this.f11871d, this.f16984a, this.f16985b, this.f11872e, this.f11874g, j11, true, i11, this.f11878k, this.f11879l, this.f11880m, this.f11881n, this.f16986c, this.f11882o, this.f11883p, this.f11884q, this.f11885r, this.f11886s, this.f11889v, this.f11887t, this.f11890w);
    }

    public c c() {
        return this.f11882o ? this : new c(this.f11871d, this.f16984a, this.f16985b, this.f11872e, this.f11874g, this.f11875h, this.f11876i, this.f11877j, this.f11878k, this.f11879l, this.f11880m, this.f11881n, this.f16986c, true, this.f11883p, this.f11884q, this.f11885r, this.f11886s, this.f11889v, this.f11887t, this.f11890w);
    }

    public long d() {
        return this.f11875h + this.f11888u;
    }

    public boolean e(c cVar) {
        if (cVar == null) {
            return true;
        }
        long j11 = this.f11878k;
        long j12 = cVar.f11878k;
        if (j11 > j12) {
            return true;
        }
        if (j11 < j12) {
            return false;
        }
        int size = this.f11885r.size() - cVar.f11885r.size();
        if (size != 0) {
            return size > 0;
        }
        int size2 = this.f11886s.size();
        int size3 = cVar.f11886s.size();
        if (size2 <= size3) {
            return size2 == size3 && this.f11882o && !cVar.f11882o;
        }
        return true;
    }
}
