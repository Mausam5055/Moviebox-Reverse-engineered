package ud;

/* JADX INFO: loaded from: classes5.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f76735a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f76736b;

    c(b bVar, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f76735a = bVar;
        int length = iArr.length;
        int i11 = 1;
        if (length <= 1 || iArr[0] != 0) {
            this.f76736b = iArr;
            return;
        }
        while (i11 < length && iArr[i11] == 0) {
            i11++;
        }
        if (i11 == length) {
            this.f76736b = new int[]{0};
            return;
        }
        int[] iArr2 = new int[length - i11];
        this.f76736b = iArr2;
        System.arraycopy(iArr, i11, iArr2, 0, iArr2.length);
    }

    c a(c cVar) {
        if (!this.f76735a.equals(cVar.f76735a)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (e()) {
            return cVar;
        }
        if (cVar.e()) {
            return this;
        }
        int[] iArr = this.f76736b;
        int[] iArr2 = cVar.f76736b;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i11 = length; i11 < iArr.length; i11++) {
            iArr3[i11] = this.f76735a.a(iArr2[i11 - length], iArr[i11]);
        }
        return new c(this.f76735a, iArr3);
    }

    int b(int i11) {
        if (i11 == 0) {
            return c(0);
        }
        if (i11 == 1) {
            int iA = 0;
            for (int i12 : this.f76736b) {
                iA = this.f76735a.a(iA, i12);
            }
            return iA;
        }
        int[] iArr = this.f76736b;
        int iA2 = iArr[0];
        int length = iArr.length;
        for (int i13 = 1; i13 < length; i13++) {
            b bVar = this.f76735a;
            iA2 = bVar.a(bVar.i(i11, iA2), this.f76736b[i13]);
        }
        return iA2;
    }

    int c(int i11) {
        int[] iArr = this.f76736b;
        return iArr[(iArr.length - 1) - i11];
    }

    int d() {
        return this.f76736b.length - 1;
    }

    boolean e() {
        return this.f76736b[0] == 0;
    }

    c f(int i11) {
        if (i11 == 0) {
            return this.f76735a.f();
        }
        if (i11 == 1) {
            return this;
        }
        int length = this.f76736b.length;
        int[] iArr = new int[length];
        for (int i12 = 0; i12 < length; i12++) {
            iArr[i12] = this.f76735a.i(this.f76736b[i12], i11);
        }
        return new c(this.f76735a, iArr);
    }

    c g(c cVar) {
        if (!this.f76735a.equals(cVar.f76735a)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (e() || cVar.e()) {
            return this.f76735a.f();
        }
        int[] iArr = this.f76736b;
        int length = iArr.length;
        int[] iArr2 = cVar.f76736b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = iArr[i11];
            for (int i13 = 0; i13 < length2; i13++) {
                int i14 = i11 + i13;
                b bVar = this.f76735a;
                iArr3[i14] = bVar.a(iArr3[i14], bVar.i(i12, iArr2[i13]));
            }
        }
        return new c(this.f76735a, iArr3);
    }

    c h(int i11, int i12) {
        if (i11 < 0) {
            throw new IllegalArgumentException();
        }
        if (i12 == 0) {
            return this.f76735a.f();
        }
        int length = this.f76736b.length;
        int[] iArr = new int[i11 + length];
        for (int i13 = 0; i13 < length; i13++) {
            iArr[i13] = this.f76735a.i(this.f76736b[i13], i12);
        }
        return new c(this.f76735a, iArr);
    }

    c i() {
        int length = this.f76736b.length;
        int[] iArr = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = this.f76735a.j(0, this.f76736b[i11]);
        }
        return new c(this.f76735a, iArr);
    }

    c j(c cVar) {
        if (this.f76735a.equals(cVar.f76735a)) {
            return cVar.e() ? this : a(cVar.i());
        }
        throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(d() * 8);
        for (int iD = d(); iD >= 0; iD--) {
            int iC = c(iD);
            if (iC != 0) {
                if (iC < 0) {
                    sb2.append(" - ");
                    iC = -iC;
                } else if (sb2.length() > 0) {
                    sb2.append(" + ");
                }
                if (iD == 0 || iC != 1) {
                    sb2.append(iC);
                }
                if (iD != 0) {
                    if (iD == 1) {
                        sb2.append('x');
                    } else {
                        sb2.append("x^");
                        sb2.append(iD);
                    }
                }
            }
        }
        return sb2.toString();
    }
}
