package androidx.media3.exoplayer;

/* JADX INFO: loaded from: classes2.dex */
final class n implements x2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d4 f12267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f12268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private w3 f12269c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private x2 f12270d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f12271e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f12272f;

    public interface a {
        void onPlaybackParametersChanged(androidx.media3.common.z zVar);
    }

    public n(a aVar, androidx.media3.common.util.i iVar) {
        this.f12268b = aVar;
        this.f12267a = new d4(iVar);
    }

    private boolean e(boolean z10) {
        w3 w3Var = this.f12269c;
        return w3Var == null || w3Var.isEnded() || (z10 && this.f12269c.getState() != 2) || (!this.f12269c.isReady() && (z10 || this.f12269c.hasReadStreamToEnd()));
    }

    private void j(boolean z10) {
        if (e(z10)) {
            this.f12271e = true;
            if (this.f12272f) {
                this.f12267a.c();
                return;
            }
            return;
        }
        x2 x2Var = (x2) androidx.media3.common.util.a.e(this.f12270d);
        long positionUs = x2Var.getPositionUs();
        if (this.f12271e) {
            if (positionUs < this.f12267a.getPositionUs()) {
                this.f12267a.d();
                return;
            } else {
                this.f12271e = false;
                if (this.f12272f) {
                    this.f12267a.c();
                }
            }
        }
        this.f12267a.a(positionUs);
        androidx.media3.common.z playbackParameters = x2Var.getPlaybackParameters();
        if (playbackParameters.equals(this.f12267a.getPlaybackParameters())) {
            return;
        }
        this.f12267a.b(playbackParameters);
        this.f12268b.onPlaybackParametersChanged(playbackParameters);
    }

    public void a(w3 w3Var) {
        if (w3Var == this.f12269c) {
            this.f12270d = null;
            this.f12269c = null;
            this.f12271e = true;
        }
    }

    @Override // androidx.media3.exoplayer.x2
    public void b(androidx.media3.common.z zVar) {
        x2 x2Var = this.f12270d;
        if (x2Var != null) {
            x2Var.b(zVar);
            zVar = this.f12270d.getPlaybackParameters();
        }
        this.f12267a.b(zVar);
    }

    public void c(w3 w3Var) throws ExoPlaybackException {
        x2 x2Var;
        x2 mediaClock = w3Var.getMediaClock();
        if (mediaClock == null || mediaClock == (x2Var = this.f12270d)) {
            return;
        }
        if (x2Var != null) {
            throw ExoPlaybackException.createForUnexpected(new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
        this.f12270d = mediaClock;
        this.f12269c = w3Var;
        mediaClock.b(this.f12267a.getPlaybackParameters());
    }

    public void d(long j11) {
        this.f12267a.a(j11);
    }

    public void f() {
        this.f12272f = true;
        this.f12267a.c();
    }

    public void g() {
        this.f12272f = false;
        this.f12267a.d();
    }

    @Override // androidx.media3.exoplayer.x2
    public androidx.media3.common.z getPlaybackParameters() {
        x2 x2Var = this.f12270d;
        return x2Var != null ? x2Var.getPlaybackParameters() : this.f12267a.getPlaybackParameters();
    }

    @Override // androidx.media3.exoplayer.x2
    public long getPositionUs() {
        return this.f12271e ? this.f12267a.getPositionUs() : ((x2) androidx.media3.common.util.a.e(this.f12270d)).getPositionUs();
    }

    public long h(boolean z10) {
        j(z10);
        return getPositionUs();
    }

    @Override // androidx.media3.exoplayer.x2
    public boolean i() {
        return this.f12271e ? this.f12267a.i() : ((x2) androidx.media3.common.util.a.e(this.f12270d)).i();
    }
}
