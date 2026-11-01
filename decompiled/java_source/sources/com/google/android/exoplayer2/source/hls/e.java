package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.util.n0;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.g3;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import e9.u1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f25947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.k f25948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.k f25949c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final q f25950d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Uri[] f25951e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final o1[] f25952f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HlsPlaylistTracker f25953g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final TrackGroup f25954h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f25955i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final u1 f25957k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f25958l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private IOException f25960n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Uri f25961o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f25962p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.google.android.exoplayer2.trackselection.h f25963q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f25965s;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final FullSegmentEncryptionKeyCache f25956j = new FullSegmentEncryptionKeyCache(4);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private byte[] f25959m = p0.f27631f;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f25964r = C.TIME_UNSET;

    private static final class a extends v9.l {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private byte[] f25966l;

        public a(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, o1 o1Var, int i11, Object obj, byte[] bArr) {
            super(kVar, nVar, 3, o1Var, i11, obj, bArr);
        }

        @Override // v9.l
        protected void e(byte[] bArr, int i11) {
            this.f25966l = Arrays.copyOf(bArr, i11);
        }

        public byte[] h() {
            return this.f25966l;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public v9.f f25967a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f25968b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Uri f25969c;

        public b() {
            a();
        }

        public void a() {
            this.f25967a = null;
            this.f25968b = false;
            this.f25969c = null;
        }
    }

    static final class c extends v9.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final List f25970e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f25971f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final String f25972g;

        public c(String str, long j11, List list) {
            super(0L, list.size() - 1);
            this.f25972g = str;
            this.f25971f = j11;
            this.f25970e = list;
        }

        @Override // v9.o
        public long a() {
            c();
            return this.f25971f + ((com.google.android.exoplayer2.source.hls.playlist.d.e) this.f25970e.get((int) d())).f26153e;
        }

        @Override // v9.o
        public long b() {
            c();
            com.google.android.exoplayer2.source.hls.playlist.d.e eVar = (com.google.android.exoplayer2.source.hls.playlist.d.e) this.f25970e.get((int) d());
            return this.f25971f + eVar.f26153e + eVar.f26151c;
        }
    }

    private static final class d extends la.b {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f25973h;

        public d(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            this.f25973h = g(trackGroup.c(iArr[0]));
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public void d(long j11, long j12, long j13, List list, v9.o[] oVarArr) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (e(this.f25973h, jElapsedRealtime)) {
                for (int i11 = this.f68779b - 1; i11 >= 0; i11--) {
                    if (!e(i11, jElapsedRealtime)) {
                        this.f25973h = i11;
                        return;
                    }
                }
                throw new IllegalStateException();
            }
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public int getSelectedIndex() {
            return this.f25973h;
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public Object getSelectionData() {
            return null;
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public int getSelectionReason() {
            return 0;
        }
    }

    /* JADX INFO: renamed from: com.google.android.exoplayer2.source.hls.e$e, reason: collision with other inner class name */
    static final class C0371e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final com.google.android.exoplayer2.source.hls.playlist.d.e f25974a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f25975b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f25976c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f25977d;

        public C0371e(com.google.android.exoplayer2.source.hls.playlist.d.e eVar, long j11, int i11) {
            this.f25974a = eVar;
            this.f25975b = j11;
            this.f25976c = i11;
            this.f25977d = (eVar instanceof com.google.android.exoplayer2.source.hls.playlist.d.b) && ((com.google.android.exoplayer2.source.hls.playlist.d.b) eVar).f26143m;
        }
    }

    public e(g gVar, HlsPlaylistTracker hlsPlaylistTracker, Uri[] uriArr, o1[] o1VarArr, f fVar, k0 k0Var, q qVar, List list, u1 u1Var) {
        this.f25947a = gVar;
        this.f25953g = hlsPlaylistTracker;
        this.f25951e = uriArr;
        this.f25952f = o1VarArr;
        this.f25950d = qVar;
        this.f25955i = list;
        this.f25957k = u1Var;
        com.google.android.exoplayer2.upstream.k kVarA = fVar.a(1);
        this.f25948b = kVarA;
        if (k0Var != null) {
            kVarA.e(k0Var);
        }
        this.f25949c = fVar.a(3);
        this.f25954h = new TrackGroup(o1VarArr);
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < uriArr.length; i11++) {
            if ((o1VarArr[i11].f25489e & 16384) == 0) {
                arrayList.add(Integer.valueOf(i11));
            }
        }
        this.f25963q = new d(this.f25954h, Ints.o(arrayList));
    }

    private static Uri d(com.google.android.exoplayer2.source.hls.playlist.d dVar, com.google.android.exoplayer2.source.hls.playlist.d.e eVar) {
        String str;
        if (eVar == null || (str = eVar.f26155g) == null) {
            return null;
        }
        return n0.e(dVar.f78950a, str);
    }

    private Pair f(i iVar, boolean z10, com.google.android.exoplayer2.source.hls.playlist.d dVar, long j11, long j12) {
        int i11 = -1;
        if (iVar != null && !z10) {
            if (!iVar.f()) {
                return new Pair(Long.valueOf(iVar.f77183j), Integer.valueOf(iVar.f25986o));
            }
            Long lValueOf = Long.valueOf(iVar.f25986o == -1 ? iVar.e() : iVar.f77183j);
            int i12 = iVar.f25986o;
            return new Pair(lValueOf, Integer.valueOf(i12 != -1 ? i12 + 1 : -1));
        }
        long j13 = dVar.f26140u + j11;
        if (iVar != null && !this.f25962p) {
            j12 = iVar.f77138g;
        }
        if (!dVar.f26134o && j12 >= j13) {
            return new Pair(Long.valueOf(dVar.f26130k + ((long) dVar.f26137r.size())), -1);
        }
        long j14 = j12 - j11;
        int iG = p0.g(dVar.f26137r, Long.valueOf(j14), true, !this.f25953g.f() || iVar == null);
        long j15 = ((long) iG) + dVar.f26130k;
        if (iG >= 0) {
            com.google.android.exoplayer2.source.hls.playlist.d.C0373d c0373d = (com.google.android.exoplayer2.source.hls.playlist.d.C0373d) dVar.f26137r.get(iG);
            List list = j14 < c0373d.f26153e + c0373d.f26151c ? c0373d.f26148m : dVar.f26138s;
            for (int i13 = 0; i13 < list.size(); i13++) {
                com.google.android.exoplayer2.source.hls.playlist.d.b bVar = (com.google.android.exoplayer2.source.hls.playlist.d.b) list.get(i13);
                if (j14 < bVar.f26153e + bVar.f26151c) {
                    if (!bVar.f26142l) {
                        break;
                    }
                    j15 += list == dVar.f26138s ? 1L : 0L;
                    i11 = i13;
                    break;
                }
            }
        }
        return new Pair(Long.valueOf(j15), Integer.valueOf(i11));
    }

    private static C0371e g(com.google.android.exoplayer2.source.hls.playlist.d dVar, long j11, int i11) {
        int i12 = (int) (j11 - dVar.f26130k);
        if (i12 == dVar.f26137r.size()) {
            if (i11 == -1) {
                i11 = 0;
            }
            if (i11 < dVar.f26138s.size()) {
                return new C0371e((com.google.android.exoplayer2.source.hls.playlist.d.e) dVar.f26138s.get(i11), j11, i11);
            }
            return null;
        }
        com.google.android.exoplayer2.source.hls.playlist.d.C0373d c0373d = (com.google.android.exoplayer2.source.hls.playlist.d.C0373d) dVar.f26137r.get(i12);
        if (i11 == -1) {
            return new C0371e(c0373d, j11, -1);
        }
        if (i11 < c0373d.f26148m.size()) {
            return new C0371e((com.google.android.exoplayer2.source.hls.playlist.d.e) c0373d.f26148m.get(i11), j11, i11);
        }
        int i13 = i12 + 1;
        if (i13 < dVar.f26137r.size()) {
            return new C0371e((com.google.android.exoplayer2.source.hls.playlist.d.e) dVar.f26137r.get(i13), j11 + 1, -1);
        }
        if (dVar.f26138s.isEmpty()) {
            return null;
        }
        return new C0371e((com.google.android.exoplayer2.source.hls.playlist.d.e) dVar.f26138s.get(0), j11 + 1, 0);
    }

    static List i(com.google.android.exoplayer2.source.hls.playlist.d dVar, long j11, int i11) {
        int i12 = (int) (j11 - dVar.f26130k);
        if (i12 < 0 || dVar.f26137r.size() < i12) {
            return ImmutableList.of();
        }
        ArrayList arrayList = new ArrayList();
        if (i12 < dVar.f26137r.size()) {
            if (i11 != -1) {
                com.google.android.exoplayer2.source.hls.playlist.d.C0373d c0373d = (com.google.android.exoplayer2.source.hls.playlist.d.C0373d) dVar.f26137r.get(i12);
                if (i11 == 0) {
                    arrayList.add(c0373d);
                } else if (i11 < c0373d.f26148m.size()) {
                    List list = c0373d.f26148m;
                    arrayList.addAll(list.subList(i11, list.size()));
                }
                i12++;
            }
            List list2 = dVar.f26137r;
            arrayList.addAll(list2.subList(i12, list2.size()));
            i11 = 0;
        }
        if (dVar.f26133n != C.TIME_UNSET) {
            int i13 = i11 != -1 ? i11 : 0;
            if (i13 < dVar.f26138s.size()) {
                List list3 = dVar.f26138s;
                arrayList.addAll(list3.subList(i13, list3.size()));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    private v9.f l(Uri uri, int i11) {
        if (uri == null) {
            return null;
        }
        byte[] bArrC = this.f25956j.c(uri);
        if (bArrC != null) {
            this.f25956j.b(uri, bArrC);
            return null;
        }
        return new a(this.f25949c, new com.google.android.exoplayer2.upstream.n.b().i(uri).b(1).a(), this.f25952f[i11], this.f25963q.getSelectionReason(), this.f25963q.getSelectionData(), this.f25959m);
    }

    private long s(long j11) {
        long j12 = this.f25964r;
        return j12 != C.TIME_UNSET ? j12 - j11 : C.TIME_UNSET;
    }

    private void w(com.google.android.exoplayer2.source.hls.playlist.d dVar) {
        this.f25964r = dVar.f26134o ? C.TIME_UNSET : dVar.d() - this.f25953g.b();
    }

    public v9.o[] a(i iVar, long j11) {
        int i11;
        int iD = iVar == null ? -1 : this.f25954h.d(iVar.f77135d);
        int length = this.f25963q.length();
        v9.o[] oVarArr = new v9.o[length];
        boolean z10 = false;
        int i12 = 0;
        while (i12 < length) {
            int indexInTrackGroup = this.f25963q.getIndexInTrackGroup(i12);
            Uri uri = this.f25951e[indexInTrackGroup];
            if (this.f25953g.e(uri)) {
                com.google.android.exoplayer2.source.hls.playlist.d dVarI = this.f25953g.i(uri, z10);
                com.google.android.exoplayer2.util.a.e(dVarI);
                long jB = dVarI.f26127h - this.f25953g.b();
                i11 = i12;
                Pair pairF = f(iVar, indexInTrackGroup != iD ? true : z10, dVarI, jB, j11);
                oVarArr[i11] = new c(dVarI.f78950a, jB, i(dVarI, ((Long) pairF.first).longValue(), ((Integer) pairF.second).intValue()));
            } else {
                oVarArr[i12] = v9.o.f77184a;
                i11 = i12;
            }
            i12 = i11 + 1;
            z10 = false;
        }
        return oVarArr;
    }

    public long b(long j11, c3 c3Var) {
        int selectedIndex = this.f25963q.getSelectedIndex();
        Uri[] uriArr = this.f25951e;
        com.google.android.exoplayer2.source.hls.playlist.d dVarI = (selectedIndex >= uriArr.length || selectedIndex == -1) ? null : this.f25953g.i(uriArr[this.f25963q.getSelectedIndexInTrackGroup()], true);
        if (dVarI == null || dVarI.f26137r.isEmpty() || !dVarI.f78952c) {
            return j11;
        }
        long jB = dVarI.f26127h - this.f25953g.b();
        long j12 = j11 - jB;
        int iG = p0.g(dVarI.f26137r, Long.valueOf(j12), true, true);
        long j13 = ((com.google.android.exoplayer2.source.hls.playlist.d.C0373d) dVarI.f26137r.get(iG)).f26153e;
        return c3Var.a(j12, j13, iG != dVarI.f26137r.size() - 1 ? ((com.google.android.exoplayer2.source.hls.playlist.d.C0373d) dVarI.f26137r.get(iG + 1)).f26153e : j13) + jB;
    }

    public int c(i iVar) {
        if (iVar.f25986o == -1) {
            return 1;
        }
        com.google.android.exoplayer2.source.hls.playlist.d dVar = (com.google.android.exoplayer2.source.hls.playlist.d) com.google.android.exoplayer2.util.a.e(this.f25953g.i(this.f25951e[this.f25954h.d(iVar.f77135d)], false));
        int i11 = (int) (iVar.f77183j - dVar.f26130k);
        if (i11 < 0) {
            return 1;
        }
        List list = i11 < dVar.f26137r.size() ? ((com.google.android.exoplayer2.source.hls.playlist.d.C0373d) dVar.f26137r.get(i11)).f26148m : dVar.f26138s;
        if (iVar.f25986o >= list.size()) {
            return 2;
        }
        com.google.android.exoplayer2.source.hls.playlist.d.b bVar = (com.google.android.exoplayer2.source.hls.playlist.d.b) list.get(iVar.f25986o);
        if (bVar.f26143m) {
            return 0;
        }
        return p0.c(Uri.parse(n0.d(dVar.f78950a, bVar.f26149a)), iVar.f77133b.f27437a) ? 1 : 2;
    }

    public void e(long j11, long j12, List list, boolean z10, b bVar) {
        com.google.android.exoplayer2.source.hls.playlist.d dVar;
        long jB;
        Uri uri;
        int i11;
        i iVar = list.isEmpty() ? null : (i) g3.g(list);
        int iD = iVar == null ? -1 : this.f25954h.d(iVar.f77135d);
        long jMax = j12 - j11;
        long jS = s(j11);
        if (iVar != null && !this.f25962p) {
            long jB2 = iVar.b();
            jMax = Math.max(0L, jMax - jB2);
            if (jS != C.TIME_UNSET) {
                jS = Math.max(0L, jS - jB2);
            }
        }
        this.f25963q.d(j11, jMax, jS, list, a(iVar, j12));
        int selectedIndexInTrackGroup = this.f25963q.getSelectedIndexInTrackGroup();
        boolean z11 = iD != selectedIndexInTrackGroup;
        Uri uri2 = this.f25951e[selectedIndexInTrackGroup];
        if (!this.f25953g.e(uri2)) {
            bVar.f25969c = uri2;
            this.f25965s &= uri2.equals(this.f25961o);
            this.f25961o = uri2;
            return;
        }
        com.google.android.exoplayer2.source.hls.playlist.d dVarI = this.f25953g.i(uri2, true);
        com.google.android.exoplayer2.util.a.e(dVarI);
        this.f25962p = dVarI.f78952c;
        w(dVarI);
        long jB3 = dVarI.f26127h - this.f25953g.b();
        Pair pairF = f(iVar, z11, dVarI, jB3, j12);
        long jLongValue = ((Long) pairF.first).longValue();
        int iIntValue = ((Integer) pairF.second).intValue();
        if (jLongValue >= dVarI.f26130k || iVar == null || !z11) {
            dVar = dVarI;
            jB = jB3;
            uri = uri2;
            i11 = selectedIndexInTrackGroup;
        } else {
            Uri uri3 = this.f25951e[iD];
            com.google.android.exoplayer2.source.hls.playlist.d dVarI2 = this.f25953g.i(uri3, true);
            com.google.android.exoplayer2.util.a.e(dVarI2);
            jB = dVarI2.f26127h - this.f25953g.b();
            Pair pairF2 = f(iVar, false, dVarI2, jB, j12);
            jLongValue = ((Long) pairF2.first).longValue();
            iIntValue = ((Integer) pairF2.second).intValue();
            i11 = iD;
            uri = uri3;
            dVar = dVarI2;
        }
        if (jLongValue < dVar.f26130k) {
            this.f25960n = new BehindLiveWindowException();
            return;
        }
        C0371e c0371eG = g(dVar, jLongValue, iIntValue);
        if (c0371eG == null) {
            if (!dVar.f26134o) {
                bVar.f25969c = uri;
                this.f25965s &= uri.equals(this.f25961o);
                this.f25961o = uri;
                return;
            } else {
                if (z10 || dVar.f26137r.isEmpty()) {
                    bVar.f25968b = true;
                    return;
                }
                c0371eG = new C0371e((com.google.android.exoplayer2.source.hls.playlist.d.e) g3.g(dVar.f26137r), (dVar.f26130k + ((long) dVar.f26137r.size())) - 1, -1);
            }
        }
        this.f25965s = false;
        this.f25961o = null;
        Uri uriD = d(dVar, c0371eG.f25974a.f26150b);
        v9.f fVarL = l(uriD, i11);
        bVar.f25967a = fVarL;
        if (fVarL != null) {
            return;
        }
        Uri uriD2 = d(dVar, c0371eG.f25974a);
        v9.f fVarL2 = l(uriD2, i11);
        bVar.f25967a = fVarL2;
        if (fVarL2 != null) {
            return;
        }
        boolean zU = i.u(iVar, uri, dVar, c0371eG, jB);
        if (zU && c0371eG.f25977d) {
            return;
        }
        bVar.f25967a = i.h(this.f25947a, this.f25948b, this.f25952f[i11], jB, dVar, c0371eG, uri, this.f25955i, this.f25963q.getSelectionReason(), this.f25963q.getSelectionData(), this.f25958l, this.f25950d, iVar, this.f25956j.a(uriD2), this.f25956j.a(uriD), zU, this.f25957k);
    }

    public int h(long j11, List list) {
        return (this.f25960n != null || this.f25963q.length() < 2) ? list.size() : this.f25963q.evaluateQueueSize(j11, list);
    }

    public TrackGroup j() {
        return this.f25954h;
    }

    public com.google.android.exoplayer2.trackselection.h k() {
        return this.f25963q;
    }

    public boolean m(v9.f fVar, long j11) {
        com.google.android.exoplayer2.trackselection.h hVar = this.f25963q;
        return hVar.blacklist(hVar.indexOf(this.f25954h.d(fVar.f77135d)), j11);
    }

    public void n() throws IOException {
        IOException iOException = this.f25960n;
        if (iOException != null) {
            throw iOException;
        }
        Uri uri = this.f25961o;
        if (uri == null || !this.f25965s) {
            return;
        }
        this.f25953g.a(uri);
    }

    public boolean o(Uri uri) {
        return p0.s(this.f25951e, uri);
    }

    public void p(v9.f fVar) {
        if (fVar instanceof a) {
            a aVar = (a) fVar;
            this.f25959m = aVar.f();
            this.f25956j.b(aVar.f77133b.f27437a, (byte[]) com.google.android.exoplayer2.util.a.e(aVar.h()));
        }
    }

    public boolean q(Uri uri, long j11) {
        int iIndexOf;
        int i11 = 0;
        while (true) {
            Uri[] uriArr = this.f25951e;
            if (i11 >= uriArr.length) {
                i11 = -1;
                break;
            }
            if (uriArr[i11].equals(uri)) {
                break;
            }
            i11++;
        }
        if (i11 == -1 || (iIndexOf = this.f25963q.indexOf(i11)) == -1) {
            return true;
        }
        this.f25965s |= uri.equals(this.f25961o);
        return j11 == C.TIME_UNSET || (this.f25963q.blacklist(iIndexOf, j11) && this.f25953g.g(uri, j11));
    }

    public void r() {
        this.f25960n = null;
    }

    public void t(boolean z10) {
        this.f25958l = z10;
    }

    public void u(com.google.android.exoplayer2.trackselection.h hVar) {
        this.f25963q = hVar;
    }

    public boolean v(long j11, v9.f fVar, List list) {
        if (this.f25960n != null) {
            return false;
        }
        return this.f25963q.f(j11, fVar, list);
    }
}
