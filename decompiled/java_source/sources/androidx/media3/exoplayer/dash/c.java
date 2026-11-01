package androidx.media3.exoplayer.dash;

import a2.g;
import a2.j;
import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.drm.r;
import androidx.media3.exoplayer.drm.t;
import androidx.media3.exoplayer.source.f0;
import androidx.media3.exoplayer.source.q;
import androidx.media3.exoplayer.source.s;
import androidx.media3.exoplayer.upstream.m;
import androidx.media3.exoplayer.upstream.p;
import androidx.media3.exoplayer.v2;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g2.u;
import g2.z;
import h2.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import w1.n;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
final class c implements q, f0.a, h.b {
    private static final Pattern A = Pattern.compile("CC([1-4])=(.+)");
    private static final Pattern B = Pattern.compile("([1-4])=lang:(\\w+)(,.+)?");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f11401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.exoplayer.dash.a.InterfaceC0095a f11402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n f11403c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final t f11404d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final m f11405e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final z1.b f11406f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f11407g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final p f11408h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.b f11409i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final z f11410j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final a[] f11411k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final g2.e f11412l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final f f11413m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final s.a f11415o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final r.a f11416p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final f4 f11417q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private q.a f11418r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private f0 f11421u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private a2.c f11422v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f11423w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private List f11424x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f11426z;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f11425y = true;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private h[] f11419s = z(0);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private e[] f11420t = new e[0];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final IdentityHashMap f11414n = new IdentityHashMap();

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int[] f11427a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f11428b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f11429c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f11430d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f11431e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f11432f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f11433g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ImmutableList f11434h;

        private a(int i11, int i12, int[] iArr, int i13, int i14, int i15, int i16, ImmutableList immutableList) {
            this.f11428b = i11;
            this.f11427a = iArr;
            this.f11429c = i12;
            this.f11431e = i13;
            this.f11432f = i14;
            this.f11433g = i15;
            this.f11430d = i16;
            this.f11434h = immutableList;
        }

        public static a a(int[] iArr, int i11, ImmutableList immutableList) {
            return new a(3, 1, iArr, i11, -1, -1, -1, immutableList);
        }

        public static a b(int[] iArr, int i11) {
            return new a(5, 1, iArr, i11, -1, -1, -1, ImmutableList.of());
        }

        public static a c(int i11) {
            return new a(5, 2, new int[0], -1, -1, -1, i11, ImmutableList.of());
        }

