package com.tencent.tinker.android.dex;

/* JADX INFO: loaded from: classes5.dex */
public final class o extends v.a.AbstractC0583a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f40644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f40645c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f40646d;

    public o(int i11, int i12, int i13, int i14) {
        super(i11);
        this.f40644b = i12;
        this.f40645c = i13;
        this.f40646d = i14;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(o oVar) {
        int i11 = this.f40644b;
        int i12 = oVar.f40644b;
        if (i11 != i12) {
            return gf.c.h(i11, i12);
        }
        int i13 = this.f40646d;
        int i14 = oVar.f40646d;
        return i13 != i14 ? gf.c.h(i13, i14) : gf.c.h(this.f40645c, oVar.f40645c);
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public boolean equals(Object obj) {
        return (obj instanceof o) && compareTo((o) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public int hashCode() {
        return gf.e.a(Integer.valueOf(this.f40644b), Integer.valueOf(this.f40645c), Integer.valueOf(this.f40646d));
    }
}
