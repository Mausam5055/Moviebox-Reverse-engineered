package com.google.common.collect;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
class p3 extends o3 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    transient long[] f30844i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private transient int f30845j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private transient int f30846k;

    p3(int i11) {
        this(i11, 1.0f);
    }

    p3(int i11, float f11) {
        super(i11, f11);
    }

    private int E(int i11) {
        return (int) (this.f30844i[i11] >>> 32);
    }

    private int F(int i11) {
        return (int) this.f30844i[i11];
    }

    private void G(int i11, int i12) {
        long[] jArr = this.f30844i;
        jArr[i11] = (jArr[i11] & 4294967295L) | (((long) i12) << 32);
    }

    private void H(int i11, int i12) {
        if (i11 == -2) {
            this.f30845j = i12;
        } else {
            I(i11, i12);
        }
        if (i12 == -2) {
            this.f30846k = i11;
        } else {
            G(i12, i11);
        }
    }

    private void I(int i11, int i12) {
        long[] jArr = this.f30844i;
        jArr[i11] = (jArr[i11] & (-4294967296L)) | (((long) i12) & 4294967295L);
    }

    @Override // com.google.common.collect.o3
    public void a() {
        super.a();
        this.f30845j = -2;
        this.f30846k = -2;
    }

    @Override // com.google.common.collect.o3
    int e() {
        int i11 = this.f30845j;
        if (i11 == -2) {
            return -1;
        }
        return i11;
    }

    @Override // com.google.common.collect.o3
    void n(int i11, float f11) {
        super.n(i11, f11);
        this.f30845j = -2;
        this.f30846k = -2;
        long[] jArr = new long[i11];
        this.f30844i = jArr;
        Arrays.fill(jArr, -1L);
    }

    @Override // com.google.common.collect.o3
    void o(int i11, Object obj, int i12, int i13) {
        super.o(i11, obj, i12, i13);
        H(this.f30846k, i11);
        H(i11, -2);
    }

    @Override // com.google.common.collect.o3
    void p(int i11) {
        int iC = C() - 1;
        H(E(i11), F(i11));
        if (i11 < iC) {
            H(E(iC), i11);
            H(i11, F(iC));
        }
        super.p(i11);
    }

    @Override // com.google.common.collect.o3
    int s(int i11) {
        int iF = F(i11);
        if (iF == -2) {
            return -1;
        }
        return iF;
    }

    @Override // com.google.common.collect.o3
    int t(int i11, int i12) {
        return i11 == C() ? i12 : i11;
    }

    @Override // com.google.common.collect.o3
    void y(int i11) {
        super.y(i11);
        long[] jArr = this.f30844i;
        int length = jArr.length;
        long[] jArrCopyOf = Arrays.copyOf(jArr, i11);
        this.f30844i = jArrCopyOf;
        Arrays.fill(jArrCopyOf, length, i11, -1L);
    }
}
