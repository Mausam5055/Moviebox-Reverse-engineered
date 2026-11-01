package com.google.android.exoplayer2;

/* JADX INFO: loaded from: classes3.dex */
final class o implements com.google.android.exoplayer2.util.u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f25478a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f25479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private x2 f25480c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.android.exoplayer2.util.u f25481d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f25482e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f25483f;

    public interface a {
        void onPlaybackParametersChanged(n2 n2Var);
    }

    public o(a aVar, com.google.android.exoplayer2.util.e eVar) {
        this.f25479b = aVar;
        this.f25478a = new com.google.android.exoplayer2.util.h0(eVar);
    }

    private boolean e(boolean z10) {
        x2 x2Var = this.f25480c;
        return x2Var == null || x2Var.isEnded() || (!this.f25480c.isReady() && (z10 || this.f25480c.hasReadStreamToEnd()));
    }

    private void i(boolean z10) {
        if (e(z10)) {
            this.f25482e = true;
            if (this.f25483f) {
                this.f25478a.c();
                return;
            }
            return;
        }
        com.google.android.exoplayer2.util.u uVar = (com.google.android.exoplayer2.util.u) com.google.android.exoplayer2.util.a.e(this.f25481d);
        long positionUs = uVar.getPositionUs();
        if (this.f25482e) {
            if (positionUs < this.f25478a.getPositionUs()) {
                this.f25478a.d();
                return;
            } else {
                this.f25482e = false;
                if (this.f25483f) {
                    this.f25478a.c();
                }
            }
        }
        this.f25478a.a(positionUs);
        n2 playbackParameters = uVar.getPlaybackParameters();
        if (playbackParameters.equals(this.f25478a.getPlaybackParameters())) {
            return;
        }
        this.f25478a.b(playbackParameters);
        this.f25479b.onPlaybackParametersChanged(playbackParameters);
    }

    public void a(x2 x2Var) {
        if (x2Var == this.f25480c) {
            this.f25481d = null;
            this.f25480c = null;
            this.f25482e = true;
        }
    }

    @Override // com.google.android.exoplayer2.util.u
    public void b(n2 n2Var) {
        com.google.android.exoplayer2.util.u uVar = this.f25481d;
        if (uVar != null) {
            uVar.b(n2Var);
            n2Var = this.f25481d.getPlaybackParameters();
        }
        this.f25478a.b(n2Var);
    }

    public void c(x2 x2Var) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.u uVar;
        com.google.android.exoplayer2.util.u mediaClock = x2Var.getMediaClock();
        if (mediaClock == null || mediaClock == (uVar = this.f25481d)) {
            return;
        }
        if (uVar != null) {
            throw ExoPlaybackException.createForUnexpected(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
        this.f25481d = mediaClock;
        this.f25480c = x2Var;
        mediaClock.b(this.f25478a.getPlaybackParameters());
    }

    public void d(long j11) {
        this.f25478a.a(j11);
    }

    public void f() {
        this.f25483f = true;
        this.f25478a.c();
    }

    public void g() {
        this.f25483f = false;
        this.f25478a.d();
    }

    @Override // com.google.android.exoplayer2.util.u
    public n2 getPlaybackParameters() {
        com.google.android.exoplayer2.util.u uVar = this.f25481d;
        return uVar != null ? uVar.getPlaybackParameters() : this.f25478a.getPlaybackParameters();
    }

    @Override // com.google.android.exoplayer2.util.u
    public long getPositionUs() {
        return this.f25482e ? this.f25478a.getPositionUs() : ((com.google.android.exoplayer2.util.u) com.google.android.exoplayer2.util.a.e(this.f25481d)).getPositionUs();
    }

    public long h(boolean z10) {
        i(z10);
        return getPositionUs();
    }
}
