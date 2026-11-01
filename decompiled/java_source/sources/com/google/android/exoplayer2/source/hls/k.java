package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.b0;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.w;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import e9.u1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import t9.x;

/* JADX INFO: loaded from: classes3.dex */
public final class k implements com.google.android.exoplayer2.source.n, p.b, HlsPlaylistTracker.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f25998a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HlsPlaylistTracker f25999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f f26000c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k0 f26001d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final u f26002e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final s.a f26003f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final z f26004g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.google.android.exoplayer2.source.p.a f26005h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f26006i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final t9.d f26009l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f26010m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f26011n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f26012o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final u1 f26013p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.google.android.exoplayer2.source.n.a f26014q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f26015r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private x f26016s;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f26020w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private b0 f26021x;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final IdentityHashMap f26007j = new IdentityHashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final q f26008k = new q();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private p[] f26017t = new p[0];

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private p[] f26018u = new p[0];

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int[][] f26019v = new int[0][];

    public k(g gVar, HlsPlaylistTracker hlsPlaylistTracker, f fVar, k0 k0Var, u uVar, s.a aVar, z zVar, com.google.android.exoplayer2.source.p.a aVar2, com.google.android.exoplayer2.upstream.b bVar, t9.d dVar, boolean z10, int i11, boolean z11, u1 u1Var) {
        this.f25998a = gVar;
        this.f25999b = hlsPlaylistTracker;
        this.f26000c = fVar;
        this.f26001d = k0Var;
        this.f26002e = uVar;
        this.f26003f = aVar;
        this.f26004g = zVar;
        this.f26005h = aVar2;
        this.f26006i = bVar;
        this.f26009l = dVar;
        this.f26010m = z10;
        this.f26011n = i11;
        this.f26012o = z11;
        this.f26013p = u1Var;
        this.f26021x = dVar.a(new b0[0]);
    }

    private void i(long j11, List list, List list2, List list3, Map map) {
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        ArrayList arrayList3 = new ArrayList(list.size());
        HashSet hashSet = new HashSet();
        for (int i11 = 0; i11 < list.size(); i11++) {
            String str = ((com.google.android.exoplayer2.source.hls.playlist.e.a) list.get(i11)).f26179d;
            if (hashSet.add(str)) {
                arrayList.clear();
                arrayList2.clear();
                arrayList3.clear();
                boolean z10 = true;
                for (int i12 = 0; i12 < list.size(); i12++) {
                    if (p0.c(str, ((com.google.android.exoplayer2.source.hls.playlist.e.a) list.get(i12)).f26179d)) {
                        com.google.android.exoplayer2.source.hls.playlist.e.a aVar = (com.google.android.exoplayer2.source.hls.playlist.e.a) list.get(i12);
                        arrayList3.add(Integer.valueOf(i12));
                        arrayList.add(aVar.f26176a);
                        arrayList2.add(aVar.f26177b);
                        z10 &= p0.K(aVar.f26177b.f25493i, 1) == 1;
                    }
                }
                String strValueOf = String.valueOf(str);
                String strConcat = strValueOf.length() != 0 ? "audio:".concat(strValueOf) : new String("audio:");
                p pVarL = l(strConcat, 1, (Uri[]) arrayList.toArray((Uri[]) p0.k(new Uri[0])), (o1[]) arrayList2.toArray(new o1[0]), null, Collections.emptyList(), map, j11);
                list3.add(Ints.o(arrayList3));
                list2.add(pVarL);
                if (this.f26010m && z10) {
                    pVarL.Q(new TrackGroup[]{new TrackGroup(strConcat, (o1[]) arrayList2.toArray(new o1[0]))}, 0, new int[0]);
                }
            }
        }
    }

    private void j(com.google.android.exoplayer2.source.hls.playlist.e eVar, long j11, List list, List list2, Map map) {
        boolean z10;
        boolean z11;
        int size = eVar.f26167e.size();
        int[] iArr = new int[size];
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < eVar.f26167e.size(); i13++) {
            o1 o1Var = ((com.google.android.exoplayer2.source.hls.playlist.e.b) eVar.f26167e.get(i13)).f26181b;
            if (o1Var.f25502r > 0 || p0.L(o1Var.f25493i, 2) != null) {
                iArr[i13] = 2;
                i11++;
            } else if (p0.L(o1Var.f25493i, 1) != null) {
                iArr[i13] = 1;
                i12++;
            } else {
                iArr[i13] = -1;
            }
        }
        if (i11 > 0) {
            z10 = true;
            size = i11;
            z11 = false;
        } else if (i12 < size) {
            size -= i12;
            z11 = true;
            z10 = false;
        } else {
            z10 = false;
            z11 = false;
        }
        Uri[] uriArr = new Uri[size];
        o1[] o1VarArr = new o1[size];
        int[] iArr2 = new int[size];
        int i14 = 0;
        for (int i15 = 0; i15 < eVar.f26167e.size(); i15++) {
            if ((!z10 || iArr[i15] == 2) && (!z11 || iArr[i15] != 1)) {
                com.google.android.exoplayer2.source.hls.playlist.e.b bVar = (com.google.android.exoplayer2.source.hls.playlist.e.b) eVar.f26167e.get(i15);
                uriArr[i14] = bVar.f26180a;
                o1VarArr[i14] = bVar.f26181b;
                iArr2[i14] = i15;
                i14++;
            }
        }
        String str = o1VarArr[0].f25493i;
        int iK = p0.K(str, 2);
        int iK2 = p0.K(str, 1);
        boolean z12 = iK2 <= 1 && iK <= 1 && iK2 + iK > 0;
        p pVarL = l("main", (z10 || iK2 <= 0) ? 0 : 1, uriArr, o1VarArr, eVar.f26172j, eVar.f26173k, map, j11);
        list.add(pVarL);
        list2.add(iArr2);
        if (this.f26010m && z12) {
            ArrayList arrayList = new ArrayList();
            if (iK > 0) {
                o1[] o1VarArr2 = new o1[size];
                for (int i16 = 0; i16 < size; i16++) {
                    o1VarArr2[i16] = o(o1VarArr[i16]);
                }
                arrayList.add(new TrackGroup("main", o1VarArr2));
                if (iK2 > 0 && (eVar.f26172j != null || eVar.f26169g.isEmpty())) {
                    arrayList.add(new TrackGroup("main".concat(":audio"), m(o1VarArr[0], eVar.f26172j, false)));
                }
                List list3 = eVar.f26173k;
                if (list3 != null) {
                    for (int i17 = 0; i17 < list3.size(); i17++) {
                        StringBuilder sb2 = new StringBuilder("main".length() + 15);
                        sb2.append("main");
                        sb2.append(":cc:");
                        sb2.append(i17);
                        arrayList.add(new TrackGroup(sb2.toString(), (o1) list3.get(i17)));
                    }
                }
            } else {
                o1[] o1VarArr3 = new o1[size];
                for (int i18 = 0; i18 < size; i18++) {
                    o1VarArr3[i18] = m(o1VarArr[i18], eVar.f26172j, true);
                }
                arrayList.add(new TrackGroup("main", o1VarArr3));
            }
            TrackGroup trackGroup = new TrackGroup("main".concat(":id3"), new o1.b().S("ID3").e0(MimeTypes.APPLICATION_ID3).E());
            arrayList.add(trackGroup);
            pVarL.Q((TrackGroup[]) arrayList.toArray(new TrackGroup[0]), 0, arrayList.indexOf(trackGroup));
        }
    }

    private void k(long j11) {
        int i11 = 0;
        int i12 = 1;
        com.google.android.exoplayer2.source.hls.playlist.e eVar = (com.google.android.exoplayer2.source.hls.playlist.e) com.google.android.exoplayer2.util.a.e(this.f25999b.c());
        Map mapN = this.f26012o ? n(eVar.f26175m) : Collections.emptyMap();
        boolean zIsEmpty = eVar.f26167e.isEmpty();
        List list = eVar.f26169g;
        List list2 = eVar.f26170h;
        this.f26015r = 0;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!zIsEmpty) {
            j(eVar, j11, arrayList, arrayList2, mapN);
        }
        i(j11, list, arrayList, arrayList2, mapN);
        this.f26020w = arrayList.size();
        int i13 = 0;
        while (i13 < list2.size()) {
            com.google.android.exoplayer2.source.hls.playlist.e.a aVar = (com.google.android.exoplayer2.source.hls.playlist.e.a) list2.get(i13);
            String str = aVar.f26179d;
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 21);
            sb2.append("subtitle:");
            sb2.append(i13);
            sb2.append(":");
            sb2.append(str);
            String string = sb2.toString();
            Uri[] uriArr = new Uri[i12];
            uriArr[i11] = aVar.f26176a;
            o1[] o1VarArr = new o1[i12];
            o1VarArr[i11] = aVar.f26177b;
            ArrayList arrayList3 = arrayList2;
            int i14 = i13;
            p pVarL = l(string, 3, uriArr, o1VarArr, null, Collections.emptyList(), mapN, j11);
            arrayList3.add(new int[]{i14});
            arrayList.add(pVarL);
            pVarL.Q(new TrackGroup[]{new TrackGroup(string, aVar.f26177b)}, 0, new int[0]);
            i13 = i14 + 1;
            i11 = 0;
            arrayList2 = arrayList3;
            i12 = 1;
        }
        int i15 = i11;
        this.f26017t = (p[]) arrayList.toArray(new p[i15]);
        this.f26019v = (int[][]) arrayList2.toArray(new int[i15][]);
        p[] pVarArr = this.f26017t;
        this.f26015r = pVarArr.length;
        pVarArr[i15].Z(true);
        p[] pVarArr2 = this.f26017t;
        int length = pVarArr2.length;
        while (i11 < length) {
            pVarArr2[i11].o();
            i11++;
        }
        this.f26018u = this.f26017t;
    }

    private p l(String str, int i11, Uri[] uriArr, o1[] o1VarArr, o1 o1Var, List list, Map map, long j11) {
        return new p(str, i11, this, new e(this.f25998a, this.f25999b, uriArr, o1VarArr, this.f26000c, this.f26001d, this.f26008k, list, this.f26013p), map, this.f26006i, j11, o1Var, this.f26002e, this.f26003f, this.f26004g, this.f26005h, this.f26011n);
    }

    private static o1 m(o1 o1Var, o1 o1Var2, boolean z10) {
        String strL;
        Metadata metadata;
        int i11;
        String str;
        int i12;
        int i13;
        String str2;
        if (o1Var2 != null) {
            strL = o1Var2.f25493i;
            metadata = o1Var2.f25494j;
            i12 = o1Var2.f25509y;
            i11 = o1Var2.f25488d;
            i13 = o1Var2.f25489e;
            str = o1Var2.f25487c;
            str2 = o1Var2.f25486b;
        } else {
            strL = p0.L(o1Var.f25493i, 1);
            metadata = o1Var.f25494j;
            if (z10) {
                i12 = o1Var.f25509y;
                i11 = o1Var.f25488d;
                i13 = o1Var.f25489e;
                str = o1Var.f25487c;
                str2 = o1Var.f25486b;
            } else {
                i11 = 0;
                str = null;
                i12 = -1;
                i13 = 0;
                str2 = null;
            }
        }
        return new o1.b().S(o1Var.f25485a).U(str2).K(o1Var.f25495k).e0(w.g(strL)).I(strL).X(metadata).G(z10 ? o1Var.f25490f : -1).Z(z10 ? o1Var.f25491g : -1).H(i12).g0(i11).c0(i13).V(str).E();
    }

    private static Map n(List list) {
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

    private static o1 o(o1 o1Var) {
        String strL = p0.L(o1Var.f25493i, 2);
        return new o1.b().S(o1Var.f25485a).U(o1Var.f25486b).K(o1Var.f25495k).e0(w.g(strL)).I(strL).X(o1Var.f25494j).G(o1Var.f25490f).Z(o1Var.f25491g).j0(o1Var.f25501q).Q(o1Var.f25502r).P(o1Var.f25503s).g0(o1Var.f25488d).c0(o1Var.f25489e).E();
    }

    @Override // com.google.android.exoplayer2.source.n
    public long a(long j11, c3 c3Var) {
        for (p pVar : this.f26018u) {
            if (pVar.E()) {
                return pVar.a(j11, c3Var);
            }
        }
        return j11;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00df  */
    @Override // com.google.android.exoplayer2.source.n
    public long b(com.google.android.exoplayer2.trackselection.h[] hVarArr, boolean[] zArr, t9.s[] sVarArr, boolean[] zArr2, long j11) {
        t9.s[] sVarArr2 = sVarArr;
        int[] iArr = new int[hVarArr.length];
        int[] iArr2 = new int[hVarArr.length];
        for (int i11 = 0; i11 < hVarArr.length; i11++) {
            t9.s sVar = sVarArr2[i11];
            iArr[i11] = sVar == null ? -1 : ((Integer) this.f26007j.get(sVar)).intValue();
            iArr2[i11] = -1;
            com.google.android.exoplayer2.trackselection.h hVar = hVarArr[i11];
            if (hVar != null) {
                TrackGroup trackGroup = hVar.getTrackGroup();
                int i12 = 0;
                while (true) {
                    p[] pVarArr = this.f26017t;
                    if (i12 >= pVarArr.length) {
                        break;
                    }
                    if (pVarArr[i12].getTrackGroups().c(trackGroup) != -1) {
                        iArr2[i11] = i12;
                        break;
                    }
                    i12++;
                }
            }
        }
        this.f26007j.clear();
        int length = hVarArr.length;
        t9.s[] sVarArr3 = new t9.s[length];
        t9.s[] sVarArr4 = new t9.s[hVarArr.length];
        com.google.android.exoplayer2.trackselection.h[] hVarArr2 = new com.google.android.exoplayer2.trackselection.h[hVarArr.length];
        p[] pVarArr2 = new p[this.f26017t.length];
        int i13 = 0;
        int i14 = 0;
        boolean z10 = false;
        while (i14 < this.f26017t.length) {
            for (int i15 = 0; i15 < hVarArr.length; i15++) {
                com.google.android.exoplayer2.trackselection.h hVar2 = null;
                sVarArr4[i15] = iArr[i15] == i14 ? sVarArr2[i15] : null;
                if (iArr2[i15] == i14) {
                    hVar2 = hVarArr[i15];
                }
                hVarArr2[i15] = hVar2;
            }
            p pVar = this.f26017t[i14];
            int i16 = i13;
            int i17 = length;
            int i18 = i14;
            com.google.android.exoplayer2.trackselection.h[] hVarArr3 = hVarArr2;
            p[] pVarArr3 = pVarArr2;
            boolean zW = pVar.W(hVarArr2, zArr, sVarArr4, zArr2, j11, z10);
            int i19 = 0;
            boolean z11 = false;
            while (true) {
                if (i19 >= hVarArr.length) {
                    break;
                }
                t9.s sVar2 = sVarArr4[i19];
                if (iArr2[i19] == i18) {
                    com.google.android.exoplayer2.util.a.e(sVar2);
                    sVarArr3[i19] = sVar2;
                    this.f26007j.put(sVar2, Integer.valueOf(i18));
                    z11 = true;
                } else if (iArr[i19] == i18) {
                    com.google.android.exoplayer2.util.a.g(sVar2 == null);
                }
                i19++;
            }
            if (z11) {
                pVarArr3[i16] = pVar;
                i13 = i16 + 1;
                if (i16 == 0) {
                    pVar.Z(true);
                    if (zW) {
                        this.f26008k.b();
                        z10 = true;
                    } else {
                        p[] pVarArr4 = this.f26018u;
                        if (pVarArr4.length == 0 || pVar != pVarArr4[0]) {
                            this.f26008k.b();
                            z10 = true;
                        }
                    }
                } else {
                    pVar.Z(i18 < this.f26020w);
                }
            } else {
                i13 = i16;
            }
            i14 = i18 + 1;
            sVarArr2 = sVarArr;
            pVarArr2 = pVarArr3;
            length = i17;
            hVarArr2 = hVarArr3;
        }
        System.arraycopy(sVarArr3, 0, sVarArr2, 0, length);
        p[] pVarArr5 = (p[]) p0.G0(pVarArr2, i13);
        this.f26018u = pVarArr5;
        this.f26021x = this.f26009l.a(pVarArr5);
        return j11;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.b
    public void c() {
        for (p pVar : this.f26017t) {
            pVar.O();
        }
        this.f26014q.g(this);
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j11) {
        if (this.f26016s != null) {
            return this.f26021x.continueLoading(j11);
        }
        for (p pVar : this.f26017t) {
            pVar.o();
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.hls.p.b
    public void d(Uri uri) {
        this.f25999b.d(uri);
    }

    @Override // com.google.android.exoplayer2.source.n
    public void discardBuffer(long j11, boolean z10) {
        for (p pVar : this.f26018u) {
            pVar.discardBuffer(j11, z10);
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public void e(com.google.android.exoplayer2.source.n.a aVar, long j11) {
        this.f26014q = aVar;
        this.f25999b.m(this);
        k(j11);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.b
    public boolean f(Uri uri, z.c cVar, boolean z10) {
        boolean zN = true;
        for (p pVar : this.f26017t) {
            zN &= pVar.N(uri, cVar, z10);
        }
        this.f26014q.g(this);
        return zN;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getBufferedPositionUs() {
        return this.f26021x.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getNextLoadPositionUs() {
        return this.f26021x.getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n
    public x getTrackGroups() {
        return (x) com.google.android.exoplayer2.util.a.e(this.f26016s);
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        return this.f26021x.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.n
    public void maybeThrowPrepareError() throws ParserException {
        for (p pVar : this.f26017t) {
            pVar.maybeThrowPrepareError();
        }
    }

    @Override // com.google.android.exoplayer2.source.hls.p.b
    public void onPrepared() {
        int i11 = this.f26015r - 1;
        this.f26015r = i11;
        if (i11 > 0) {
            return;
        }
        int i12 = 0;
        for (p pVar : this.f26017t) {
            i12 += pVar.getTrackGroups().f76165a;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[i12];
        int i13 = 0;
        for (p pVar2 : this.f26017t) {
            int i14 = pVar2.getTrackGroups().f76165a;
            int i15 = 0;
            while (i15 < i14) {
                trackGroupArr[i13] = pVar2.getTrackGroups().b(i15);
                i15++;
                i13++;
            }
        }
        this.f26016s = new x(trackGroupArr);
        this.f26014q.h(this);
    }

    @Override // com.google.android.exoplayer2.source.b0.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void g(p pVar) {
        this.f26014q.g(this);
    }

    public void q() {
        this.f25999b.k(this);
        for (p pVar : this.f26017t) {
            pVar.S();
        }
        this.f26014q = null;
    }

    @Override // com.google.android.exoplayer2.source.n
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public void reevaluateBuffer(long j11) {
        this.f26021x.reevaluateBuffer(j11);
    }

    @Override // com.google.android.exoplayer2.source.n
    public long seekToUs(long j11) {
        p[] pVarArr = this.f26018u;
        if (pVarArr.length > 0) {
            boolean zV = pVarArr[0].V(j11, false);
            int i11 = 1;
            while (true) {
                p[] pVarArr2 = this.f26018u;
                if (i11 >= pVarArr2.length) {
                    break;
                }
                pVarArr2[i11].V(j11, zV);
                i11++;
            }
            if (zV) {
                this.f26008k.b();
            }
        }
        return j11;
    }
}
