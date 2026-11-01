package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.x;
import androidx.media3.common.y;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.source.f0;
import androidx.media3.exoplayer.v2;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g2.z;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
final class l implements androidx.media3.exoplayer.source.q, HlsPlaylistTracker.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f11758a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HlsPlaylistTracker f11759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f f11760c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final w1.n f11761d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.media3.exoplayer.drm.t f11762e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.media3.exoplayer.drm.r.a f11763f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.m f11764g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.media3.exoplayer.source.s.a f11765h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.b f11766i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final g2.e f11769l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f11770m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f11771n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f11772o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final f4 f11773p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final long f11775r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private androidx.media3.exoplayer.source.q.a f11776s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f11777t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private z f11778u;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f11782y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private f0 f11783z;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final r.b f11774q = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final IdentityHashMap f11767j = new IdentityHashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final t f11768k = new t();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private r[] f11779v = new r[0];

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private r[] f11780w = new r[0];

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int[][] f11781x = new int[0][];

    private class b implements r.b {
        private b() {
        }

        @Override // androidx.media3.exoplayer.source.f0.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void f(r rVar) {
            l.this.f11776s.f(l.this);
        }

        @Override // androidx.media3.exoplayer.hls.r.b
        public void d(Uri uri) {
            l.this.f11759b.d(uri);
        }

        @Override // androidx.media3.exoplayer.hls.r.b
        public void onPrepared() {
            if (l.h(l.this) > 0) {
                return;
            }
            int i11 = 0;
            for (r rVar : l.this.f11779v) {
                i11 += rVar.getTrackGroups().f63266a;
            }
            androidx.media3.common.f0[] f0VarArr = new androidx.media3.common.f0[i11];
            int i12 = 0;
            for (r rVar2 : l.this.f11779v) {
                int i13 = rVar2.getTrackGroups().f63266a;
                int i14 = 0;
                while (i14 < i13) {
                    f0VarArr[i12] = rVar2.getTrackGroups().b(i14);
                    i14++;
                    i12++;
                }
            }
            l.this.f11778u = new z(f0VarArr);
            l.this.f11776s.c(l.this);
        }
    }

    public l(g gVar, HlsPlaylistTracker hlsPlaylistTracker, f fVar, w1.n nVar, androidx.media3.exoplayer.upstream.f fVar2, androidx.media3.exoplayer.drm.t tVar, androidx.media3.exoplayer.drm.r.a aVar, androidx.media3.exoplayer.upstream.m mVar, androidx.media3.exoplayer.source.s.a aVar2, androidx.media3.exoplayer.upstream.b bVar, g2.e eVar, boolean z10, int i11, boolean z11, f4 f4Var, long j11) {
        this.f11758a = gVar;
        this.f11759b = hlsPlaylistTracker;
        this.f11760c = fVar;
        this.f11761d = nVar;
        this.f11762e = tVar;
        this.f11763f = aVar;
        this.f11764g = mVar;
        this.f11765h = aVar2;
        this.f11766i = bVar;
        this.f11769l = eVar;
        this.f11770m = z10;
        this.f11771n = i11;
        this.f11772o = z11;
        this.f11773p = f4Var;
        this.f11775r = j11;
        this.f11783z = eVar.b();
    }

    static /* synthetic */ int h(l lVar) {
        int i11 = lVar.f11777t - 1;
        lVar.f11777t = i11;
        return i11;
    }

    private void m(long j11, List list, List list2, List list3, Map map) {
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        ArrayList arrayList3 = new ArrayList(list.size());
        HashSet hashSet = new HashSet();
        for (int i11 = 0; i11 < list.size(); i11++) {
            String str = ((androidx.media3.exoplayer.hls.playlist.d.a) list.get(i11)).f11946d;
            if (hashSet.add(str)) {
                arrayList.clear();
                arrayList2.clear();
                arrayList3.clear();
                boolean z10 = true;
                for (int i12 = 0; i12 < list.size(); i12++) {
                    if (Objects.equals(str, ((androidx.media3.exoplayer.hls.playlist.d.a) list.get(i12)).f11946d)) {
                        androidx.media3.exoplayer.hls.playlist.d.a aVar = (androidx.media3.exoplayer.hls.playlist.d.a) list.get(i12);
                        arrayList3.add(Integer.valueOf(i12));
                        arrayList.add(aVar.f11943a);
                        arrayList2.add(aVar.f11944b);
                        z10 &= a1.R(aVar.f11944b.f10157k, 1) == 1;
                    }
                }
                String str2 = "audio:" + str;
                r rVarP = p(str2, 1, (Uri[]) arrayList.toArray((Uri[]) a1.j(new Uri[0])), (androidx.media3.common.r[]) arrayList2.toArray(new androidx.media3.common.r[0]), null, Collections.emptyList(), map, j11);
                list3.add(Ints.o(arrayList3));
                list2.add(rVarP);
                if (this.f11770m && z10) {
                    rVarP.V(new androidx.media3.common.f0[]{new androidx.media3.common.f0(str2, (androidx.media3.common.r[]) arrayList2.toArray(new androidx.media3.common.r[0]))}, 0, new int[0]);
                }
            }
        }
    }

    private void n(androidx.media3.exoplayer.hls.playlist.d dVar, long j11, List list, List list2, Map map) {
        int i11;
        boolean z10;
        boolean z11;
        int size = dVar.f11934e.size();
        int[] iArr = new int[size];
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < dVar.f11934e.size(); i14++) {
            androidx.media3.common.r rVar = ((androidx.media3.exoplayer.hls.playlist.d.b) dVar.f11934e.get(i14)).f11948b;
            if (rVar.f10169w > 0 || a1.S(rVar.f10157k, 2) != null) {
                iArr[i14] = 2;
                i12++;
            } else if (a1.S(rVar.f10157k, 1) != null) {
                iArr[i14] = 1;
                i13++;
            } else {
                iArr[i14] = -1;
            }
        }
        if (i12 > 0) {
            i11 = i12;
            z10 = true;
            z11 = false;
        } else if (i13 < size) {
            i11 = size - i13;
            z11 = true;
            z10 = false;
        } else {
            i11 = size;
            z10 = false;
            z11 = false;
        }
        Uri[] uriArr = new Uri[i11];
        androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[i11];
        int[] iArr2 = new int[i11];
        int i15 = 0;
        for (int i16 = 0; i16 < dVar.f11934e.size(); i16++) {
            if ((!z10 || iArr[i16] == 2) && (!z11 || iArr[i16] != 1)) {
                androidx.media3.exoplayer.hls.playlist.d.b bVar = (androidx.media3.exoplayer.hls.playlist.d.b) dVar.f11934e.get(i16);
                uriArr[i15] = bVar.f11947a;
                rVarArr[i15] = bVar.f11948b;
                iArr2[i15] = i16;
                i15++;
            }
        }
        String str = rVarArr[0].f10157k;
        int iR = a1.R(str, 2);
        int iR2 = a1.R(str, 1);
        boolean z12 = (iR2 == 1 || (iR2 == 0 && dVar.f11936g.isEmpty())) && iR <= 1 && iR2 + iR > 0;
        r rVarP = p("main", (z10 || iR2 <= 0) ? 0 : 1, uriArr, rVarArr, dVar.f11939j, dVar.f11940k, map, j11);
        list.add(rVarP);
        list2.add(iArr2);
        if (this.f11770m && z12) {
            ArrayList arrayList = new ArrayList();
            if (iR > 0) {
                androidx.media3.common.r[] rVarArr2 = new androidx.media3.common.r[i11];
                for (int i17 = 0; i17 < i11; i17++) {
                    rVarArr2[i17] = s(rVarArr[i17]);
                }
                arrayList.add(new androidx.media3.common.f0("main", rVarArr2));
                if (iR2 > 0 && (dVar.f11939j != null || dVar.f11936g.isEmpty())) {
                    arrayList.add(new androidx.media3.common.f0("main:audio", q(rVarArr[0], dVar.f11939j, false)));
                }
                List list3 = dVar.f11940k;
                if (list3 != null) {
                    for (int i18 = 0; i18 < list3.size(); i18++) {
                        arrayList.add(new androidx.media3.common.f0("main:cc:" + i18, this.f11758a.d((androidx.media3.common.r) list3.get(i18))));
                    }
                }
            } else {
                androidx.media3.common.r[] rVarArr3 = new androidx.media3.common.r[i11];
                for (int i19 = 0; i19 < i11; i19++) {
                    rVarArr3[i19] = q(rVarArr[i19], dVar.f11939j, true);
                }
                arrayList.add(new androidx.media3.common.f0("main", rVarArr3));
            }
            androidx.media3.common.f0 f0Var = new androidx.media3.common.f0("main:id3", new androidx.media3.common.r.b().f0("ID3").u0(MimeTypes.APPLICATION_ID3).N());
            arrayList.add(f0Var);
            rVarP.V((androidx.media3.common.f0[]) arrayList.toArray(new androidx.media3.common.f0[0]), 0, arrayList.indexOf(f0Var));
        }
    }

    private void o(long j11) {
        int i11 = 0;
        int i12 = 1;
        androidx.media3.exoplayer.hls.playlist.d dVar = (androidx.media3.exoplayer.hls.playlist.d) androidx.media3.common.util.a.e(this.f11759b.c());
        Map mapR = this.f11772o ? r(dVar.f11942m) : Collections.emptyMap();
        boolean zIsEmpty = dVar.f11934e.isEmpty();
        List list = dVar.f11936g;
        List list2 = dVar.f11937h;
        this.f11777t = 0;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!zIsEmpty) {
            n(dVar, j11, arrayList, arrayList2, mapR);
        }
        m(j11, list, arrayList, arrayList2, mapR);
        this.f11782y = arrayList.size();
        int i13 = 0;
        while (i13 < list2.size()) {
            androidx.media3.exoplayer.hls.playlist.d.a aVar = (androidx.media3.exoplayer.hls.playlist.d.a) list2.get(i13);
            String str = "subtitle:" + i13 + ":" + aVar.f11946d;
            androidx.media3.common.r rVar = aVar.f11944b;
            Uri[] uriArr = new Uri[i12];
            uriArr[i11] = aVar.f11943a;
            androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[i12];
            rVarArr[i11] = rVar;
            ArrayList arrayList3 = arrayList2;
            int i14 = i13;
            r rVarP = p(str, 3, uriArr, rVarArr, null, Collections.emptyList(), mapR, j11);
            arrayList3.add(new int[]{i14});
            arrayList.add(rVarP);
            rVarP.V(new androidx.media3.common.f0[]{new androidx.media3.common.f0(str, this.f11758a.d(rVar))}, 0, new int[0]);
            i13 = i14 + 1;
            i11 = 0;
            arrayList2 = arrayList3;
            i12 = 1;
        }
        int i15 = i11;
        this.f11779v = (r[]) arrayList.toArray(new r[i15]);
        this.f11781x = (int[][]) arrayList2.toArray(new int[i15][]);
        this.f11777t = this.f11779v.length;
        for (int i16 = i15; i16 < this.f11782y; i16++) {
            this.f11779v[i16].e0(true);
        }
        r[] rVarArr2 = this.f11779v;
        int length = rVarArr2.length;
        for (int i17 = i15; i17 < length; i17++) {
            rVarArr2[i17].r();
        }
        this.f11780w = this.f11779v;
    }

    private r p(String str, int i11, Uri[] uriArr, androidx.media3.common.r[] rVarArr, androidx.media3.common.r rVar, List list, Map map, long j11) {
        return new r(str, i11, this.f11774q, new e(this.f11758a, this.f11759b, uriArr, rVarArr, this.f11760c, this.f11761d, this.f11768k, this.f11775r, list, this.f11773p, null), map, this.f11766i, j11, rVar, this.f11762e, this.f11763f, this.f11764g, this.f11765h, this.f11771n);
    }

    private static androidx.media3.common.r q(androidx.media3.common.r rVar, androidx.media3.common.r rVar2, boolean z10) {
        x xVar;
        int i11;
        String str;
        int i12;
        int i13;
        String str2;
        String str3;
        List list;
        List listOf = ImmutableList.of();
        if (rVar2 != null) {
            str3 = rVar2.f10157k;
            xVar = rVar2.f10158l;
            i12 = rVar2.E;
            i11 = rVar2.f10151e;
            i13 = rVar2.f10152f;
            str = rVar2.f10150d;
            str2 = rVar2.f10148b;
            list = rVar2.f10149c;
        } else {
            String strS = a1.S(rVar.f10157k, 1);
            xVar = rVar.f10158l;
            if (z10) {
                i12 = rVar.E;
                i11 = rVar.f10151e;
                i13 = rVar.f10152f;
                str = rVar.f10150d;
                str2 = rVar.f10148b;
                listOf = rVar.f10149c;
            } else {
                i11 = 0;
                str = null;
                i12 = -1;
                i13 = 0;
                str2 = null;
            }
            List list2 = listOf;
            str3 = strS;
            list = list2;
        }
        return new androidx.media3.common.r.b().f0(rVar.f10147a).h0(str2).i0(list).U(rVar.f10160n).u0(y.g(str3)).S(str3).n0(xVar).Q(z10 ? rVar.f10154h : -1).p0(z10 ? rVar.f10155i : -1).R(i12).w0(i11).s0(i13).j0(str).N();
    }

    private static Map r(List list) {
        ArrayList arrayList = new ArrayList(list);
        HashMap map = new HashMap();
        int i11 = 0;
        while (i11 < arrayList.size()) {
            DrmInitData drmInitDataMerge = (DrmInitData) list.get(i11);
            String str = drmInitDataMerge.schemeType;
            i11++;
            int i12 = i11;
            while (i12 < arrayList.size()) {
                DrmInitData drmInitData = (DrmInitData) arrayList.get(i12);
                if (TextUtils.equals(drmInitData.schemeType, str)) {
                    drmInitDataMerge = drmInitDataMerge.merge(drmInitData);
                    arrayList.remove(i12);
                } else {
                    i12++;
                }
            }
            map.put(str, drmInitDataMerge);
        }
        return map;
    }

    private static androidx.media3.common.r s(androidx.media3.common.r rVar) {
        String strS = a1.S(rVar.f10157k, 2);
        return new androidx.media3.common.r.b().f0(rVar.f10147a).h0(rVar.f10148b).i0(rVar.f10149c).U(rVar.f10160n).u0(y.g(strS)).S(strS).n0(rVar.f10158l).Q(rVar.f10154h).p0(rVar.f10155i).B0(rVar.f10168v).d0(rVar.f10169w).b0(rVar.f10170x).w0(rVar.f10151e).s0(rVar.f10152f).N();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List t(r rVar) {
        return rVar.getTrackGroups().c();
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean a(v2 v2Var) {
        if (this.f11778u != null) {
            return this.f11783z.a(v2Var);
        }
        for (r rVar : this.f11779v) {
            rVar.r();
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.q
    public long b(long j11, c4 c4Var) {
        for (r rVar : this.f11780w) {
            if (rVar.H()) {
                return rVar.b(j11, c4Var);
            }
        }
        return j11;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.b
    public void c() {
        for (r rVar : this.f11779v) {
            rVar.T();
        }
        this.f11776s.f(this);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.b
    public boolean d(Uri uri, androidx.media3.exoplayer.upstream.m.c cVar, boolean z10) {
        boolean zS = true;
        for (r rVar : this.f11779v) {
            zS &= rVar.S(uri, cVar, z10);
        }
        this.f11776s.f(this);
        return zS;
    }

    @Override // androidx.media3.exoplayer.source.q
    public void discardBuffer(long j11, boolean z10) {
        for (r rVar : this.f11780w) {
            rVar.discardBuffer(j11, z10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00df  */
    @Override // androidx.media3.exoplayer.source.q
    public long e(j2.z[] zVarArr, boolean[] zArr, g2.u[] uVarArr, boolean[] zArr2, long j11) {
        g2.u[] uVarArr2 = uVarArr;
        int[] iArr = new int[zVarArr.length];
        int[] iArr2 = new int[zVarArr.length];
        for (int i11 = 0; i11 < zVarArr.length; i11++) {
            g2.u uVar = uVarArr2[i11];
            iArr[i11] = uVar == null ? -1 : ((Integer) this.f11767j.get(uVar)).intValue();
            iArr2[i11] = -1;
            j2.z zVar = zVarArr[i11];
            if (zVar != null) {
                androidx.media3.common.f0 trackGroup = zVar.getTrackGroup();
                int i12 = 0;
                while (true) {
                    r[] rVarArr = this.f11779v;
                    if (i12 >= rVarArr.length) {
                        break;
                    }
                    if (rVarArr[i12].getTrackGroups().d(trackGroup) != -1) {
                        iArr2[i11] = i12;
                        break;
                    }
                    i12++;
                }
            }
        }
        this.f11767j.clear();
        int length = zVarArr.length;
        g2.u[] uVarArr3 = new g2.u[length];
        g2.u[] uVarArr4 = new g2.u[zVarArr.length];
        j2.z[] zVarArr2 = new j2.z[zVarArr.length];
        r[] rVarArr2 = new r[this.f11779v.length];
        int i13 = 0;
        int i14 = 0;
        boolean z10 = false;
        while (i14 < this.f11779v.length) {
            for (int i15 = 0; i15 < zVarArr.length; i15++) {
                j2.z zVar2 = null;
                uVarArr4[i15] = iArr[i15] == i14 ? uVarArr2[i15] : null;
                if (iArr2[i15] == i14) {
                    zVar2 = zVarArr[i15];
                }
                zVarArr2[i15] = zVar2;
            }
            r rVar = this.f11779v[i14];
            int i16 = i13;
            int i17 = length;
            int i18 = i14;
            j2.z[] zVarArr3 = zVarArr2;
            r[] rVarArr3 = rVarArr2;
            boolean zB0 = rVar.b0(zVarArr2, zArr, uVarArr4, zArr2, j11, z10);
            int i19 = 0;
            boolean z11 = false;
            while (true) {
                if (i19 >= zVarArr.length) {
                    break;
                }
                g2.u uVar2 = uVarArr4[i19];
                if (iArr2[i19] == i18) {
                    androidx.media3.common.util.a.e(uVar2);
                    uVarArr3[i19] = uVar2;
                    this.f11767j.put(uVar2, Integer.valueOf(i18));
                    z11 = true;
                } else if (iArr[i19] == i18) {
                    androidx.media3.common.util.a.g(uVar2 == null);
                }
                i19++;
            }
            if (z11) {
                rVarArr3[i16] = rVar;
                i13 = i16 + 1;
                if (i16 == 0) {
                    rVar.e0(true);
                    if (zB0) {
                        this.f11768k.b();
                        z10 = true;
                    } else {
                        r[] rVarArr4 = this.f11780w;
                        if (rVarArr4.length == 0 || rVar != rVarArr4[0]) {
                            this.f11768k.b();
                            z10 = true;
                        }
                    }
                } else {
                    rVar.e0(i18 < this.f11782y);
                }
            } else {
                i13 = i16;
            }
            i14 = i18 + 1;
            uVarArr2 = uVarArr;
            rVarArr2 = rVarArr3;
            length = i17;
            zVarArr2 = zVarArr3;
        }
        System.arraycopy(uVarArr3, 0, uVarArr2, 0, length);
        r[] rVarArr5 = (r[]) a1.X0(rVarArr2, i13);
        this.f11780w = rVarArr5;
        ImmutableList immutableListCopyOf = ImmutableList.copyOf(rVarArr5);
        this.f11783z = this.f11769l.a(immutableListCopyOf, Lists.o(immutableListCopyOf, new com.google.common.base.f() { // from class: androidx.media3.exoplayer.hls.k
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return l.t((r) obj);
            }
        }));
        return j11;
    }

    @Override // androidx.media3.exoplayer.source.q
    public void g(androidx.media3.exoplayer.source.q.a aVar, long j11) {
        this.f11776s = aVar;
        this.f11759b.n(this);
        o(j11);
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getBufferedPositionUs() {
        return this.f11783z.getBufferedPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getNextLoadPositionUs() {
        return this.f11783z.getNextLoadPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.q
    public z getTrackGroups() {
        return (z) androidx.media3.common.util.a.e(this.f11778u);
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean isLoading() {
        return this.f11783z.isLoading();
    }

    @Override // androidx.media3.exoplayer.source.q
    public void maybeThrowPrepareError() throws ParserException {
        for (r rVar : this.f11779v) {
            rVar.maybeThrowPrepareError();
        }
    }

    @Override // androidx.media3.exoplayer.source.q
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public void reevaluateBuffer(long j11) {
        this.f11783z.reevaluateBuffer(j11);
    }

    @Override // androidx.media3.exoplayer.source.q
    public long seekToUs(long j11) {
        r[] rVarArr = this.f11780w;
        if (rVarArr.length > 0) {
            boolean zA0 = rVarArr[0].a0(j11, false);
            int i11 = 1;
            while (true) {
                r[] rVarArr2 = this.f11780w;
                if (i11 >= rVarArr2.length) {
                    break;
                }
                rVarArr2[i11].a0(j11, zA0);
                i11++;
            }
            if (zA0) {
                this.f11768k.b();
            }
        }
        return j11;
    }

    public void u() {
        this.f11759b.m(this);
        for (r rVar : this.f11779v) {
            rVar.X();
        }
        this.f11776s = null;
    }
}
