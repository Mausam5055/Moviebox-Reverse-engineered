package e3;

import android.net.Uri;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i3.s;
import java.io.EOFException;
import java.math.RoundingMode;
import java.util.List;
import java.util.Map;
import l2.e0;
import l2.g0;
import l2.i0;
import l2.l0;
import l2.n;
import l2.q;
import l2.r;
import l2.s0;
import l2.t;
import l2.w;
import l2.x;
import z2.l;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements r {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final x f61509v = new x() { // from class: e3.d
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
            return f.q();
        }

        @Override // l2.x
        public /* synthetic */ x d(boolean z10) {
            return w.c(this, z10);
        }
    };

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final z2.h.a f61510w = new z2.h.a() { // from class: e3.e
        @Override // z2.h.a
        public final boolean evaluate(int i11, int i12, int i13, int i14, int i15) {
            return f.r(i11, i12, i13, i14, i15);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f61511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f61512b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j0 f61513c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i0.a f61514d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e0 f61515e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final g0 f61516f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final s0 f61517g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private t f61518h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private s0 f61519i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private s0 f61520j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f61521k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private androidx.media3.common.x f61522l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f61523m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f61524n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f61525o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f61526p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f61527q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private g f61528r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f61529s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f61530t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f61531u;

    public f() {
        this(0);
    }

    public f(int i11) {
        this(i11, C.TIME_UNSET);
    }

    public f(int i11, long j11) {
        this.f61511a = (i11 & 2) != 0 ? i11 | 1 : i11;
        this.f61512b = j11;
        this.f61513c = new j0(10);
        this.f61514d = new i0.a();
        this.f61515e = new e0();
        this.f61523m = C.TIME_UNSET;
        this.f61516f = new g0();
        n nVar = new n();
        this.f61517g = nVar;
        this.f61520j = nVar;
        this.f61526p = -1L;
    }

    private void h() {
        androidx.media3.common.util.a.i(this.f61519i);
        a1.i(this.f61518h);
    }

    private g i(l2.s sVar) {
        long jN;
        long jA;
        g gVarT = t(sVar);
        c cVarS = s(this.f61522l, sVar.getPosition());
        if (this.f61529s) {
            return new g.a();
        }
        if ((this.f61511a & 4) != 0) {
            if (cVarS != null) {
                jN = cVarS.getDurationUs();
                jA = cVarS.a();
            } else if (gVarT != null) {
                jN = gVarT.getDurationUs();
                jA = gVarT.a();
            } else {
                jN = n(this.f61522l);
                jA = -1;
            }
            gVarT = new b(jN, sVar.getPosition(), jA);
        } else if (cVarS != null) {
            gVarT = cVarS;
        } else if (gVarT == null) {
            gVarT = null;
        }
        if (gVarT == null || (!gVarT.isSeekable() && (this.f61511a & 1) != 0)) {
            gVarT = m(sVar, (this.f61511a & 2) != 0);
        }
        if (gVarT != null) {
            this.f61519i.f(gVarT.getDurationUs());
        }
        return gVarT;
    }

    private long j(long j11) {
        return this.f61523m + ((j11 * 1000000) / ((long) this.f61514d.f68609d));
    }

    private g l(long j11, i iVar, long j12) {
        long j13;
        long j14;
        long jA = iVar.a();
        if (jA == C.TIME_UNSET) {
            return null;
        }
        long j15 = iVar.f61539c;
        if (j15 != -1) {
            long j16 = j11 + j15;
            j13 = j15 - ((long) iVar.f61537a.f68608c);
            j14 = j16;
        } else {
            if (j12 == -1) {
                return null;
            }
            j13 = (j12 - j11) - ((long) iVar.f61537a.f68608c);
            j14 = j12;
        }
        long j17 = j13;
        RoundingMode roundingMode = RoundingMode.HALF_UP;
        return new a(j14, j11 + ((long) iVar.f61537a.f68608c), Ints.d(a1.g1(j17, 8000000L, jA, roundingMode)), Ints.d(com.google.common.math.f.c(j17, iVar.f61538b, roundingMode)), false);
    }

    private g m(l2.s sVar, boolean z10) {
        sVar.peekFully(this.f61513c.e(), 0, 4);
        this.f61513c.W(0);
        this.f61514d.a(this.f61513c.q());
        return new a(sVar.getLength(), sVar.getPosition(), this.f61514d, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static long n(androidx.media3.common.x xVar) {
        if (xVar == null) {
            return C.TIME_UNSET;
        }
        int iE = xVar.e();
        for (int i11 = 0; i11 < iE; i11++) {
            androidx.media3.common.x.a aVarD = xVar.d(i11);
            if (aVarD instanceof z2.n) {
                z2.n nVar = (z2.n) aVarD;
                if (nVar.f79192a.equals("TLEN")) {
                    return a1.R0(Long.parseLong((String) nVar.f79206d.get(0)));
                }
            }
        }
        return C.TIME_UNSET;
    }

    private static int o(j0 j0Var, int i11) {
        if (j0Var.g() >= i11 + 4) {
            j0Var.W(i11);
            int iQ = j0Var.q();
            if (iQ == 1483304551 || iQ == 1231971951) {
                return iQ;
            }
        }
        if (j0Var.g() < 40) {
            return 0;
        }
        j0Var.W(36);
        return j0Var.q() == 1447187017 ? 1447187017 : 0;
    }

    private static boolean p(int i11, long j11) {
        return ((long) (i11 & (-128000))) == (j11 & (-128000));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ r[] q() {
        return new r[]{new f()};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean r(int i11, int i12, int i13, int i14, int i15) {
        return (i12 == 67 && i13 == 79 && i14 == 77 && (i15 == 77 || i11 == 2)) || (i12 == 77 && i13 == 76 && i14 == 76 && (i15 == 84 || i11 == 2));
    }

    private static c s(androidx.media3.common.x xVar, long j11) {
        if (xVar == null) {
            return null;
        }
        int iE = xVar.e();
        for (int i11 = 0; i11 < iE; i11++) {
            androidx.media3.common.x.a aVarD = xVar.d(i11);
            if (aVarD instanceof l) {
                return c.b(j11, (l) aVarD, n(xVar));
            }
        }
        return null;
    }

    private g t(l2.s sVar) {
        int i11;
        int i12;
        j0 j0Var = new j0(this.f61514d.f68608c);
        sVar.peekFully(j0Var.e(), 0, this.f61514d.f68608c);
        i0.a aVar = this.f61514d;
        int i13 = 21;
        if ((aVar.f68606a & 1) != 0) {
            if (aVar.f68610e != 1) {
                i13 = 36;
            }
        } else if (aVar.f68610e == 1) {
            i13 = 13;
        }
        int iO = o(j0Var, i13);
        if (iO != 1231971951) {
            if (iO == 1447187017) {
                h hVarB = h.b(sVar.getLength(), sVar.getPosition(), this.f61514d, j0Var);
                sVar.skipFully(this.f61514d.f68608c);
                return hVarB;
            }
            if (iO != 1483304551) {
                sVar.resetPeekPosition();
                return null;
            }
        }
        i iVarB = i.b(this.f61514d, j0Var);
        if (!this.f61515e.a() && (i11 = iVarB.f61540d) != -1 && (i12 = iVarB.f61541e) != -1) {
            e0 e0Var = this.f61515e;
            e0Var.f68565a = i11;
            e0Var.f68566b = i12;
        }
        long position = sVar.getPosition();
        if (sVar.getLength() != -1 && iVarB.f61539c != -1 && sVar.getLength() != iVarB.f61539c + position) {
            u.f("Mp3Extractor", "Data size mismatch between stream (" + sVar.getLength() + ") and Xing frame (" + (iVarB.f61539c + position) + "), using Xing value.");
        }
        sVar.skipFully(this.f61514d.f68608c);
        return iO == 1483304551 ? j.b(iVarB, position) : l(position, iVarB, sVar.getLength());
    }

    private void u() {
        g gVar = this.f61528r;
        if ((gVar instanceof a) && gVar.isSeekable()) {
            long j11 = this.f61526p;
            if (j11 == -1 || j11 == this.f61528r.a()) {
                return;
            }
            this.f61528r = ((a) this.f61528r).e(this.f61526p);
            ((t) androidx.media3.common.util.a.e(this.f61518h)).f(this.f61528r);
            ((s0) androidx.media3.common.util.a.e(this.f61519i)).f(this.f61528r.getDurationUs());
        }
    }

    private boolean v(l2.s sVar) {
        g gVar = this.f61528r;
        if (gVar != null) {
            long jA = gVar.a();
            if (jA != -1 && sVar.getPeekPosition() > jA - 4) {
                return true;
            }
        }
        try {
            return !sVar.peekFully(this.f61513c.e(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private int w(l2.s sVar) {
        if (this.f61521k == 0) {
            try {
                y(sVar, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.f61528r == null) {
            g gVarI = i(sVar);
            this.f61528r = gVarI;
            this.f61518h.f(gVarI);
            androidx.media3.common.r.b bVarN0 = new androidx.media3.common.r.b().U(MimeTypes.AUDIO_MPEG).u0(this.f61514d.f68607b).k0(4096).R(this.f61514d.f68610e).v0(this.f61514d.f68609d).Z(this.f61515e.f68565a).a0(this.f61515e.f68566b).n0((this.f61511a & 8) != 0 ? null : this.f61522l);
            if (this.f61528r.g() != -2147483647) {
                bVarN0.Q(this.f61528r.g());
            }
            this.f61520j.c(bVarN0.N());
            this.f61525o = sVar.getPosition();
        } else if (this.f61525o != 0) {
            long position = sVar.getPosition();
            long j11 = this.f61525o;
            if (position < j11) {
                sVar.skipFully((int) (j11 - position));
            }
        }
        return x(sVar);
    }

    private int x(l2.s sVar) {
        if (this.f61527q == 0) {
            sVar.resetPeekPosition();
            if (v(sVar)) {
                return -1;
            }
            this.f61513c.W(0);
            int iQ = this.f61513c.q();
            if (!p(iQ, this.f61521k) || i0.j(iQ) == -1) {
                sVar.skipFully(1);
                this.f61521k = 0;
                return 0;
            }
            this.f61514d.a(iQ);
            if (this.f61523m == C.TIME_UNSET) {
                this.f61523m = this.f61528r.getTimeUs(sVar.getPosition());
                if (this.f61512b != C.TIME_UNSET) {
                    this.f61523m += this.f61512b - this.f61528r.getTimeUs(0L);
                }
            }
            this.f61527q = this.f61514d.f68608c;
            long position = sVar.getPosition();
            i0.a aVar = this.f61514d;
            this.f61526p = position + ((long) aVar.f68608c);
            g gVar = this.f61528r;
            if (gVar instanceof b) {
                b bVar = (b) gVar;
                bVar.c(j(this.f61524n + ((long) aVar.f68612g)), this.f61526p);
                if (this.f61530t && bVar.b(this.f61531u)) {
                    this.f61530t = false;
                    this.f61520j = this.f61519i;
                }
            }
        }
        int iE = this.f61520j.e(sVar, this.f61527q, true);
        if (iE == -1) {
            return -1;
        }
        int i11 = this.f61527q - iE;
        this.f61527q = i11;
        if (i11 > 0) {
            return 0;
        }
        this.f61520j.d(j(this.f61524n), 1, this.f61514d.f68608c, 0, null);
        this.f61524n += (long) this.f61514d.f68612g;
        this.f61527q = 0;
        return 0;
    }

    private boolean y(l2.s sVar, boolean z10) throws EOFException {
        int peekPosition;
        int i11;
        int iJ;
        int i12 = z10 ? 32768 : 131072;
        sVar.resetPeekPosition();
        if (sVar.getPosition() == 0) {
            androidx.media3.common.x xVarA = this.f61516f.a(sVar, (this.f61511a & 8) == 0 ? null : f61510w);
            this.f61522l = xVarA;
            if (xVarA != null) {
                this.f61515e.c(xVarA);
            }
            peekPosition = (int) sVar.getPeekPosition();
            if (!z10) {
                sVar.skipFully(peekPosition);
            }
            i11 = 0;
        } else {
            peekPosition = 0;
            i11 = 0;
        }
        int i13 = i11;
        int i14 = i13;
        while (true) {
            if (v(sVar)) {
                if (i13 > 0) {
                    break;
                }
                u();
                throw new EOFException();
            }
            this.f61513c.W(0);
            int iQ = this.f61513c.q();
            if ((i11 == 0 || p(iQ, i11)) && (iJ = i0.j(iQ)) != -1) {
                i13++;
                if (i13 != 1) {
                    if (i13 == 4) {
                        break;
                    }
                } else {
                    this.f61514d.a(iQ);
                    i11 = iQ;
                }
                sVar.advancePeekPosition(iJ - 4);
            } else {
                int i15 = i14 + 1;
                if (i14 == i12) {
                    if (z10) {
                        return false;
                    }
                    u();
                    throw new EOFException();
                }
                if (z10) {
                    sVar.resetPeekPosition();
                    sVar.advancePeekPosition(peekPosition + i15);
                } else {
                    sVar.skipFully(1);
                }
                i13 = 0;
                i14 = i15;
                i11 = 0;
            }
        }
        if (z10) {
            sVar.skipFully(peekPosition + i14);
        } else {
            sVar.resetPeekPosition();
        }
        this.f61521k = i11;
        return true;
    }

    @Override // l2.r
    public void b(t tVar) {
        this.f61518h = tVar;
        s0 s0VarTrack = tVar.track(0, 1);
        this.f61519i = s0VarTrack;
        this.f61520j = s0VarTrack;
        this.f61518h.endTracks();
    }

    @Override // l2.r
    public int c(l2.s sVar, l0 l0Var) {
        h();
        int iW = w(sVar);
        if (iW == -1 && (this.f61528r instanceof b)) {
            long j11 = j(this.f61524n);
            if (this.f61528r.getDurationUs() != j11) {
                ((b) this.f61528r).d(j11);
                this.f61518h.f(this.f61528r);
                this.f61519i.f(this.f61528r.getDurationUs());
            }
        }
        return iW;
    }

    @Override // l2.r
    public boolean d(l2.s sVar) {
        return y(sVar, true);
    }

    @Override // l2.r
    public /* synthetic */ r e() {
        return q.b(this);
    }

    @Override // l2.r
    public /* synthetic */ List f() {
        return q.a(this);
    }

    public void k() {
        this.f61529s = true;
    }

    @Override // l2.r
    public void release() {
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        this.f61521k = 0;
        this.f61523m = C.TIME_UNSET;
        this.f61524n = 0L;
        this.f61527q = 0;
        this.f61531u = j12;
        g gVar = this.f61528r;
        if (!(gVar instanceof b) || ((b) gVar).b(j12)) {
            return;
        }
        this.f61530t = true;
        this.f61520j = this.f61517g;
    }
}
