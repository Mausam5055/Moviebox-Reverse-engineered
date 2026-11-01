package com.tencent.tinker.android.dex;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends v.a.AbstractC0583a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f40569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l f40570c;

    public a(int i11, byte b11, l lVar) {
        super(i11);
        this.f40569b = b11;
        this.f40570c = lVar;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(a aVar) {
        int iCompareTo = this.f40570c.compareTo(aVar.f40570c);
        return iCompareTo != 0 ? iCompareTo : gf.c.g(this.f40569b, aVar.f40569b);
    }

    public n b() {
        return new n(this.f40570c, 29);
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public boolean equals(Object obj) {
        return (obj instanceof a) && compareTo((a) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public int hashCode() {
        return gf.e.a(Byte.valueOf(this.f40569b), this.f40570c);
    }
}
