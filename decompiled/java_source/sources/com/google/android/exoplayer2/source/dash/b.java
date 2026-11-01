package com.google.android.exoplayer2.source.dash;

import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.b0;
import com.google.android.exoplayer2.source.n;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.trackselection.h;
import com.google.android.exoplayer2.upstream.a0;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.p0;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import e9.u1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import t9.x;
import v9.i;
import x9.f;
import x9.g;
import x9.j;

/* JADX INFO: loaded from: classes3.dex */
final class b implements n, b0.a, i.b {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final Pattern f25815y = Pattern.compile("CC([1-4])=(.+)");

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final Pattern f25816z = Pattern.compile("([1-4])=lang:(\\w+)(,.+)?");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f25817a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.source.dash.a.InterfaceC0369a f25818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k0 f25819c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final u f25820d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final z f25821e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final w9.b f25822f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f25823g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a0 f25824h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f25825i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final x f25826j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final a[] f25827k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final t9.d f25828l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final e f25829m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final p.a f25831o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final s.a f25832p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final u1 f25833q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private n.a f25834r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private b0 f25837u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private x9.c f25838v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f25839w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private List f25840x;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private i[] f25835s = u(0);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private d[] f25836t = new d[0];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final IdentityHashMap f25830n = new IdentityHashMap();

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int[] f25841a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f25842b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f25843c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f25844d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f25845e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f25846f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f25847g;

        private a(int i11, int i12, int[] iArr, int i13, int i14, int i15, int i16) {
            this.f25842b = i11;
            this.f25841a = iArr;
            this.f25843c = i12;
            this.f25845e = i13;
            this.f25846f = i14;
            this.f25847g = i15;
            this.f25844d = i16;
        }

        public static a a(int[] iArr, int i11) {
            return new a(3, 1, iArr, i11, -1, -1, -1);
        }

        public static a b(int[] iArr, int i11) {
            return new a(5, 1, iArr, i11, -1, -1, -1);
        }

        public static a c(int i11) {
            return new a(5, 2, new int[0], -1, -1, -1, i11);
        }

