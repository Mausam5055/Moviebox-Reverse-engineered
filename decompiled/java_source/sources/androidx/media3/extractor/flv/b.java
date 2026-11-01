package androidx.media3.extractor.flv;

import android.net.Uri;
import androidx.media3.common.util.j0;
import androidx.media3.extractor.flv.b;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i3.s;
import java.util.List;
import java.util.Map;
import l2.h0;
import l2.l0;
import l2.m0;
import l2.q;
import l2.r;
import l2.t;
import l2.w;
import l2.x;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements r {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final x f13406q = new x() { // from class: r2.a
        @Override // l2.x
        public /* synthetic */ x a(s.a aVar) {
            return w.d(this, aVar);
        }

        @Override // l2.x
        public /* synthetic */ x b(int i11) {
            return w.b(this, i11);
        }

        @Override // l2.x
        public /* synthetic */ r[] c(Uri uri, Map map) {
            return w.a(this, uri, map);
        }

        @Override // l2.x
        public final r[] createExtractors() {
            return b.i();
        }

        @Override // l2.x
        public /* synthetic */ x d(boolean z10) {
            return w.c(this, z10);
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private t f13412f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f13414h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f13415i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f13416j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f13417k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f13418l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f13419m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f13420n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private a f13421o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private d f13422p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j0 f13407a = new j0(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j0 f13408b = new j0(9);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j0 f13409c = new j0(11);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j0 f13410d = new j0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c f13411e = new c();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f13413g = 1;

    private void g() {
        if (this.f13420n) {
            return;
        }
        this.f13412f.f(new m0.b(C.TIME_UNSET));
        this.f13420n = true;
    }

    private long h() {
        if (this.f13414h) {
            return this.f13415i + this.f13419m;
        }
        if (this.f13411e.d() == C.TIME_UNSET) {
            return 0L;
        }
        return this.f13419m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ r[] i() {
        return new r[]{new b()};
    }

    private j0 j(l2.s sVar) {
        if (this.f13418l > this.f13410d.b()) {
            j0 j0Var = this.f13410d;
            j0Var.U(new byte[Math.max(j0Var.b() * 2, this.f13418l)], 0);
        } else {
            this.f13410d.W(0);
        }
        this.f13410d.V(this.f13418l);
        sVar.readFully(this.f13410d.e(), 0, this.f13418l);
        return this.f13410d;
    }

    private boolean k(l2.s sVar) {
        if (!sVar.readFully(this.f13408b.e(), 0, 9, true)) {
            return false;
        }
        this.f13408b.W(0);
        this.f13408b.X(4);
        int iH = this.f13408b.H();
        boolean z10 = (iH & 4) != 0;
        boolean z11 = (iH & 1) != 0;
        if (z10 && this.f13421o == null) {
            this.f13421o = new a(this.f13412f.track(8, 1));
        }
        if (z11 && this.f13422p == null) {
            this.f13422p = new d(this.f13412f.track(9, 2));
        }
        this.f13412f.endTracks();
        this.f13416j = this.f13408b.q() - 5;
        this.f13413g = 2;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0087  */
    /* JADX WARN: Code duplicated, block: B:27:0x008b  */
    private boolean l(l2.s sVar) {
        boolean zA;
        boolean z10;
        long j11;
        long jH = h();
        int i11 = this.f13417k;
        if (i11 == 8 && this.f13421o != null) {
            g();
            zA = this.f13421o.a(j(sVar), jH);
        } else {
            if (i11 != 9 || this.f13422p == null) {
                if (i11 != 18 || this.f13420n) {
                    sVar.skipFully(this.f13418l);
                    zA = false;
                    z10 = false;
                } else {
                    zA = this.f13411e.a(j(sVar), jH);
                    long jD = this.f13411e.d();
                    if (jD != C.TIME_UNSET) {
                        this.f13412f.f(new h0(this.f13411e.e(), this.f13411e.f(), jD));
                        this.f13420n = true;
                    }
                }
                if (!this.f13414h && zA) {
                    this.f13414h = true;
                    if (this.f13411e.d() == C.TIME_UNSET) {
                        j11 = -this.f13419m;
                    } else {
                        j11 = 0;
                    }
                    this.f13415i = j11;
                }
                this.f13416j = 4;
                this.f13413g = 2;
                return z10;
            }
            g();
            zA = this.f13422p.a(j(sVar), jH);
        }
        z10 = true;
        if (!this.f13414h) {
            this.f13414h = true;
            if (this.f13411e.d() == C.TIME_UNSET) {
                j11 = -this.f13419m;
            } else {
                j11 = 0;
            }
            this.f13415i = j11;
        }
        this.f13416j = 4;
        this.f13413g = 2;
        return z10;
    }

    private boolean m(l2.s sVar) {
        if (!sVar.readFully(this.f13409c.e(), 0, 11, true)) {
            return false;
        }
        this.f13409c.W(0);
        this.f13417k = this.f13409c.H();
        this.f13418l = this.f13409c.K();
        this.f13419m = this.f13409c.K();
        this.f13419m = (((long) (this.f13409c.H() << 24)) | this.f13419m) * 1000;
        this.f13409c.X(3);
        this.f13413g = 4;
        return true;
    }

    private void n(l2.s sVar) {
        sVar.skipFully(this.f13416j);
        this.f13416j = 0;
        this.f13413g = 3;
    }

    @Override // l2.r
    public void b(t tVar) {
        this.f13412f = tVar;
    }

    @Override // l2.r
    public int c(l2.s sVar, l0 l0Var) {
        androidx.media3.common.util.a.i(this.f13412f);
        while (true) {
            int i11 = this.f13413g;
            if (i11 != 1) {
                if (i11 == 2) {
                    n(sVar);
                } else if (i11 != 3) {
                    if (i11 != 4) {
                        throw new IllegalStateException();
                    }
                    if (l(sVar)) {
                        return 0;
                    }
                } else if (!m(sVar)) {
                    return -1;
                }
            } else if (!k(sVar)) {
                return -1;
            }
        }
    }

    @Override // l2.r
    public boolean d(l2.s sVar) {
        sVar.peekFully(this.f13407a.e(), 0, 3);
        this.f13407a.W(0);
        if (this.f13407a.K() != 4607062) {
            return false;
        }
        sVar.peekFully(this.f13407a.e(), 0, 2);
        this.f13407a.W(0);
        if ((this.f13407a.P() & 250) != 0) {
            return false;
        }
        sVar.peekFully(this.f13407a.e(), 0, 4);
        this.f13407a.W(0);
        int iQ = this.f13407a.q();
        sVar.resetPeekPosition();
        sVar.advancePeekPosition(iQ);
        sVar.peekFully(this.f13407a.e(), 0, 4);
        this.f13407a.W(0);
        return this.f13407a.q() == 0;
    }

    @Override // l2.r
    public /* synthetic */ r e() {
        return q.b(this);
    }

    @Override // l2.r
    public /* synthetic */ List f() {
        return q.a(this);
    }

    @Override // l2.r
    public void release() {
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        if (j11 == 0) {
            this.f13413g = 1;
            this.f13414h = false;
        } else {
            this.f13413g = 3;
        }
        this.f13416j = 0;
    }
}
