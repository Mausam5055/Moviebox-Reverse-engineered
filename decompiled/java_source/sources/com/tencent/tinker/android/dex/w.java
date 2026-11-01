package com.tencent.tinker.android.dex;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class w extends v.a.AbstractC0583a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final w f40686c = new w(0, j.f40612n);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public short[] f40687b;

    public w(int i11, short[] sArr) {
        super(i11);
        this.f40687b = sArr;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(w wVar) {
        return gf.c.f(this.f40687b, wVar.f40687b);
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public boolean equals(Object obj) {
        return (obj instanceof w) && compareTo((w) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public int hashCode() {
        return Arrays.hashCode(this.f40687b);
    }
}
