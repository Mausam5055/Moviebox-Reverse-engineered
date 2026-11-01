package n9;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.b0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.a0;
import g9.e0;
import g9.k;
import g9.l;
import g9.m;
import g9.n;
import g9.q;
import g9.r;
import g9.x;
import g9.y;
import java.io.EOFException;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class f implements l {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final r f70259u = new r() { // from class: n9.d
        @Override // g9.r
        public /* synthetic */ l[] c(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // g9.r
        public final l[] createExtractors() {
            return f.n();
        }
    };

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final com.google.android.exoplayer2.metadata.id3.b.a f70260v = new com.google.android.exoplayer2.metadata.id3.b.a() { // from class: n9.e
        @Override // com.google.android.exoplayer2.metadata.id3.b.a
        public final boolean evaluate(int i11, int i12, int i13, int i14, int i15) {
            return f.o(i11, i12, i13, i14, i15);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f70261a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f70262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d0 f70263c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0.a f70264d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final x f70265e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final y f70266f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final e0 f70267g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private n f70268h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private e0 f70269i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private e0 f70270j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f70271k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Metadata f70272l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f70273m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f70274n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f70275o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f70276p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private g f70277q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f70278r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f70279s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f70280t;

    public f() {
        this(0);
    }

    public f(int i11) {
        this(i11, C.TIME_UNSET);
    }

    public f(int i11, long j11) {
        this.f70261a = (i11 & 2) != 0 ? i11 | 1 : i11;
        this.f70262b = j11;
        this.f70263c = new d0(10);
        this.f70264d = new b0.a();
        this.f70265e = new x();
        this.f70273m = C.TIME_UNSET;
        this.f70266f = new y();
        k kVar = new k();
        this.f70267g = kVar;
        this.f70270j = kVar;
    }

    private void f() {
        com.google.android.exoplayer2.util.a.i(this.f70269i);
        p0.j(this.f70268h);
    }

    private g g(m mVar) {
        long jK;
        long jA;
        g gVarQ = q(mVar);
        c cVarP = p(this.f70272l, mVar.getPosition());
        if (this.f70278r) {
            return new g.a();
        }
        if ((this.f70261a & 4) != 0) {
            if (cVarP != null) {
                jK = cVarP.getDurationUs();
                jA = cVarP.a();
            } else if (gVarQ != null) {
                jK = gVarQ.getDurationUs();
                jA = gVarQ.a();
            } else {
                jK = k(this.f70272l);
                jA = -1;
            }
            gVarQ = new b(jK, mVar.getPosition(), jA);
        } else if (cVarP != null) {
            gVarQ = cVarP;
        } else if (gVarQ == null) {
            gVarQ = null;
        }
        if (gVarQ == null || !(gVarQ.isSeekable() || (this.f70261a & 1) == 0)) {
            return j(mVar, (this.f70261a & 2) != 0);
        }
        return gVarQ;
    }

    private long h(long j11) {
        return this.f70273m + ((j11 * 1000000) / ((long) this.f70264d.f24624d));
    }

    private g j(m mVar, boolean z10) {
        mVar.peekFully(this.f70263c.d(), 0, 4);
        this.f70263c.P(0);
        this.f70264d.a(this.f70263c.n());
        return new a(mVar.getLength(), mVar.getPosition(), this.f70264d, z10);
    }

    private static long k(Metadata metadata) {
        if (metadata == null) {
            return C.TIME_UNSET;
        }
        int length = metadata.length();
        for (int i11 = 0; i11 < length; i11++) {
            Metadata.Entry entry = metadata.get(i11);
            if (entry instanceof TextInformationFrame) {
                TextInformationFrame textInformationFrame = (TextInformationFrame) entry;
                if (textInformationFrame.f25435id.equals("TLEN")) {
                    return p0.B0(Long.parseLong(textInformationFrame.value));
                }
            }
        }
        return C.TIME_UNSET;
    }

    private static int l(d0 d0Var, int i11) {
        if (d0Var.f() >= i11 + 4) {
            d0Var.P(i11);
            int iN = d0Var.n();
            if (iN == 1483304551 || iN == 1231971951) {
                return iN;
            }
        }
        if (d0Var.f() < 40) {
            return 0;
        }
        d0Var.P(36);
        return d0Var.n() == 1447187017 ? 1447187017 : 0;
    }

    private static boolean m(int i11, long j11) {
        return ((long) (i11 & (-128000))) == (j11 & (-128000));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] n() {
        return new l[]{new f()};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean o(int i11, int i12, int i13, int i14, int i15) {
        return (i12 == 67 && i13 == 79 && i14 == 77 && (i15 == 77 || i11 == 2)) || (i12 == 77 && i13 == 76 && i14 == 76 && (i15 == 84 || i11 == 2));
    }

    private static c p(Metadata metadata, long j11) {
        if (metadata == null) {
            return null;
        }
        int length = metadata.length();
        for (int i11 = 0; i11 < length; i11++) {
            Metadata.Entry entry = metadata.get(i11);
            if (entry instanceof MlltFrame) {
                return c.b(j11, (MlltFrame) entry, k(metadata));
            }
        }
        return null;
    }

    private g q(m mVar) {
        d0 d0Var = new d0(this.f70264d.f24623c);
        mVar.peekFully(d0Var.d(), 0, this.f70264d.f24623c);
        b0.a aVar = this.f70264d;
        int i11 = 21;
        if ((aVar.f24621a & 1) != 0) {
            if (aVar.f24625e != 1) {
                i11 = 36;
            }
        } else if (aVar.f24625e == 1) {
            i11 = 13;
        }
        int i12 = i11;
        int iL = l(d0Var, i12);
        if (iL != 1483304551 && iL != 1231971951) {
            if (iL != 1447187017) {
                mVar.resetPeekPosition();
                return null;
            }
            h hVarB = h.b(mVar.getLength(), mVar.getPosition(), this.f70264d, d0Var);
            mVar.skipFully(this.f70264d.f24623c);
            return hVarB;
        }
        i iVarB = i.b(mVar.getLength(), mVar.getPosition(), this.f70264d, d0Var);
        if (iVarB != null && !this.f70265e.a()) {
            mVar.resetPeekPosition();
            mVar.advancePeekPosition(i12 + 141);
            mVar.peekFully(this.f70263c.d(), 0, 3);
            this.f70263c.P(0);
            this.f70265e.d(this.f70263c.G());
        }
        mVar.skipFully(this.f70264d.f24623c);
        return (iVarB == null || iVarB.isSeekable() || iL != 1231971951) ? iVarB : j(mVar, false);
    }

    private boolean r(m mVar) {
        g gVar = this.f70277q;
        if (gVar != null) {
            long jA = gVar.a();
            if (jA != -1 && mVar.getPeekPosition() > jA - 4) {
                return true;
            }
        }
        try {
            return !mVar.peekFully(this.f70263c.d(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private int s(m mVar) throws ParserException {
        if (this.f70271k == 0) {
            try {
                u(mVar, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.f70277q == null) {
            g gVarG = g(mVar);
            this.f70277q = gVarG;
            this.f70268h.d(gVarG);
            this.f70270j.e(new o1.b().e0(this.f70264d.f24622b).W(4096).H(this.f70264d.f24625e).f0(this.f70264d.f24624d).N(this.f70265e.f63475a).O(this.f70265e.f63476b).X((this.f70261a & 8) != 0 ? null : this.f70272l).E());
            this.f70275o = mVar.getPosition();
        } else if (this.f70275o != 0) {
            long position = mVar.getPosition();
            long j11 = this.f70275o;
            if (position < j11) {
                mVar.skipFully((int) (j11 - position));
            }
        }
        return t(mVar);
    }

    private int t(m mVar) {
        if (this.f70276p == 0) {
            mVar.resetPeekPosition();
            if (r(mVar)) {
                return -1;
            }
            this.f70263c.P(0);
            int iN = this.f70263c.n();
            if (!m(iN, this.f70271k) || b0.j(iN) == -1) {
                mVar.skipFully(1);
                this.f70271k = 0;
                return 0;
            }
            this.f70264d.a(iN);
            if (this.f70273m == C.TIME_UNSET) {
                this.f70273m = this.f70277q.getTimeUs(mVar.getPosition());
                if (this.f70262b != C.TIME_UNSET) {
                    this.f70273m += this.f70262b - this.f70277q.getTimeUs(0L);
                }
            }
            b0.a aVar = this.f70264d;
            this.f70276p = aVar.f24623c;
            g gVar = this.f70277q;
            if (gVar instanceof b) {
                b bVar = (b) gVar;
                bVar.c(h(this.f70274n + ((long) aVar.f24627g)), mVar.getPosition() + ((long) this.f70264d.f24623c));
                if (this.f70279s && bVar.b(this.f70280t)) {
                    this.f70279s = false;
                    this.f70270j = this.f70269i;
                }
            }
        }
        int iB = this.f70270j.b(mVar, this.f70276p, true);
        if (iB == -1) {
            return -1;
        }
        int i11 = this.f70276p - iB;
        this.f70276p = i11;
        if (i11 > 0) {
            return 0;
        }
        this.f70270j.d(h(this.f70274n), 1, this.f70264d.f24623c, 0, null);
        this.f70274n += (long) this.f70264d.f24627g;
        this.f70276p = 0;
        return 0;
    }

    private boolean u(m mVar, boolean z10) throws ParserException, EOFException {
        int peekPosition;
        int i11;
        int iJ;
        int i12 = z10 ? 32768 : 131072;
        mVar.resetPeekPosition();
        if (mVar.getPosition() == 0) {
            Metadata metadataA = this.f70266f.a(mVar, (this.f70261a & 8) == 0 ? null : f70260v);
            this.f70272l = metadataA;
            if (metadataA != null) {
                this.f70265e.c(metadataA);
            }
            peekPosition = (int) mVar.getPeekPosition();
            if (!z10) {
                mVar.skipFully(peekPosition);
            }
            i11 = 0;
        } else {
            peekPosition = 0;
            i11 = 0;
        }
        int i13 = i11;
        int i14 = i13;
        while (true) {
            if (r(mVar)) {
                if (i13 > 0) {
                    break;
                }
                throw new EOFException();
            }
            this.f70263c.P(0);
            int iN = this.f70263c.n();
            if ((i11 == 0 || m(iN, i11)) && (iJ = b0.j(iN)) != -1) {
                i13++;
                if (i13 != 1) {
                    if (i13 == 4) {
                        break;
                    }
                } else {
                    this.f70264d.a(iN);
                    i11 = iN;
                }
                mVar.advancePeekPosition(iJ - 4);
            } else {
                int i15 = i14 + 1;
                if (i14 == i12) {
                    if (z10) {
                        return false;
                    }
                    throw ParserException.createForMalformedContainer("Searched too many bytes.", null);
                }
                if (z10) {
                    mVar.resetPeekPosition();
                    mVar.advancePeekPosition(peekPosition + i15);
                } else {
                    mVar.skipFully(1);
                }
                i13 = 0;
                i14 = i15;
                i11 = 0;
            }
        }
        if (z10) {
            mVar.skipFully(peekPosition + i14);
        } else {
            mVar.resetPeekPosition();
        }
        this.f70271k = i11;
        return true;
    }

    @Override // g9.l
    public void b(n nVar) {
        this.f70268h = nVar;
        e0 e0VarTrack = nVar.track(0, 1);
        this.f70269i = e0VarTrack;
        this.f70270j = e0VarTrack;
        this.f70268h.endTracks();
    }

    @Override // g9.l
    public int c(m mVar, a0 a0Var) throws ParserException {
        f();
        int iS = s(mVar);
        if (iS == -1 && (this.f70277q instanceof b)) {
            long jH = h(this.f70274n);
            if (this.f70277q.getDurationUs() != jH) {
                ((b) this.f70277q).d(jH);
                this.f70268h.d(this.f70277q);
            }
        }
        return iS;
    }

    @Override // g9.l
    public boolean d(m mVar) {
        return u(mVar, true);
    }

    public void i() {
        this.f70278r = true;
    }

    @Override // g9.l
    public void release() {
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        this.f70271k = 0;
        this.f70273m = C.TIME_UNSET;
        this.f70274n = 0L;
        this.f70276p = 0;
        this.f70280t = j12;
        g gVar = this.f70277q;
        if (!(gVar instanceof b) || ((b) gVar).b(j12)) {
            return;
        }
        this.f70279s = true;
        this.f70270j = this.f70267g;
    }
}
