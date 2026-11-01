package l2;

import java.io.EOFException;

/* JADX INFO: loaded from: classes2.dex */
public final class n implements s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f68648a = new byte[4096];

    @Override // l2.s0
    public void a(androidx.media3.common.util.j0 j0Var, int i11, int i12) {
        j0Var.X(i11);
    }

    @Override // l2.s0
    public /* synthetic */ void b(androidx.media3.common.util.j0 j0Var, int i11) {
        r0.c(this, j0Var, i11);
    }

    @Override // l2.s0
    public void c(androidx.media3.common.r rVar) {
    }

    @Override // l2.s0
    public void d(long j11, int i11, int i12, int i13, s0.a aVar) {
    }

    @Override // l2.s0
    public /* synthetic */ int e(androidx.media3.common.j jVar, int i11, boolean z10) {
        return r0.b(this, jVar, i11, z10);
    }

    @Override // l2.s0
    public /* synthetic */ void f(long j11) {
        r0.a(this, j11);
    }

    @Override // l2.s0
    public int g(androidx.media3.common.j jVar, int i11, boolean z10, int i12) throws EOFException {
        int i13 = jVar.read(this.f68648a, 0, Math.min(this.f68648a.length, i11));
        if (i13 != -1) {
            return i13;
        }
        if (z10) {
            return -1;
        }
        throw new EOFException();
    }
}
