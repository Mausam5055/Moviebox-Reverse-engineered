package com.google.android.exoplayer2.source.rtsp;

import android.os.SystemClock;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes3.dex */
final class f implements g9.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z9.e f26356a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f26359d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private g9.n f26362g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f26363h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f26366k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f26357b = new com.google.android.exoplayer2.util.d0(65507);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f26358c = new com.google.android.exoplayer2.util.d0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f26360e = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i f26361f = new i();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile long f26364i = C.TIME_UNSET;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile int f26365j = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f26367l = C.TIME_UNSET;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f26368m = C.TIME_UNSET;

    public f(j jVar, int i11) {
        this.f26359d = i11;
        this.f26356a = (z9.e) com.google.android.exoplayer2.util.a.e(new z9.a().a(jVar));
    }

    private static long a(long j11) {
        return j11 - 30;
    }

    @Override // g9.l
    public void b(g9.n nVar) {
        this.f26356a.c(nVar, this.f26359d);
        nVar.endTracks();
        nVar.d(new g9.b0.b(C.TIME_UNSET));
        this.f26362g = nVar;
    }

    @Override // g9.l
    public int c(g9.m mVar, g9.a0 a0Var) {
        com.google.android.exoplayer2.util.a.e(this.f26362g);
        int i11 = mVar.read(this.f26357b.d(), 0, 65507);
        if (i11 == -1) {
            return -1;
        }
        if (i11 == 0) {
            return 0;
        }
        this.f26357b.P(0);
        this.f26357b.O(i11);
        g gVarD = g.d(this.f26357b);
        if (gVarD == null) {
            return 0;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jA = a(jElapsedRealtime);
        this.f26361f.e(gVarD, jElapsedRealtime);
        g gVarF = this.f26361f.f(jA);
        if (gVarF == null) {
            return 0;
        }
        if (!this.f26363h) {
            if (this.f26364i == C.TIME_UNSET) {
                this.f26364i = gVarF.f26380h;
            }
            if (this.f26365j == -1) {
                this.f26365j = gVarF.f26379g;
            }
            this.f26356a.b(this.f26364i, this.f26365j);
            this.f26363h = true;
        }
        synchronized (this.f26360e) {
            try {
                if (!this.f26366k) {
                    do {
                        this.f26358c.M(gVarF.f26383k);
                        this.f26356a.a(this.f26358c, gVarF.f26380h, gVarF.f26379g, gVarF.f26377e);
                        gVarF = this.f26361f.f(jA);
                    } while (gVarF != null);
                } else if (this.f26367l != C.TIME_UNSET && this.f26368m != C.TIME_UNSET) {
                    this.f26361f.g();
                    this.f26356a.seek(this.f26367l, this.f26368m);
                    this.f26366k = false;
                    this.f26367l = C.TIME_UNSET;
                    this.f26368m = C.TIME_UNSET;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return 0;
    }

    @Override // g9.l
    public boolean d(g9.m mVar) {
        throw new UnsupportedOperationException("RTP packets are transmitted in a packet stream do not support sniffing.");
    }

    public boolean e() {
        return this.f26363h;
    }

    public void f() {
        synchronized (this.f26360e) {
            this.f26366k = true;
        }
    }

    public void g(int i11) {
        this.f26365j = i11;
    }

    public void h(long j11) {
        this.f26364i = j11;
    }

    @Override // g9.l
    public void release() {
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        synchronized (this.f26360e) {
            this.f26367l = j11;
            this.f26368m = j12;
        }
    }
}
