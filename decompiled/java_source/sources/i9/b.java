package i9;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.w;
import com.google.common.collect.r4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.a0;
import g9.b0;
import g9.e0;
import g9.j;
import g9.l;
import g9.m;
import g9.n;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65036c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private i9.c f65038e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f65041h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private e f65042i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f65046m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f65047n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d0 f65034a = new d0(12);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f65035b = new c();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private n f65037d = new j();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private e[] f65040g = new e[0];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f65044k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f65045l = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f65043j = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f65039f = C.TIME_UNSET;

    /* JADX INFO: renamed from: i9.b$b, reason: collision with other inner class name */
    private class C0787b implements b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f65048a;

        public C0787b(long j11) {
            this.f65048a = j11;
        }

        @Override // g9.b0
        public long getDurationUs() {
            return this.f65048a;
        }

        @Override // g9.b0
        public b0.a getSeekPoints(long j11) {
            b0.a aVarI = b.this.f65040g[0].i(j11);
            for (int i11 = 1; i11 < b.this.f65040g.length; i11++) {
                b0.a aVarI2 = b.this.f65040g[i11].i(j11);
                if (aVarI2.f63370a.f63376b < aVarI.f63370a.f63376b) {
                    aVarI = aVarI2;
                }
            }
            return aVarI;
        }

        @Override // g9.b0
        public boolean isSeekable() {
            return true;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f65050a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f65051b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f65052c;

        private c() {
        }

        public void a(d0 d0Var) {
            this.f65050a = d0Var.q();
            this.f65051b = d0Var.q();
            this.f65052c = 0;
        }

        public void b(d0 d0Var) throws ParserException {
            a(d0Var);
            if (this.f65050a == 1414744396) {
                this.f65052c = d0Var.q();
                return;
            }
            throw ParserException.createForMalformedContainer("LIST expected, found: " + this.f65050a, null);
        }
    }

    private static void e(m mVar) {
        if ((mVar.getPosition() & 1) == 1) {
            mVar.skipFully(1);
        }
    }

    private e f(int i11) {
        for (e eVar : this.f65040g) {
            if (eVar.j(i11)) {
                return eVar;
            }
        }
        return null;
    }

    private void g(d0 d0Var) throws ParserException {
        f fVarC = f.c(1819436136, d0Var);
        if (fVarC.getType() != 1819436136) {
            throw ParserException.createForMalformedContainer("Unexpected header list type " + fVarC.getType(), null);
        }
        i9.c cVar = (i9.c) fVarC.b(i9.c.class);
        if (cVar == null) {
            throw ParserException.createForMalformedContainer("AviHeader not found", null);
        }
        this.f65038e = cVar;
        this.f65039f = ((long) cVar.f65055c) * ((long) cVar.f65053a);
        ArrayList arrayList = new ArrayList();
        r4 it = fVarC.f65075a.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            i9.a aVar = (i9.a) it.next();
            if (aVar.getType() == 1819440243) {
                int i12 = i11 + 1;
                e eVarJ = j((f) aVar, i11);
                if (eVarJ != null) {
                    arrayList.add(eVarJ);
                }
                i11 = i12;
            }
        }
        this.f65040g = (e[]) arrayList.toArray(new e[0]);
        this.f65037d.endTracks();
    }

    private void h(d0 d0Var) {
        long jI = i(d0Var);
        while (d0Var.a() >= 16) {
            int iQ = d0Var.q();
            int iQ2 = d0Var.q();
            long jQ = ((long) d0Var.q()) + jI;
            d0Var.q();
            e eVarF = f(iQ);
            if (eVarF != null) {
                if ((iQ2 & 16) == 16) {
                    eVarF.b(jQ);
                }
                eVarF.k();
            }
        }
        for (e eVar : this.f65040g) {
            eVar.c();
        }
        this.f65047n = true;
        this.f65037d.d(new C0787b(this.f65039f));
    }

    private long i(d0 d0Var) {
        if (d0Var.a() < 16) {
            return 0L;
        }
        int iE = d0Var.e();
        d0Var.Q(8);
        long jQ = d0Var.q();
        long j11 = this.f65044k;
        long j12 = jQ <= j11 ? j11 + 8 : 0L;
        d0Var.P(iE);
        return j12;
    }

    private e j(f fVar, int i11) {
        d dVar = (d) fVar.b(d.class);
        g gVar = (g) fVar.b(g.class);
        if (dVar == null) {
            s.i("AviExtractor", "Missing Stream Header");
            return null;
        }
        if (gVar == null) {
            s.i("AviExtractor", "Missing Stream Format");
            return null;
        }
        long jA = dVar.a();
        o1 o1Var = gVar.f65077a;
        o1.b bVarB = o1Var.b();
        bVarB.R(i11);
        int i12 = dVar.f65062f;
        if (i12 != 0) {
            bVarB.W(i12);
        }
        h hVar = (h) fVar.b(h.class);
        if (hVar != null) {
            bVarB.U(hVar.f65078a);
        }
        int iL = w.l(o1Var.f25496l);
        if (iL != 1 && iL != 2) {
            return null;
        }
        e0 e0VarTrack = this.f65037d.track(i11, iL);
        e0VarTrack.e(bVarB.E());
        e eVar = new e(i11, iL, jA, dVar.f65061e, e0VarTrack);
        this.f65039f = jA;
        return eVar;
    }

    private int k(m mVar) {
        if (mVar.getPosition() >= this.f65045l) {
            return -1;
        }
        e eVar = this.f65042i;
        if (eVar == null) {
            e(mVar);
            mVar.peekFully(this.f65034a.d(), 0, 12);
            this.f65034a.P(0);
            int iQ = this.f65034a.q();
            if (iQ == 1414744396) {
                this.f65034a.P(8);
                mVar.skipFully(this.f65034a.q() != 1769369453 ? 8 : 12);
                mVar.resetPeekPosition();
                return 0;
            }
            int iQ2 = this.f65034a.q();
            if (iQ == 1263424842) {
                this.f65041h = mVar.getPosition() + ((long) iQ2) + 8;
                return 0;
            }
            mVar.skipFully(8);
            mVar.resetPeekPosition();
            e eVarF = f(iQ);
            if (eVarF == null) {
                this.f65041h = mVar.getPosition() + ((long) iQ2);
                return 0;
            }
            eVarF.n(iQ2);
            this.f65042i = eVarF;
        } else if (eVar.m(mVar)) {
            this.f65042i = null;
        }
        return 0;
    }

    private boolean l(m mVar, a0 a0Var) {
        boolean z10;
        if (this.f65041h != -1) {
            long position = mVar.getPosition();
            long j11 = this.f65041h;
            if (j11 < position || j11 > PlaybackStateCompat.ACTION_SET_REPEAT_MODE + position) {
                a0Var.f63369a = j11;
                z10 = true;
            } else {
                mVar.skipFully((int) (j11 - position));
                z10 = false;
            }
        } else {
            z10 = false;
        }
        this.f65041h = -1L;
        return z10;
    }

    @Override // g9.l
    public void b(n nVar) {
        this.f65036c = 0;
        this.f65037d = nVar;
        this.f65041h = -1L;
    }

    @Override // g9.l
    public int c(m mVar, a0 a0Var) throws ParserException {
        if (l(mVar, a0Var)) {
            return 1;
        }
        switch (this.f65036c) {
            case 0:
                if (!d(mVar)) {
                    throw ParserException.createForMalformedContainer("AVI Header List not found", null);
                }
                mVar.skipFully(12);
                this.f65036c = 1;
                return 0;
            case 1:
                mVar.readFully(this.f65034a.d(), 0, 12);
                this.f65034a.P(0);
                this.f65035b.b(this.f65034a);
                c cVar = this.f65035b;
                if (cVar.f65052c == 1819436136) {
                    this.f65043j = cVar.f65051b;
                    this.f65036c = 2;
                    return 0;
                }
                throw ParserException.createForMalformedContainer("hdrl expected, found: " + this.f65035b.f65052c, null);
            case 2:
                int i11 = this.f65043j - 4;
                d0 d0Var = new d0(i11);
                mVar.readFully(d0Var.d(), 0, i11);
                g(d0Var);
                this.f65036c = 3;
                return 0;
            case 3:
                if (this.f65044k != -1) {
                    long position = mVar.getPosition();
                    long j11 = this.f65044k;
                    if (position != j11) {
                        this.f65041h = j11;
                        return 0;
                    }
                }
                mVar.peekFully(this.f65034a.d(), 0, 12);
                mVar.resetPeekPosition();
                this.f65034a.P(0);
                this.f65035b.a(this.f65034a);
                int iQ = this.f65034a.q();
                int i12 = this.f65035b.f65050a;
                if (i12 == 1179011410) {
                    mVar.skipFully(12);
                    return 0;
                }
                if (i12 != 1414744396 || iQ != 1769369453) {
                    this.f65041h = mVar.getPosition() + ((long) this.f65035b.f65051b) + 8;
                    return 0;
                }
                long position2 = mVar.getPosition();
                this.f65044k = position2;
                this.f65045l = position2 + ((long) this.f65035b.f65051b) + 8;
                if (!this.f65047n) {
                    if (((i9.c) com.google.android.exoplayer2.util.a.e(this.f65038e)).a()) {
                        this.f65036c = 4;
                        this.f65041h = this.f65045l;
                        return 0;
                    }
                    this.f65037d.d(new b0.b(this.f65039f));
                    this.f65047n = true;
                }
                this.f65041h = mVar.getPosition() + 12;
                this.f65036c = 6;
                return 0;
            case 4:
                mVar.readFully(this.f65034a.d(), 0, 8);
                this.f65034a.P(0);
                int iQ2 = this.f65034a.q();
                int iQ3 = this.f65034a.q();
                if (iQ2 == 829973609) {
                    this.f65036c = 5;
                    this.f65046m = iQ3;
                } else {
                    this.f65041h = mVar.getPosition() + ((long) iQ3);
                }
                return 0;
            case 5:
                d0 d0Var2 = new d0(this.f65046m);
                mVar.readFully(d0Var2.d(), 0, this.f65046m);
                h(d0Var2);
                this.f65036c = 6;
                this.f65041h = this.f65044k;
                return 0;
            case 6:
                return k(mVar);
            default:
                throw new AssertionError();
        }
    }

    @Override // g9.l
    public boolean d(m mVar) {
        mVar.peekFully(this.f65034a.d(), 0, 12);
        this.f65034a.P(0);
        if (this.f65034a.q() != 1179011410) {
            return false;
        }
        this.f65034a.Q(4);
        return this.f65034a.q() == 541677121;
    }

    @Override // g9.l
    public void release() {
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        this.f65041h = -1L;
        this.f65042i = null;
        for (e eVar : this.f65040g) {
            eVar.o(j11);
        }
        if (j11 != 0) {
            this.f65036c = 6;
        } else if (this.f65040g.length == 0) {
            this.f65036c = 0;
        } else {
            this.f65036c = 3;
        }
    }
}
