package kd;

import com.google.zxing.common.reedsolomon.ReedSolomonException;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f66778a;

    public c(a aVar) {
        this.f66778a = aVar;
    }

    private int[] b(b bVar) throws ReedSolomonException {
        int iF = bVar.f();
        if (iF == 1) {
            return new int[]{bVar.d(1)};
        }
        int[] iArr = new int[iF];
        int i11 = 0;
        for (int i12 = 1; i12 < this.f66778a.f() && i11 < iF; i12++) {
            if (bVar.c(i12) == 0) {
                iArr[i11] = this.f66778a.h(i12);
                i11++;
            }
        }
        if (i11 == iF) {
            return iArr;
        }
        throw new ReedSolomonException("Error locator degree does not match number of roots");
    }

    private int[] c(b bVar, int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            int iH = this.f66778a.h(iArr[i11]);
            int iJ = 1;
            for (int i12 = 0; i12 < length; i12++) {
                if (i11 != i12) {
                    int iJ2 = this.f66778a.j(iArr[i12], iH);
                    iJ = this.f66778a.j(iJ, (iJ2 & 1) == 0 ? iJ2 | 1 : iJ2 & (-2));
                }
            }
            iArr2[i11] = this.f66778a.j(bVar.c(iH), this.f66778a.h(iJ));
            if (this.f66778a.d() != 0) {
                iArr2[i11] = this.f66778a.j(iArr2[i11], iH);
            }
        }
        return iArr2;
    }

    private b[] d(b bVar, b bVar2, int i11) throws ReedSolomonException {
        if (bVar.f() < bVar2.f()) {
            bVar2 = bVar;
            bVar = bVar2;
        }
        b bVarG = this.f66778a.g();
        b bVarE = this.f66778a.e();
        do {
            b bVar3 = bVar2;
            bVar2 = bVar;
            bVar = bVar3;
            b bVar4 = bVarE;
            b bVar5 = bVarG;
            bVarG = bVar4;
            if (bVar.f() * 2 < i11) {
                int iD = bVarG.d(0);
                if (iD == 0) {
                    throw new ReedSolomonException("sigmaTilde(0) was zero");
                }
                int iH = this.f66778a.h(iD);
                return new b[]{bVarG.h(iH), bVar.h(iH)};
            }
            if (bVar.g()) {
                throw new ReedSolomonException("r_{i-1} was zero");
            }
            b bVarG2 = this.f66778a.g();
            int iH2 = this.f66778a.h(bVar.d(bVar.f()));
            while (bVar2.f() >= bVar.f() && !bVar2.g()) {
                int iF = bVar2.f() - bVar.f();
                int iJ = this.f66778a.j(bVar2.d(bVar2.f()), iH2);
                bVarG2 = bVarG2.a(this.f66778a.b(iF, iJ));
                bVar2 = bVar2.a(bVar.j(iF, iJ));
            }
            bVarE = bVarG2.i(bVarG).a(bVar5);
        } while (bVar2.f() < bVar.f());
        throw new IllegalStateException("Division algorithm failed to reduce polynomial? r: " + bVar2 + ", rLast: " + bVar);
    }

    public int a(int[] iArr, int i11) throws ReedSolomonException {
        b bVar = new b(this.f66778a, iArr);
        int[] iArr2 = new int[i11];
        boolean z10 = true;
        for (int i12 = 0; i12 < i11; i12++) {
            a aVar = this.f66778a;
            int iC = bVar.c(aVar.c(aVar.d() + i12));
            iArr2[(i11 - 1) - i12] = iC;
            if (iC != 0) {
                z10 = false;
            }
        }
        if (z10) {
            return 0;
        }
        b[] bVarArrD = d(this.f66778a.b(i11, 1), new b(this.f66778a, iArr2), i11);
        b bVar2 = bVarArrD[0];
        b bVar3 = bVarArrD[1];
        int[] iArrB = b(bVar2);
        int[] iArrC = c(bVar3, iArrB);
        for (int i13 = 0; i13 < iArrB.length; i13++) {
            int length = (iArr.length - 1) - this.f66778a.i(iArrB[i13]);
            if (length < 0) {
                throw new ReedSolomonException("Bad error location");
            }
            iArr[length] = a.a(iArr[length], iArrC[i13]);
        }
        return iArrB.length;
    }
}
