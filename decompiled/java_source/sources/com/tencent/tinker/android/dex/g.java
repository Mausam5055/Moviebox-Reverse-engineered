package com.tencent.tinker.android.dex;

/* JADX INFO: loaded from: classes5.dex */
public final class g extends v.a.AbstractC0583a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f40587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f40588c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f40589d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f40590e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f40591f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f40592g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f40593h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f40594i;

    public g(int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
        super(i11);
        this.f40587b = i12;
        this.f40588c = i13;
        this.f40589d = i14;
        this.f40590e = i15;
        this.f40591f = i16;
        this.f40592g = i17;
        this.f40593h = i18;
        this.f40594i = i19;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(g gVar) {
        int iH = gf.c.h(this.f40587b, gVar.f40587b);
        if (iH != 0) {
            return iH;
        }
        int iC = gf.c.c(this.f40588c, gVar.f40588c);
        if (iC != 0) {
            return iC;
        }
        int iH2 = gf.c.h(this.f40589d, gVar.f40589d);
        if (iH2 != 0) {
            return iH2;
        }
        int iC2 = gf.c.c(this.f40590e, gVar.f40590e);
        if (iC2 != 0) {
            return iC2;
        }
        int iH3 = gf.c.h(this.f40591f, gVar.f40591f);
        if (iH3 != 0) {
            return iH3;
        }
        int iC3 = gf.c.c(this.f40592g, gVar.f40592g);
        if (iC3 != 0) {
            return iC3;
        }
        int iC4 = gf.c.c(this.f40593h, gVar.f40593h);
        return iC4 != 0 ? iC4 : gf.c.c(this.f40594i, gVar.f40594i);
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public boolean equals(Object obj) {
        return (obj instanceof g) && compareTo((g) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public int hashCode() {
        return gf.e.a(Integer.valueOf(this.f40587b), Integer.valueOf(this.f40588c), Integer.valueOf(this.f40589d), Integer.valueOf(this.f40590e), Integer.valueOf(this.f40591f), Integer.valueOf(this.f40592g), Integer.valueOf(this.f40593h), Integer.valueOf(this.f40594i));
    }
}
