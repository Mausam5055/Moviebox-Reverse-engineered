package com.google.android.exoplayer2.extractor.flv;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.flv.b;
import com.google.android.exoplayer2.util.d0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.a0;
import g9.b0;
import g9.l;
import g9.m;
import g9.n;
import g9.q;
import g9.r;
import g9.z;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class b implements l {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final r f25046q = new r() { // from class: k9.a
        @Override // g9.r
        public /* synthetic */ l[] c(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // g9.r
        public final l[] createExtractors() {
            return b.g();
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private n f25052f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f25054h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f25055i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f25056j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f25057k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f25058l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f25059m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f25060n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private a f25061o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private d f25062p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d0 f25047a = new d0(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d0 f25048b = new d0(9);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d0 f25049c = new d0(11);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d0 f25050d = new d0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c f25051e = new c();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f25053g = 1;

    private void e() {
        if (this.f25060n) {
            return;
        }
        this.f25052f.d(new b0.b(C.TIME_UNSET));
        this.f25060n = true;
    }

    private long f() {
        if (this.f25054h) {
            return this.f25055i + this.f25059m;
        }
        if (this.f25051e.d() == C.TIME_UNSET) {
            return 0L;
        }
        return this.f25059m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] g() {
        return new l[]{new b()};
    }

    private d0 h(m mVar) {
        if (this.f25058l > this.f25050d.b()) {
            d0 d0Var = this.f25050d;
            d0Var.N(new byte[Math.max(d0Var.b() * 2, this.f25058l)], 0);
        } else {
            this.f25050d.P(0);
        }
        this.f25050d.O(this.f25058l);
        mVar.readFully(this.f25050d.d(), 0, this.f25058l);
        return this.f25050d;
    }

    private boolean i(m mVar) {
        if (!mVar.readFully(this.f25048b.d(), 0, 9, true)) {
            return false;
        }
        this.f25048b.P(0);
        this.f25048b.Q(4);
        int iD = this.f25048b.D();
        boolean z10 = (iD & 4) != 0;
        boolean z11 = (iD & 1) != 0;
        if (z10 && this.f25061o == null) {
            this.f25061o = new a(this.f25052f.track(8, 1));
        }
        if (z11 && this.f25062p == null) {
            this.f25062p = new d(this.f25052f.track(9, 2));
        }
        this.f25052f.endTracks();
        this.f25056j = this.f25048b.n() - 5;
        this.f25053g = 2;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0087  */
    /* JADX WARN: Code duplicated, block: B:27:0x008b  */
    private boolean j(m mVar) {
        boolean zA;
        boolean z10;
        long j11;
        long jF = f();
        int i11 = this.f25057k;
        if (i11 == 8 && this.f25061o != null) {
            e();
            zA = this.f25061o.a(h(mVar), jF);
        } else {
            if (i11 != 9 || this.f25062p == null) {
                if (i11 != 18 || this.f25060n) {
                    mVar.skipFully(this.f25058l);
                    zA = false;
                    z10 = false;
                } else {
                    zA = this.f25051e.a(h(mVar), jF);
                    long jD = this.f25051e.d();
                    if (jD != C.TIME_UNSET) {
                        this.f25052f.d(new z(this.f25051e.e(), this.f25051e.f(), jD));
                        this.f25060n = true;
                    }
                }
                if (!this.f25054h && zA) {
                    this.f25054h = true;
                    if (this.f25051e.d() == C.TIME_UNSET) {
                        j11 = -this.f25059m;
                    } else {
                        j11 = 0;
                    }
                    this.f25055i = j11;
                }
                this.f25056j = 4;
                this.f25053g = 2;
                return z10;
            }
            e();
            zA = this.f25062p.a(h(mVar), jF);
        }
        z10 = true;
        if (!this.f25054h) {
            this.f25054h = true;
            if (this.f25051e.d() == C.TIME_UNSET) {
                j11 = -this.f25059m;
            } else {
                j11 = 0;
            }
            this.f25055i = j11;
        }
        this.f25056j = 4;
        this.f25053g = 2;
        return z10;
    }

    private boolean k(m mVar) {
        if (!mVar.readFully(this.f25049c.d(), 0, 11, true)) {
            return false;
        }
        this.f25049c.P(0);
        this.f25057k = this.f25049c.D();
        this.f25058l = this.f25049c.G();
        this.f25059m = this.f25049c.G();
        this.f25059m = (((long) (this.f25049c.D() << 24)) | this.f25059m) * 1000;
        this.f25049c.Q(3);
        this.f25053g = 4;
        return true;
    }

    private void l(m mVar) {
        mVar.skipFully(this.f25056j);
        this.f25056j = 0;
        this.f25053g = 3;
    }

    @Override // g9.l
    public void b(n nVar) {
        this.f25052f = nVar;
    }

    @Override // g9.l
    public int c(m mVar, a0 a0Var) {
        com.google.android.exoplayer2.util.a.i(this.f25052f);
        while (true) {
            int i11 = this.f25053g;
            if (i11 != 1) {
                if (i11 == 2) {
                    l(mVar);
                } else if (i11 != 3) {
                    if (i11 != 4) {
                        throw new IllegalStateException();
                    }
                    if (j(mVar)) {
                        return 0;
                    }
                } else if (!k(mVar)) {
                    return -1;
                }
            } else if (!i(mVar)) {
                return -1;
            }
        }
    }

    @Override // g9.l
    public boolean d(m mVar) {
        mVar.peekFully(this.f25047a.d(), 0, 3);
        this.f25047a.P(0);
        if (this.f25047a.G() != 4607062) {
            return false;
        }
        mVar.peekFully(this.f25047a.d(), 0, 2);
        this.f25047a.P(0);
        if ((this.f25047a.J() & 250) != 0) {
            return false;
        }
        mVar.peekFully(this.f25047a.d(), 0, 4);
        this.f25047a.P(0);
        int iN = this.f25047a.n();
        mVar.resetPeekPosition();
        mVar.advancePeekPosition(iN);
        mVar.peekFully(this.f25047a.d(), 0, 4);
        this.f25047a.P(0);
        return this.f25047a.n() == 0;
    }

    @Override // g9.l
    public void release() {
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        if (j11 == 0) {
            this.f25053g = 1;
            this.f25054h = false;
        } else {
            this.f25053g = 3;
        }
        this.f25056j = 0;
    }
}
