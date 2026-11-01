package com.tencent.tinker.android.dex;

/* JADX INFO: loaded from: classes5.dex */
public class u extends v.a.AbstractC0583a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f40653b;

    public u(int i11, String str) {
        super(i11);
        this.f40653b = str;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(u uVar) {
        return this.f40653b.compareTo(uVar.f40653b);
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public boolean equals(Object obj) {
        return (obj instanceof u) && compareTo((u) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public int hashCode() {
        return this.f40653b.hashCode();
    }
}
