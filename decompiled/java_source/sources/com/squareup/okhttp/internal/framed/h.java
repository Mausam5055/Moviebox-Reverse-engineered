package com.squareup.okhttp.internal.framed;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f40417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f40418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f40419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f40420d = new int[10];

    void a() {
        this.f40419c = 0;
        this.f40418b = 0;
        this.f40417a = 0;
        Arrays.fill(this.f40420d, 0);
    }

    int b(int i11) {
        int i12 = h(i11) ? 2 : 0;
        return k(i11) ? i12 | 1 : i12;
    }

    int c(int i11) {
        return this.f40420d[i11];
    }

    int d() {
        if ((this.f40417a & 2) != 0) {
            return this.f40420d[1];
        }
        return -1;
    }

    int e(int i11) {
        return (this.f40417a & 128) != 0 ? this.f40420d[7] : i11;
    }

    int f(int i11) {
        return (this.f40417a & 16) != 0 ? this.f40420d[4] : i11;
    }

    int g(int i11) {
        return (this.f40417a & 32) != 0 ? this.f40420d[5] : i11;
    }

    boolean h(int i11) {
        return ((1 << i11) & this.f40419c) != 0;
    }

    boolean i(int i11) {
        return ((1 << i11) & this.f40417a) != 0;
    }

    void j(h hVar) {
        for (int i11 = 0; i11 < 10; i11++) {
            if (hVar.i(i11)) {
                l(i11, hVar.b(i11), hVar.c(i11));
            }
        }
    }

    boolean k(int i11) {
        return ((1 << i11) & this.f40418b) != 0;
    }

    h l(int i11, int i12, int i13) {
        int[] iArr = this.f40420d;
        if (i11 >= iArr.length) {
            return this;
        }
        int i14 = 1 << i11;
        this.f40417a |= i14;
        if ((i12 & 1) != 0) {
            this.f40418b |= i14;
        } else {
            this.f40418b &= ~i14;
        }
        if ((i12 & 2) != 0) {
            this.f40419c |= i14;
        } else {
            this.f40419c &= ~i14;
        }
        iArr[i11] = i13;
        return this;
    }

    int m() {
        return Integer.bitCount(this.f40417a);
    }
}
