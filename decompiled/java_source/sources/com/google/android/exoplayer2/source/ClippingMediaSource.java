package com.google.android.exoplayer2.source;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.v1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class ClippingMediaSource extends c {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final o f25642k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final long f25643l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final long f25644m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f25645n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f25646o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f25647p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ArrayList f25648q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final k3.d f25649r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private a f25650s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private IllegalClippingException f25651t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f25652u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f25653v;

    public static final class IllegalClippingException extends IOException {
        public static final int REASON_INVALID_PERIOD_COUNT = 0;
        public static final int REASON_NOT_SEEKABLE_TO_START = 1;
        public static final int REASON_START_EXCEEDS_END = 2;
        public final int reason;

        public IllegalClippingException(int i11) {
            super("Illegal clipping: " + getReasonDescription(i11));
            this.reason = i11;
        }

        private static String getReasonDescription(int i11) {
            if (i11 == 0) {
                return "invalid period count";
            }
            if (i11 != 1) {
                return i11 != 2 ? TmcConstants.ROUTE_UNKNOWN : "start exceeds end";
            }
            return "not seekable to start";
        }
    }

    private static final class a extends j {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f25654d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final long f25655e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f25656f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f25657g;

        public a(k3 k3Var, long j11, long j12) throws IllegalClippingException {
            super(k3Var);
            boolean z10 = false;
            if (k3Var.m() != 1) {
                throw new IllegalClippingException(0);
            }
            k3.d dVarR = k3Var.r(0, new k3.d());
            long jMax = Math.max(0L, j11);
            if (!dVarR.f25180l && jMax != 0 && !dVarR.f25176h) {
                throw new IllegalClippingException(1);
            }
            long jMax2 = j12 == Long.MIN_VALUE ? dVarR.f25182n : Math.max(0L, j12);
            long j13 = dVarR.f25182n;
            if (j13 != C.TIME_UNSET) {
                jMax2 = jMax2 > j13 ? j13 : jMax2;
                if (jMax > jMax2) {
                    throw new IllegalClippingException(2);
                }
            }
            this.f25654d = jMax;
            this.f25655e = jMax2;
            this.f25656f = jMax2 == C.TIME_UNSET ? -9223372036854775807L : jMax2 - jMax;
            if (dVarR.f25177i && (jMax2 == C.TIME_UNSET || (j13 != C.TIME_UNSET && jMax2 == j13))) {
                z10 = true;
            }
            this.f25657g = z10;
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.k3
        public k3.b k(int i11, k3.b bVar, boolean z10) {
            this.f26213c.k(0, bVar, z10);
            long jQ = bVar.q() - this.f25654d;
            long j11 = this.f25656f;
            return bVar.v(bVar.f25154a, bVar.f25155b, 0, j11 == C.TIME_UNSET ? -9223372036854775807L : j11 - jQ, jQ);
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.k3
        public k3.d s(int i11, k3.d dVar, long j11) {
            this.f26213c.s(0, dVar, 0L);
            long j12 = dVar.f25185q;
            long j13 = this.f25654d;
            dVar.f25185q = j12 + j13;
            dVar.f25182n = this.f25656f;
            dVar.f25177i = this.f25657g;
            long j14 = dVar.f25181m;
            if (j14 != C.TIME_UNSET) {
                long jMax = Math.max(j14, j13);
                dVar.f25181m = jMax;
                long j15 = this.f25655e;
                if (j15 != C.TIME_UNSET) {
                    jMax = Math.min(jMax, j15);
                }
                dVar.f25181m = jMax - this.f25654d;
            }
            long jE1 = p0.e1(this.f25654d);
            long j16 = dVar.f25173e;
            if (j16 != C.TIME_UNSET) {
                dVar.f25173e = j16 + jE1;
            }
            long j17 = dVar.f25174f;
            if (j17 != C.TIME_UNSET) {
                dVar.f25174f = j17 + jE1;
            }
            return dVar;
        }
    }

    public ClippingMediaSource(o oVar, long j11, long j12, boolean z10, boolean z11, boolean z12) {
        com.google.android.exoplayer2.util.a.a(j11 >= 0);
        this.f25642k = (o) com.google.android.exoplayer2.util.a.e(oVar);
        this.f25643l = j11;
        this.f25644m = j12;
        this.f25645n = z10;
        this.f25646o = z11;
        this.f25647p = z12;
        this.f25648q = new ArrayList();
        this.f25649r = new k3.d();
    }

    private void M(k3 k3Var) {
        long j11;
        long j12;
        k3Var.r(0, this.f25649r);
        long jH = this.f25649r.h();
        if (this.f25650s == null || this.f25648q.isEmpty() || this.f25646o) {
            long j13 = this.f25643l;
            long j14 = this.f25644m;
            if (this.f25647p) {
                long jF = this.f25649r.f();
                j13 += jF;
                j14 += jF;
            }
            this.f25652u = jH + j13;
            this.f25653v = this.f25644m != Long.MIN_VALUE ? jH + j14 : Long.MIN_VALUE;
            int size = this.f25648q.size();
            for (int i11 = 0; i11 < size; i11++) {
                ((b) this.f25648q.get(i11)).l(this.f25652u, this.f25653v);
            }
            j11 = j13;
            j12 = j14;
        } else {
            long j15 = this.f25652u - jH;
            j12 = this.f25644m != Long.MIN_VALUE ? this.f25653v - jH : Long.MIN_VALUE;
            j11 = j15;
        }
        try {
            a aVar = new a(k3Var, j11, j12);
            this.f25650s = aVar;
            C(aVar);
        } catch (IllegalClippingException e11) {
            this.f25651t = e11;
            for (int i12 = 0; i12 < this.f25648q.size(); i12++) {
                ((b) this.f25648q.get(i12)).j(this.f25651t);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.a
    protected void B(k0 k0Var) {
        super.B(k0Var);
        K(null, this.f25642k);
    }

    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.a
    protected void D() {
        super.D();
        this.f25651t = null;
        this.f25650s = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.c
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public void I(Void r11, o oVar, k3 k3Var) {
        if (this.f25651t != null) {
            return;
        }
        M(k3Var);
    }

    @Override // com.google.android.exoplayer2.source.o
    public v1 a() {
        return this.f25642k.a();
    }

    @Override // com.google.android.exoplayer2.source.o
    public n d(o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j11) {
        b bVar3 = new b(this.f25642k.d(bVar, bVar2, j11), this.f25645n, this.f25652u, this.f25653v);
        this.f25648q.add(bVar3);
        return bVar3;
    }

    @Override // com.google.android.exoplayer2.source.o
    public void k(n nVar) {
        com.google.android.exoplayer2.util.a.g(this.f25648q.remove(nVar));
        this.f25642k.k(((b) nVar).f25716a);
        if (!this.f25648q.isEmpty() || this.f25646o) {
            return;
        }
        M(((a) com.google.android.exoplayer2.util.a.e(this.f25650s)).f26213c);
    }

    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.o
    public void maybeThrowSourceInfoRefreshError() throws IllegalClippingException {
        IllegalClippingException illegalClippingException = this.f25651t;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }
}
