package com.tencent.tinker.android.dex;

/* JADX INFO: loaded from: classes5.dex */
public final class f extends v.a.AbstractC0583a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a[] f40578b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a[] f40579c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b[] f40580d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b[] f40581e;

    public static class a implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f40582a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f40583b;

        public a(int i11, int i12) {
            this.f40582a = i11;
            this.f40583b = i12;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(a aVar) {
            int iH = gf.c.h(this.f40582a, aVar.f40582a);
            return iH != 0 ? iH : gf.c.c(this.f40583b, aVar.f40583b);
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && compareTo((a) obj) == 0;
        }

        public int hashCode() {
            return gf.e.a(Integer.valueOf(this.f40582a), Integer.valueOf(this.f40583b));
        }
    }

    public static class b implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f40584a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f40585b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f40586c;

        public b(int i11, int i12, int i13) {
            this.f40584a = i11;
            this.f40585b = i12;
            this.f40586c = i13;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            int iH = gf.c.h(this.f40584a, bVar.f40584a);
            if (iH != 0) {
                return iH;
            }
            int iC = gf.c.c(this.f40585b, bVar.f40585b);
            return iC != 0 ? iC : gf.c.c(this.f40586c, bVar.f40586c);
        }

        public boolean equals(Object obj) {
            return (obj instanceof b) && compareTo((b) obj) == 0;
        }

        public int hashCode() {
            return gf.e.a(Integer.valueOf(this.f40584a), Integer.valueOf(this.f40585b), Integer.valueOf(this.f40586c));
        }
    }

    public f(int i11, a[] aVarArr, a[] aVarArr2, b[] bVarArr, b[] bVarArr2) {
        super(i11);
        this.f40578b = aVarArr;
        this.f40579c = aVarArr2;
        this.f40580d = bVarArr;
        this.f40581e = bVarArr2;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(f fVar) {
        int iA = gf.c.a(this.f40578b, fVar.f40578b);
        if (iA != 0) {
            return iA;
        }
        int iA2 = gf.c.a(this.f40579c, fVar.f40579c);
        if (iA2 != 0) {
            return iA2;
        }
        int iA3 = gf.c.a(this.f40580d, fVar.f40580d);
        return iA3 != 0 ? iA3 : gf.c.a(this.f40581e, fVar.f40581e);
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public boolean equals(Object obj) {
        return (obj instanceof f) && compareTo((f) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public int hashCode() {
        return gf.e.a(this.f40578b, this.f40579c, this.f40580d, this.f40581e);
    }
}
