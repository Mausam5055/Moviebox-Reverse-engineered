package com.tencent.tinker.android.dex;

/* JADX INFO: loaded from: classes5.dex */
public class d extends v.a.AbstractC0583a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f40573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f40574c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f40575d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f40576e;

    public d(int i11, int i12, int[][] iArr, int[][] iArr2, int[][] iArr3) {
        super(i11);
        this.f40573b = i12;
        this.f40574c = iArr;
        this.f40575d = iArr2;
        this.f40576e = iArr3;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(d dVar) {
        int i11 = this.f40573b;
        int i12 = dVar.f40573b;
        if (i11 != i12) {
            return gf.c.h(i11, i12);
        }
        int length = this.f40574c.length;
        int length2 = this.f40575d.length;
        int length3 = this.f40576e.length;
        int length4 = dVar.f40574c.length;
        int length5 = dVar.f40575d.length;
        int length6 = dVar.f40576e.length;
        if (length != length4) {
            return gf.c.c(length, length4);
        }
        if (length2 != length5) {
            return gf.c.c(length2, length5);
        }
        if (length3 != length6) {
            return gf.c.c(length3, length6);
        }
        for (int i13 = 0; i13 < length; i13++) {
            int[] iArr = this.f40574c[i13];
            int i14 = iArr[0];
            int i15 = iArr[1];
            int[] iArr2 = dVar.f40574c[i13];
            int i16 = iArr2[0];
            int i17 = iArr2[1];
            if (i14 != i16) {
                return gf.c.h(i14, i16);
            }
            if (i15 != i17) {
                return gf.c.c(i15, i17);
            }
        }
        for (int i18 = 0; i18 < length2; i18++) {
            int[] iArr3 = this.f40575d[i18];
            int i19 = iArr3[0];
            int i20 = iArr3[1];
            int[] iArr4 = dVar.f40575d[i18];
            int i21 = iArr4[0];
            int i22 = iArr4[1];
            if (i19 != i21) {
                return gf.c.h(i19, i21);
            }
            if (i20 != i22) {
                return gf.c.c(i20, i22);
            }
        }
        for (int i23 = 0; i23 < length3; i23++) {
            int[] iArr5 = this.f40576e[i23];
            int i24 = iArr5[0];
            int i25 = iArr5[1];
            int[] iArr6 = dVar.f40576e[i23];
            int i26 = iArr6[0];
            int i27 = iArr6[1];
            if (i24 != i26) {
                return gf.c.h(i24, i26);
            }
            if (i25 != i27) {
                return gf.c.c(i25, i27);
            }
        }
        return 0;
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public boolean equals(Object obj) {
        return (obj instanceof d) && compareTo((d) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.v.a.AbstractC0583a
    public int hashCode() {
        return gf.e.a(Integer.valueOf(this.f40573b), this.f40574c, this.f40575d, this.f40576e);
    }
}
