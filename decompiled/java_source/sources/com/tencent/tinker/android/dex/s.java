package com.tencent.tinker.android.dex;

/* JADX INFO: loaded from: classes5.dex */
public final class s extends v.a.AbstractC0583a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f40650b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f40651c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f40652d;

    public s(int i11, int i12, int i13, int i14) {
        super(i11);
        this.f40650b = i12;
        this.f40651c = i13;
        this.f40652d = i14;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(s sVar) {
        int iH = gf.c.h(this.f40650b, sVar.f40650b);
        if (iH != 0) {
            return iH;
        }
        int iH2 = gf.c.h(this.f40651c, sVar.f40651c);
        return iH2 != 0 ? iH2 : gf.c.c(this.f40652d, sVar.f40652d);
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public boolean equals(Object obj) {
        return (obj instanceof s) && compareTo((s) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public int hashCode() {
        return gf.e.a(Integer.valueOf(this.f40650b), Integer.valueOf(this.f40651c), Integer.valueOf(this.f40652d));
    }
}
