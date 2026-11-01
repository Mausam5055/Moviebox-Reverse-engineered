package u3;

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
    private final j0 f76615a = new j0(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o0 f76616b = new o0(-1, -1, "image/webp");

    @Override // l2.r
    public void b(t tVar) {
        this.f76616b.b(tVar);
    }

    @Override // l2.r
    public int c(s sVar, l0 l0Var) {
        return this.f76616b.c(sVar, l0Var);
    }

    @Override // l2.r
    public boolean d(s sVar) {
        this.f76615a.S(4);
        sVar.peekFully(this.f76615a.e(), 0, 4);
        if (this.f76615a.J() != 1380533830) {
            return false;
        }
        sVar.advancePeekPosition(4);
        this.f76615a.S(4);
        sVar.peekFully(this.f76615a.e(), 0, 4);
        return this.f76615a.J() == 1464156752;
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
        this.f76616b.seek(j11, j12);
    }
}
