package com.google.android.exoplayer2.mediacodec;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes3.dex */
final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f25387a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f25388b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f25389c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int[] f25390d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f25391e;

    public k() {
        int[] iArr = new int[16];
        this.f25390d = iArr;
        this.f25391e = iArr.length - 1;
    }

    private void c() {
        int[] iArr = this.f25390d;
        int length = iArr.length << 1;
        if (length < 0) {
            throw new IllegalStateException();
        }
        int[] iArr2 = new int[length];
        int length2 = iArr.length;
        int i11 = this.f25387a;
        int i12 = length2 - i11;
        System.arraycopy(iArr, i11, iArr2, 0, i12);
        System.arraycopy(this.f25390d, 0, iArr2, i12, i11);
        this.f25387a = 0;
        this.f25388b = this.f25389c - 1;
        this.f25390d = iArr2;
        this.f25391e = iArr2.length - 1;
    }

    public void a(int i11) {
        if (this.f25389c == this.f25390d.length) {
            c();
        }
        int i12 = (this.f25388b + 1) & this.f25391e;
        this.f25388b = i12;
        this.f25390d[i12] = i11;
        this.f25389c++;
    }

    public void b() {
        this.f25387a = 0;
        this.f25388b = -1;
        this.f25389c = 0;
    }

    public boolean d() {
        return this.f25389c == 0;
    }

    public int e() {
        int i11 = this.f25389c;
        if (i11 == 0) {
            throw new NoSuchElementException();
        }
        int[] iArr = this.f25390d;
        int i12 = this.f25387a;
        int i13 = iArr[i12];
        this.f25387a = (i12 + 1) & this.f25391e;
        this.f25389c = i11 - 1;
        return i13;
    }
}
