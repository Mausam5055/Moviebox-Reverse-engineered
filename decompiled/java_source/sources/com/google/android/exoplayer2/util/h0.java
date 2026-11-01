package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.n2;

/* JADX INFO: loaded from: classes3.dex */
public final class h0 implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f27586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f27587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f27588c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f27589d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private n2 f27590e = n2.f25473d;

    public h0(e eVar) {
        this.f27586a = eVar;
    }

    public void a(long j11) {
        this.f27588c = j11;
        if (this.f27587b) {
            this.f27589d = this.f27586a.elapsedRealtime();
        }
    }

    @Override // com.google.android.exoplayer2.util.u
    public void b(n2 n2Var) {
        if (this.f27587b) {
            a(getPositionUs());
        }
        this.f27590e = n2Var;
    }

    public void c() {
        if (this.f27587b) {
            return;
        }
        this.f27589d = this.f27586a.elapsedRealtime();
        this.f27587b = true;
    }

    public void d() {
        if (this.f27587b) {
            a(getPositionUs());
            this.f27587b = false;
        }
    }

    @Override // com.google.android.exoplayer2.util.u
    public n2 getPlaybackParameters() {
        return this.f27590e;
    }

    @Override // com.google.android.exoplayer2.util.u
    public long getPositionUs() {
        long j11 = this.f27588c;
        if (!this.f27587b) {
            return j11;
        }
        long jElapsedRealtime = this.f27586a.elapsedRealtime() - this.f27589d;
        n2 n2Var = this.f27590e;
        return j11 + (n2Var.f25475a == 1.0f ? p0.B0(jElapsedRealtime) : n2Var.b(jElapsedRealtime));
    }
}
