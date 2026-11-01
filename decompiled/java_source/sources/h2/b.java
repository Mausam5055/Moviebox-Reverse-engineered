package h2;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f64270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f64271c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f64272d;

    public b(long j11, long j12) {
        this.f64270b = j11;
        this.f64271c = j12;
        f();
    }

    protected final void c() {
        long j11 = this.f64272d;
        if (j11 < this.f64270b || j11 > this.f64271c) {
            throw new NoSuchElementException();
        }
    }

    protected final long d() {
        return this.f64272d;
    }

    public boolean e() {
        return this.f64272d > this.f64271c;
    }

    public void f() {
        this.f64272d = this.f64270b - 1;
    }

    @Override // h2.n
    public boolean next() {
        this.f64272d++;
        return !e();
    }
}