        public static a d(int i11, int[] iArr, int i12, int i13, int i14) {
            return new a(i11, 0, iArr, i12, i13, i14, -1);
        }
    }

    public b(int i11, x9.c cVar, w9.b bVar, int i12, com.google.android.exoplayer2.source.dash.a.InterfaceC0369a interfaceC0369a, k0 k0Var, u uVar, s.a aVar, z zVar, p.a aVar2, long j11, a0 a0Var, com.google.android.exoplayer2.upstream.b bVar2, t9.d dVar, e.b bVar3, u1 u1Var) {
        this.f25817a = i11;
        this.f25838v = cVar;
        this.f25822f = bVar;
        this.f25839w = i12;
        this.f25818b = interfaceC0369a;
        this.f25819c = k0Var;
        this.f25820d = uVar;
        this.f25832p = aVar;
        this.f25821e = zVar;
        this.f25831o = aVar2;
        this.f25823g = j11;
        this.f25824h = a0Var;
        this.f25825i = bVar2;
        this.f25828l = dVar;
        this.f25833q = u1Var;
        this.f25829m = new e(cVar, bVar3, bVar2);
        this.f25837u = dVar.a(this.f25835s);
        g gVarC = cVar.c(i12);
        List list = gVarC.f78099d;
        this.f25840x = list;
        Pair pairK = k(uVar, gVarC.f78098c, list);
        this.f25826j = (x) pairK.first;
        this.f25827k = (a[]) pairK.second;
    }

    private void A(h[] hVarArr, t9.s[] sVarArr, boolean[] zArr, long j11, int[] iArr) {
        for (int i11 = 0; i11 < hVarArr.length; i11++) {
            h hVar = hVarArr[i11];
            if (hVar != null) {
                t9.s sVar = sVarArr[i11];
                if (sVar == null) {
                    zArr[i11] = true;
                    a aVar = this.f25827k[iArr[i11]];
                    int i12 = aVar.f25843c;
                    if (i12 == 0) {
                        sVarArr[i11] = j(aVar, hVar, j11);
                    } else if (i12 == 2) {
                        sVarArr[i11] = new d((f) this.f25840x.get(aVar.f25844d), hVar.getTrackGroup().c(0), this.f25838v.f78064d);
                    }
                } else if (sVar instanceof i) {
                    ((com.google.android.exoplayer2.source.dash.a) ((i) sVar).q()).b(hVar);
                }
            }
        }
        for (int i13 = 0; i13 < hVarArr.length; i13++) {
            if (sVarArr[i13] == null && hVarArr[i13] != null) {
                a aVar2 = this.f25827k[iArr[i13]];
                if (aVar2.f25843c == 1) {
                    int iQ = q(i13, iArr);
                    if (iQ == -1) {
                        sVarArr[i13] = new t9.g();
                    } else {
                        sVarArr[i13] = ((i) sVarArr[iQ]).F(j11, aVar2.f25842b);
                    }
                }
            }
        }
    }

    private static void f(List list, TrackGroup[] trackGroupArr, a[] aVarArr, int i11) {
        int i12 = 0;
        while (i12 < list.size()) {
            f fVar = (f) list.get(i12);
            o1 o1VarE = new o1.b().S(fVar.a()).e0(MimeTypes.APPLICATION_EMSG).E();
            String strA = fVar.a();
            StringBuilder sb2 = new StringBuilder(String.valueOf(strA).length() + 12);
            sb2.append(strA);
            sb2.append(":");
            sb2.append(i12);
            trackGroupArr[i11] = new TrackGroup(sb2.toString(), o1VarE);
            aVarArr[i11] = a.c(i12);
            i12++;
            i11++;
        }
    }

    private static int i(u uVar, List list, int[][] iArr, int i11, boolean[] zArr, o1[][] o1VarArr, TrackGroup[] trackGroupArr, a[] aVarArr) {
        String string;
        int i12;
        int i13;
        int i14;
        int i15 = 0;
        int i16 = 0;
        while (i15 < i11) {
            int[] iArr2 = iArr[i15];
            ArrayList arrayList = new ArrayList();
            for (int i17 : iArr2) {
                arrayList.addAll(((x9.a) list.get(i17)).f78053c);
            }
            int size = arrayList.size();
            o1[] o1VarArr2 = new o1[size];
            for (int i18 = 0; i18 < size; i18++) {
                o1 o1Var = ((j) arrayList.get(i18)).f78111b;
                o1VarArr2[i18] = o1Var.c(uVar.a(o1Var));
            }
            x9.a aVar = (x9.a) list.get(iArr2[0]);
            int i19 = aVar.f78051a;
            if (i19 != -1) {
                string = Integer.toString(i19);
            } else {
                StringBuilder sb2 = new StringBuilder(17);
                sb2.append("unset:");
                sb2.append(i15);
                string = sb2.toString();
            }
            int i20 = i16 + 1;
            if (zArr[i15]) {
                i12 = i16 + 2;
            } else {
                i12 = i20;
                i20 = -1;
            }
            if (o1VarArr[i15].length != 0) {
                i13 = i12 + 1;
            } else {
                i13 = i12;
                i12 = -1;
            }
            trackGroupArr[i16] = new TrackGroup(string, o1VarArr2);
            aVarArr[i16] = a.d(aVar.f78052b, iArr2, i16, i20, i12);
            if (i20 != -1) {
                String strConcat = String.valueOf(string).concat(":emsg");
                trackGroupArr[i20] = new TrackGroup(strConcat, new o1.b().S(strConcat).e0(MimeTypes.APPLICATION_EMSG).E());
                aVarArr[i20] = a.b(iArr2, i16);
                i14 = -1;
            } else {
                i14 = -1;
            }
            if (i12 != i14) {
                trackGroupArr[i12] = new TrackGroup(String.valueOf(string).concat(":cc"), o1VarArr[i15]);
                aVarArr[i12] = a.a(iArr2, i16);
            }
            i15++;
            i16 = i13;
        }
        return i16;
    }

    private i j(a aVar, h hVar, long j11) {
        int i11;
        TrackGroup trackGroupB;
        TrackGroup trackGroupB2;
        int i12;
        int i13 = aVar.f25846f;
        boolean z10 = i13 != -1;
        e.c cVarK = null;
        if (z10) {
            trackGroupB = this.f25826j.b(i13);
            i11 = 1;
        } else {
            i11 = 0;
            trackGroupB = null;
        }
        int i14 = aVar.f25847g;
        boolean z11 = i14 != -1;
        if (z11) {
            trackGroupB2 = this.f25826j.b(i14);
            i11 += trackGroupB2.f25673a;
        } else {
            trackGroupB2 = null;
        }
        o1[] o1VarArr = new o1[i11];
        int[] iArr = new int[i11];
        if (z10) {
            o1VarArr[0] = trackGroupB.c(0);
            iArr[0] = 5;
            i12 = 1;
        } else {
            i12 = 0;
        }
        ArrayList arrayList = new ArrayList();
        if (z11) {
            for (int i15 = 0; i15 < trackGroupB2.f25673a; i15++) {
                o1 o1VarC = trackGroupB2.c(i15);
                o1VarArr[i12] = o1VarC;
                iArr[i12] = 3;
                arrayList.add(o1VarC);
                i12++;
            }
        }
        if (this.f25838v.f78064d && z10) {
            cVarK = this.f25829m.k();
        }
        e.c cVar = cVarK;
        i iVar = new i(aVar.f25842b, iArr, o1VarArr, this.f25818b.a(this.f25824h, this.f25838v, this.f25822f, this.f25839w, aVar.f25841a, hVar, aVar.f25842b, this.f25823g, z10, arrayList, cVar, this.f25819c, this.f25833q), this, this.f25825i, j11, this.f25820d, this.f25832p, this.f25821e, this.f25831o);
        synchronized (this) {
            this.f25830n.put(iVar, cVar);
        }
        return iVar;
    }

    private static Pair k(u uVar, List list, List list2) {
        int[][] iArrP = p(list);
        int length = iArrP.length;
        boolean[] zArr = new boolean[length];
        o1[][] o1VarArr = new o1[length][];
        int iT = t(length, list, iArrP, zArr, o1VarArr) + length + list2.size();
        TrackGroup[] trackGroupArr = new TrackGroup[iT];
        a[] aVarArr = new a[iT];
        f(list2, trackGroupArr, aVarArr, i(uVar, list, iArrP, length, zArr, o1VarArr, trackGroupArr, aVarArr));
        return Pair.create(new x(trackGroupArr), aVarArr);
    }

    private static x9.e l(List list) {
        return m(list, "urn:mpeg:dash:adaptation-set-switching:2016");
    }

    private static x9.e m(List list, String str) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            x9.e eVar = (x9.e) list.get(i11);
            if (str.equals(eVar.f78088a)) {
                return eVar;
            }
        }
        return null;
    }

    private static x9.e n(List list) {
        return m(list, "http://dashif.org/guidelines/trickmode");
    }

    private static o1[] o(List list, int[] iArr) {
        for (int i11 : iArr) {
            x9.a aVar = (x9.a) list.get(i11);
            List list2 = ((x9.a) list.get(i11)).f78054d;
            for (int i12 = 0; i12 < list2.size(); i12++) {
                x9.e eVar = (x9.e) list2.get(i12);
                if ("urn:scte:dash:cc:cea-608:2015".equals(eVar.f78088a)) {
                    o1.b bVarE0 = new o1.b().e0(MimeTypes.APPLICATION_CEA608);
                    int i13 = aVar.f78051a;
                    StringBuilder sb2 = new StringBuilder(18);
                    sb2.append(i13);
                    sb2.append(":cea608");
                    return w(eVar, f25815y, bVarE0.S(sb2.toString()).E());
                }
                if ("urn:scte:dash:cc:cea-708:2015".equals(eVar.f78088a)) {
                    o1.b bVarE1 = new o1.b().e0(MimeTypes.APPLICATION_CEA708);
                    int i14 = aVar.f78051a;
                    StringBuilder sb3 = new StringBuilder(18);
                    sb3.append(i14);
                    sb3.append(":cea708");
                    return w(eVar, f25816z, bVarE1.S(sb3.toString()).E());
                }
            }
        }
        return new o1[0];
    }

    private static int[][] p(List list) {
        int iMin;
        x9.e eVarL;
        int size = list.size();
        SparseIntArray sparseIntArray = new SparseIntArray(size);
        ArrayList arrayList = new ArrayList(size);
        SparseArray sparseArray = new SparseArray(size);
        for (int i11 = 0; i11 < size; i11++) {
            sparseIntArray.put(((x9.a) list.get(i11)).f78051a, i11);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(i11));
            arrayList.add(arrayList2);
            sparseArray.put(i11, arrayList2);
        }
        for (int i12 = 0; i12 < size; i12++) {
            x9.a aVar = (x9.a) list.get(i12);
            x9.e eVarN = n(aVar.f78055e);
            if (eVarN == null) {
                eVarN = n(aVar.f78056f);
            }
            if (eVarN == null || (iMin = sparseIntArray.get(Integer.parseInt(eVarN.f78089b), -1)) == -1) {
                iMin = i12;
            }
            if (iMin == i12 && (eVarL = l(aVar.f78056f)) != null) {
                for (String str : p0.S0(eVarL.f78089b, ",")) {
                    int i13 = sparseIntArray.get(Integer.parseInt(str), -1);
                    if (i13 != -1) {
                        iMin = Math.min(iMin, i13);
                    }
                }
            }
            if (iMin != i12) {
                List list2 = (List) sparseArray.get(i12);
                List list3 = (List) sparseArray.get(iMin);
                list3.addAll(list2);
                sparseArray.put(i12, list3);
                arrayList.remove(list2);
            }
        }
        int size2 = arrayList.size();
        int[][] iArr = new int[size2][];
        for (int i14 = 0; i14 < size2; i14++) {
            int[] iArrO = Ints.o((Collection) arrayList.get(i14));
            iArr[i14] = iArrO;
            Arrays.sort(iArrO);
        }
        return iArr;
    }

    private int q(int i11, int[] iArr) {
        int i12 = iArr[i11];
        if (i12 == -1) {
            return -1;
        }
        int i13 = this.f25827k[i12].f25845e;
        for (int i14 = 0; i14 < iArr.length; i14++) {
            int i15 = iArr[i14];
            if (i15 == i13 && this.f25827k[i15].f25843c == 0) {
                return i14;
            }
        }
        return -1;
    }

    private int[] r(h[] hVarArr) {
        int[] iArr = new int[hVarArr.length];
        for (int i11 = 0; i11 < hVarArr.length; i11++) {
            h hVar = hVarArr[i11];
            if (hVar != null) {
                iArr[i11] = this.f25826j.c(hVar.getTrackGroup());
            } else {
                iArr[i11] = -1;
            }
        }
        return iArr;
    }

    private static boolean s(List list, int[] iArr) {
        for (int i11 : iArr) {
            List list2 = ((x9.a) list.get(i11)).f78053c;
            for (int i12 = 0; i12 < list2.size(); i12++) {
                if (!((j) list2.get(i12)).f78114e.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    private static int t(int i11, List list, int[][] iArr, boolean[] zArr, o1[][] o1VarArr) {
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            if (s(list, iArr[i13])) {
                zArr[i13] = true;
                i12++;
            }
            o1[] o1VarArrO = o(list, iArr[i13]);
            o1VarArr[i13] = o1VarArrO;
            if (o1VarArrO.length != 0) {
                i12++;
            }
        }
        return i12;
    }

    private static i[] u(int i11) {
        return new i[i11];
    }

    private static o1[] w(x9.e eVar, Pattern pattern, o1 o1Var) {
        String str = eVar.f78089b;
        if (str == null) {
            return new o1[]{o1Var};
        }
        String[] strArrS0 = p0.S0(str, ";");
        o1[] o1VarArr = new o1[strArrS0.length];
        for (int i11 = 0; i11 < strArrS0.length; i11++) {
            Matcher matcher = pattern.matcher(strArrS0[i11]);
            if (!matcher.matches()) {
                return new o1[]{o1Var};
            }
            int i12 = Integer.parseInt(matcher.group(1));
            o1.b bVarB = o1Var.b();
            String str2 = o1Var.f25485a;
            StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 12);
            sb2.append(str2);
            sb2.append(":");
            sb2.append(i12);
            o1VarArr[i11] = bVarB.S(sb2.toString()).F(i12).V(matcher.group(2)).E();
        }
        return o1VarArr;
    }

    private void y(h[] hVarArr, boolean[] zArr, t9.s[] sVarArr) {
        for (int i11 = 0; i11 < hVarArr.length; i11++) {
            if (hVarArr[i11] == null || !zArr[i11]) {
                t9.s sVar = sVarArr[i11];
                if (sVar instanceof i) {
                    ((i) sVar).C(this);
                } else if (sVar instanceof i.a) {
                    ((i.a) sVar).b();
                }
                sVarArr[i11] = null;
            }
        }
    }

    private void z(h[] hVarArr, t9.s[] sVarArr, int[] iArr) {
        boolean z10;
        for (int i11 = 0; i11 < hVarArr.length; i11++) {
            t9.s sVar = sVarArr[i11];
            if ((sVar instanceof t9.g) || (sVar instanceof i.a)) {
                int iQ = q(i11, iArr);
                if (iQ == -1) {
                    z10 = sVarArr[i11] instanceof t9.g;
                } else {
                    t9.s sVar2 = sVarArr[i11];
                    z10 = (sVar2 instanceof i.a) && ((i.a) sVar2).f77166a == sVarArr[iQ];
                }
                if (!z10) {
                    t9.s sVar3 = sVarArr[i11];
                    if (sVar3 instanceof i.a) {
                        ((i.a) sVar3).b();
                    }
                    sVarArr[i11] = null;
                }
            }
        }
    }

    public void B(x9.c cVar, int i11) {
        this.f25838v = cVar;
        this.f25839w = i11;
        this.f25829m.q(cVar);
        i[] iVarArr = this.f25835s;
        if (iVarArr != null) {
            for (i iVar : iVarArr) {
                ((com.google.android.exoplayer2.source.dash.a) iVar.q()).e(cVar, i11);
            }
            this.f25834r.g(this);
        }
        this.f25840x = cVar.c(i11).f78099d;
        for (d dVar : this.f25836t) {
            for (f fVar : this.f25840x) {
                if (fVar.a().equals(dVar.a())) {
                    dVar.d(fVar, cVar.f78064d && i11 == cVar.d() - 1);
                    break;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public long a(long j11, c3 c3Var) {
        for (i iVar : this.f25835s) {
            if (iVar.f77143a == 2) {
                return iVar.a(j11, c3Var);
            }
        }
        return j11;
    }

    @Override // com.google.android.exoplayer2.source.n
    public long b(h[] hVarArr, boolean[] zArr, t9.s[] sVarArr, boolean[] zArr2, long j11) {
        int[] iArrR = r(hVarArr);
        y(hVarArr, zArr, sVarArr);
        z(hVarArr, sVarArr, iArrR);
        A(hVarArr, sVarArr, zArr2, j11, iArrR);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (t9.s sVar : sVarArr) {
            if (sVar instanceof i) {
                arrayList.add((i) sVar);
            } else if (sVar instanceof d) {
                arrayList2.add((d) sVar);
            }
        }
        i[] iVarArrU = u(arrayList.size());
        this.f25835s = iVarArrU;
        arrayList.toArray(iVarArrU);
        d[] dVarArr = new d[arrayList2.size()];
        this.f25836t = dVarArr;
        arrayList2.toArray(dVarArr);
        this.f25837u = this.f25828l.a(this.f25835s);
        return j11;
    }

    @Override // v9.i.b
    public synchronized void c(i iVar) {
        e.c cVar = (e.c) this.f25830n.remove(iVar);
        if (cVar != null) {
            cVar.n();
        }
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j11) {
        return this.f25837u.continueLoading(j11);
    }

    @Override // com.google.android.exoplayer2.source.n
    public void discardBuffer(long j11, boolean z10) {
        for (i iVar : this.f25835s) {
            iVar.discardBuffer(j11, z10);
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public void e(n.a aVar, long j11) {
        this.f25834r = aVar;
        aVar.h(this);
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getBufferedPositionUs() {
        return this.f25837u.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getNextLoadPositionUs() {
        return this.f25837u.getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n
    public x getTrackGroups() {
        return this.f25826j;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        return this.f25837u.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.n
    public void maybeThrowPrepareError() {
        this.f25824h.maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.source.n
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public void reevaluateBuffer(long j11) {
        this.f25837u.reevaluateBuffer(j11);
    }

    @Override // com.google.android.exoplayer2.source.n
    public long seekToUs(long j11) {
        for (i iVar : this.f25835s) {
            iVar.E(j11);
        }
        for (d dVar : this.f25836t) {
            dVar.b(j11);
        }
        return j11;
    }

    @Override // com.google.android.exoplayer2.source.b0.a
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public void g(i iVar) {
        this.f25834r.g(this);
    }

    public void x() {
        this.f25829m.o();
        for (i iVar : this.f25835s) {
            iVar.C(this);
        }
        this.f25834r = null;
    }
}
