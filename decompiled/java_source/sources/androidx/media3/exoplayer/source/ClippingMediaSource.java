package androidx.media3.exoplayer.source;

import androidx.media3.common.util.a1;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class ClippingMediaSource extends l0 {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final long f12585m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final long f12586n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f12587o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f12588p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f12589q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final boolean f12590r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final ArrayList f12591s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final androidx.media3.common.e0.c f12592t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private c f12593u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private IllegalClippingException f12594v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f12595w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f12596x;

    public static final class IllegalClippingException extends IOException {
        public static final int REASON_INVALID_PERIOD_COUNT = 0;
        public static final int REASON_NOT_SEEKABLE_TO_START = 1;
        public static final int REASON_START_EXCEEDS_END = 2;
        public final int reason;

        public IllegalClippingException(int i11) {
            this(i11, C.TIME_UNSET, C.TIME_UNSET);
        }

        public IllegalClippingException(int i11, long j11, long j12) {
            super("Illegal clipping: " + getReasonDescription(i11, j11, j12));
            this.reason = i11;
        }

        private static String getReasonDescription(int i11, long j11, long j12) {
            if (i11 == 0) {
                return "invalid period count";
            }
            if (i11 == 1) {
                return "not seekable to start";
            }
            if (i11 != 2) {
                return TmcConstants.ROUTE_UNKNOWN;
            }
            androidx.media3.common.util.a.g((j11 == C.TIME_UNSET || j12 == C.TIME_UNSET) ? false : true);
            return "start exceeds end. Start time: " + j11 + ", End time: " + j12;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final r f12597a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f12598b;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f12601e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f12602f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f12603g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f12604h;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f12600d = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f12599c = Long.MIN_VALUE;

        public b(r rVar) {
            this.f12597a = (r) androidx.media3.common.util.a.e(rVar);
        }

        public ClippingMediaSource h() {
            this.f12604h = true;
            return new ClippingMediaSource(this);
        }

        public b i(boolean z10) {
            androidx.media3.common.util.a.g(!this.f12604h);
            this.f12601e = z10;
            return this;
        }

        public b j(boolean z10) {
            androidx.media3.common.util.a.g(!this.f12604h);
            this.f12600d = z10;
            return this;
        }

        public b k(long j11) {
            androidx.media3.common.util.a.g(!this.f12604h);
            this.f12599c = j11;
            return this;
        }

        public b l(boolean z10) {
            androidx.media3.common.util.a.g(!this.f12604h);
            this.f12602f = z10;
            return this;
        }

        public b m(long j11) {
            androidx.media3.common.util.a.a(j11 >= 0);
            androidx.media3.common.util.a.g(!this.f12604h);
            this.f12598b = j11;
            return this;
        }
    }

    private static final class c extends m {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f12605f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final long f12606g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final long f12607h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final boolean f12608i;

        public c(androidx.media3.common.e0 e0Var, long j11, long j12, boolean z10) throws IllegalClippingException {
            super(e0Var);
            if (j12 != Long.MIN_VALUE && j12 < j11) {
                throw new IllegalClippingException(2, j11, j12);
            }
            boolean z11 = false;
            if (e0Var.i() != 1) {
                throw new IllegalClippingException(0);
            }
            androidx.media3.common.e0.c cVarN = e0Var.n(0, new androidx.media3.common.e0.c());
            long jMax = Math.max(0L, j11);
            if (!z10 && !cVarN.f9961k && jMax != 0 && !cVarN.f9958h) {
                throw new IllegalClippingException(1);
            }
            long jMax2 = j12 == Long.MIN_VALUE ? cVarN.f9963m : Math.max(0L, j12);
            long j13 = cVarN.f9963m;
            if (j13 != C.TIME_UNSET) {
                jMax2 = jMax2 > j13 ? j13 : jMax2;
                if (jMax > jMax2) {
                    jMax = jMax2;
                }
            }
            this.f12605f = jMax;
            this.f12606g = jMax2;
            this.f12607h = jMax2 == C.TIME_UNSET ? -9223372036854775807L : jMax2 - jMax;
            if (cVarN.f9959i && (jMax2 == C.TIME_UNSET || (j13 != C.TIME_UNSET && jMax2 == j13))) {
                z11 = true;
            }
            this.f12608i = z11;
        }

        @Override // androidx.media3.exoplayer.source.m, androidx.media3.common.e0
        public androidx.media3.common.e0.b g(int i11, androidx.media3.common.e0.b bVar, boolean z10) {
            this.f12856e.g(0, bVar, z10);
            long jO = bVar.o() - this.f12605f;
            long j11 = this.f12607h;
            return bVar.t(bVar.f9934a, bVar.f9935b, 0, j11 == C.TIME_UNSET ? -9223372036854775807L : j11 - jO, jO);
        }

        @Override // androidx.media3.exoplayer.source.m, androidx.media3.common.e0
        public androidx.media3.common.e0.c o(int i11, androidx.media3.common.e0.c cVar, long j11) {
            this.f12856e.o(0, cVar, 0L);
            long j12 = cVar.f9966p;
            long j13 = this.f12605f;
            cVar.f9966p = j12 + j13;
            cVar.f9963m = this.f12607h;
            cVar.f9959i = this.f12608i;
            long j14 = cVar.f9962l;
            if (j14 != C.TIME_UNSET) {
                long jMax = Math.max(j14, j13);
                cVar.f9962l = jMax;
                long j15 = this.f12606g;
                if (j15 != C.TIME_UNSET) {
                    jMax = Math.min(jMax, j15);
                }
                cVar.f9962l = jMax - this.f12605f;
            }
            long jY1 = a1.y1(this.f12605f);
            long j16 = cVar.f9955e;
            if (j16 != C.TIME_UNSET) {
                cVar.f9955e = j16 + jY1;
            }
            long j17 = cVar.f9956f;
            if (j17 != C.TIME_UNSET) {
                cVar.f9956f = j17 + jY1;
            }
            return cVar;
        }
    }

    private ClippingMediaSource(b bVar) {
        super(bVar.f12597a);
        this.f12585m = bVar.f12598b;
        this.f12586n = bVar.f12599c;
        this.f12587o = bVar.f12600d;
        this.f12588p = bVar.f12601e;
        this.f12589q = bVar.f12602f;
        this.f12590r = bVar.f12603g;
        this.f12591s = new ArrayList();
        this.f12592t = new androidx.media3.common.e0.c();
    }

    private void T(androidx.media3.common.e0 e0Var) {
        long j11;
        long j12;
        e0Var.n(0, this.f12592t);
        long jE = this.f12592t.e();
        if (this.f12593u == null || this.f12591s.isEmpty() || this.f12588p) {
            long j13 = this.f12585m;
            long j14 = this.f12586n;
            if (this.f12589q) {
                long jC = this.f12592t.c();
                j13 += jC;
                j14 += jC;
            }
            this.f12595w = jE + j13;
            this.f12596x = this.f12586n != Long.MIN_VALUE ? jE + j14 : Long.MIN_VALUE;
            int size = this.f12591s.size();
            for (int i11 = 0; i11 < size; i11++) {
                ((androidx.media3.exoplayer.source.b) this.f12591s.get(i11)).n(this.f12595w, this.f12596x);
            }
            j11 = j13;
            j12 = j14;
        } else {
            long j15 = this.f12595w - jE;
            j12 = this.f12586n != Long.MIN_VALUE ? this.f12596x - jE : Long.MIN_VALUE;
            j11 = j15;
        }
        try {
            c cVar = new c(e0Var, j11, j12, this.f12590r);
            this.f12593u = cVar;
            A(cVar);
        } catch (IllegalClippingException e11) {
            this.f12594v = e11;
            for (int i12 = 0; i12 < this.f12591s.size(); i12++) {
                ((androidx.media3.exoplayer.source.b) this.f12591s.get(i12)).l(this.f12594v);
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.c, androidx.media3.exoplayer.source.a
    protected void B() {
        super.B();
        this.f12594v = null;
        this.f12593u = null;
    }

    @Override // androidx.media3.exoplayer.source.l0
    protected void P(androidx.media3.common.e0 e0Var) {
        if (this.f12594v != null) {
            return;
        }
        T(e0Var);
    }

    @Override // androidx.media3.exoplayer.source.r
    public q g(r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j11) {
        androidx.media3.exoplayer.source.b bVar3 = new androidx.media3.exoplayer.source.b(this.f12855k.g(bVar, bVar2, j11), this.f12587o, this.f12595w, this.f12596x);
        this.f12591s.add(bVar3);
        return bVar3;
    }

    @Override // androidx.media3.exoplayer.source.r
    public void j(q qVar) {
        androidx.media3.common.util.a.g(this.f12591s.remove(qVar));
        this.f12855k.j(((androidx.media3.exoplayer.source.b) qVar).f12682a);
        if (!this.f12591s.isEmpty() || this.f12588p) {
            return;
        }
        T(((c) androidx.media3.common.util.a.e(this.f12593u)).f12856e);
    }

    @Override // androidx.media3.exoplayer.source.c, androidx.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() throws IllegalClippingException {
        IllegalClippingException illegalClippingException = this.f12594v;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    @Override // androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.r
    public boolean q(androidx.media3.common.t tVar) {
        return a().f10215f.equals(tVar.f10215f) && this.f12855k.q(tVar);
    }
}
