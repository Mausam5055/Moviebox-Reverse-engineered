package androidx.media3.exoplayer.source;

import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.v2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class o implements q, q.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r.b f12862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f12863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.b f12864c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private r f12865d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private q f12866e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private q.a f12867f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f12868g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f12869h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f12870i = C.TIME_UNSET;

    public interface a {
        void a(r.b bVar, IOException iOException);

        void b(r.b bVar);
    }

    public o(r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j11) {
        this.f12862a = bVar;
        this.f12864c = bVar2;
        this.f12863b = j11;
    }

    private long k(long j11) {
        long j12 = this.f12870i;
        return j12 != C.TIME_UNSET ? j12 : j11;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean a(v2 v2Var) {
        q qVar = this.f12866e;
        return qVar != null && qVar.a(v2Var);
    }

    @Override // androidx.media3.exoplayer.source.q
    public long b(long j11, c4 c4Var) {
        return ((q) a1.i(this.f12866e)).b(j11, c4Var);
    }

    @Override // androidx.media3.exoplayer.source.q.a
    public void c(q qVar) {
        ((q.a) a1.i(this.f12867f)).c(this);
        a aVar = this.f12868g;
        if (aVar != null) {
            aVar.b(this.f12862a);
        }
    }

    @Override // androidx.media3.exoplayer.source.q
    public void discardBuffer(long j11, boolean z10) {
        ((q) a1.i(this.f12866e)).discardBuffer(j11, z10);
    }

    @Override // androidx.media3.exoplayer.source.q
    public long e(j2.z[] zVarArr, boolean[] zArr, g2.u[] uVarArr, boolean[] zArr2, long j11) {
        long j12 = this.f12870i;
        long j13 = (j12 == C.TIME_UNSET || j11 != this.f12863b) ? j11 : j12;
        this.f12870i = C.TIME_UNSET;
        return ((q) a1.i(this.f12866e)).e(zVarArr, zArr, uVarArr, zArr2, j13);
    }

    @Override // androidx.media3.exoplayer.source.q
    public void g(q.a aVar, long j11) {
        this.f12867f = aVar;
        q qVar = this.f12866e;
        if (qVar != null) {
            qVar.g(this, k(this.f12863b));
        }
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getBufferedPositionUs() {
        return ((q) a1.i(this.f12866e)).getBufferedPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getNextLoadPositionUs() {
        return ((q) a1.i(this.f12866e)).getNextLoadPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.q
    public g2.z getTrackGroups() {
        return ((q) a1.i(this.f12866e)).getTrackGroups();
    }

    public void h(r.b bVar) {
        long jK = k(this.f12863b);
        q qVarG = ((r) androidx.media3.common.util.a.e(this.f12865d)).g(bVar, this.f12864c, jK);
        this.f12866e = qVarG;
        if (this.f12867f != null) {
            qVarG.g(this, jK);
        }
    }

    public long i() {
        return this.f12870i;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean isLoading() {
        q qVar = this.f12866e;
        return qVar != null && qVar.isLoading();
    }

    public long j() {
        return this.f12863b;
    }

    @Override // androidx.media3.exoplayer.source.f0.a
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public void f(q qVar) {
        ((q.a) a1.i(this.f12867f)).f(this);
    }

    public void m(long j11) {
        this.f12870i = j11;
    }

    @Override // androidx.media3.exoplayer.source.q
    public void maybeThrowPrepareError() throws IOException {
        try {
            q qVar = this.f12866e;
            if (qVar != null) {
                qVar.maybeThrowPrepareError();
            } else {
                r rVar = this.f12865d;
                if (rVar != null) {
                    rVar.maybeThrowSourceInfoRefreshError();
                }
            }
        } catch (IOException e11) {
            a aVar = this.f12868g;
            if (aVar == null) {
                throw e11;
            }
            if (this.f12869h) {
                return;
            }
            this.f12869h = true;
            aVar.a(this.f12862a, e11);
        }
    }

    public void n() {
        if (this.f12866e != null) {
            ((r) androidx.media3.common.util.a.e(this.f12865d)).j(this.f12866e);
        }
    }

    public void o(r rVar) {
        androidx.media3.common.util.a.g(this.f12865d == null);
        this.f12865d = rVar;
    }

    @Override // androidx.media3.exoplayer.source.q
    public long readDiscontinuity() {
        return ((q) a1.i(this.f12866e)).readDiscontinuity();
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public void reevaluateBuffer(long j11) {
        ((q) a1.i(this.f12866e)).reevaluateBuffer(j11);
    }

    @Override // androidx.media3.exoplayer.source.q
    public long seekToUs(long j11) {
        return ((q) a1.i(this.f12866e)).seekToUs(j11);
    }
}
