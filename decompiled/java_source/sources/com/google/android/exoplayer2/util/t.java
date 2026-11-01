package com.google.android.exoplayer2.util;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f27658a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long[] f27659b;

    public t() {
        this(32);
    }

    public t(int i11) {
        this.f27659b = new long[i11];
    }

    public void a(long j11) {
        int i11 = this.f27658a;
        long[] jArr = this.f27659b;
        if (i11 == jArr.length) {
            this.f27659b = Arrays.copyOf(jArr, i11 * 2);
        }
        long[] jArr2 = this.f27659b;
        int i12 = this.f27658a;
        this.f27658a = i12 + 1;
        jArr2[i12] = j11;
    }

    public long b(int i11) {
        if (i11 >= 0 && i11 < this.f27658a) {
            return this.f27659b[i11];
        }
        throw new IndexOutOfBoundsException("Invalid index " + i11 + ", size is " + this.f27658a);
    }

    public int c() {
        return this.f27658a;
    }

    public long[] d() {
        return Arrays.copyOf(this.f27659b, this.f27658a);
    }
}
