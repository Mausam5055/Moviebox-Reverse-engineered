package v9;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b implements o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f77109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f77110c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f77111d;

    public b(long j11, long j12) {
        this.f77109b = j11;
        this.f77110c = j12;
        f();
    }

    protected final void c() {
        long j11 = this.f77111d;
        if (j11 < this.f77109b || j11 > this.f77110c) {
            throw new NoSuchElementException();
        }
    }

    protected final long d() {
        return this.f77111d;
    }

    public boolean e() {
        return this.f77111d > this.f77110c;
    }

    public void f() {
        this.f77111d = this.f77109b - 1;
    }

    @Override // v9.o
    public boolean next() {
        this.f77111d++;
        return !e();
    }
}
