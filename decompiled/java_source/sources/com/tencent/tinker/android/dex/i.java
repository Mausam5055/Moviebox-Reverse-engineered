package com.tencent.tinker.android.dex;

/* JADX INFO: loaded from: classes5.dex */
public class i extends v.a.AbstractC0583a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f40609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f40610c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f40611d;

    public i(int i11, int i12, int[] iArr, byte[] bArr) {
        super(i11);
        this.f40609b = i12;
        this.f40610c = iArr;
        this.f40611d = bArr;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(i iVar) {
        int i11 = this.f40609b;
        int i12 = iVar.f40609b;
        if (i11 != i12) {
            return i11 - i12;
        }
        int iE = gf.c.e(this.f40610c, iVar.f40610c);
        return iE != 0 ? iE : gf.c.d(this.f40611d, iVar.f40611d);
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public boolean equals(Object obj) {
        return (obj instanceof i) && compareTo((i) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public int hashCode() {
        return gf.e.a(Integer.valueOf(this.f40609b), this.f40610c, this.f40611d);
    }
}
