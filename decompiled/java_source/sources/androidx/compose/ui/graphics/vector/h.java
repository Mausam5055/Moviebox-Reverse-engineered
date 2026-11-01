package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.Path;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float[] f4841a = new float[0];

    private static final void a(Path path, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18, double d19) {
        double d20 = d13;
        double d21 = 4;
        int iCeil = (int) Math.ceil(Math.abs((d19 * d21) / 3.141592653589793d));
        double dCos = Math.cos(d17);
        double dSin = Math.sin(d17);
        double dCos2 = Math.cos(d18);
        double dSin2 = Math.sin(d18);
        double d22 = -d20;
        double d23 = d22 * dCos;
        double d24 = d14 * dSin;
        double d25 = (d23 * dSin2) - (d24 * dCos2);
        double d26 = d22 * dSin;
        double d27 = d14 * dCos;
        double d28 = (dSin2 * d26) + (dCos2 * d27);
        double d29 = d19 / ((double) iCeil);
        double d30 = d15;
        double d31 = d28;
        double d32 = d25;
        int i11 = 0;
        double d33 = d16;
        double d34 = d18;
        while (i11 < iCeil) {
            double d35 = d34 + d29;
            double dSin3 = Math.sin(d35);
            double dCos3 = Math.cos(d35);
            int i12 = iCeil;
            double d36 = (d11 + ((d20 * dCos) * dCos3)) - (d24 * dSin3);
            double d37 = d12 + (d20 * dSin * dCos3) + (d27 * dSin3);
            double d38 = (d23 * dSin3) - (d24 * dCos3);
            double d39 = (dSin3 * d26) + (dCos3 * d27);
            double d40 = d35 - d34;
            double dTan = Math.tan(d40 / ((double) 2));
            double dSin4 = (Math.sin(d40) * (Math.sqrt(d21 + ((3.0d * dTan) * dTan)) - ((double) 1))) / ((double) 3);
            path.k((float) (d30 + (d32 * dSin4)), (float) (d33 + (d31 * dSin4)), (float) (d36 - (dSin4 * d38)), (float) (d37 - (dSin4 * d39)), (float) d36, (float) d37);
            i11++;
            d29 = d29;
            dSin = dSin;
            d30 = d36;
            d26 = d26;
            d34 = d35;
            d31 = d39;
            d21 = d21;
            d32 = d38;
            dCos = dCos;
            iCeil = i12;
            d33 = d37;
            d20 = d13;
        }
    }

    private static final void b(Path path, double d11, double d12, double d13, double d14, double d15, double d16, double d17, boolean z10, boolean z11) {
        double d18;
        double d19;
        double d20 = (d17 / ((double) 180)) * 3.141592653589793d;
        double dCos = Math.cos(d20);
        double dSin = Math.sin(d20);
        double d21 = ((d11 * dCos) + (d12 * dSin)) / d15;
        double d22 = (((-d11) * dSin) + (d12 * dCos)) / d16;
        double d23 = ((d13 * dCos) + (d14 * dSin)) / d15;
        double d24 = (((-d13) * dSin) + (d14 * dCos)) / d16;
        double d25 = d21 - d23;
        double d26 = d22 - d24;
        double d27 = 2;
        double d28 = (d21 + d23) / d27;
        double d29 = (d22 + d24) / d27;
        double d30 = (d25 * d25) + (d26 * d26);
        if (d30 == 0.0d) {
            return;
        }
        double d31 = (1.0d / d30) - 0.25d;
        if (d31 < 0.0d) {
            double dSqrt = (float) (Math.sqrt(d30) / 1.99999d);
            b(path, d11, d12, d13, d14, d15 * dSqrt, d16 * dSqrt, d17, z10, z11);
            return;
        }
        double dSqrt2 = Math.sqrt(d31);
        double d32 = d25 * dSqrt2;
        double d33 = dSqrt2 * d26;
        if (z10 == z11) {
            d18 = d28 - d33;
            d19 = d29 + d32;
        } else {
            d18 = d28 + d33;
            d19 = d29 - d32;
        }
        double dAtan2 = Math.atan2(d22 - d19, d21 - d18);
        double dAtan3 = Math.atan2(d24 - d19, d23 - d18) - dAtan2;
        if (z11 != (dAtan3 >= 0.0d)) {
            dAtan3 = dAtan3 > 0.0d ? dAtan3 - 6.283185307179586d : dAtan3 + 6.283185307179586d;
        }
        double d34 = d18 * d15;
        double d35 = d19 * d16;
        a(path, (d34 * dCos) - (d35 * dSin), (d34 * dSin) + (d35 * dCos), d15, d16, d11, d12, d20, dAtan2, dAtan3);
    }

    public static final Path c(List list, Path path) {
        float f11;
        float f12;
        float fC;
        float fE;
        float fD;
        float fD2;
        float f13;
        float f14;
        float f15;
        float f16;
        float fE2;
        float fD3;
        float f17;
        float f18;
        float f19;
        List list2 = list;
        Path path2 = path;
        int iH = path.h();
        path.b();
        path2.e(iH);
        e eVar = list.isEmpty() ? e.b.f4788c : (e) list2.get(0);
        int size = list.size();
        float f20 = 0.0f;
        int i11 = 0;
        float fC2 = 0.0f;
        float fD4 = 0.0f;
        float fC3 = 0.0f;
        float fD5 = 0.0f;
        float f21 = 0.0f;
        float f22 = 0.0f;
        while (i11 < size) {
            e eVar2 = (e) list2.get(i11);
            if (eVar2 instanceof e.b) {
                path.close();
                eVar2 = eVar2;
                f20 = f20;
                i11 = i11;
                size = size;
                fC2 = f21;
                fC3 = fC2;
                fD4 = f22;
                fD5 = fD4;
            } else {
                if (eVar2 instanceof e.n) {
                    e.n nVar = (e.n) eVar2;
                    fC3 += nVar.c();
                    fD5 += nVar.d();
                    path2.c(nVar.c(), nVar.d());
                    f21 = fC3;
                } else if (eVar2 instanceof e.f) {
                    e.f fVar = (e.f) eVar2;
                    float fC4 = fVar.c();
                    float fD6 = fVar.d();
                    path2.j(fVar.c(), fVar.d());
                    fC3 = fC4;
                    f21 = fC3;
                    fD5 = fD6;
                } else {
                    if (eVar2 instanceof e.m) {
                        e.m mVar = (e.m) eVar2;
                        path2.m(mVar.c(), mVar.d());
                        fC3 += mVar.c();
                        f14 = mVar.d();
                    } else {
                        if (eVar2 instanceof e.C0049e) {
                            e.C0049e c0049e = (e.C0049e) eVar2;
                            path2.o(c0049e.c(), c0049e.d());
                            fD2 = c0049e.c();
                            f13 = c0049e.d();
                        } else {
                            if (eVar2 instanceof e.l) {
                                e.l lVar = (e.l) eVar2;
                                path2.m(lVar.c(), f20);
                                fC3 += lVar.c();
                            } else if (eVar2 instanceof e.d) {
                                e.d dVar = (e.d) eVar2;
                                path2.o(dVar.c(), fD5);
                                fC3 = dVar.c();
                            } else if (eVar2 instanceof e.r) {
                                e.r rVar = (e.r) eVar2;
                                path2.m(f20, rVar.c());
                                f14 = rVar.c();
                            } else if (eVar2 instanceof e.s) {
                                e.s sVar = (e.s) eVar2;
                                path2.o(fC3, sVar.c());
                                fD5 = sVar.c();
                            } else {
                                if (eVar2 instanceof e.k) {
                                    e.k kVar = (e.k) eVar2;
                                    path.d(kVar.c(), kVar.f(), kVar.d(), kVar.g(), kVar.e(), kVar.h());
                                    fC = kVar.d() + fC3;
                                    fE = kVar.g() + fD5;
                                    fC3 += kVar.e();
                                    fD = kVar.h();
                                } else {
                                    if (eVar2 instanceof e.c) {
                                        e.c cVar = (e.c) eVar2;
                                        path.k(cVar.c(), cVar.f(), cVar.d(), cVar.g(), cVar.e(), cVar.h());
                                        fC = cVar.d();
                                        fE2 = cVar.g();
                                        fD3 = cVar.e();
                                        f17 = cVar.h();
                                    } else if (eVar2 instanceof e.p) {
                                        if (eVar.a()) {
                                            f19 = fD5 - fD4;
                                            f18 = fC3 - fC2;
                                        } else {
                                            f18 = f20;
                                            f19 = f18;
                                        }
                                        e.p pVar = (e.p) eVar2;
                                        path.d(f18, f19, pVar.c(), pVar.e(), pVar.d(), pVar.f());
                                        fC = pVar.c() + fC3;
                                        fE = pVar.e() + fD5;
                                        fC3 += pVar.d();
                                        fD = pVar.f();
                                    } else if (eVar2 instanceof e.h) {
                                        if (eVar.a()) {
                                            float f23 = 2;
                                            f16 = (f23 * fD5) - fD4;
                                            f15 = (fC3 * f23) - fC2;
                                        } else {
                                            f15 = fC3;
                                            f16 = fD5;
                                        }
                                        e.h hVar = (e.h) eVar2;
                                        path.k(f15, f16, hVar.c(), hVar.e(), hVar.d(), hVar.f());
                                        fC = hVar.c();
                                        fE2 = hVar.e();
                                        fD3 = hVar.d();
                                        f17 = hVar.f();
                                    } else if (eVar2 instanceof e.o) {
                                        e.o oVar = (e.o) eVar2;
                                        path2.g(oVar.c(), oVar.e(), oVar.d(), oVar.f());
                                        fC2 = oVar.c() + fC3;
                                        fD4 = oVar.e() + fD5;
                                        fC3 += oVar.d();
                                        f14 = oVar.f();
                                    } else if (eVar2 instanceof e.g) {
                                        e.g gVar = (e.g) eVar2;
                                        path2.f(gVar.c(), gVar.e(), gVar.d(), gVar.f());
                                        fC2 = gVar.c();
                                        fD4 = gVar.e();
                                        fD2 = gVar.d();
                                        f13 = gVar.f();
                                    } else if (eVar2 instanceof e.q) {
                                        if (eVar.b()) {
                                            f11 = fC3 - fC2;
                                            f12 = fD5 - fD4;
                                        } else {
                                            f11 = f20;
                                            f12 = f11;
                                        }
                                        e.q qVar = (e.q) eVar2;
                                        path2.g(f11, f12, qVar.c(), qVar.d());
                                        fC = f11 + fC3;
                                        fE = f12 + fD5;
                                        fC3 += qVar.c();
                                        fD = qVar.d();
                                    } else if (eVar2 instanceof e.i) {
                                        if (eVar.b()) {
                                            float f24 = 2;
                                            fC3 = (fC3 * f24) - fC2;
                                            fD5 = (f24 * fD5) - fD4;
                                        }
                                        e.i iVar = (e.i) eVar2;
                                        path2.f(fC3, fD5, iVar.c(), iVar.d());
                                        float fC5 = iVar.c();
                                        fD4 = fD5;
                                        eVar2 = eVar2;
                                        f20 = f20;
                                        i11 = i11;
                                        size = size;
                                        fD5 = iVar.d();
                                        float f25 = fC3;
                                        fC3 = fC5;
                                        fC2 = f25;
                                    } else if (eVar2 instanceof e.j) {
                                        e.j jVar = (e.j) eVar2;
                                        float fC6 = jVar.c() + fC3;
                                        float fD7 = jVar.d() + fD5;
                                        eVar2 = eVar2;
                                        i11 = i11;
                                        f20 = 0.0f;
                                        size = size;
                                        b(path, fC3, fD5, fC6, fD7, jVar.e(), jVar.g(), jVar.f(), jVar.h(), jVar.i());
                                        fD4 = fD7;
                                        fD5 = fD4;
                                        fC2 = fC6;
                                        fC3 = fC2;
                                    } else {
                                        eVar2 = eVar2;
                                        f20 = f20;
                                        i11 = i11;
                                        size = size;
                                        if (eVar2 instanceof e.a) {
                                            e.a aVar = (e.a) eVar2;
                                            b(path, fC3, fD5, aVar.c(), aVar.d(), aVar.e(), aVar.g(), aVar.f(), aVar.h(), aVar.i());
                                            fC3 = aVar.c();
                                            fD4 = aVar.d();
                                            fD5 = fD4;
                                            fC2 = fC3;
                                        }
                                    }
                                    fC3 = fD3;
                                    fD5 = f17;
                                    fD4 = fE2;
                                    fC2 = fC;
                                }
                                fD5 += fD;
                                fD4 = fE;
                                fC2 = fC;
                            }
                            eVar2 = eVar2;
                            f20 = f20;
                            i11 = i11;
                            size = size;
                        }
                        fD5 = f13;
                        fC3 = fD2;
                        eVar2 = eVar2;
                        f20 = f20;
                        i11 = i11;
                        size = size;
                    }
                    fD5 += f14;
                    eVar2 = eVar2;
                    f20 = f20;
                    i11 = i11;
                    size = size;
                }
                f22 = fD5;
                eVar2 = eVar2;
                f20 = f20;
                i11 = i11;
                size = size;
            }
            i11++;
            path2 = path;
            eVar = eVar2;
            f20 = f20;
            size = size;
            list2 = list;
        }
        return path;
    }
}
