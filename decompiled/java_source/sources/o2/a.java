package o2;

import androidx.media3.common.util.j0;
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
    private final j0 f70654a = new j0(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o0 f70655b = new o0(-1, -1, "image/avif");

    private boolean a(s sVar, int i11) {
        this.f70654a.S(4);
        sVar.peekFully(this.f70654a.e(), 0, 4);
        return this.f70654a.J() == ((long) i11);
    }

    @Override // l2.r
    public void b(t tVar) {
        this.f70655b.b(tVar);
    }

    @Override // l2.r
    public int c(s sVar, l0 l0Var) {
        return this.f70655b.c(sVar, l0Var);
    }

    @Override // l2.r
    public boolean d(s sVar) {
        sVar.advancePeekPosition(4);
        return a(sVar, 1718909296) && a(sVar, 1635150182);
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
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        this.f70655b.seek(j11, j12);
    }
}
