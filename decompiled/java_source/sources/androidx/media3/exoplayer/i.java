package androidx.media3.exoplayer;

import androidx.media3.decoder.DecoderInputBuffer;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i implements w3, y3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f12009b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private z3 f12011d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f12012e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private y1.f4 f12013f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private androidx.media3.common.util.i f12014g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f12015h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private g2.u f12016i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private androidx.media3.common.r[] f12017j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f12018k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f12019l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f12021n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f12022o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private y3.a f12024q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f12008a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final s2 f12010c = new s2();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f12020m = Long.MIN_VALUE;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private androidx.media3.common.e0 f12023p = androidx.media3.common.e0.f9925a;

    public i(int i11) {
        this.f12009b = i11;
    }

    private void O(long j11, boolean z10) {
        this.f12021n = false;
        this.f12019l = j11;
        this.f12020m = j11;
        F(j11, z10);
    }

    protected final androidx.media3.common.e0 A() {
        return this.f12023p;
    }

    protected final boolean B() {
        return hasReadStreamToEnd() ? this.f12021n : ((g2.u) androidx.media3.common.util.a.e(this.f12016i)).isReady();
    }

    protected abstract void C();

    protected void D(boolean z10, boolean z11) {
    }

    protected void E() {
    }

    protected abstract void F(long j11, boolean z10);

    protected void G() {
    }

    protected final void H() {
        y3.a aVar;
        synchronized (this.f12008a) {
            aVar = this.f12024q;
        }
        if (aVar != null) {
            aVar.b(this);
        }
    }

    protected void I() {
    }

    protected void J() {
    }

    protected void K() {
    }

    protected void L(androidx.media3.common.r[] rVarArr, long j11, long j12, androidx.media3.exoplayer.source.r.b bVar) {
    }

    protected void M(androidx.media3.common.e0 e0Var) {
    }

    protected final int N(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        int iC = ((g2.u) androidx.media3.common.util.a.e(this.f12016i)).c(s2Var, decoderInputBuffer, i11);
        if (iC == -4) {
            if (decoderInputBuffer.isEndOfStream()) {
                this.f12020m = Long.MIN_VALUE;
                return this.f12021n ? -4 : -3;
            }
            long j11 = decoderInputBuffer.f10920e + this.f12018k;
            decoderInputBuffer.f10920e = j11;
            this.f12020m = Math.max(this.f12020m, j11);
        } else if (iC == -5) {
            androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(s2Var.f12570b);
            if (rVar.f10166t != Long.MAX_VALUE) {
                s2Var.f12570b = rVar.b().y0(rVar.f10166t + this.f12018k).N();
            }
        }
        return iC;
    }

    protected int P(long j11) {
        return ((g2.u) androidx.media3.common.util.a.e(this.f12016i)).skipData(j11 - this.f12018k);
    }

    @Override // androidx.media3.exoplayer.w3
    public /* synthetic */ void c() {
        v3.a(this);
    }

    @Override // androidx.media3.exoplayer.w3
    public /* synthetic */ void d(float f11, float f12) {
        v3.c(this, f11, f12);
    }

    @Override // androidx.media3.exoplayer.w3
    public final void disable() {
        androidx.media3.common.util.a.g(this.f12015h == 1);
        this.f12010c.a();
        this.f12015h = 0;
        this.f12016i = null;
        this.f12017j = null;
        this.f12021n = false;
        C();
    }

    @Override // androidx.media3.exoplayer.w3
    public final long e() {
        return this.f12020m;
    }

    @Override // androidx.media3.exoplayer.y3
    public final void f() {
        synchronized (this.f12008a) {
            this.f12024q = null;
        }
    }

    @Override // androidx.media3.exoplayer.w3
    public final void g(int i11, y1.f4 f4Var, androidx.media3.common.util.i iVar) {
        this.f12012e = i11;
        this.f12013f = f4Var;
        this.f12014g = iVar;
        E();
    }

    @Override // androidx.media3.exoplayer.w3
    public final y3 getCapabilities() {
        return this;
    }

    @Override // androidx.media3.exoplayer.w3
    public x2 getMediaClock() {
        return null;
    }

    @Override // androidx.media3.exoplayer.w3
    public final int getState() {
        return this.f12015h;
    }

    @Override // androidx.media3.exoplayer.w3
    public final g2.u getStream() {
        return this.f12016i;
    }

    @Override // androidx.media3.exoplayer.w3, androidx.media3.exoplayer.y3
    public final int getTrackType() {
        return this.f12009b;
    }

    @Override // androidx.media3.exoplayer.w3
    public final void h(z3 z3Var, androidx.media3.common.r[] rVarArr, g2.u uVar, long j11, boolean z10, boolean z11, long j12, long j13, androidx.media3.exoplayer.source.r.b bVar) {
        androidx.media3.common.util.a.g(this.f12015h == 0);
        this.f12011d = z3Var;
        this.f12015h = 1;
        D(z10, z11);
        p(rVarArr, uVar, j12, j13, bVar);
        O(j12, z10);
    }

    @Override // androidx.media3.exoplayer.t3.b
    public void handleMessage(int i11, Object obj) {
    }

    @Override // androidx.media3.exoplayer.w3
    public final boolean hasReadStreamToEnd() {
        return this.f12020m == Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.w3
    public final boolean isCurrentStreamFinal() {
        return this.f12021n;
    }

    @Override // androidx.media3.exoplayer.w3
    public /* synthetic */ long l(long j11, long j12) {
        return v3.b(this, j11, j12);
    }

    @Override // androidx.media3.exoplayer.w3
    public final void m(androidx.media3.common.e0 e0Var) {
        if (Objects.equals(this.f12023p, e0Var)) {
            return;
        }
        this.f12023p = e0Var;
        M(e0Var);
    }

    @Override // androidx.media3.exoplayer.w3
    public final void maybeThrowStreamError() {
        ((g2.u) androidx.media3.common.util.a.e(this.f12016i)).maybeThrowError();
    }

    @Override // androidx.media3.exoplayer.y3
    public final void n(y3.a aVar) {
        synchronized (this.f12008a) {
            this.f12024q = aVar;
        }
    }

    @Override // androidx.media3.exoplayer.w3
    public final void p(androidx.media3.common.r[] rVarArr, g2.u uVar, long j11, long j12, androidx.media3.exoplayer.source.r.b bVar) {
        androidx.media3.common.util.a.g(!this.f12021n);
        this.f12016i = uVar;
        if (this.f12020m == Long.MIN_VALUE) {
            this.f12020m = j11;
        }
        this.f12017j = rVarArr;
        this.f12018k = j12;
        L(rVarArr, j11, j12, bVar);
    }

    protected final ExoPlaybackException q(Throwable th2, androidx.media3.common.r rVar, int i11) {
        return r(th2, rVar, false, i11);
    }

    protected final ExoPlaybackException r(Throwable th2, androidx.media3.common.r rVar, boolean z10, int i11) {
        int i12;
        if (rVar == null || this.f12022o) {
            i12 = 4;
        } else {
            this.f12022o = true;
            try {
                i12 = x3.i(a(rVar));
                this.f12022o = false;
            } catch (ExoPlaybackException unused) {
                this.f12022o = false;
                i12 = 4;
            } catch (Throwable th3) {
                this.f12022o = false;
                throw th3;
            }
        }
        return ExoPlaybackException.createForRenderer(th2, getName(), v(), rVar, i12, z10, i11);
    }

    @Override // androidx.media3.exoplayer.w3
    public final void release() {
        androidx.media3.common.util.a.g(this.f12015h == 0);
        G();
    }

    @Override // androidx.media3.exoplayer.w3
    public final void reset() {
        androidx.media3.common.util.a.g(this.f12015h == 0);
        this.f12010c.a();
        I();
    }

    @Override // androidx.media3.exoplayer.w3
    public final void resetPosition(long j11) {
        O(j11, false);
    }

    protected final androidx.media3.common.util.i s() {
        return (androidx.media3.common.util.i) androidx.media3.common.util.a.e(this.f12014g);
    }

    @Override // androidx.media3.exoplayer.w3
    public final void setCurrentStreamFinal() {
        this.f12021n = true;
    }

    @Override // androidx.media3.exoplayer.w3
    public final void start() {
        androidx.media3.common.util.a.g(this.f12015h == 1);
        this.f12015h = 2;
        J();
    }

    @Override // androidx.media3.exoplayer.w3
    public final void stop() {
        androidx.media3.common.util.a.g(this.f12015h == 2);
        this.f12015h = 1;
        K();
    }

    @Override // androidx.media3.exoplayer.y3
    public int supportsMixedMimeTypeAdaptation() {
        return 0;
    }

    protected final z3 t() {
        return (z3) androidx.media3.common.util.a.e(this.f12011d);
    }

    protected final s2 u() {
        this.f12010c.a();
        return this.f12010c;
    }

    protected final int v() {
        return this.f12012e;
    }

    protected final long w() {
        return this.f12019l;
    }

    protected final y1.f4 x() {
        return (y1.f4) androidx.media3.common.util.a.e(this.f12013f);
    }

    protected final androidx.media3.common.r[] y() {
        return (androidx.media3.common.r[]) androidx.media3.common.util.a.e(this.f12017j);
    }

    protected final long z() {
        return this.f12018k;
    }
}
