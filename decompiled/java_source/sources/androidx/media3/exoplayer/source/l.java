package androidx.media3.exoplayer.source;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends androidx.media3.exoplayer.source.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f12851h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private androidx.media3.common.t f12852i;

    public static final class b implements r.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f12853a;

        public b(long j11, j jVar) {
            this.f12853a = j11;
        }

        @Override // androidx.media3.exoplayer.source.r.a
        public /* synthetic */ r.a a(i3.s.a aVar) {
            return g2.l.c(this, aVar);
        }

        @Override // androidx.media3.exoplayer.source.r.a
        public /* synthetic */ r.a b(int i11) {
            return g2.l.b(this, i11);
        }

        @Override // androidx.media3.exoplayer.source.r.a
        public /* synthetic */ r.a c(boolean z10) {
            return g2.l.a(this, z10);
        }

        @Override // androidx.media3.exoplayer.source.r.a
        public r.a e(androidx.media3.exoplayer.drm.w wVar) {
            return this;
        }

        @Override // androidx.media3.exoplayer.source.r.a
        public r.a f(androidx.media3.exoplayer.upstream.m mVar) {
            return this;
        }

        @Override // androidx.media3.exoplayer.source.r.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public l d(androidx.media3.common.t tVar) {
            return new l(tVar, this.f12853a, null);
        }
    }

    private l(androidx.media3.common.t tVar, long j11, j jVar) {
        this.f12852i = tVar;
        this.f12851h = j11;
    }

    @Override // androidx.media3.exoplayer.source.a
    protected void B() {
    }

    @Override // androidx.media3.exoplayer.source.r
    public synchronized androidx.media3.common.t a() {
        return this.f12852i;
    }

    @Override // androidx.media3.exoplayer.source.r
    public q g(r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j11) {
        androidx.media3.common.t tVarA = a();
        androidx.media3.common.util.a.e(tVarA.f10211b);
        androidx.media3.common.util.a.f(tVarA.f10211b.f10304b, "Externally loaded mediaItems require a MIME type.");
        androidx.media3.common.t.h hVar = tVarA.f10211b;
        return new k(hVar.f10303a, hVar.f10304b, null);
    }

    @Override // androidx.media3.exoplayer.source.r
    public void j(q qVar) {
        ((k) qVar).i();
    }

    @Override // androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.r
    public synchronized void l(androidx.media3.common.t tVar) {
        this.f12852i = tVar;
    }

    @Override // androidx.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.r
    public boolean q(androidx.media3.common.t tVar) {
        androidx.media3.common.t.h hVar = tVar.f10211b;
        androidx.media3.common.t.h hVar2 = (androidx.media3.common.t.h) androidx.media3.common.util.a.e(a().f10211b);
        if (hVar != null && hVar.f10303a.equals(hVar2.f10303a) && Objects.equals(hVar.f10304b, hVar2.f10304b)) {
            long j11 = hVar.f10311i;
            if (j11 == C.TIME_UNSET || a1.R0(j11) == this.f12851h) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.a
    protected void z(w1.n nVar) {
        A(new g2.w(this.f12851h, true, false, false, null, a()));
    }
}
