package com.tencent.tinker.android.dex;

/* JADX INFO: loaded from: classes5.dex */
public final class h extends v.a.AbstractC0583a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f40595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f40596c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f40597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f40598e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public short[] f40599f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public b[] f40600g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public a[] f40601h;

    public static class a implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int[] f40602a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int[] f40603b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f40604c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f40605d;

        public a(int[] iArr, int[] iArr2, int i11, int i12) {
            this.f40602a = iArr;
            this.f40603b = iArr2;
            this.f40604c = i11;
            this.f40605d = i12;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(a aVar) {
            int iB = gf.c.b(this.f40602a, aVar.f40602a);
            if (iB != 0) {
                return iB;
            }
            int iB2 = gf.c.b(this.f40603b, aVar.f40603b);
            return iB2 != 0 ? iB2 : gf.c.c(this.f40604c, aVar.f40604c);
        }
    }

    public static class b implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f40606a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f40607b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f40608c;

        public b(int i11, int i12, int i13) {
            this.f40606a = i11;
            this.f40607b = i12;
            this.f40608c = i13;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            int iC = gf.c.c(this.f40606a, bVar.f40606a);
            if (iC != 0) {
                return iC;
            }
            int iC2 = gf.c.c(this.f40607b, bVar.f40607b);
            return iC2 != 0 ? iC2 : gf.c.c(this.f40608c, bVar.f40608c);
        }
    }

    public h(int i11, int i12, int i13, int i14, int i15, short[] sArr, b[] bVarArr, a[] aVarArr) {
        super(i11);
        this.f40595b = i12;
        this.f40596c = i13;
        this.f40597d = i14;
        this.f40598e = i15;
        this.f40599f = sArr;
        this.f40600g = bVarArr;
        this.f40601h = aVarArr;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(h hVar) {
        int iC = gf.c.c(this.f40595b, hVar.f40595b);
        if (iC != 0) {
            return iC;
        }
        int iC2 = gf.c.c(this.f40596c, hVar.f40596c);
        if (iC2 != 0) {
            return iC2;
        }
        int iC3 = gf.c.c(this.f40597d, hVar.f40597d);
        if (iC3 != 0) {
            return iC3;
        }
        int iC4 = gf.c.c(this.f40598e, hVar.f40598e);
        if (iC4 != 0) {
            return iC4;
        }
        int iF = gf.c.f(this.f40599f, hVar.f40599f);
        if (iF != 0) {
            return iF;
        }
        int iA = gf.c.a(this.f40600g, hVar.f40600g);
        return iA != 0 ? iA : gf.c.a(this.f40601h, hVar.f40601h);
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public boolean equals(Object obj) {
        return (obj instanceof h) && compareTo((h) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public int hashCode() {
        return gf.e.a(Integer.valueOf(this.f40595b), Integer.valueOf(this.f40596c), Integer.valueOf(this.f40597d), Integer.valueOf(this.f40598e), this.f40599f, this.f40600g, this.f40601h);
    }
}
