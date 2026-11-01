package kd;

/* JADX INFO: loaded from: classes5.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f66776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f66777b;

    b(a aVar, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f66776a = aVar;
        int length = iArr.length;
        int i11 = 1;
        if (length <= 1 || iArr[0] != 0) {
            this.f66777b = iArr;
            return;
        }
        while (i11 < length && iArr[i11] == 0) {
            i11++;
        }
        if (i11 == length) {
            this.f66777b = new int[]{0};
            return;
        }
        int[] iArr2 = new int[length - i11];
        this.f66777b = iArr2;
        System.arraycopy(iArr, i11, iArr2, 0, iArr2.length);
    }

    b a(b bVar) {
        if (!this.f66776a.equals(bVar.f66776a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (g()) {
            return bVar;
        }
        if (bVar.g()) {
            return this;
        }
        int[] iArr = this.f66777b;
        int[] iArr2 = bVar.f66777b;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i11 = length; i11 < iArr.length; i11++) {
            iArr3[i11] = a.a(iArr2[i11 - length], iArr[i11]);
        }
        return new b(this.f66776a, iArr3);
    }

    b[] b(b bVar) {
        if (!this.f66776a.equals(bVar.f66776a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (bVar.g()) {
            throw new IllegalArgumentException("Divide by 0");
        }
        b bVarG = this.f66776a.g();
        int iH = this.f66776a.h(bVar.d(bVar.f()));
        b bVarA = this;
        while (bVarA.f() >= bVar.f() && !bVarA.g()) {
            int iF = bVarA.f() - bVar.f();
            int iJ = this.f66776a.j(bVarA.d(bVarA.f()), iH);
            b bVarJ = bVar.j(iF, iJ);
            bVarG = bVarG.a(this.f66776a.b(iF, iJ));
            bVarA = bVarA.a(bVarJ);
        }
        return new b[]{bVarG, bVarA};
    }

    int c(int i11) {
        if (i11 == 0) {
            return d(0);
        }
        if (i11 == 1) {
            int iA = 0;
            for (int i12 : this.f66777b) {
                iA = a.a(iA, i12);
            }
            return iA;
        }
        int[] iArr = this.f66777b;
        int iA2 = iArr[0];
        int length = iArr.length;
        for (int i13 = 1; i13 < length; i13++) {
            iA2 = a.a(this.f66776a.j(i11, iA2), this.f66777b[i13]);
        }
        return iA2;
    }

    int d(int i11) {
        int[] iArr = this.f66777b;
        return iArr[(iArr.length - 1) - i11];
    }

    int[] e() {
        return this.f66777b;
    }

    int f() {
        return this.f66777b.length - 1;
    }

    boolean g() {
        return this.f66777b[0] == 0;
    }

    b h(int i11) {
        if (i11 == 0) {
            return this.f66776a.g();
        }
        if (i11 == 1) {
            return this;
        }
        int length = this.f66777b.length;
        int[] iArr = new int[length];
        for (int i12 = 0; i12 < length; i12++) {
            iArr[i12] = this.f66776a.j(this.f66777b[i12], i11);
        }
        return new b(this.f66776a, iArr);
    }

    b i(b bVar) {
        if (!this.f66776a.equals(bVar.f66776a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (g() || bVar.g()) {
            return this.f66776a.g();
        }
        int[] iArr = this.f66777b;
        int length = iArr.length;
        int[] iArr2 = bVar.f66777b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = iArr[i11];
            for (int i13 = 0; i13 < length2; i13++) {
                int i14 = i11 + i13;
                iArr3[i14] = a.a(iArr3[i14], this.f66776a.j(i12, iArr2[i13]));
            }
        }
        return new b(this.f66776a, iArr3);
    }

    b j(int i11, int i12) {
        if (i11 < 0) {
            throw new IllegalArgumentException();
        }
        if (i12 == 0) {
            return this.f66776a.g();
        }
        int length = this.f66777b.length;
        int[] iArr = new int[i11 + length];
        for (int i13 = 0; i13 < length; i13++) {
            iArr[i13] = this.f66776a.j(this.f66777b[i13], i12);
        }
        return new b(this.f66776a, iArr);
    }

    public String toString() {
        if (g()) {
            return "0";
        }
        StringBuilder sb2 = new StringBuilder(f() * 8);
        for (int iF = f(); iF >= 0; iF--) {
            int iD = d(iF);
            if (iD != 0) {
                if (iD < 0) {
                    if (iF == f()) {
                        sb2.append("-");
                    } else {
                        sb2.append(" - ");
                    }
                    iD = -iD;
                } else if (sb2.length() > 0) {
                    sb2.append(" + ");
                }
                if (iF == 0 || iD != 1) {
                    int i11 = this.f66776a.i(iD);
                    if (i11 == 0) {
                        sb2.append('1');
                    } else if (i11 == 1) {
                        sb2.append('a');
                    } else {
                        sb2.append("a^");
                        sb2.append(i11);
                    }
                }
                if (iF != 0) {
                    if (iF == 1) {
                        sb2.append('x');
                    } else {
                        sb2.append("x^");
                        sb2.append(iF);
                    }
                }
            }
        }
        return sb2.toString();
    }
}
