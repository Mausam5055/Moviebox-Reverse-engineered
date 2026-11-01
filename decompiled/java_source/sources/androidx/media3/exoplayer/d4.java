package androidx.media3.exoplayer;

/* JADX INFO: loaded from: classes2.dex */
public final class d4 implements x2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.common.util.i f11353a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f11354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f11355c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f11356d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private androidx.media3.common.z f11357e = androidx.media3.common.z.f10563d;

    public d4(androidx.media3.common.util.i iVar) {
        this.f11353a = iVar;
    }

    public void a(long j11) {
        this.f11355c = j11;
        if (this.f11354b) {
            this.f11356d = this.f11353a.elapsedRealtime();
        }
    }

    @Override // androidx.media3.exoplayer.x2
    public void b(androidx.media3.common.z zVar) {
        if (this.f11354b) {
            a(getPositionUs());
        }
        this.f11357e = zVar;
    }

    public void c() {
        if (this.f11354b) {
            return;
        }
        this.f11356d = this.f11353a.elapsedRealtime();
        this.f11354b = true;
    }

    public void d() {
        if (this.f11354b) {
            a(getPositionUs());
            this.f11354b = false;
        }
    }

    @Override // androidx.media3.exoplayer.x2
    public androidx.media3.common.z getPlaybackParameters() {
        return this.f11357e;
    }

    @Override // androidx.media3.exoplayer.x2
    public long getPositionUs() {
        long j11 = this.f11355c;
        if (!this.f11354b) {
            return j11;
        }
        long jElapsedRealtime = this.f11353a.elapsedRealtime() - this.f11356d;
        androidx.media3.common.z zVar = this.f11357e;
        return j11 + (zVar.f10566a == 1.0f ? androidx.media3.common.util.a1.R0(jElapsedRealtime) : zVar.a(jElapsedRealtime));
    }

    @Override // androidx.media3.exoplayer.x2
    public /* synthetic */ boolean i() {
        return w2.a(this);
    }
}
