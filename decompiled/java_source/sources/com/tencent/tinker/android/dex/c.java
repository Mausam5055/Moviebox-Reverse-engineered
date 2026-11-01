package com.tencent.tinker.android.dex;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class c extends v.a.AbstractC0583a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f40572b;

    public c(int i11, int[] iArr) {
        super(i11);
        this.f40572b = iArr;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(c cVar) {
        int length = this.f40572b.length;
        int length2 = cVar.f40572b.length;
        if (length != length2) {
            return gf.c.h(length, length2);
        }
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = this.f40572b[i11];
            int i13 = cVar.f40572b[i11];
            if (i12 != i13) {
                return gf.c.h(i12, i13);
            }
        }
        return 0;
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public boolean equals(Object obj) {
        return (obj instanceof c) && compareTo((c) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public int hashCode() {
        return Arrays.hashCode(this.f40572b);
    }
}
