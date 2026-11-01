package com.google.zxing.pdf417.decoder;

import com.google.zxing.k;

/* JADX INFO: loaded from: classes4.dex */
final class g extends f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f32978c;

    g(c cVar, boolean z10) {
        super(cVar);
        this.f32978c = z10;
    }

    private void h(a aVar) {
        c cVarA = a();
        k kVarH = this.f32978c ? cVarA.h() : cVarA.i();
        k kVarB = this.f32978c ? cVarA.b() : cVarA.c();
        int iE = e((int) kVarB.d());
        d[] dVarArrD = d();
        int iC = -1;
        int i11 = 0;
        int iMax = 1;
        for (int iE2 = e((int) kVarH.d()); iE2 < iE; iE2++) {
            d dVar = dVarArrD[iE2];
            if (dVar != null) {
                dVar.j();
                int iC2 = dVar.c() - iC;
                if (iC2 == 0) {
                    i11++;
                } else {
                    if (iC2 == 1) {
                        iMax = Math.max(iMax, i11);
                        iC = dVar.c();
                    } else if (dVar.c() >= aVar.c()) {
                        dVarArrD[iE2] = null;
                    } else {
                        iC = dVar.c();
                    }
                    i11 = 1;
                }
            }
        }
    }

    private void l(d[] dVarArr, a aVar) {
        for (int i11 = 0; i11 < dVarArr.length; i11++) {
            d dVar = dVarArr[i11];
            if (dVar != null) {
                int iE = dVar.e() % 30;
                int iC = dVar.c();
                if (iC > aVar.c()) {
                    dVarArr[i11] = null;
                } else {
                    if (!this.f32978c) {
                        iC += 2;
                    }
                    int i12 = iC % 3;
                    if (i12 != 0) {
                        if (i12 != 1) {
                            if (i12 == 2 && iE + 1 != aVar.a()) {
                                dVarArr[i11] = null;
                            }
                        } else if (iE / 3 != aVar.b() || iE % 3 != aVar.d()) {
                            dVarArr[i11] = null;
                        }
                    } else if ((iE * 3) + 1 != aVar.e()) {
                        dVarArr[i11] = null;
                    }
                }
            }
        }
    }

    private void m() {
        for (d dVar : d()) {
            if (dVar != null) {
                dVar.j();
            }
        }
    }

    void g(a aVar) {
        d[] dVarArrD = d();
        m();
        l(dVarArrD, aVar);
        c cVarA = a();
        k kVarH = this.f32978c ? cVarA.h() : cVarA.i();
        k kVarB = this.f32978c ? cVarA.b() : cVarA.c();
        int iE = e((int) kVarH.d());
        int iE2 = e((int) kVarB.d());
        int iC = -1;
        int i11 = 0;
        int iMax = 1;
        while (iE < iE2) {
            d dVar = dVarArrD[iE];
            if (dVar != null) {
                int iC2 = dVar.c() - iC;
                if (iC2 == 0) {
                    i11++;
                } else {
                    if (iC2 == 1) {
                        iMax = Math.max(iMax, i11);
                        iC = dVar.c();
                    } else if (iC2 < 0 || dVar.c() >= aVar.c() || iC2 > iE) {
                        dVarArrD[iE] = null;
                    } else {
                        if (iMax > 2) {
                            iC2 *= iMax - 2;
                        }
                        boolean z10 = iC2 >= iE;
                        for (int i12 = 1; i12 <= iC2 && !z10; i12++) {
                            z10 = dVarArrD[iE - i12] != null;
                        }
                        if (z10) {
                            dVarArrD[iE] = null;
                        } else {
                            iC = dVar.c();
                        }
                    }
                    i11 = 1;
                }
            }
            iE++;
        }
    }

    a i() {
        d[] dVarArrD = d();
        b bVar = new b();
        b bVar2 = new b();
        b bVar3 = new b();
        b bVar4 = new b();
        for (d dVar : dVarArrD) {
            if (dVar != null) {
                dVar.j();
                int iE = dVar.e() % 30;
                int iC = dVar.c();
                if (!this.f32978c) {
                    iC += 2;
                }
                int i11 = iC % 3;
                if (i11 == 0) {
                    bVar2.b((iE * 3) + 1);
                } else if (i11 == 1) {
                    bVar4.b(iE / 3);
                    bVar3.b(iE % 3);
                } else if (i11 == 2) {
                    bVar.b(iE + 1);
                }
            }
        }
        if (bVar.a().length == 0 || bVar2.a().length == 0 || bVar3.a().length == 0 || bVar4.a().length == 0 || bVar.a()[0] < 1 || bVar2.a()[0] + bVar3.a()[0] < 3 || bVar2.a()[0] + bVar3.a()[0] > 90) {
            return null;
        }
        a aVar = new a(bVar.a()[0], bVar2.a()[0], bVar3.a()[0], bVar4.a()[0]);
        l(dVarArrD, aVar);
        return aVar;
    }

    int[] j() {
        int iC;
        a aVarI = i();
        if (aVarI == null) {
            return null;
        }
        h(aVarI);
        int iC2 = aVarI.c();
        int[] iArr = new int[iC2];
        for (d dVar : d()) {
            if (dVar != null && (iC = dVar.c()) < iC2) {
                iArr[iC] = iArr[iC] + 1;
            }
        }
        return iArr;
    }

    boolean k() {
        return this.f32978c;
    }

    @Override // com.google.zxing.pdf417.decoder.f
    public String toString() {
        return "IsLeft: " + this.f32978c + '\n' + super.toString();
    }
}
