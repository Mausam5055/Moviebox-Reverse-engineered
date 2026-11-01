package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.f0;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.r0;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.v2;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.g3;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import j2.z;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f11707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.datasource.a f11708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.datasource.a f11709c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final t f11710d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Uri[] f11711e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.media3.common.r[] f11712f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HlsPlaylistTracker f11713g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final f0 f11714h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f11715i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final f4 f11717k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final long f11718l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f11719m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private IOException f11721o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Uri f11722p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f11723q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private z f11724r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f11726t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f11727u = C.TIME_UNSET;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final FullSegmentEncryptionKeyCache f11716j = new FullSegmentEncryptionKeyCache(4);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private byte[] f11720n = a1.f10355f;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f11725s = C.TIME_UNSET;

    private static final class a extends h2.k {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private byte[] f11728l;

        public a(androidx.media3.datasource.a aVar, w1.h hVar, androidx.media3.common.r rVar, int i11, Object obj, byte[] bArr) {
            super(aVar, hVar, 3, rVar, i11, obj, bArr);
        }

        @Override // h2.k
        protected void e(byte[] bArr, int i11) {
            this.f11728l = Arrays.copyOf(bArr, i11);
        }

        public byte[] h() {
            return this.f11728l;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public h2.e f11729a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f11730b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Uri f11731c;

        public b() {
            a();
        }

        public void a() {
            this.f11729a = null;
            this.f11730b = false;
            this.f11731c = null;
        }
    }

    static final class c extends h2.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final List f11732e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f11733f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final String f11734g;

        public c(String str, long j11, List list) {
            super(0L, list.size() - 1);
            this.f11734g = str;
            this.f11733f = j11;
            this.f11732e = list;
        }

        @Override // h2.n
        public long a() {
            c();
            return this.f11733f + ((androidx.media3.exoplayer.hls.playlist.c.g) this.f11732e.get((int) d())).f11920e;
        }

        @Override // h2.n
        public long b() {
            c();
            androidx.media3.exoplayer.hls.playlist.c.g gVar = (androidx.media3.exoplayer.hls.playlist.c.g) this.f11732e.get((int) d());
            return this.f11733f + gVar.f11920e + gVar.f11918c;
        }
    }

    private static final class d extends j2.c {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f11735i;

        public d(f0 f0Var, int[] iArr) {
            super(f0Var, iArr);
            this.f11735i = f(f0Var.a(iArr[0]));
        }

        @Override // j2.z
        public void e(long j11, long j12, long j13, List list, h2.n[] nVarArr) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (d(this.f11735i, jElapsedRealtime)) {
                for (int i11 = this.f65744b - 1; i11 >= 0; i11--) {
                    if (!d(i11, jElapsedRealtime)) {
                        this.f11735i = i11;
                        return;
                    }
                }
                throw new IllegalStateException();
            }
        }

        @Override // j2.z
        public int getSelectedIndex() {
            return this.f11735i;
        }

        @Override // j2.z
        public Object getSelectionData() {
            return null;
        }

        @Override // j2.z
        public int getSelectionReason() {
            return 0;
        }
    }

    /* JADX INFO: renamed from: androidx.media3.exoplayer.hls.e$e, reason: collision with other inner class name */
    static final class C0097e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.media3.exoplayer.hls.playlist.c.g f11736a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f11737b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f11738c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f11739d;

        public C0097e(androidx.media3.exoplayer.hls.playlist.c.g gVar, long j11, int i11) {
            this.f11736a = gVar;
            this.f11737b = j11;
            this.f11738c = i11;
            this.f11739d = (gVar instanceof androidx.media3.exoplayer.hls.playlist.c.d) && ((androidx.media3.exoplayer.hls.playlist.c.d) gVar).f11910m;
        }
    }

    public e(g gVar, HlsPlaylistTracker hlsPlaylistTracker, Uri[] uriArr, androidx.media3.common.r[] rVarArr, f fVar, w1.n nVar, t tVar, long j11, List list, f4 f4Var, androidx.media3.exoplayer.upstream.f fVar2) {
        this.f11707a = gVar;
        this.f11713g = hlsPlaylistTracker;
        this.f11711e = uriArr;
        this.f11712f = rVarArr;
        this.f11710d = tVar;
        this.f11718l = j11;
        this.f11715i = list;
        this.f11717k = f4Var;
        androidx.media3.datasource.a aVarA = fVar.a(1);
        this.f11708b = aVarA;
        if (nVar != null) {
            aVarA.c(nVar);
        }
        this.f11709c = fVar.a(3);
        this.f11714h = new f0(rVarArr);
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < uriArr.length; i11++) {
            if ((rVarArr[i11].f10152f & 16384) == 0) {
                arrayList.add(Integer.valueOf(i11));
            }
        }
        this.f11724r = new d(this.f11714h, Ints.o(arrayList));
    }

    private void b() {
        this.f11713g.l(this.f11711e[this.f11724r.getSelectedIndexInTrackGroup()]);
    }

    private static Uri e(androidx.media3.exoplayer.hls.playlist.c cVar, androidx.media3.exoplayer.hls.playlist.c.g gVar) {
        String str;
        if (gVar == null || (str = gVar.f11922g) == null) {
            return null;
        }
        return r0.f(cVar.f16984a, str);
    }

    private Pair g(i iVar, boolean z10, androidx.media3.exoplayer.hls.playlist.c cVar, long j11, long j12) {
        int i11 = -1;
        if (iVar != null && !z10) {
            if (!iVar.f()) {
                return new Pair(Long.valueOf(iVar.f64350j), Integer.valueOf(iVar.f11746o));
            }
            Long lValueOf = Long.valueOf(iVar.f11746o == -1 ? iVar.e() : iVar.f64350j);
            int i12 = iVar.f11746o;
            return new Pair(lValueOf, Integer.valueOf(i12 != -1 ? i12 + 1 : -1));
        }
        long j13 = cVar.f11888u + j11;
        if (iVar != null && !this.f11723q) {
            j12 = iVar.f64302g;
        }
        if (!cVar.f11882o && j12 >= j13) {
            return new Pair(Long.valueOf(cVar.f11878k + ((long) cVar.f11885r.size())), -1);
        }
        long j14 = j12 - j11;
        int iF = a1.f(cVar.f11885r, Long.valueOf(j14), true, !this.f11713g.f() || iVar == null);
        long j15 = ((long) iF) + cVar.f11878k;
        if (iF >= 0) {
            androidx.media3.exoplayer.hls.playlist.c.f fVar = (androidx.media3.exoplayer.hls.playlist.c.f) cVar.f11885r.get(iF);
            List list = j14 < fVar.f11920e + fVar.f11918c ? fVar.f11915m : cVar.f11886s;
            for (int i13 = 0; i13 < list.size(); i13++) {
                androidx.media3.exoplayer.hls.playlist.c.d dVar = (androidx.media3.exoplayer.hls.playlist.c.d) list.get(i13);
                if (j14 < dVar.f11920e + dVar.f11918c) {
                    if (!dVar.f11909l) {
                        break;
                    }
                    j15 += list == cVar.f11886s ? 1L : 0L;
                    i11 = i13;
                    break;
                }
            }
        }
        return new Pair(Long.valueOf(j15), Integer.valueOf(i11));
    }

    private static C0097e h(androidx.media3.exoplayer.hls.playlist.c cVar, long j11, int i11) {
        int i12 = (int) (j11 - cVar.f11878k);
        if (i12 == cVar.f11885r.size()) {
            if (i11 == -1) {
                i11 = 0;
            }
            if (i11 < cVar.f11886s.size()) {
                return new C0097e((androidx.media3.exoplayer.hls.playlist.c.g) cVar.f11886s.get(i11), j11, i11);
            }
            return null;
        }
        androidx.media3.exoplayer.hls.playlist.c.f fVar = (androidx.media3.exoplayer.hls.playlist.c.f) cVar.f11885r.get(i12);
        if (i11 == -1) {
            return new C0097e(fVar, j11, -1);
        }
        if (i11 < fVar.f11915m.size()) {
            return new C0097e((androidx.media3.exoplayer.hls.playlist.c.g) fVar.f11915m.get(i11), j11, i11);
        }
        int i13 = i12 + 1;
        if (i13 < cVar.f11885r.size()) {
            return new C0097e((androidx.media3.exoplayer.hls.playlist.c.g) cVar.f11885r.get(i13), j11 + 1, -1);
        }
        if (cVar.f11886s.isEmpty()) {
            return null;
        }
        return new C0097e((androidx.media3.exoplayer.hls.playlist.c.g) cVar.f11886s.get(0), j11 + 1, 0);
    }

    static List j(androidx.media3.exoplayer.hls.playlist.c cVar, long j11, int i11) {
        int i12 = (int) (j11 - cVar.f11878k);
        if (i12 < 0 || cVar.f11885r.size() < i12) {
            return ImmutableList.of();
        }
        ArrayList arrayList = new ArrayList();
        if (i12 < cVar.f11885r.size()) {
            if (i11 != -1) {
                androidx.media3.exoplayer.hls.playlist.c.f fVar = (androidx.media3.exoplayer.hls.playlist.c.f) cVar.f11885r.get(i12);
                if (i11 == 0) {
                    arrayList.add(fVar);
                } else if (i11 < fVar.f11915m.size()) {
                    List list = fVar.f11915m;
                    arrayList.addAll(list.subList(i11, list.size()));
                }
                i12++;
            }
            List list2 = cVar.f11885r;
            arrayList.addAll(list2.subList(i12, list2.size()));
            i11 = 0;
        }
        if (cVar.f11881n != C.TIME_UNSET) {
            int i13 = i11 != -1 ? i11 : 0;
            if (i13 < cVar.f11886s.size()) {
                List list3 = cVar.f11886s;
                arrayList.addAll(list3.subList(i13, list3.size()));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    private h2.e n(Uri uri, int i11, boolean z10, androidx.media3.exoplayer.upstream.g.a aVar) {
        if (uri == null) {
            return null;
        }
        byte[] bArrC = this.f11716j.c(uri);
        if (bArrC != null) {
            this.f11716j.b(uri, bArrC);
            return null;
        }
        return new a(this.f11709c, new w1.h.b().i(uri).b(1).a(), this.f11712f[i11], this.f11724r.getSelectionReason(), this.f11724r.getSelectionData(), this.f11720n);
    }

    private long u(long j11) {
        long j12 = this.f11725s;
        return j12 != C.TIME_UNSET ? j12 - j11 : C.TIME_UNSET;
    }

    private void y(androidx.media3.exoplayer.hls.playlist.c cVar) {
        this.f11725s = cVar.f11882o ? C.TIME_UNSET : cVar.d() - this.f11713g.b();
    }

    public h2.n[] a(i iVar, long j11) {
        int i11;
        int iB = iVar == null ? -1 : this.f11714h.b(iVar.f64299d);
        int length = this.f11724r.length();
        h2.n[] nVarArr = new h2.n[length];
        boolean z10 = false;
        int i12 = 0;
        while (i12 < length) {
            int indexInTrackGroup = this.f11724r.getIndexInTrackGroup(i12);
            Uri uri = this.f11711e[indexInTrackGroup];
            if (this.f11713g.e(uri)) {
                androidx.media3.exoplayer.hls.playlist.c cVarI = this.f11713g.i(uri, z10);
                androidx.media3.common.util.a.e(cVarI);
                long jB = cVarI.f11875h - this.f11713g.b();
                i11 = i12;
                Pair pairG = g(iVar, indexInTrackGroup != iB ? true : z10, cVarI, jB, j11);
                nVarArr[i11] = new c(cVarI.f16984a, jB, j(cVarI, ((Long) pairG.first).longValue(), ((Integer) pairG.second).intValue()));
            } else {
                nVarArr[i12] = h2.n.f64351a;
                i11 = i12;
            }
            i12 = i11 + 1;
            z10 = false;
        }
        return nVarArr;
    }

    public long c(long j11, c4 c4Var) {
        int selectedIndex = this.f11724r.getSelectedIndex();
        Uri[] uriArr = this.f11711e;
        androidx.media3.exoplayer.hls.playlist.c cVarI = (selectedIndex >= uriArr.length || selectedIndex == -1) ? null : this.f11713g.i(uriArr[this.f11724r.getSelectedIndexInTrackGroup()], true);
        if (cVarI == null || cVarI.f11885r.isEmpty()) {
            return j11;
        }
        long jB = cVarI.f11875h - this.f11713g.b();
        long j12 = j11 - jB;
        int iF = a1.f(cVarI.f11885r, Long.valueOf(j12), true, true);
        long j13 = ((androidx.media3.exoplayer.hls.playlist.c.f) cVarI.f11885r.get(iF)).f11920e;
        return c4Var.a(j12, j13, (!cVarI.f16986c || iF == cVarI.f11885r.size() - 1) ? j13 : ((androidx.media3.exoplayer.hls.playlist.c.f) cVarI.f11885r.get(iF + 1)).f11920e) + jB;
    }

    public int d(i iVar) {
        if (iVar.f11746o == -1) {
            return 1;
        }
        androidx.media3.exoplayer.hls.playlist.c cVar = (androidx.media3.exoplayer.hls.playlist.c) androidx.media3.common.util.a.e(this.f11713g.i(this.f11711e[this.f11714h.b(iVar.f64299d)], false));
        int i11 = (int) (iVar.f64350j - cVar.f11878k);
        if (i11 < 0) {
            return 1;
        }
        List list = i11 < cVar.f11885r.size() ? ((androidx.media3.exoplayer.hls.playlist.c.f) cVar.f11885r.get(i11)).f11915m : cVar.f11886s;
        if (iVar.f11746o >= list.size()) {
            return 2;
        }
        androidx.media3.exoplayer.hls.playlist.c.d dVar = (androidx.media3.exoplayer.hls.playlist.c.d) list.get(iVar.f11746o);
        if (dVar.f11910m) {
            return 0;
        }
        return Objects.equals(Uri.parse(r0.e(cVar.f16984a, dVar.f11916a)), iVar.f64297b.f77511a) ? 1 : 2;
    }

    public void f(v2 v2Var, long j11, List list, boolean z10, b bVar) {
        androidx.media3.exoplayer.hls.playlist.c cVar;
        long jB;
        i iVar = list.isEmpty() ? null : (i) g3.g(list);
        int iB = iVar == null ? -1 : this.f11714h.b(iVar.f64299d);
        long j12 = v2Var.f13050a;
        long jMax = j11 - j12;
        long jU = u(j12);
        if (iVar != null && !this.f11723q) {
            long jB2 = iVar.b();
            jMax = Math.max(0L, jMax - jB2);
            if (jU != C.TIME_UNSET) {
                jU = Math.max(0L, jU - jB2);
            }
        }
        this.f11724r.e(j12, jMax, jU, list, a(iVar, j11));
        int selectedIndexInTrackGroup = this.f11724r.getSelectedIndexInTrackGroup();
        boolean z11 = iB != selectedIndexInTrackGroup;
        Uri uri = this.f11711e[selectedIndexInTrackGroup];
        if (!this.f11713g.e(uri)) {
            bVar.f11731c = uri;
            this.f11726t &= uri.equals(this.f11722p);
            this.f11722p = uri;
            return;
        }
        androidx.media3.exoplayer.hls.playlist.c cVarI = this.f11713g.i(uri, true);
        androidx.media3.common.util.a.e(cVarI);
        this.f11723q = cVarI.f16986c;
        y(cVarI);
        long jB3 = cVarI.f11875h - this.f11713g.b();
        Uri uri2 = uri;
        Pair pairG = g(iVar, z11, cVarI, jB3, j11);
        long jLongValue = ((Long) pairG.first).longValue();
        int iIntValue = ((Integer) pairG.second).intValue();
        if (jLongValue >= cVarI.f11878k || iVar == null || !z11) {
            cVar = cVarI;
            jB = jB3;
        } else {
            uri2 = this.f11711e[iB];
            androidx.media3.exoplayer.hls.playlist.c cVarI2 = this.f11713g.i(uri2, true);
            androidx.media3.common.util.a.e(cVarI2);
            jB = cVarI2.f11875h - this.f11713g.b();
            Pair pairG2 = g(iVar, false, cVarI2, jB, j11);
            jLongValue = ((Long) pairG2.first).longValue();
            iIntValue = ((Integer) pairG2.second).intValue();
            cVar = cVarI2;
            selectedIndexInTrackGroup = iB;
        }
        if (selectedIndexInTrackGroup != iB && iB != -1) {
            this.f11713g.l(this.f11711e[iB]);
        }
        if (jLongValue < cVar.f11878k) {
            this.f11721o = new BehindLiveWindowException();
            return;
        }
        C0097e c0097eH = h(cVar, jLongValue, iIntValue);
        if (c0097eH == null) {
            if (!cVar.f11882o) {
                bVar.f11731c = uri2;
                this.f11726t &= uri2.equals(this.f11722p);
                this.f11722p = uri2;
                return;
            } else {
                if (z10 || cVar.f11885r.isEmpty()) {
                    bVar.f11730b = true;
                    return;
                }
                c0097eH = new C0097e((androidx.media3.exoplayer.hls.playlist.c.g) g3.g(cVar.f11885r), (cVar.f11878k + ((long) cVar.f11885r.size())) - 1, -1);
            }
        }
        this.f11726t = false;
        this.f11722p = null;
        this.f11727u = SystemClock.elapsedRealtime();
        Uri uriE = e(cVar, c0097eH.f11736a.f11917b);
        h2.e eVarN = n(uriE, selectedIndexInTrackGroup, true, null);
        bVar.f11729a = eVarN;
        if (eVarN != null) {
            return;
        }
        Uri uriE2 = e(cVar, c0097eH.f11736a);
        h2.e eVarN2 = n(uriE2, selectedIndexInTrackGroup, false, null);
        bVar.f11729a = eVarN2;
        if (eVarN2 != null) {
            return;
        }
        boolean zU = i.u(iVar, uri2, cVar, c0097eH, jB);
        if (zU && c0097eH.f11739d) {
            return;
        }
        bVar.f11729a = i.h(this.f11707a, this.f11708b, this.f11712f[selectedIndexInTrackGroup], jB, cVar, c0097eH, uri2, this.f11715i, this.f11724r.getSelectionReason(), this.f11724r.getSelectionData(), this.f11719m, this.f11710d, this.f11718l, iVar, this.f11716j.a(uriE2), this.f11716j.a(uriE), zU, this.f11717k, null);
    }

    public int i(long j11, List list) {
        return (this.f11721o != null || this.f11724r.length() < 2) ? list.size() : this.f11724r.evaluateQueueSize(j11, list);
    }

    public f0 k() {
        return this.f11714h;
    }

    public z l() {
        return this.f11724r;
    }

    public boolean m() {
        return this.f11723q;
    }

    public boolean o(h2.e eVar, long j11) {
        z zVar = this.f11724r;
        return zVar.g(zVar.indexOf(this.f11714h.b(eVar.f64299d)), j11);
    }

    public void p() throws IOException {
        IOException iOException = this.f11721o;
        if (iOException != null) {
            throw iOException;
        }
        Uri uri = this.f11722p;
        if (uri == null || !this.f11726t) {
            return;
        }
        this.f11713g.a(uri);
    }

    public boolean q(Uri uri) {
        return a1.s(this.f11711e, uri);
    }

    public void r(h2.e eVar) {
        if (eVar instanceof a) {
            a aVar = (a) eVar;
            this.f11720n = aVar.f();
            this.f11716j.b(aVar.f64297b.f77511a, (byte[]) androidx.media3.common.util.a.e(aVar.h()));
        }
    }

    public boolean s(Uri uri, long j11) {
        int iIndexOf;
        int i11 = 0;
        while (true) {
            Uri[] uriArr = this.f11711e;
            if (i11 >= uriArr.length) {
                i11 = -1;
                break;
            }
            if (uriArr[i11].equals(uri)) {
                break;
            }
            i11++;
        }
        if (i11 == -1 || (iIndexOf = this.f11724r.indexOf(i11)) == -1) {
            return true;
        }
        this.f11726t |= uri.equals(this.f11722p);
        return j11 == C.TIME_UNSET || (this.f11724r.g(iIndexOf, j11) && this.f11713g.g(uri, j11));
    }

    public void t() {
        b();
        this.f11721o = null;
    }

    public void v(boolean z10) {
        this.f11719m = z10;
    }

    public void w(z zVar) {
        b();
        this.f11724r = zVar;
    }

    public boolean x(long j11, h2.e eVar, List list) {
        if (this.f11721o != null) {
            return false;
        }
        return this.f11724r.h(j11, eVar, list);
    }
}
