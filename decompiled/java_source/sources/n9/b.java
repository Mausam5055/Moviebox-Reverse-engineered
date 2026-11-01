package n9;

import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.t;
import g9.b0;
import g9.c0;

/* JADX INFO: loaded from: classes4.dex */
final class b implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f70252a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t f70253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t f70254c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f70255d;

    public b(long j11, long j12, long j13) {
        this.f70255d = j11;
        this.f70252a = j13;
        t tVar = new t();
        this.f70253b = tVar;
        t tVar2 = new t();
        this.f70254c = tVar2;
        tVar.a(0L);
        tVar2.a(j12);
    }

    @Override // n9.g
    public long a() {
        return this.f70252a;
    }

    public boolean b(long j11) {
        t tVar = this.f70253b;
        return j11 - tVar.b(tVar.c() - 1) < 100000;
    }

    public void c(long j11, long j12) {
        if (b(j11)) {
            return;
        }
        this.f70253b.a(j11);
        this.f70254c.a(j12);
    }

    void d(long j11) {
        this.f70255d = j11;
    }

    @Override // g9.b0
    public long getDurationUs() {
        return this.f70255d;
    }

    @Override // g9.b0
    public b0.a getSeekPoints(long j11) {
        int iF = p0.f(this.f70253b, j11, true, true);
        c0 c0Var = new c0(this.f70253b.b(iF), this.f70254c.b(iF));
        if (c0Var.f63375a == j11 || iF == this.f70253b.c() - 1) {
            return new b0.a(c0Var);
        }
        int i11 = iF + 1;
        return new b0.a(c0Var, new c0(this.f70253b.b(i11), this.f70254c.b(i11)));
    }

    @Override // n9.g
    public long getTimeUs(long j11) {
        return this.f70253b.b(p0.f(this.f70254c, j11, true, true));
    }

    @Override // g9.b0
    public boolean isSeekable() {
        return true;
    }
}
