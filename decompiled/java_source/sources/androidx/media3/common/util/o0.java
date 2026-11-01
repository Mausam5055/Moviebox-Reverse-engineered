package androidx.media3.common.util;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long[] f10432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object[] f10433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f10434c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10435d;

    public o0() {
        this(10);
    }

    public o0(int i11) {
        this.f10432a = new long[i11];
        this.f10433b = f(i11);
    }

    private void b(long j11, Object obj) {
        int i11 = this.f10434c;
        int i12 = this.f10435d;
        Object[] objArr = this.f10433b;
        int length = (i11 + i12) % objArr.length;
        this.f10432a[length] = j11;
        objArr[length] = obj;
        this.f10435d = i12 + 1;
    }

    private void d(long j11) {
        int i11 = this.f10435d;
        if (i11 > 0) {
            if (j11 <= this.f10432a[((this.f10434c + i11) - 1) % this.f10433b.length]) {
                c();
            }
        }
    }

    private void e() {
        int length = this.f10433b.length;
        if (this.f10435d < length) {
            return;
        }
        int i11 = length * 2;
        long[] jArr = new long[i11];
        Object[] objArrF = f(i11);
        int i12 = this.f10434c;
        int i13 = length - i12;
        System.arraycopy(this.f10432a, i12, jArr, 0, i13);
        System.arraycopy(this.f10433b, this.f10434c, objArrF, 0, i13);
        int i14 = this.f10434c;
        if (i14 > 0) {
            System.arraycopy(this.f10432a, 0, jArr, i13, i14);
            System.arraycopy(this.f10433b, 0, objArrF, i13, this.f10434c);
        }
        this.f10432a = jArr;
        this.f10433b = objArrF;
        this.f10434c = 0;
    }

    private static Object[] f(int i11) {
        return new Object[i11];
    }

    private Object h(long j11, boolean z10) {
        Object objK = null;
        long j12 = Long.MAX_VALUE;
        while (this.f10435d > 0) {
            long j13 = j11 - this.f10432a[this.f10434c];
            if (j13 < 0 && (z10 || (-j13) >= j12)) {
                break;
            }
            objK = k();
            j12 = j13;
        }
        return objK;
    }

    private Object k() {
        a.g(this.f10435d > 0);
        Object[] objArr = this.f10433b;
        int i11 = this.f10434c;
        Object obj = objArr[i11];
        objArr[i11] = null;
        this.f10434c = (i11 + 1) % objArr.length;
        this.f10435d--;
        return obj;
    }

    public synchronized void a(long j11, Object obj) {
        d(j11);
        e();
        b(j11, obj);
    }

    public synchronized void c() {
        this.f10434c = 0;
        this.f10435d = 0;
        Arrays.fill(this.f10433b, (Object) null);
    }

    public synchronized Object g(long j11) {
        return h(j11, false);
    }

    public synchronized Object i() {
        return this.f10435d == 0 ? null : k();
    }

    public synchronized Object j(long j11) {
        return h(j11, true);
    }

    public synchronized int l() {
        return this.f10435d;
    }
}
