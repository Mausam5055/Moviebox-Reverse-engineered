package com.tencent.tinker.android.dex;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class l extends v.a.AbstractC0583a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f40637b;

    class a implements gf.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f40638a = 0;

        a() {
        }

        @Override // gf.a
        public byte readByte() {
            byte[] bArr = l.this.f40637b;
            int i11 = this.f40638a;
            this.f40638a = i11 + 1;
            return bArr[i11];
        }
    }

    public l(int i11, byte[] bArr) {
        super(i11);
        this.f40637b = bArr;
    }

    public gf.a a() {
        return new a();
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(l lVar) {
        return gf.c.d(this.f40637b, lVar.f40637b);
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public boolean equals(Object obj) {
        return (obj instanceof l) && compareTo((l) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public int hashCode() {
        return Arrays.hashCode(this.f40637b);
    }
}
