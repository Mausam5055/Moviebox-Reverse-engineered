package androidx.media3.common.util;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f10467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f10468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f10469c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long[] f10470d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10471e;

    public w() {
        this(16);
    }

    public w(int i11) {
        a.a(i11 >= 0 && i11 <= 1073741824);
        i11 = i11 == 0 ? 1 : i11;
        i11 = Integer.bitCount(i11) != 1 ? Integer.highestOneBit(i11 - 1) << 1 : i11;
        this.f10467a = 0;
        this.f10468b = -1;
        this.f10469c = 0;
        long[] jArr = new long[i11];
        this.f10470d = jArr;
        this.f10471e = jArr.length - 1;
    }

    private void c() {
        long[] jArr = this.f10470d;
        int length = jArr.length << 1;
        if (length < 0) {
            throw new IllegalStateException();
        }
        long[] jArr2 = new long[length];
        int length2 = jArr.length;
        int i11 = this.f10467a;
        int i12 = length2 - i11;
        System.arraycopy(jArr, i11, jArr2, 0, i12);
        System.arraycopy(this.f10470d, 0, jArr2, i12, i11);
        this.f10467a = 0;
        this.f10468b = this.f10469c - 1;
        this.f10470d = jArr2;
        this.f10471e = jArr2.length - 1;
    }

    public void a(long j11) {
        if (this.f10469c == this.f10470d.length) {
            c();
        }
        int i11 = (this.f10468b + 1) & this.f10471e;
        this.f10468b = i11;
        this.f10470d[i11] = j11;
        this.f10469c++;
    }

    public void b() {
        this.f10467a = 0;
        this.f10468b = -1;
        this.f10469c = 0;
    }

    public long d() {
        if (this.f10469c != 0) {
            return this.f10470d[this.f10467a];
        }
        throw new NoSuchElementException();
    }

    public boolean e() {
        return this.f10469c == 0;
    }

    public long f() {
        int i11 = this.f10469c;
        if (i11 == 0) {
            throw new NoSuchElementException();
        }
        long[] jArr = this.f10470d;
        int i12 = this.f10467a;
        long j11 = jArr[i12];
        this.f10467a = this.f10471e & (i12 + 1);
        this.f10469c = i11 - 1;
        return j11;
    }
}
