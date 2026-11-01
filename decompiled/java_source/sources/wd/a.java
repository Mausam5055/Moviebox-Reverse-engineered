package wd;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b[] f77639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f77640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f77641c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f77642d;

    a(int i11, int i12) {
        b[] bVarArr = new b[i11];
        this.f77639a = bVarArr;
        int length = bVarArr.length;
        for (int i13 = 0; i13 < length; i13++) {
            this.f77639a[i13] = new b(((i12 + 4) * 17) + 1);
        }
        this.f77642d = i12 * 17;
        this.f77641c = i11;
        this.f77640b = -1;
    }

    b a() {
        return this.f77639a[this.f77640b];
    }

    public byte[][] b(int i11, int i12) {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.f77641c * i12, this.f77642d * i11);
        int i13 = this.f77641c * i12;
        for (int i14 = 0; i14 < i13; i14++) {
            bArr[(i13 - i14) - 1] = this.f77639a[i14 / i12].b(i11);
        }
        return bArr;
    }

    void c() {
        this.f77640b++;
    }
}
