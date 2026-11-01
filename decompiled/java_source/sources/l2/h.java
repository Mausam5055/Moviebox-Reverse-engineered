package l2;

import androidx.media3.common.util.a1;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f68583a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f68584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f68585c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long[] f68586d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long[] f68587e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f68588f;

    public h(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f68584b = iArr;
        this.f68585c = jArr;
        this.f68586d = jArr2;
        this.f68587e = jArr3;
        int length = iArr.length;
        this.f68583a = length;
        if (length > 0) {
            this.f68588f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f68588f = 0L;
        }
    }

    public int b(long j11) {
        return a1.h(this.f68587e, j11, true, true);
    }

    @Override // l2.m0
    public long getDurationUs() {
        return this.f68588f;
    }

    @Override // l2.m0
    public m0.a getSeekPoints(long j11) {
        int iB = b(j11);
        n0 n0Var = new n0(this.f68587e[iB], this.f68585c[iB]);
        if (n0Var.f68650a >= j11 || iB == this.f68583a - 1) {
            return new m0.a(n0Var);
        }
        int i11 = iB + 1;
        return new m0.a(n0Var, new n0(this.f68587e[i11], this.f68585c[i11]));
    }

    @Override // l2.m0
    public boolean isSeekable() {
        return true;
    }

    public String toString() {
        return "ChunkIndex(length=" + this.f68583a + ", sizes=" + Arrays.toString(this.f68584b) + ", offsets=" + Arrays.toString(this.f68585c) + ", timeUs=" + Arrays.toString(this.f68587e) + ", durationsUs=" + Arrays.toString(this.f68586d) + ")";
    }
}
