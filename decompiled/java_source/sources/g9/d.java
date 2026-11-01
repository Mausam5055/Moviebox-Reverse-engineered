package g9;

import com.google.android.exoplayer2.util.p0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f63377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f63378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f63379c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long[] f63380d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long[] f63381e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f63382f;

    public d(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f63378b = iArr;
        this.f63379c = jArr;
        this.f63380d = jArr2;
        this.f63381e = jArr3;
        int length = iArr.length;
        this.f63377a = length;
        if (length > 0) {
            this.f63382f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f63382f = 0L;
        }
    }

    public int b(long j11) {
        return p0.i(this.f63381e, j11, true, true);
    }

    @Override // g9.b0
    public long getDurationUs() {
        return this.f63382f;
    }

    @Override // g9.b0
    public b0.a getSeekPoints(long j11) {
        int iB = b(j11);
        c0 c0Var = new c0(this.f63381e[iB], this.f63379c[iB]);
        if (c0Var.f63375a >= j11 || iB == this.f63377a - 1) {
            return new b0.a(c0Var);
        }
        int i11 = iB + 1;
        return new b0.a(c0Var, new c0(this.f63381e[i11], this.f63379c[i11]));
    }

    @Override // g9.b0
    public boolean isSeekable() {
        return true;
    }

    public String toString() {
        return "ChunkIndex(length=" + this.f63377a + ", sizes=" + Arrays.toString(this.f63378b) + ", offsets=" + Arrays.toString(this.f63379c) + ", timeUs=" + Arrays.toString(this.f63381e) + ", durationsUs=" + Arrays.toString(this.f63380d) + ")";
    }
}
