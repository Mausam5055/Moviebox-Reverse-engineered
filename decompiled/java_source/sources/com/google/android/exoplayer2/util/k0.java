package com.google.android.exoplayer2.util;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long[] f27599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object[] f27600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f27601c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f27602d;

    public k0() {
        this(10);
    }

    public k0(int i11) {
        this.f27599a = new long[i11];
        this.f27600b = f(i11);
    }

    private void b(long j11, Object obj) {
        int i11 = this.f27601c;
        int i12 = this.f27602d;
        Object[] objArr = this.f27600b;
        int length = (i11 + i12) % objArr.length;
        this.f27599a[length] = j11;
        objArr[length] = obj;
        this.f27602d = i12 + 1;
    }

    private void d(long j11) {
        int i11 = this.f27602d;
        if (i11 > 0) {
            if (j11 <= this.f27599a[((this.f27601c + i11) - 1) % this.f27600b.length]) {
                c();
            }
        }
    }

    private void e() {
        int length = this.f27600b.length;
        if (this.f27602d < length) {
            return;
        }
        int i11 = length * 2;
        long[] jArr = new long[i11];
        Object[] objArrF = f(i11);
        int i12 = this.f27601c;
        int i13 = length - i12;
        System.arraycopy(this.f27599a, i12, jArr, 0, i13);
        System.arraycopy(this.f27600b, this.f27601c, objArrF, 0, i13);
        int i14 = this.f27601c;
        if (i14 > 0) {
            System.arraycopy(this.f27599a, 0, jArr, i13, i14);
            System.arraycopy(this.f27600b, 0, objArrF, i13, this.f27601c);
        }
        this.f27599a = jArr;
        this.f27600b = objArrF;
        this.f27601c = 0;
    }

    private static Object[] f(int i11) {
        return new Object[i11];
    }

    private Object h(long j11, boolean z10) {
        Object objK = null;
        long j12 = Long.MAX_VALUE;
        while (this.f27602d > 0) {
            long j13 = j11 - this.f27599a[this.f27601c];
            if (j13 < 0 && (z10 || (-j13) >= j12)) {
                break;
            }
            objK = k();
            j12 = j13;
        }
        return objK;
    }

    private Object k() {
        a.g(this.f27602d > 0);
        Object[] objArr = this.f27600b;
        int i11 = this.f27601c;
        Object obj = objArr[i11];
        objArr[i11] = null;
        this.f27601c = (i11 + 1) % objArr.length;
        this.f27602d--;
        return obj;
    }

    public synchronized void a(long j11, Object obj) {
        d(j11);
        e();
        b(j11, obj);
    }

    public synchronized void c() {
        this.f27601c = 0;
        this.f27602d = 0;
        Arrays.fill(this.f27600b, (Object) null);
    }

    public synchronized Object g(long j11) {
        return h(j11, false);
    }

    public synchronized Object i() {
        return this.f27602d == 0 ? null : k();
    }

    public synchronized Object j(long j11) {
        return h(j11, true);
    }

    public synchronized int l() {
        return this.f27602d;
    }
}
