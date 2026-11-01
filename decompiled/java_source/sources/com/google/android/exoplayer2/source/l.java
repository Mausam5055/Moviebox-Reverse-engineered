package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class l implements n, n.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o.b f26219a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f26220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f26221c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o f26222d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private n f26223e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private n.a f26224f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f26225g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f26226h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f26227i = C.TIME_UNSET;

    public interface a {
        void a(o.b bVar);

        void b(o.b bVar, IOException iOException);
    }

    public l(o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j11) {
        this.f26219a = bVar;
        this.f26221c = bVar2;
        this.f26220b = j11;
    }

    private long j(long j11) {
        long j12 = this.f26227i;
        return j12 != C.TIME_UNSET ? j12 : j11;
    }

    @Override // com.google.android.exoplayer2.source.n
    public long a(long j11, c3 c3Var) {
        return ((n) p0.j(this.f26223e)).a(j11, c3Var);
    }

    @Override // com.google.android.exoplayer2.source.n
    public long b(com.google.android.exoplayer2.trackselection.h[] hVarArr, boolean[] zArr, t9.s[] sVarArr, boolean[] zArr2, long j11) {
        long j12;
        long j13 = this.f26227i;
        if (j13 == C.TIME_UNSET || j11 != this.f26220b) {
            j12 = j11;
        } else {
            this.f26227i = C.TIME_UNSET;
            j12 = j13;
        }
        return ((n) p0.j(this.f26223e)).b(hVarArr, zArr, sVarArr, zArr2, j12);
    }

    public void c(o.b bVar) {
        long j11 = j(this.f26220b);
        n nVarD = ((o) com.google.android.exoplayer2.util.a.e(this.f26222d)).d(bVar, this.f26221c, j11);
        this.f26223e = nVarD;
        if (this.f26224f != null) {
            nVarD.e(this, j11);
        }
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j11) {
        n nVar = this.f26223e;
        return nVar != null && nVar.continueLoading(j11);
    }

    @Override // com.google.android.exoplayer2.source.n
    public void discardBuffer(long j11, boolean z10) {
        ((n) p0.j(this.f26223e)).discardBuffer(j11, z10);
    }

    @Override // com.google.android.exoplayer2.source.n
    public void e(n.a aVar, long j11) {
        this.f26224f = aVar;
        n nVar = this.f26223e;
        if (nVar != null) {
            nVar.e(this, j(this.f26220b));
        }
    }

    public long f() {
        return this.f26227i;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getBufferedPositionUs() {
        return ((n) p0.j(this.f26223e)).getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getNextLoadPositionUs() {
        return ((n) p0.j(this.f26223e)).getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n
    public t9.x getTrackGroups() {
        return ((n) p0.j(this.f26223e)).getTrackGroups();
    }

    @Override // com.google.android.exoplayer2.source.n.a
    public void h(n nVar) {
        ((n.a) p0.j(this.f26224f)).h(this);
        a aVar = this.f26225g;
        if (aVar != null) {
            aVar.a(this.f26219a);
        }
    }

    public long i() {
        return this.f26220b;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        n nVar = this.f26223e;
        return nVar != null && nVar.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.b0.a
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void g(n nVar) {
        ((n.a) p0.j(this.f26224f)).g(this);
    }

    public void l(long j11) {
        this.f26227i = j11;
    }

    public void m() {
        if (this.f26223e != null) {
            ((o) com.google.android.exoplayer2.util.a.e(this.f26222d)).k(this.f26223e);
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public void maybeThrowPrepareError() throws IOException {
        try {
            n nVar = this.f26223e;
            if (nVar != null) {
                nVar.maybeThrowPrepareError();
            } else {
                o oVar = this.f26222d;
                if (oVar != null) {
                    oVar.maybeThrowSourceInfoRefreshError();
                }
            }
        } catch (IOException e11) {
            a aVar = this.f26225g;
            if (aVar == null) {
                throw e11;
            }
            if (this.f26226h) {
                return;
            }
            this.f26226h = true;
            aVar.b(this.f26219a, e11);
        }
    }

    public void n(o oVar) {
        com.google.android.exoplayer2.util.a.g(this.f26222d == null);
        this.f26222d = oVar;
    }

    @Override // com.google.android.exoplayer2.source.n
    public long readDiscontinuity() {
        return ((n) p0.j(this.f26223e)).readDiscontinuity();
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public void reevaluateBuffer(long j11) {
        ((n) p0.j(this.f26223e)).reevaluateBuffer(j11);
    }

    @Override // com.google.android.exoplayer2.source.n
    public long seekToUs(long j11) {
        return ((n) p0.j(this.f26223e)).seekToUs(j11);
    }
}