        public static a d(int i11, int[] iArr, int i12, int i13, int i14) {
            return new a(i11, 0, iArr, i12, i13, i14, -1, ImmutableList.of());
        }
    }

    public c(int i11, a2.c cVar, z1.b bVar, int i12, androidx.media3.exoplayer.dash.a.InterfaceC0095a interfaceC0095a, n nVar, androidx.media3.exoplayer.upstream.f fVar, t tVar, r.a aVar, m mVar, s.a aVar2, long j11, p pVar, androidx.media3.exoplayer.upstream.b bVar2, g2.e eVar, f.b bVar3, f4 f4Var) {
        this.f11401a = i11;
        this.f11422v = cVar;
        this.f11406f = bVar;
        this.f11423w = i12;
        this.f11402b = interfaceC0095a;
        this.f11403c = nVar;
        this.f11404d = tVar;
        this.f11416p = aVar;
        this.f11405e = mVar;
        this.f11415o = aVar2;
        this.f11407g = j11;
        this.f11408h = pVar;
        this.f11409i = bVar2;
        this.f11412l = eVar;
        this.f11417q = f4Var;
        this.f11413m = new f(cVar, bVar3, bVar2);
        this.f11421u = eVar.b();
        g gVarC = cVar.c(i12);
        List list = gVarC.f84d;
        this.f11424x = list;
        Pair pairM = m(tVar, interfaceC0095a, gVarC.f83c, list);
        this.f11410j = (z) pairM.first;
        this.f11411k = (a[]) pairM.second;
    }

    private static androidx.media3.common.r[] B(a2.e eVar, Pattern pattern, androidx.media3.common.r rVar) {
        String str = eVar.f74b;
        if (str == null) {
            return new androidx.media3.common.r[]{rVar};
        }
        String[] strArrO1 = a1.o1(str, ";");
        androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[strArrO1.length];
        for (int i11 = 0; i11 < strArrO1.length; i11++) {
            Matcher matcher = pattern.matcher(strArrO1[i11]);
            if (!matcher.matches()) {
                return new androidx.media3.common.r[]{rVar};
            }
            int i12 = Integer.parseInt(matcher.group(1));
            rVarArr[i11] = rVar.b().f0(rVar.f10147a + ":" + i12).O(i12).j0(matcher.group(2)).N();
        }
        return rVarArr;
    }

    private void D(j2.z[] zVarArr, boolean[] zArr, u[] uVarArr) {
        for (int i11 = 0; i11 < zVarArr.length; i11++) {
            if (zVarArr[i11] == null || !zArr[i11]) {
                u uVar = uVarArr[i11];
                if (uVar instanceof h) {
                    ((h) uVar).G(this);
                } else if (uVar instanceof h.a) {
                    ((h.a) uVar).b();
                }
                uVarArr[i11] = null;
            }
        }
    }

    private void E(j2.z[] zVarArr, u[] uVarArr, int[] iArr) {
        boolean z10;
        for (int i11 = 0; i11 < zVarArr.length; i11++) {
            u uVar = uVarArr[i11];
            if ((uVar instanceof g2.h) || (uVar instanceof h.a)) {
                int iT = t(i11, iArr);
                if (iT == -1) {
                    z10 = uVarArr[i11] instanceof g2.h;
                } else {
                    u uVar2 = uVarArr[i11];
                    z10 = (uVar2 instanceof h.a) && ((h.a) uVar2).f64332a == uVarArr[iT];
                }
                if (!z10) {
                    u uVar3 = uVarArr[i11];
                    if (uVar3 instanceof h.a) {
                        ((h.a) uVar3).b();
                    }
                    uVarArr[i11] = null;
                }
            }
        }
    }

    private void F(j2.z[] zVarArr, u[] uVarArr, boolean[] zArr, long j11, int[] iArr) {
        for (int i11 = 0; i11 < zVarArr.length; i11++) {
            j2.z zVar = zVarArr[i11];
            if (zVar != null) {
                u uVar = uVarArr[i11];
                if (uVar == null) {
                    zArr[i11] = true;
                    a aVar = this.f11411k[iArr[i11]];
                    int i12 = aVar.f11429c;
                    if (i12 == 0) {
                        uVarArr[i11] = l(aVar, zVar, j11);
                    } else if (i12 == 2) {
                        uVarArr[i11] = new e((a2.f) this.f11424x.get(aVar.f11430d), zVar.getTrackGroup().a(0), this.f11422v.f48d);
                    }
                } else if (uVar instanceof h) {
                    ((androidx.media3.exoplayer.dash.a) ((h) uVar).u()).e(zVar);
                }
            }
        }
        for (int i13 = 0; i13 < zVarArr.length; i13++) {
            if (uVarArr[i13] == null && zVarArr[i13] != null) {
                a aVar2 = this.f11411k[iArr[i13]];
                if (aVar2.f11429c == 1) {
                    int iT = t(i13, iArr);
                    if (iT == -1) {
                        uVarArr[i13] = new g2.h();
                    } else {
                        uVarArr[i13] = ((h) uVarArr[iT]).J(j11, aVar2.f11428b);
                    }
                }
            }
        }
    }

    private static void j(List list, androidx.media3.common.f0[] f0VarArr, a[] aVarArr, int i11) {
        int i12 = 0;
        while (i12 < list.size()) {
            a2.f fVar = (a2.f) list.get(i12);
            f0VarArr[i11] = new androidx.media3.common.f0(fVar.a() + ":" + i12, new androidx.media3.common.r.b().f0(fVar.a()).u0(MimeTypes.APPLICATION_EMSG).N());
            aVarArr[i11] = a.c(i12);
            i12++;
            i11++;
        }
    }

    private static int k(t tVar, androidx.media3.exoplayer.dash.a.InterfaceC0095a interfaceC0095a, List list, int[][] iArr, int i11, boolean[] zArr, androidx.media3.common.r[][] rVarArr, androidx.media3.common.f0[] f0VarArr, a[] aVarArr) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i17 < i11) {
            int[] iArr2 = iArr[i17];
            ArrayList arrayList = new ArrayList();
            int length = iArr2.length;
            for (int i19 = i16; i19 < length; i19++) {
                arrayList.addAll(((a2.a) list.get(iArr2[i19])).f37c);
            }
            int size = arrayList.size();
            androidx.media3.common.r[] rVarArr2 = new androidx.media3.common.r[size];
            for (int i20 = i16; i20 < size; i20++) {
                androidx.media3.common.r rVar = ((j) arrayList.get(i20)).f96b;
                rVarArr2[i20] = rVar.b().V(tVar.b(rVar)).N();
            }
            a2.a aVar = (a2.a) list.get(iArr2[i16]);
            long j11 = aVar.f35a;
            String string = j11 != -1 ? Long.toString(j11) : "unset:" + i17;
            int i21 = i18 + 1;
            if (zArr[i17]) {
                i12 = i18 + 2;
            } else {
                i12 = i21;
                i21 = -1;
            }
            if (rVarArr[i17].length != 0) {
                i13 = i12 + 1;
            } else {
                i13 = i12;
                i12 = -1;
            }
            y(interfaceC0095a, rVarArr2);
            f0VarArr[i18] = new androidx.media3.common.f0(string, rVarArr2);
            aVarArr[i18] = a.d(aVar.f36b, iArr2, i18, i21, i12);
            if (i21 != -1) {
                String str = string + ":emsg";
                i14 = 0;
                f0VarArr[i21] = new androidx.media3.common.f0(str, new androidx.media3.common.r.b().f0(str).u0(MimeTypes.APPLICATION_EMSG).N());
                aVarArr[i21] = a.b(iArr2, i18);
                i15 = -1;
            } else {
                i14 = 0;
                i15 = -1;
            }
            if (i12 != i15) {
                aVarArr[i12] = a.a(iArr2, i18, ImmutableList.copyOf(rVarArr[i17]));
                y(interfaceC0095a, rVarArr[i17]);
                f0VarArr[i12] = new androidx.media3.common.f0(string + ":cc", rVarArr[i17]);
            }
            i17++;
            i18 = i13;
            i16 = i14;
        }
        return i18;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private h l(a aVar, j2.z zVar, long j11) {
        int i11;
        androidx.media3.common.f0 f0VarB;
        int i12;
        int i13 = aVar.f11432f;
        boolean z10 = i13 != -1;
        f.c cVarK = null;
        if (z10) {
            f0VarB = this.f11410j.b(i13);
            i11 = 1;
        } else {
            i11 = 0;
            f0VarB = null;
        }
        int i14 = aVar.f11433g;
        ImmutableList immutableListOf = i14 != -1 ? this.f11411k[i14].f11434h : ImmutableList.of();
        int size = i11 + immutableListOf.size();
        androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[size];
        int[] iArr = new int[size];
        if (z10) {
            rVarArr[0] = f0VarB.a(0);
            iArr[0] = 5;
            i12 = 1;
        } else {
            i12 = 0;
        }
        ArrayList arrayList = new ArrayList();
        for (int i15 = 0; i15 < immutableListOf.size(); i15++) {
            androidx.media3.common.r rVar = (androidx.media3.common.r) immutableListOf.get(i15);
            rVarArr[i12] = rVar;
            iArr[i12] = 3;
            arrayList.add(rVar);
            i12++;
        }
        if (this.f11422v.f48d && z10) {
            cVarK = this.f11413m.k();
        }
        f.c cVar = cVarK;
        h hVar = new h(aVar.f11428b, iArr, rVarArr, this.f11402b.e(this.f11408h, this.f11422v, this.f11406f, this.f11423w, aVar.f11427a, zVar, aVar.f11428b, this.f11407g, z10, arrayList, cVar, this.f11403c, this.f11417q, null), this, this.f11409i, j11, this.f11404d, this.f11416p, this.f11405e, this.f11415o, this.f11425y, null);
        synchronized (this) {
            this.f11414n.put(hVar, cVar);
        }
        return hVar;
    }

    private static Pair m(t tVar, androidx.media3.exoplayer.dash.a.InterfaceC0095a interfaceC0095a, List list, List list2) {
        int[][] iArrS = s(list);
        int length = iArrS.length;
        boolean[] zArr = new boolean[length];
        androidx.media3.common.r[][] rVarArr = new androidx.media3.common.r[length][];
        int iW = w(length, list, iArrS, zArr, rVarArr) + length + list2.size();
        androidx.media3.common.f0[] f0VarArr = new androidx.media3.common.f0[iW];
        a[] aVarArr = new a[iW];
        j(list2, f0VarArr, aVarArr, k(tVar, interfaceC0095a, list, iArrS, length, zArr, rVarArr, f0VarArr, aVarArr));
        return Pair.create(new z(f0VarArr), aVarArr);
    }

    private static boolean n(a2.a aVar, a2.a aVar2) {
        if (aVar.f36b != aVar2.f36b) {
            return false;
        }
        if (aVar.f37c.isEmpty() || aVar2.f37c.isEmpty()) {
            return true;
        }
        androidx.media3.common.r rVar = ((j) aVar.f37c.get(0)).f96b;
        androidx.media3.common.r rVar2 = ((j) aVar2.f37c.get(0)).f96b;
        return Objects.equals(rVar.f10150d, rVar2.f10150d) && rVar.f10152f == rVar2.f10152f;
    }

    private static a2.e o(List list) {
        return p(list, "urn:mpeg:dash:adaptation-set-switching:2016");
    }

    private static a2.e p(List list, String str) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            a2.e eVar = (a2.e) list.get(i11);
            if (str.equals(eVar.f73a)) {
                return eVar;
            }
        }
        return null;
    }

    private static a2.e q(List list) {
        return p(list, "http://dashif.org/guidelines/trickmode");
    }

    private static androidx.media3.common.r[] r(List list, int[] iArr) {
        for (int i11 : iArr) {
            a2.a aVar = (a2.a) list.get(i11);
            List list2 = ((a2.a) list.get(i11)).f38d;
            for (int i12 = 0; i12 < list2.size(); i12++) {
                a2.e eVar = (a2.e) list2.get(i12);
                if ("urn:scte:dash:cc:cea-608:2015".equals(eVar.f73a)) {
                    return B(eVar, A, new androidx.media3.common.r.b().u0(MimeTypes.APPLICATION_CEA608).f0(aVar.f35a + ":cea608").N());
                }
                if ("urn:scte:dash:cc:cea-708:2015".equals(eVar.f73a)) {
                    return B(eVar, B, new androidx.media3.common.r.b().u0(MimeTypes.APPLICATION_CEA708).f0(aVar.f35a + ":cea708").N());
                }
            }
        }
        return new androidx.media3.common.r[0];
    }

    private static int[][] s(List list) {
        a2.e eVarO;
        Integer num;
        int size = list.size();
        HashMap mapP = Maps.p(size);
        ArrayList arrayList = new ArrayList(size);
        SparseArray sparseArray = new SparseArray(size);
        for (int i11 = 0; i11 < size; i11++) {
            mapP.put(Long.valueOf(((a2.a) list.get(i11)).f35a), Integer.valueOf(i11));
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(i11));
            arrayList.add(arrayList2);
            sparseArray.put(i11, arrayList2);
        }
        for (int i12 = 0; i12 < size; i12++) {
            a2.a aVar = (a2.a) list.get(i12);
            a2.e eVarQ = q(aVar.f39e);
            if (eVarQ == null) {
                eVarQ = q(aVar.f40f);
            }
            int iIntValue = (eVarQ == null || (num = (Integer) mapP.get(Long.valueOf(Long.parseLong(eVarQ.f74b)))) == null) ? i12 : num.intValue();
            if (iIntValue == i12 && (eVarO = o(aVar.f40f)) != null) {
                for (String str : a1.o1(eVarO.f74b, ",")) {
                    Integer num2 = (Integer) mapP.get(Long.valueOf(Long.parseLong(str)));
                    if (num2 != null && n(aVar, (a2.a) list.get(num2.intValue()))) {
                        iIntValue = Math.min(iIntValue, num2.intValue());
                    }
                }
            }
            if (iIntValue != i12) {
                List list2 = (List) sparseArray.get(i12);
                List list3 = (List) sparseArray.get(iIntValue);
                list3.addAll(list2);
                sparseArray.put(i12, list3);
                arrayList.remove(list2);
            }
        }
        int size2 = arrayList.size();
        int[][] iArr = new int[size2][];
        for (int i13 = 0; i13 < size2; i13++) {
            int[] iArrO = Ints.o((Collection) arrayList.get(i13));
            iArr[i13] = iArrO;
            Arrays.sort(iArrO);
        }
        return iArr;
    }

    private int t(int i11, int[] iArr) {
        int i12 = iArr[i11];
        if (i12 == -1) {
            return -1;
        }
        int i13 = this.f11411k[i12].f11431e;
        for (int i14 = 0; i14 < iArr.length; i14++) {
            int i15 = iArr[i14];
            if (i15 == i13 && this.f11411k[i15].f11429c == 0) {
                return i14;
            }
        }
        return -1;
    }

    private int[] u(j2.z[] zVarArr) {
        int[] iArr = new int[zVarArr.length];
        for (int i11 = 0; i11 < zVarArr.length; i11++) {
            j2.z zVar = zVarArr[i11];
            if (zVar != null) {
                iArr[i11] = this.f11410j.d(zVar.getTrackGroup());
            } else {
                iArr[i11] = -1;
            }
        }
        return iArr;
    }

    private static boolean v(List list, int[] iArr) {
        for (int i11 : iArr) {
            List list2 = ((a2.a) list.get(i11)).f37c;
            for (int i12 = 0; i12 < list2.size(); i12++) {
                if (!((j) list2.get(i12)).f99e.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    private static int w(int i11, List list, int[][] iArr, boolean[] zArr, androidx.media3.common.r[][] rVarArr) {
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            if (v(list, iArr[i13])) {
                zArr[i13] = true;
                i12++;
            }
            androidx.media3.common.r[] rVarArrR = r(list, iArr[i13]);
            rVarArr[i13] = rVarArrR;
            if (rVarArrR.length != 0) {
                i12++;
            }
        }
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List x(h hVar) {
        return ImmutableList.of(Integer.valueOf(hVar.f64307a));
    }

    private static void y(androidx.media3.exoplayer.dash.a.InterfaceC0095a interfaceC0095a, androidx.media3.common.r[] rVarArr) {
        for (int i11 = 0; i11 < rVarArr.length; i11++) {
            rVarArr[i11] = interfaceC0095a.d(rVarArr[i11]);
        }
    }

    private static h[] z(int i11) {
        return new h[i11];
    }

    @Override // androidx.media3.exoplayer.source.f0.a
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void f(h hVar) {
        this.f11418r.f(this);
    }

    public void C() {
        this.f11413m.o();
        for (h hVar : this.f11419s) {
            hVar.G(this);
        }
        this.f11418r = null;
    }

    public void G(a2.c cVar, int i11) {
        this.f11422v = cVar;
        this.f11423w = i11;
        this.f11413m.q(cVar);
        h[] hVarArr = this.f11419s;
        if (hVarArr != null) {
            for (h hVar : hVarArr) {
                ((androidx.media3.exoplayer.dash.a) hVar.u()).g(cVar, i11);
            }
            this.f11418r.f(this);
        }
        this.f11424x = cVar.c(i11).f84d;
        for (e eVar : this.f11420t) {
            for (a2.f fVar : this.f11424x) {
                if (fVar.a().equals(eVar.a())) {
                    eVar.d(fVar, cVar.f48d && i11 == cVar.d() - 1);
                    break;
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean a(v2 v2Var) {
        return this.f11421u.a(v2Var);
    }

    @Override // androidx.media3.exoplayer.source.q
    public long b(long j11, c4 c4Var) {
        for (h hVar : this.f11419s) {
            if (hVar.f64307a == 2) {
                return hVar.b(j11, c4Var);
            }
        }
        return j11;
    }

    @Override // androidx.media3.exoplayer.source.q
    public void discardBuffer(long j11, boolean z10) {
        for (h hVar : this.f11419s) {
            hVar.discardBuffer(j11, z10);
        }
    }

    @Override // androidx.media3.exoplayer.source.q
    public long e(j2.z[] zVarArr, boolean[] zArr, u[] uVarArr, boolean[] zArr2, long j11) {
        int[] iArrU = u(zVarArr);
        D(zVarArr, zArr, uVarArr);
        E(zVarArr, uVarArr, iArrU);
        F(zVarArr, uVarArr, zArr2, j11, iArrU);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (u uVar : uVarArr) {
            if (uVar instanceof h) {
                arrayList.add((h) uVar);
            } else if (uVar instanceof e) {
                arrayList2.add((e) uVar);
            }
        }
        h[] hVarArrZ = z(arrayList.size());
        this.f11419s = hVarArrZ;
        arrayList.toArray(hVarArrZ);
        e[] eVarArr = new e[arrayList2.size()];
        this.f11420t = eVarArr;
        arrayList2.toArray(eVarArr);
        this.f11421u = this.f11412l.a(arrayList, Lists.o(arrayList, new com.google.common.base.f() { // from class: androidx.media3.exoplayer.dash.b
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return c.x((h) obj);
            }
        }));
        if (this.f11425y) {
            this.f11425y = false;
            this.f11426z = j11;
        }
        return j11;
    }

    @Override // androidx.media3.exoplayer.source.q
    public void g(q.a aVar, long j11) {
        this.f11418r = aVar;
        aVar.c(this);
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getBufferedPositionUs() {
        return this.f11421u.getBufferedPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getNextLoadPositionUs() {
        return this.f11421u.getNextLoadPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.q
    public z getTrackGroups() {
        return this.f11410j;
    }

    @Override // h2.h.b
    public synchronized void h(h hVar) {
        f.c cVar = (f.c) this.f11414n.remove(hVar);
        if (cVar != null) {
            cVar.o();
        }
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean isLoading() {
        return this.f11421u.isLoading();
    }

    @Override // androidx.media3.exoplayer.source.q
    public void maybeThrowPrepareError() {
        this.f11408h.maybeThrowError();
    }

    @Override // androidx.media3.exoplayer.source.q
    public long readDiscontinuity() {
        for (h hVar : this.f11419s) {
            if (hVar.m()) {
                return this.f11426z;
            }
        }
        return C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public void reevaluateBuffer(long j11) {
        for (h hVar : this.f11419s) {
            if (!hVar.isLoading()) {
                hVar.t(this.f11422v.f(this.f11423w));
            }
        }
        this.f11421u.reevaluateBuffer(j11);
    }

    @Override // androidx.media3.exoplayer.source.q
    public long seekToUs(long j11) {
        for (h hVar : this.f11419s) {
            hVar.I(j11);
        }
        for (e eVar : this.f11420t) {
            eVar.b(j11);
        }
        return j11;
    }
}
