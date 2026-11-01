package g9;

import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes4.dex */
public final class u implements b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v f63457a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f63458b;

    public u(v vVar, long j11) {
        this.f63457a = vVar;
        this.f63458b = j11;
    }

    private c0 b(long j11, long j12) {
        return new c0((j11 * 1000000) / ((long) this.f63457a.f63463e), this.f63458b + j12);
    }

    @Override // g9.b0
    public long getDurationUs() {
        return this.f63457a.f();
    }

    @Override // g9.b0
    public b0.a getSeekPoints(long j11) {
        com.google.android.exoplayer2.util.a.i(this.f63457a.f63469k);
        v vVar = this.f63457a;
        v.a aVar = vVar.f63469k;
        long[] jArr = aVar.f63471a;
        long[] jArr2 = aVar.f63472b;
        int i11 = p0.i(jArr, vVar.i(j11), true, false);
        c0 c0VarB = b(i11 == -1 ? 0L : jArr[i11], i11 != -1 ? jArr2[i11] : 0L);
        if (c0VarB.f63375a == j11 || i11 == jArr.length - 1) {
            return new b0.a(c0VarB);
        }
        int i12 = i11 + 1;
        return new b0.a(c0VarB, b(jArr[i12], jArr2[i12]));
    }

    @Override // g9.b0
    public boolean isSeekable() {
        return true;
    }
}
