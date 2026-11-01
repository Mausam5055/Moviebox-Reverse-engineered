package androidx.media3.common.util;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f10465a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long[] f10466b;

    public v() {
        this(32);
    }

    public v(int i11) {
        this.f10466b = new long[i11];
    }

    public void a(long j11) {
        int i11 = this.f10465a;
        long[] jArr = this.f10466b;
        if (i11 == jArr.length) {
            this.f10466b = Arrays.copyOf(jArr, i11 * 2);
        }
        long[] jArr2 = this.f10466b;
        int i12 = this.f10465a;
        this.f10465a = i12 + 1;
        jArr2[i12] = j11;
    }

    public void b(long[] jArr) {
        int length = this.f10465a + jArr.length;
        long[] jArr2 = this.f10466b;
        if (length > jArr2.length) {
            this.f10466b = Arrays.copyOf(jArr2, Math.max(jArr2.length * 2, length));
        }
        System.arraycopy(jArr, 0, this.f10466b, this.f10465a, jArr.length);
        this.f10465a = length;
    }

    public long c(int i11) {
        if (i11 >= 0 && i11 < this.f10465a) {
            return this.f10466b[i11];
        }
        throw new IndexOutOfBoundsException("Invalid index " + i11 + ", size is " + this.f10465a);
    }

    public int d() {
        return this.f10465a;
    }
}
