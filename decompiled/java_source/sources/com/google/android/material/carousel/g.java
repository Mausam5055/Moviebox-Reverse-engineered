package com.google.android.material.carousel;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f28636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f28637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f28638c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float[] f28639d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float[] f28640e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f28641f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f28642g;

    private g(f fVar, List list, List list2) {
        this.f28636a = fVar;
        this.f28637b = Collections.unmodifiableList(list);
        this.f28638c = Collections.unmodifiableList(list2);
        float f11 = ((f) list.get(list.size() - 1)).c().f28628a - fVar.c().f28628a;
        this.f28641f = f11;
        float f12 = fVar.j().f28628a - ((f) list2.get(list2.size() - 1)).j().f28628a;
        this.f28642g = f12;
        this.f28639d = m(f11, list, true);
        this.f28640e = m(f12, list2, false);
    }

    private f a(List list, float f11, float[] fArr) {
        float[] fArrO = o(list, f11, fArr);
        return fArrO[0] >= 0.5f ? (f) list.get((int) fArrO[2]) : (f) list.get((int) fArrO[1]);
    }

    private static int b(f fVar, float f11) {
        for (int i11 = fVar.i(); i11 < fVar.g().size(); i11++) {
            if (f11 == ((f.c) fVar.g().get(i11)).f28630c) {
                return i11;
            }
        }
        return fVar.g().size() - 1;
    }

    private static int c(f fVar) {
        for (int i11 = 0; i11 < fVar.g().size(); i11++) {
            if (!((f.c) fVar.g().get(i11)).f28632e) {
                return i11;
            }
        }
        return -1;
    }

    private static int d(f fVar, float f11) {
        for (int iB = fVar.b() - 1; iB >= 0; iB--) {
            if (f11 == ((f.c) fVar.g().get(iB)).f28630c) {
                return iB;
            }
        }
        return 0;
    }

    private static int e(f fVar) {
        for (int size = fVar.g().size() - 1; size >= 0; size--) {
            if (!((f.c) fVar.g().get(size)).f28632e) {
                return size;
            }
        }
        return -1;
    }

    static g f(b bVar, f fVar, float f11, float f12, float f13) {
        return new g(fVar, p(bVar, fVar, f11, f12), n(bVar, fVar, f11, f13));
    }

    private static float[] m(float f11, List list, boolean z10) {
        int size = list.size();
        float[] fArr = new float[size];
        int i11 = 1;
        while (i11 < size) {
            int i12 = i11 - 1;
            f fVar = (f) list.get(i12);
            f fVar2 = (f) list.get(i11);
            fArr[i11] = i11 == size + (-1) ? 1.0f : fArr[i12] + ((z10 ? fVar2.c().f28628a - fVar.c().f28628a : fVar.j().f28628a - fVar2.j().f28628a) / f11);
            i11++;
        }
        return fArr;
    }

    private static List n(b bVar, f fVar, float f11, float f12) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(fVar);
        int iE = e(fVar);
        float fA = bVar.d() ? bVar.a() : bVar.b();
        if (r(bVar, fVar) || iE == -1) {
            if (f12 > 0.0f) {
                arrayList.add(u(fVar, f12, fA, false, f11));
            }
            return arrayList;
        }
        int i11 = iE - fVar.i();
        float f13 = fVar.c().f28629b - (fVar.c().f28631d / 2.0f);
        if (i11 <= 0 && fVar.h().f28633f > 0.0f) {
            arrayList.add(v(fVar, f13 - fVar.h().f28633f, fA));
            return arrayList;
        }
        float f14 = 0.0f;
        int i12 = 0;
        while (i12 < i11) {
            f fVar2 = (f) arrayList.get(arrayList.size() - 1);
            int i13 = iE - i12;
            float f15 = f14 + ((f.c) fVar.g().get(i13)).f28633f;
            int i14 = i13 + 1;
            int i15 = i12;
            f fVarT = t(fVar2, iE, i14 < fVar.g().size() ? d(fVar2, ((f.c) fVar.g().get(i14)).f28630c) + 1 : 0, f13 - f15, fVar.b() + i12 + 1, fVar.i() + i12 + 1, fA);
            if (i15 == i11 - 1 && f12 > 0.0f) {
                fVarT = u(fVarT, f12, fA, false, f11);
            }
            arrayList.add(fVarT);
            i12 = i15 + 1;
            f14 = f15;
        }
        return arrayList;
    }

    private static float[] o(List list, float f11, float[] fArr) {
        int size = list.size();
        float f12 = fArr[0];
        int i11 = 1;
        while (i11 < size) {
            float f13 = fArr[i11];
            if (f11 <= f13) {
                return new float[]{oa.a.b(0.0f, 1.0f, f12, f13, f11), i11 - 1, i11};
            }
            i11++;
            f12 = f13;
        }
        return new float[]{0.0f, 0.0f, 0.0f};
    }

    private static List p(b bVar, f fVar, float f11, float f12) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(fVar);
        int iC = c(fVar);
        float fA = bVar.d() ? bVar.a() : bVar.b();
        int i11 = 1;
        if (q(fVar) || iC == -1) {
            if (f12 > 0.0f) {
                arrayList.add(u(fVar, f12, fA, true, f11));
            }
            return arrayList;
        }
        int iB = fVar.b() - iC;
        float f13 = fVar.c().f28629b - (fVar.c().f28631d / 2.0f);
        if (iB <= 0 && fVar.a().f28633f > 0.0f) {
            arrayList.add(v(fVar, f13 + fVar.a().f28633f, fA));
            return arrayList;
        }
        int i12 = 0;
        float f14 = 0.0f;
        while (i12 < iB) {
            f fVar2 = (f) arrayList.get(arrayList.size() - i11);
            int i13 = iC + i12;
            int size = fVar.g().size() - i11;
            float f15 = f14 + ((f.c) fVar.g().get(i13)).f28633f;
            int i14 = i13 - i11;
            int iB2 = i14 >= 0 ? b(fVar2, ((f.c) fVar.g().get(i14)).f28630c) - i11 : size;
            int i15 = i12;
            f fVarT = t(fVar2, iC, iB2, f13 + f15, (fVar.b() - i12) - 1, (fVar.i() - i12) - 1, fA);
            if (i15 == iB - 1 && f12 > 0.0f) {
                fVarT = u(fVarT, f12, fA, true, f11);
            }
            arrayList.add(fVarT);
            i12 = i15 + 1;
            f14 = f15;
            i11 = 1;
        }
        return arrayList;
    }

    private static boolean q(f fVar) {
        return fVar.a().f28629b - (fVar.a().f28631d / 2.0f) >= 0.0f && fVar.a() == fVar.d();
    }

    private static boolean r(b bVar, f fVar) {
        int iB = bVar.b();
        if (bVar.d()) {
            iB = bVar.a();
        }
        return fVar.h().f28629b + (fVar.h().f28631d / 2.0f) <= ((float) iB) && fVar.h() == fVar.k();
    }

    private static f s(List list, float f11, float[] fArr) {
        float[] fArrO = o(list, f11, fArr);
        return f.m((f) list.get((int) fArrO[1]), (f) list.get((int) fArrO[2]), fArrO[0]);
    }

    private static f t(f fVar, int i11, int i12, float f11, int i13, int i14, float f12) {
        ArrayList arrayList = new ArrayList(fVar.g());
        arrayList.add(i12, (f.c) arrayList.remove(i11));
        f.b bVar = new f.b(fVar.f(), f12);
        int i15 = 0;
        while (i15 < arrayList.size()) {
            f.c cVar = (f.c) arrayList.get(i15);
            float f13 = cVar.f28631d;
            bVar.e(f11 + (f13 / 2.0f), cVar.f28630c, f13, i15 >= i13 && i15 <= i14, cVar.f28632e, cVar.f28633f);
            f11 += cVar.f28631d;
            i15++;
        }
        return bVar.i();
    }

    private static f u(f fVar, float f11, float f12, boolean z10, float f13) {
        ArrayList arrayList = new ArrayList(fVar.g());
        f.b bVar = new f.b(fVar.f(), f12);
        float fL = f11 / fVar.l();
        float f14 = z10 ? f11 : 0.0f;
        int i11 = 0;
        while (i11 < arrayList.size()) {
            f.c cVar = (f.c) arrayList.get(i11);
            if (cVar.f28632e) {
                bVar.e(cVar.f28629b, cVar.f28630c, cVar.f28631d, false, true, cVar.f28633f);
            } else {
                boolean z11 = i11 >= fVar.b() && i11 <= fVar.i();
                float f15 = cVar.f28631d - fL;
                float fB = d.b(f15, fVar.f(), f13);
                float f16 = (f15 / 2.0f) + f14;
                float f17 = f16 - cVar.f28629b;
                bVar.f(f16, fB, f15, z11, false, cVar.f28633f, z10 ? f17 : 0.0f, z10 ? 0.0f : f17);
                f14 += f15;
            }
            i11++;
        }
        return bVar.i();
    }

    private static f v(f fVar, float f11, float f12) {
        return t(fVar, 0, 0, f11, fVar.b(), fVar.i(), f12);
    }

    f g() {
        return this.f28636a;
    }

    f h() {
        List list = this.f28638c;
        return (f) list.get(list.size() - 1);
    }

    Map i(int i11, int i12, int i13, boolean z10) {
        float f11 = this.f28636a.f();
        HashMap map = new HashMap();
        int i14 = 0;
        int i15 = 0;
        while (true) {
            if (i14 >= i11) {
                break;
            }
            int i16 = z10 ? (i11 - i14) - 1 : i14;
            if (i16 * f11 * (z10 ? -1 : 1) > i13 - this.f28642g || i14 >= i11 - this.f28638c.size()) {
                Integer numValueOf = Integer.valueOf(i16);
                List list = this.f28638c;
                map.put(numValueOf, (f) list.get(d1.a.b(i15, 0, list.size() - 1)));
                i15++;
            }
            i14++;
        }
        int i17 = 0;
        for (int i18 = i11 - 1; i18 >= 0; i18--) {
            int i19 = z10 ? (i11 - i18) - 1 : i18;
            if (i19 * f11 * (z10 ? -1 : 1) < i12 + this.f28641f || i18 < this.f28637b.size()) {
                Integer numValueOf2 = Integer.valueOf(i19);
                List list2 = this.f28637b;
                map.put(numValueOf2, (f) list2.get(d1.a.b(i17, 0, list2.size() - 1)));
                i17++;
            }
        }
        return map;
    }

    public f j(float f11, float f12, float f13) {
        return k(f11, f12, f13, false);
    }

    f k(float f11, float f12, float f13, boolean z10) {
        float fB;
        List list;
        float[] fArr;
        float f14 = this.f28641f + f12;
        float f15 = f13 - this.f28642g;
        float f16 = l().a().f28634g;
        float f17 = h().h().f28635h;
        if (this.f28641f == f16) {
            f14 += f16;
        }
        if (this.f28642g == f17) {
            f15 -= f17;
        }
        if (f11 < f14) {
            fB = oa.a.b(1.0f, 0.0f, f12, f14, f11);
            list = this.f28637b;
            fArr = this.f28639d;
        } else {
            if (f11 <= f15) {
                return this.f28636a;
            }
            fB = oa.a.b(0.0f, 1.0f, f15, f13, f11);
            list = this.f28638c;
            fArr = this.f28640e;
        }
        return z10 ? a(list, fB, fArr) : s(list, fB, fArr);
    }

    f l() {
        List list = this.f28637b;
        return (f) list.get(list.size() - 1);
    }
}
