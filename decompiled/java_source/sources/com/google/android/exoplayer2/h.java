package com.google.android.exoplayer2;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;

/* JADX INFO: loaded from: classes3.dex */
public abstract class h implements x2, z2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f25098a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a3 f25100c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f25101d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private e9.u1 f25102e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f25103f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private t9.s f25104g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private o1[] f25105h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f25106i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f25107j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f25109l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f25110m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p1 f25099b = new p1();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f25108k = Long.MIN_VALUE;

    public h(int i11) {
        this.f25098a = i11;
    }

    private void x(long j11, boolean z10) {
        this.f25109l = false;
        this.f25107j = j11;
        this.f25108k = j11;
        r(j11, z10);
    }

    @Override // com.google.android.exoplayer2.x2
    public final void c(a3 a3Var, o1[] o1VarArr, t9.s sVar, long j11, boolean z10, boolean z11, long j12, long j13) {
        com.google.android.exoplayer2.util.a.g(this.f25103f == 0);
        this.f25100c = a3Var;
        this.f25103f = 1;
        q(z10, z11);
        h(o1VarArr, sVar, j12, j13);
        x(j11, z10);
    }

    @Override // com.google.android.exoplayer2.x2
    public /* synthetic */ void d(float f11, float f12) {
        w2.a(this, f11, f12);
    }

    @Override // com.google.android.exoplayer2.x2
    public final void disable() {
        com.google.android.exoplayer2.util.a.g(this.f25103f == 1);
        this.f25099b.a();
        this.f25103f = 0;
        this.f25104g = null;
        this.f25105h = null;
        this.f25109l = false;
        p();
    }

    @Override // com.google.android.exoplayer2.x2
    public final long e() {
        return this.f25108k;
    }

    protected final ExoPlaybackException f(Throwable th2, o1 o1Var, int i11) {
        return i(th2, o1Var, false, i11);
    }

    @Override // com.google.android.exoplayer2.x2
    public final void g(int i11, e9.u1 u1Var) {
        this.f25101d = i11;
        this.f25102e = u1Var;
    }

    @Override // com.google.android.exoplayer2.x2
    public final z2 getCapabilities() {
        return this;
    }

    @Override // com.google.android.exoplayer2.x2
    public com.google.android.exoplayer2.util.u getMediaClock() {
        return null;
    }

    @Override // com.google.android.exoplayer2.x2
    public final int getState() {
        return this.f25103f;
    }

    @Override // com.google.android.exoplayer2.x2
    public final t9.s getStream() {
        return this.f25104g;
    }

    @Override // com.google.android.exoplayer2.x2, com.google.android.exoplayer2.z2
    public final int getTrackType() {
        return this.f25098a;
    }

    @Override // com.google.android.exoplayer2.x2
    public final void h(o1[] o1VarArr, t9.s sVar, long j11, long j12) {
        com.google.android.exoplayer2.util.a.g(!this.f25109l);
        this.f25104g = sVar;
        if (this.f25108k == Long.MIN_VALUE) {
            this.f25108k = j11;
        }
        this.f25105h = o1VarArr;
        this.f25106i = j12;
        v(o1VarArr, j11, j12);
    }

    @Override // com.google.android.exoplayer2.s2.b
    public void handleMessage(int i11, Object obj) {
    }

    @Override // com.google.android.exoplayer2.x2
    public final boolean hasReadStreamToEnd() {
        return this.f25108k == Long.MIN_VALUE;
    }

    protected final ExoPlaybackException i(Throwable th2, o1 o1Var, boolean z10, int i11) {
        int iF;
        if (o1Var == null || this.f25110m) {
            iF = 4;
        } else {
            this.f25110m = true;
            try {
                iF = y2.f(a(o1Var));
                this.f25110m = false;
            } catch (ExoPlaybackException unused) {
                this.f25110m = false;
                iF = 4;
            } catch (Throwable th3) {
                this.f25110m = false;
                throw th3;
            }
        }
        return ExoPlaybackException.createForRenderer(th2, getName(), l(), o1Var, iF, z10, i11);
    }

    @Override // com.google.android.exoplayer2.x2
    public final boolean isCurrentStreamFinal() {
        return this.f25109l;
    }

    protected final a3 j() {
        return (a3) com.google.android.exoplayer2.util.a.e(this.f25100c);
    }

    protected final p1 k() {
        this.f25099b.a();
        return this.f25099b;
    }

    protected final int l() {
        return this.f25101d;
    }

    protected final e9.u1 m() {
        return (e9.u1) com.google.android.exoplayer2.util.a.e(this.f25102e);
    }

    @Override // com.google.android.exoplayer2.x2
    public final void maybeThrowStreamError() {
        ((t9.s) com.google.android.exoplayer2.util.a.e(this.f25104g)).maybeThrowError();
    }

    protected final o1[] n() {
        return (o1[]) com.google.android.exoplayer2.util.a.e(this.f25105h);
    }

    protected final boolean o() {
        return hasReadStreamToEnd() ? this.f25109l : ((t9.s) com.google.android.exoplayer2.util.a.e(this.f25104g)).isReady();
    }

    protected abstract void p();

    protected void q(boolean z10, boolean z11) {
    }

    protected abstract void r(long j11, boolean z10);

    @Override // com.google.android.exoplayer2.x2
    public final void reset() {
        com.google.android.exoplayer2.util.a.g(this.f25103f == 0);
        this.f25099b.a();
        s();
    }

    @Override // com.google.android.exoplayer2.x2
    public final void resetPosition(long j11) {
        x(j11, false);
    }

    protected void s() {
    }

    @Override // com.google.android.exoplayer2.x2
    public final void setCurrentStreamFinal() {
        this.f25109l = true;
    }

    @Override // com.google.android.exoplayer2.x2
    public final void start() {
        com.google.android.exoplayer2.util.a.g(this.f25103f == 1);
        this.f25103f = 2;
        t();
    }

    @Override // com.google.android.exoplayer2.x2
    public final void stop() {
        com.google.android.exoplayer2.util.a.g(this.f25103f == 2);
        this.f25103f = 1;
        u();
    }

    @Override // com.google.android.exoplayer2.z2
    public int supportsMixedMimeTypeAdaptation() {
        return 0;
    }

    protected void t() {
    }

    protected void u() {
    }

    protected abstract void v(o1[] o1VarArr, long j11, long j12);

    protected final int w(p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        int iC = ((t9.s) com.google.android.exoplayer2.util.a.e(this.f25104g)).c(p1Var, decoderInputBuffer, i11);
        if (iC == -4) {
            if (decoderInputBuffer.h()) {
                this.f25108k = Long.MIN_VALUE;
                return this.f25109l ? -4 : -3;
            }
            long j11 = decoderInputBuffer.f24845e + this.f25106i;
            decoderInputBuffer.f24845e = j11;
            this.f25108k = Math.max(this.f25108k, j11);
        } else if (iC == -5) {
            o1 o1Var = (o1) com.google.android.exoplayer2.util.a.e(p1Var.f25598b);
            if (o1Var.f25500p != Long.MAX_VALUE) {
                p1Var.f25598b = o1Var.b().i0(o1Var.f25500p + this.f25106i).E();
            }
        }
        return iC;
    }

    protected int y(long j11) {
        return ((t9.s) com.google.android.exoplayer2.util.a.e(this.f25104g)).skipData(j11 - this.f25106i);
    }
}
