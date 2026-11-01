package com.google.android.material.carousel;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f28615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f28616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f28617c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f28618d;

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final float f28619a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final float f28620b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private c f28622d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private c f28623e;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List f28621c = new ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f28624f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f28625g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f28626h = 0.0f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f28627i = -1;

        b(float f11, float f12) {
            this.f28619a = f11;
            this.f28620b = f12;
        }

        private static float j(float f11, float f12, int i11, int i12) {
            return (f11 - (i11 * f12)) + (i12 * f12);
        }

        b a(float f11, float f12, float f13) {
            return d(f11, f12, f13, false, true);
        }

        b b(float f11, float f12, float f13) {
            return c(f11, f12, f13, false);
        }

        b c(float f11, float f12, float f13, boolean z10) {
            return d(f11, f12, f13, z10, false);
        }

        b d(float f11, float f12, float f13, boolean z10, boolean z11) {
            float fAbs;
            float f14 = f13 / 2.0f;
            float f15 = f11 - f14;
            float f16 = f14 + f11;
            float f17 = this.f28620b;
            if (f16 > f17) {
                fAbs = Math.abs(f16 - Math.max(f16 - f13, f17));
            } else {
                fAbs = 0.0f;
                if (f15 < 0.0f) {
                    fAbs = Math.abs(f15 - Math.min(f15 + f13, 0.0f));
                }
            }
            return e(f11, f12, f13, z10, z11, fAbs);
        }

        b e(float f11, float f12, float f13, boolean z10, boolean z11, float f14) {
            return f(f11, f12, f13, z10, z11, f14, 0.0f, 0.0f);
        }

        b f(float f11, float f12, float f13, boolean z10, boolean z11, float f14, float f15, float f16) {
            if (f13 <= 0.0f) {
                return this;
            }
            if (z11) {
                if (z10) {
                    throw new IllegalArgumentException("Anchor keylines cannot be focal.");
                }
                int i11 = this.f28627i;
                if (i11 != -1 && i11 != 0) {
                    throw new IllegalArgumentException("Anchor keylines must be either the first or last keyline.");
                }
                this.f28627i = this.f28621c.size();
            }
            c cVar = new c(Float.MIN_VALUE, f11, f12, f13, z11, f14, f15, f16);
            if (z10) {
                if (this.f28622d == null) {
                    this.f28622d = cVar;
                    this.f28624f = this.f28621c.size();
                }
                if (this.f28625g != -1 && this.f28621c.size() - this.f28625g > 1) {
                    throw new IllegalArgumentException("Keylines marked as focal must be placed next to each other. There cannot be non-focal keylines between focal keylines.");
                }
                if (f13 != this.f28622d.f28631d) {
                    throw new IllegalArgumentException("Keylines that are marked as focal must all have the same masked item size.");
                }
                this.f28623e = cVar;
                this.f28625g = this.f28621c.size();
            } else {
                if (this.f28622d == null && cVar.f28631d < this.f28626h) {
                    throw new IllegalArgumentException("Keylines before the first focal keyline must be ordered by incrementing masked item size.");
                }
                if (this.f28623e != null && cVar.f28631d > this.f28626h) {
                    throw new IllegalArgumentException("Keylines after the last focal keyline must be ordered by decreasing masked item size.");
                }
            }
            this.f28626h = cVar.f28631d;
            this.f28621c.add(cVar);
            return this;
        }

        b g(float f11, float f12, float f13, int i11) {
            return h(f11, f12, f13, i11, false);
        }

        b h(float f11, float f12, float f13, int i11, boolean z10) {
            if (i11 > 0 && f13 > 0.0f) {
                for (int i12 = 0; i12 < i11; i12++) {
                    c((i12 * f13) + f11, f12, f13, z10);
                }
            }
            return this;
        }

        f i() {
            if (this.f28622d == null) {
                throw new IllegalStateException("There must be a keyline marked as focal.");
            }
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < this.f28621c.size(); i11++) {
                c cVar = (c) this.f28621c.get(i11);
                arrayList.add(new c(j(this.f28622d.f28629b, this.f28619a, this.f28624f, i11), cVar.f28629b, cVar.f28630c, cVar.f28631d, cVar.f28632e, cVar.f28633f, cVar.f28634g, cVar.f28635h));
            }
            return new f(this.f28619a, arrayList, this.f28624f, this.f28625g);
        }
    }

    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final float f28628a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final float f28629b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final float f28630c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final float f28631d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final boolean f28632e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final float f28633f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final float f28634g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final float f28635h;

        c(float f11, float f12, float f13, float f14) {
            this(f11, f12, f13, f14, false, 0.0f, 0.0f, 0.0f);
        }

        c(float f11, float f12, float f13, float f14, boolean z10, float f15, float f16, float f17) {
            this.f28628a = f11;
            this.f28629b = f12;
            this.f28630c = f13;
            this.f28631d = f14;
            this.f28632e = z10;
            this.f28633f = f15;
            this.f28634g = f16;
            this.f28635h = f17;
        }

        static c a(c cVar, c cVar2, float f11) {
            return new c(oa.a.a(cVar.f28628a, cVar2.f28628a, f11), oa.a.a(cVar.f28629b, cVar2.f28629b, f11), oa.a.a(cVar.f28630c, cVar2.f28630c, f11), oa.a.a(cVar.f28631d, cVar2.f28631d, f11));
        }
    }

    private f(float f11, List list, int i11, int i12) {
        this.f28615a = f11;
        this.f28616b = Collections.unmodifiableList(list);
        this.f28617c = i11;
        this.f28618d = i12;
    }

    static f m(f fVar, f fVar2, float f11) {
        if (fVar.f() != fVar2.f()) {
            throw new IllegalArgumentException("Keylines being linearly interpolated must have the same item size.");
        }
        List listG = fVar.g();
        List listG2 = fVar2.g();
        if (listG.size() != listG2.size()) {
            throw new IllegalArgumentException("Keylines being linearly interpolated must have the same number of keylines.");
        }
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < fVar.g().size(); i11++) {
            arrayList.add(c.a((c) listG.get(i11), (c) listG2.get(i11), f11));
        }
        return new f(fVar.f(), arrayList, oa.a.c(fVar.b(), fVar2.b(), f11), oa.a.c(fVar.i(), fVar2.i(), f11));
    }

    static f n(f fVar, float f11) {
        b bVar = new b(fVar.f(), f11);
        float f12 = (f11 - fVar.j().f28629b) - (fVar.j().f28631d / 2.0f);
        int size = fVar.g().size() - 1;
        while (size >= 0) {
            c cVar = (c) fVar.g().get(size);
            bVar.d(f12 + (cVar.f28631d / 2.0f), cVar.f28630c, cVar.f28631d, size >= fVar.b() && size <= fVar.i(), cVar.f28632e);
            f12 += cVar.f28631d;
            size--;
        }
        return bVar.i();
    }

    c a() {
        return (c) this.f28616b.get(this.f28617c);
    }

    int b() {
        return this.f28617c;
    }

    c c() {
        return (c) this.f28616b.get(0);
    }

    c d() {
        for (int i11 = 0; i11 < this.f28616b.size(); i11++) {
            c cVar = (c) this.f28616b.get(i11);
            if (!cVar.f28632e) {
                return cVar;
            }
        }
        return null;
    }

    List e() {
        return this.f28616b.subList(this.f28617c, this.f28618d + 1);
    }

    float f() {
        return this.f28615a;
    }

    List g() {
        return this.f28616b;
    }

    c h() {
        return (c) this.f28616b.get(this.f28618d);
    }

    int i() {
        return this.f28618d;
    }

    c j() {
        List list = this.f28616b;
        return (c) list.get(list.size() - 1);
    }

    c k() {
        for (int size = this.f28616b.size() - 1; size >= 0; size--) {
            c cVar = (c) this.f28616b.get(size);
            if (!cVar.f28632e) {
                return cVar;
            }
        }
        return null;
    }

    int l() {
        Iterator it = this.f28616b.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            if (((c) it.next()).f28632e) {
                i11++;
            }
        }
        return this.f28616b.size() - i11;
    }
}
