package t9;

import android.net.Uri;
import com.google.android.exoplayer2.source.UnrecognizedInputFormatException;
import com.google.android.exoplayer2.util.p0;
import g9.a0;
import java.io.EOFException;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements com.google.android.exoplayer2.source.r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g9.r f76092a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g9.l f76093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g9.m f76094c;

    public a(g9.r rVar) {
        this.f76092a = rVar;
    }

    @Override // com.google.android.exoplayer2.source.r
    public void a() {
        g9.l lVar = this.f76093b;
        if (lVar instanceof n9.f) {
            ((n9.f) lVar).i();
        }
    }

    @Override // com.google.android.exoplayer2.source.r
    public long b() {
        g9.m mVar = this.f76094c;
        if (mVar != null) {
            return mVar.getPosition();
        }
        return -1L;
    }

    @Override // com.google.android.exoplayer2.source.r
    public int c(a0 a0Var) {
        return ((g9.l) com.google.android.exoplayer2.util.a.e(this.f76093b)).c((g9.m) com.google.android.exoplayer2.util.a.e(this.f76094c), a0Var);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0046  */
    @Override // com.google.android.exoplayer2.source.r
    public void d(com.google.android.exoplayer2.upstream.g gVar, Uri uri, Map map, long j11, long j12, g9.n nVar) throws UnrecognizedInputFormatException {
        g9.f fVar = new g9.f(gVar, j11, j12);
        this.f76094c = fVar;
        if (this.f76093b != null) {
            return;
        }
        g9.l[] lVarArrC = this.f76092a.c(uri, map);
        if (lVarArrC.length == 1) {
            this.f76093b = lVarArrC[0];
        } else {
            for (g9.l lVar : lVarArrC) {
                try {
                    if (lVar.d(fVar)) {
                        this.f76093b = lVar;
                        com.google.android.exoplayer2.util.a.g(true);
                        fVar.resetPeekPosition();
                        break;
                    } else {
                        boolean z10 = this.f76093b != null || fVar.getPosition() == j11;
                        com.google.android.exoplayer2.util.a.g(z10);
                        fVar.resetPeekPosition();
                    }
                } catch (EOFException unused) {
                    if (this.f76093b != null || fVar.getPosition() == j11) {
                    }
                } catch (Throwable th2) {
                    com.google.android.exoplayer2.util.a.g(this.f76093b != null || fVar.getPosition() == j11);
                    fVar.resetPeekPosition();
                    throw th2;
                }
                com.google.android.exoplayer2.util.a.g(z10);
                fVar.resetPeekPosition();
            }
            if (this.f76093b == null) {
                throw new UnrecognizedInputFormatException("None of the available extractors (" + p0.M(lVarArrC) + ") could read the stream.", (Uri) com.google.android.exoplayer2.util.a.e(uri));
            }
        }
        this.f76093b.b(nVar);
    }

    @Override // com.google.android.exoplayer2.source.r
    public void release() {
        g9.l lVar = this.f76093b;
        if (lVar != null) {
            lVar.release();
            this.f76093b = null;
        }
        this.f76094c = null;
    }

    @Override // com.google.android.exoplayer2.source.r
    public void seek(long j11, long j12) {
        ((g9.l) com.google.android.exoplayer2.util.a.e(this.f76093b)).seek(j11, j12);
    }
}
