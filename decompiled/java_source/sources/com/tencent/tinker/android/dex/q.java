package com.tencent.tinker.android.dex;

/* JADX INFO: loaded from: classes5.dex */
public final class q extends v.a.AbstractC0583a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f40647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f40648c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f40649d;

    public q(int i11, int i12, int i13, int i14) {
        super(i11);
        this.f40647b = i12;
        this.f40648c = i13;
        this.f40649d = i14;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(q qVar) {
        int i11 = this.f40647b;
        int i12 = qVar.f40647b;
        if (i11 != i12) {
            return gf.c.h(i11, i12);
        }
        int i13 = this.f40649d;
        int i14 = qVar.f40649d;
        return i13 != i14 ? gf.c.h(i13, i14) : gf.c.h(this.f40648c, qVar.f40648c);
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public boolean equals(Object obj) {
        return (obj instanceof q) && compareTo((q) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public int hashCode() {
        return gf.e.a(Integer.valueOf(this.f40647b), Integer.valueOf(this.f40648c), Integer.valueOf(this.f40649d));
    }
}
