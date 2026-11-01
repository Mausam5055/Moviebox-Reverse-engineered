package t2;

import java.util.List;
import l2.l0;
import l2.o0;
import l2.q;
import l2.r;
import l2.s;
import l2.t;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f75990a;

    public a() {
        this(0);
    }

    public a(int i11) {
        if ((i11 & 1) != 0) {
            this.f75990a = new o0(65496, 2, "image/jpeg");
        } else {
            this.f75990a = new b();
        }
    }

    @Override // l2.r
    public void b(t tVar) {
        this.f75990a.b(tVar);
    }

    @Override // l2.r
    public int c(s sVar, l0 l0Var) {
        return this.f75990a.c(sVar, l0Var);
    }

    @Override // l2.r
    public boolean d(s sVar) {
        return this.f75990a.d(sVar);
    }

    @Override // l2.r
    public /* synthetic */ r e() {
        return q.b(this);
    }

    @Override // l2.r
    public /* synthetic */ List f() {
        return q.a(this);
    }

    @Override // l2.r
    public void release() {
        this.f75990a.release();
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        this.f75990a.seek(j11, j12);
    }
}
