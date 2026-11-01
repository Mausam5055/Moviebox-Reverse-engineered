package n2;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import androidx.media3.common.y;
import com.google.common.collect.r4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i3.s;
import java.util.ArrayList;
import java.util.List;
import l2.l0;
import l2.m0;
import l2.q;
import l2.r;
import l2.s0;
import l2.t;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j0 f70121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f70122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f70123c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final s.a f70124d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f70125e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private t f70126f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private n2.c f70127g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f70128h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private e[] f70129i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f70130j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private e f70131k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f70132l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f70133m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f70134n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f70135o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f70136p;

    /* JADX INFO: renamed from: n2.b$b, reason: collision with other inner class name */
    private class C0844b implements m0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f70137a;

        public C0844b(long j11) {
            this.f70137a = j11;
        }

        @Override // l2.m0
        public long getDurationUs() {
            return this.f70137a;
        }

        @Override // l2.m0
        public m0.a getSeekPoints(long j11) {
            m0.a aVarI = b.this.f70129i[0].i(j11);
            for (int i11 = 1; i11 < b.this.f70129i.length; i11++) {
                m0.a aVarI2 = b.this.f70129i[i11].i(j11);
                if (aVarI2.f68644a.f68651b < aVarI.f68644a.f68651b) {
                    aVarI = aVarI2;
                }
            }
            return aVarI;
        }

        @Override // l2.m0
        public boolean isSeekable() {
            return true;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f70139a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f70140b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f70141c;

        private c() {
        }

        public void a(j0 j0Var) {
            this.f70139a = j0Var.u();
            this.f70140b = j0Var.u();
            this.f70141c = 0;
        }

        public void b(j0 j0Var) throws ParserException {
            a(j0Var);
            if (this.f70139a == 1414744396) {
                this.f70141c = j0Var.u();
                return;
            }
            throw ParserException.createForMalformedContainer("LIST expected, found: " + this.f70139a, null);
        }
    }

    @Deprecated
    public b() {
        this(1, s.a.f64923a);
    }

    public b(int i11, s.a aVar) {
        this.f70124d = aVar;
        this.f70123c = (i11 & 1) == 0;
        this.f70121a = new j0(12);
        this.f70122b = new c();
        this.f70126f = new l2.j0();
        this.f70129i = new e[0];
        this.f70133m = -1L;
        this.f70134n = -1L;
        this.f70132l = -1;
        this.f70128h = C.TIME_UNSET;
    }

    private static void g(l2.s sVar) {
        if ((sVar.getPosition() & 1) == 1) {
            sVar.skipFully(1);
        }
    }

    private e h(int i11) {
        for (e eVar : this.f70129i) {
            if (eVar.j(i11)) {
                return eVar;
            }
        }
        return null;
    }

    private void i(j0 j0Var) throws ParserException {
        f fVarC = f.c(1819436136, j0Var);
        if (fVarC.getType() != 1819436136) {
            throw ParserException.createForMalformedContainer("Unexpected header list type " + fVarC.getType(), null);
        }
        n2.c cVar = (n2.c) fVarC.b(n2.c.class);
        if (cVar == null) {
            throw ParserException.createForMalformedContainer("AviHeader not found", null);
        }
        this.f70127g = cVar;
        this.f70128h = ((long) cVar.f70144c) * ((long) cVar.f70142a);
        ArrayList arrayList = new ArrayList();
        r4 it = fVarC.f70167a.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            n2.a aVar = (n2.a) it.next();
            if (aVar.getType() == 1819440243) {
                int i12 = i11 + 1;
                e eVarL = l((f) aVar, i11);
                if (eVarL != null) {
                    arrayList.add(eVarL);
                }
                i11 = i12;
            }
        }
        this.f70129i = (e[]) arrayList.toArray(new e[0]);
        this.f70126f.endTracks();
    }

    private void j(j0 j0Var) {
        int i11;
        long jK = k(j0Var);
        while (true) {
            if (j0Var.a() < 16) {
                break;
            }
            int iU = j0Var.u();
            int iU2 = j0Var.u();
            long jU = ((long) j0Var.u()) + jK;
            j0Var.X(4);
            e eVarH = h(iU);
            if (eVarH != null) {
                eVarH.b(jU, (iU2 & 16) == 16);
            }
        }
        for (e eVar : this.f70129i) {
            eVar.c();
        }
        this.f70136p = true;
        if (this.f70129i.length == 0) {
            this.f70126f.f(new m0.b(this.f70128h));
        } else {
            this.f70126f.f(new C0844b(this.f70128h));
        }
    }

    private long k(j0 j0Var) {
        if (j0Var.a() < 16) {
            return 0L;
        }
        int iF = j0Var.f();
        j0Var.X(8);
        long jU = j0Var.u();
        long j11 = this.f70133m;
        long j12 = jU <= j11 ? j11 + 8 : 0L;
        j0Var.W(iF);
        return j12;
    }

    private e l(f fVar, int i11) {
        d dVar = (d) fVar.b(d.class);
        g gVar = (g) fVar.b(g.class);
        if (dVar == null) {
            u.h("AviExtractor", "Missing Stream Header");
            return null;
        }
        if (gVar == null) {
            u.h("AviExtractor", "Missing Stream Format");
            return null;
        }
        long jA = dVar.a();
        androidx.media3.common.r rVar = gVar.f70169a;
        androidx.media3.common.r.b bVarB = rVar.b();
        bVarB.e0(i11);
        int i12 = dVar.f70151f;
        if (i12 != 0) {
            bVarB.k0(i12);
        }
        h hVar = (h) fVar.b(h.class);
        if (hVar != null) {
            bVarB.h0(hVar.f70170a);
        }
        int iK = y.k(rVar.f10161o);
        if (iK != 1 && iK != 2) {
            return null;
        }
        s0 s0VarTrack = this.f70126f.track(i11, iK);
        s0VarTrack.c(bVarB.N());
        s0VarTrack.f(jA);
        this.f70128h = Math.max(this.f70128h, jA);
        return new e(i11, dVar, s0VarTrack);
    }

    private int m(l2.s sVar) {
        if (sVar.getPosition() >= this.f70134n) {
            return -1;
        }
        e eVar = this.f70131k;
        if (eVar == null) {
            g(sVar);
            sVar.peekFully(this.f70121a.e(), 0, 12);
            this.f70121a.W(0);
            int iU = this.f70121a.u();
            if (iU == 1414744396) {
                this.f70121a.W(8);
                sVar.skipFully(this.f70121a.u() != 1769369453 ? 8 : 12);
                sVar.resetPeekPosition();
                return 0;
            }
            int iU2 = this.f70121a.u();
            if (iU == 1263424842) {
                this.f70130j = sVar.getPosition() + ((long) iU2) + 8;
                return 0;
            }
            sVar.skipFully(8);
            sVar.resetPeekPosition();
            e eVarH = h(iU);
            if (eVarH == null) {
                this.f70130j = sVar.getPosition() + ((long) iU2);
                return 0;
            }
            eVarH.n(iU2);
            this.f70131k = eVarH;
        } else if (eVar.m(sVar)) {
            this.f70131k = null;
        }
        return 0;
    }

    private boolean n(l2.s sVar, l0 l0Var) {
        boolean z10;
        if (this.f70130j != -1) {
            long position = sVar.getPosition();
            long j11 = this.f70130j;
            if (j11 < position || j11 > PlaybackStateCompat.ACTION_SET_REPEAT_MODE + position) {
                l0Var.f68620a = j11;
                z10 = true;
            } else {
                sVar.skipFully((int) (j11 - position));
                z10 = false;
            }
        } else {
            z10 = false;
        }
        this.f70130j = -1L;
        return z10;
    }

    @Override // l2.r
    public void b(t tVar) {
        this.f70125e = 0;
        if (this.f70123c) {
            tVar = new i3.t(tVar, this.f70124d);
        }
        this.f70126f = tVar;
        this.f70130j = -1L;
    }

    @Override // l2.r
    public int c(l2.s sVar, l0 l0Var) throws ParserException {
        if (n(sVar, l0Var)) {
            return 1;
        }
        switch (this.f70125e) {
            case 0:
                if (!d(sVar)) {
                    throw ParserException.createForMalformedContainer("AVI Header List not found", null);
                }
                sVar.skipFully(12);
                this.f70125e = 1;
                return 0;
            case 1:
                sVar.readFully(this.f70121a.e(), 0, 12);
                this.f70121a.W(0);
                this.f70122b.b(this.f70121a);
                c cVar = this.f70122b;
                if (cVar.f70141c == 1819436136) {
                    this.f70132l = cVar.f70140b;
                    this.f70125e = 2;
                    return 0;
                }
                throw ParserException.createForMalformedContainer("hdrl expected, found: " + this.f70122b.f70141c, null);
            case 2:
                int i11 = this.f70132l - 4;
                j0 j0Var = new j0(i11);
                sVar.readFully(j0Var.e(), 0, i11);
                i(j0Var);
                this.f70125e = 3;
                return 0;
            case 3:
                if (this.f70133m != -1) {
                    long position = sVar.getPosition();
                    long j11 = this.f70133m;
                    if (position != j11) {
                        this.f70130j = j11;
                        return 0;
                    }
                }
                sVar.peekFully(this.f70121a.e(), 0, 12);
                sVar.resetPeekPosition();
                this.f70121a.W(0);
                this.f70122b.a(this.f70121a);
                int iU = this.f70121a.u();
                int i12 = this.f70122b.f70139a;
                if (i12 == 1179011410) {
                    sVar.skipFully(12);
                    return 0;
                }
                if (i12 != 1414744396 || iU != 1769369453) {
                    this.f70130j = sVar.getPosition() + ((long) this.f70122b.f70140b) + 8;
                    return 0;
                }
                long position2 = sVar.getPosition();
                this.f70133m = position2;
                this.f70134n = position2 + ((long) this.f70122b.f70140b) + 8;
                if (!this.f70136p) {
                    if (((n2.c) androidx.media3.common.util.a.e(this.f70127g)).a()) {
                        this.f70125e = 4;
                        this.f70130j = this.f70134n;
                        return 0;
                    }
                    this.f70126f.f(new m0.b(this.f70128h));
                    this.f70136p = true;
                }
                this.f70130j = sVar.getPosition() + 12;
                this.f70125e = 6;
                return 0;
            case 4:
                sVar.readFully(this.f70121a.e(), 0, 8);
                this.f70121a.W(0);
                int iU2 = this.f70121a.u();
                int iU3 = this.f70121a.u();
                if (iU2 == 829973609) {
                    this.f70125e = 5;
                    this.f70135o = iU3;
                } else {
                    this.f70130j = sVar.getPosition() + ((long) iU3);
                }
                return 0;
            case 5:
                j0 j0Var2 = new j0(this.f70135o);
                sVar.readFully(j0Var2.e(), 0, this.f70135o);
                j(j0Var2);
                this.f70125e = 6;
                this.f70130j = this.f70133m;
                return 0;
            case 6:
                return m(sVar);
            default:
                throw new AssertionError();
        }
    }

    @Override // l2.r
    public boolean d(l2.s sVar) {
        sVar.peekFully(this.f70121a.e(), 0, 12);
        this.f70121a.W(0);
        if (this.f70121a.u() != 1179011410) {
            return false;
        }
        this.f70121a.X(4);
        return this.f70121a.u() == 541677121;
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
        this.f70130j = -1L;
        this.f70131k = null;
        for (e eVar : this.f70129i) {
            eVar.o(j11);
        }
        if (j11 != 0) {
            this.f70125e = 6;
        } else if (this.f70129i.length == 0) {
            this.f70125e = 0;
        } else {
            this.f70125e = 3;
        }
    }
}
