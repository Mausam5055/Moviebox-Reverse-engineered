package g9;

import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes4.dex */
public final class z implements b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long[] f63478a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f63479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f63480c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f63481d;

    public z(long[] jArr, long[] jArr2, long j11) {
        com.google.android.exoplayer2.util.a.a(jArr.length == jArr2.length);
        int length = jArr2.length;
        boolean z10 = length > 0;
        this.f63481d = z10;
        if (!z10 || jArr2[0] <= 0) {
            this.f63478a = jArr;
            this.f63479b = jArr2;
        } else {
            int i11 = length + 1;
            long[] jArr3 = new long[i11];
            this.f63478a = jArr3;
            long[] jArr4 = new long[i11];
            this.f63479b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        }
        this.f63480c = j11;
    }

    @Override // g9.b0
    public long getDurationUs() {
        return this.f63480c;
    }

    @Override // g9.b0
    public b0.a getSeekPoints(long j11) {
        if (!this.f63481d) {
            return new b0.a(c0.f63374c);
        }
        int i11 = p0.i(this.f63479b, j11, true, true);
        c0 c0Var = new c0(this.f63479b[i11], this.f63478a[i11]);
        if (c0Var.f63375a == j11 || i11 == this.f63479b.length - 1) {
            return new b0.a(c0Var);
        }
        int i12 = i11 + 1;
        return new b0.a(c0Var, new c0(this.f63479b[i12], this.f63478a[i12]));
    }

    @Override // g9.b0
    public boolean isSeekable() {
        return this.f63481d;
    }
}
