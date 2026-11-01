package g9;

import com.google.android.exoplayer2.o1;
import java.io.EOFException;

/* JADX INFO: loaded from: classes4.dex */
public final class k implements e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f63452a = new byte[4096];

    @Override // g9.e0
    public int a(com.google.android.exoplayer2.upstream.g gVar, int i11, boolean z10, int i12) throws EOFException {
        int i13 = gVar.read(this.f63452a, 0, Math.min(this.f63452a.length, i11));
        if (i13 != -1) {
            return i13;
        }
        if (z10) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // g9.e0
    public /* synthetic */ int b(com.google.android.exoplayer2.upstream.g gVar, int i11, boolean z10) {
        return d0.a(this, gVar, i11, z10);
    }

    @Override // g9.e0
    public /* synthetic */ void c(com.google.android.exoplayer2.util.d0 d0Var, int i11) {
        d0.b(this, d0Var, i11);
    }

    @Override // g9.e0
    public void d(long j11, int i11, int i12, int i13, e0.a aVar) {
    }

    @Override // g9.e0
    public void e(o1 o1Var) {
    }

    @Override // g9.e0
    public void f(com.google.android.exoplayer2.util.d0 d0Var, int i11, int i12) {
        d0Var.Q(i11);
    }
}
