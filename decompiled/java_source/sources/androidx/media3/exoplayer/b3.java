package androidx.media3.exoplayer;

import android.util.Pair;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class b3 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final y1.a f11320c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.common.util.p f11321d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final y2.a f11322e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f11323f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f11324g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f11325h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ExoPlayer.c f11326i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private y2 f11327j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private y2 f11328k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private y2 f11329l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private y2 f11330m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private y2 f11331n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f11332o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Object f11333p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f11334q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.common.e0.b f11318a = new androidx.media3.common.e0.b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.e0.c f11319b = new androidx.media3.common.e0.c();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private List f11335r = new ArrayList();

    public b3(y1.a aVar, androidx.media3.common.util.p pVar, y2.a aVar2, ExoPlayer.c cVar) {
        this.f11320c = aVar;
        this.f11321d = pVar;
        this.f11322e = aVar2;
        this.f11326i = cVar;
    }

    private boolean A(Object obj, androidx.media3.common.e0 e0Var) {
        int iC = e0Var.h(obj, this.f11318a).c();
        int iP = this.f11318a.p();
        return iC > 0 && this.f11318a.s(iP) && (iC > 1 || this.f11318a.f(iP) != Long.MIN_VALUE);
    }

    private boolean C(androidx.media3.exoplayer.source.r.b bVar) {
        return !bVar.b() && bVar.f12887e == -1;
    }

    private boolean D(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar, boolean z10) {
        int iB = e0Var.b(bVar.f12883a);
        return !e0Var.n(e0Var.f(iB, this.f11318a).f9936c, this.f11319b).f9959i && e0Var.r(iB, this.f11318a, this.f11319b, this.f11324g, this.f11325h) && z10;
    }

    private boolean E(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar) {
        if (C(bVar)) {
            return e0Var.n(e0Var.h(bVar.f12883a, this.f11318a).f9936c, this.f11319b).f9965o == e0Var.b(bVar.f12883a);
        }
        return false;
    }

    private static boolean H(androidx.media3.common.e0.b bVar) {
        int iC = bVar.c();
        if (iC == 0) {
            return false;
        }
        if ((iC == 1 && bVar.r(0)) || !bVar.s(bVar.p())) {
            return false;
        }
        long jI = 0;
        if (bVar.e(0L) != -1) {
            return false;
        }
        if (bVar.f9937d == 0) {
            return true;
        }
        int i11 = iC - (bVar.r(iC + (-1)) ? 2 : 1);
        for (int i12 = 0; i12 <= i11; i12++) {
            jI += bVar.i(i12);
        }
        return bVar.f9937d <= jI;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(ImmutableList.a aVar, androidx.media3.exoplayer.source.r.b bVar) {
        this.f11320c.p(aVar.e(), bVar);
    }

    private void K() {
        final ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (y2 y2VarK = this.f11327j; y2VarK != null; y2VarK = y2VarK.k()) {
            aVarBuilder.a(y2VarK.f13375h.f13388a);
        }
        y2 y2Var = this.f11328k;
        final androidx.media3.exoplayer.source.r.b bVar = y2Var == null ? null : y2Var.f13375h.f13388a;
        this.f11321d.post(new Runnable() { // from class: androidx.media3.exoplayer.a3
            @Override // java.lang.Runnable
            public final void run() {
                this.f10992a.I(aVarBuilder, bVar);
            }
        });
    }

    private void M(List list) {
        for (int i11 = 0; i11 < this.f11335r.size(); i11++) {
            ((y2) this.f11335r.get(i11)).x();
        }
        this.f11335r = list;
        this.f11331n = null;
        J();
    }

    private y2 P(z2 z2Var) {
        for (int i11 = 0; i11 < this.f11335r.size(); i11++) {
            if (((y2) this.f11335r.get(i11)).d(z2Var)) {
                return (y2) this.f11335r.remove(i11);
            }
        }
        return null;
    }

    private static androidx.media3.exoplayer.source.r.b Q(androidx.media3.common.e0 e0Var, Object obj, long j11, long j12, androidx.media3.common.e0.c cVar, androidx.media3.common.e0.b bVar) {
        e0Var.h(obj, bVar);
        e0Var.n(bVar.f9936c, cVar);
        Object objE = obj;
        for (int iB = e0Var.b(obj); H(bVar) && iB <= cVar.f9965o; iB++) {
            e0Var.g(iB, bVar, true);
            objE = androidx.media3.common.util.a.e(bVar.f9935b);
        }
        e0Var.h(objE, bVar);
        int iE = bVar.e(j11);
        return iE == -1 ? new androidx.media3.exoplayer.source.r.b(objE, j12, bVar.d(j11)) : new androidx.media3.exoplayer.source.r.b(objE, iE, bVar.l(iE), j12);
    }

    private long S(androidx.media3.common.e0 e0Var, Object obj) {
        int iB;
        int i11 = e0Var.h(obj, this.f11318a).f9936c;
        Object obj2 = this.f11333p;
        if (obj2 != null && (iB = e0Var.b(obj2)) != -1 && e0Var.f(iB, this.f11318a).f9936c == i11) {
            return this.f11334q;
        }
        for (y2 y2VarK = this.f11327j; y2VarK != null; y2VarK = y2VarK.k()) {
            if (y2VarK.f13369b.equals(obj)) {
                return y2VarK.f13375h.f13388a.f12886d;
            }
        }
        for (y2 y2VarK2 = this.f11327j; y2VarK2 != null; y2VarK2 = y2VarK2.k()) {
            int iB2 = e0Var.b(y2VarK2.f13369b);
            if (iB2 != -1 && e0Var.f(iB2, this.f11318a).f9936c == i11) {
                return y2VarK2.f13375h.f13388a.f12886d;
            }
        }
        long jT = T(obj);
        if (jT != -1) {
            return jT;
        }
        long j11 = this.f11323f;
        this.f11323f = 1 + j11;
        if (this.f11327j == null) {
            this.f11333p = obj;
            this.f11334q = j11;
        }
        return j11;
    }

    private long T(Object obj) {
        for (int i11 = 0; i11 < this.f11335r.size(); i11++) {
            y2 y2Var = (y2) this.f11335r.get(i11);
            if (y2Var.f13369b.equals(obj)) {
                return y2Var.f13375h.f13388a.f12886d;
            }
        }
        return -1L;
    }

    private int V(androidx.media3.common.e0 e0Var) {
        y2 y2VarK = this.f11327j;
        if (y2VarK == null) {
            return 0;
        }
        int iB = e0Var.b(y2VarK.f13369b);
        while (true) {
            iB = e0Var.d(iB, this.f11318a, this.f11319b, this.f11324g, this.f11325h);
            while (((y2) androidx.media3.common.util.a.e(y2VarK)).k() != null && !y2VarK.f13375h.f13395h) {
                y2VarK = y2VarK.k();
            }
            y2 y2VarK2 = y2VarK.k();
            if (iB == -1 || y2VarK2 == null || e0Var.b(y2VarK2.f13369b) != iB) {
                break;
            }
            y2VarK = y2VarK2;
        }
        int iO = O(y2VarK);
        y2VarK.f13375h = z(e0Var, y2VarK.f13375h);
        return iO;
    }

    static boolean e(long j11, long j12) {
        return j11 == C.TIME_UNSET || j11 == j12;
    }

    private boolean f(z2 z2Var, z2 z2Var2) {
        return z2Var.f13389b == z2Var2.f13389b && z2Var.f13388a.equals(z2Var2.f13388a);
    }

    private Pair i(androidx.media3.common.e0 e0Var, Object obj, long j11) {
        int iE = e0Var.e(e0Var.h(obj, this.f11318a).f9936c, this.f11324g, this.f11325h);
        if (iE != -1) {
            return e0Var.k(this.f11319b, this.f11318a, iE, C.TIME_UNSET, j11);
        }
        return null;
    }

    private z2 j(r3 r3Var) {
        return o(r3Var.f12543a, r3Var.f12544b, r3Var.f12545c, r3Var.f12561s);
    }

    private z2 k(androidx.media3.common.e0 e0Var, y2 y2Var, long j11) {
        long j12;
        long j13;
        Object obj;
        long j14;
        long j15;
        long jT;
        z2 z2Var = y2Var.f13375h;
        int iD = e0Var.d(e0Var.b(z2Var.f13388a.f12883a), this.f11318a, this.f11319b, this.f11324g, this.f11325h);
        if (iD == -1) {
            return null;
        }
        int i11 = e0Var.g(iD, this.f11318a, true).f9936c;
        Object objE = androidx.media3.common.util.a.e(this.f11318a.f9935b);
        long j16 = z2Var.f13388a.f12886d;
        if (e0Var.n(i11, this.f11319b).f9964n == iD) {
            Pair pairK = e0Var.k(this.f11319b, this.f11318a, i11, C.TIME_UNSET, Math.max(0L, j11));
            if (pairK == null) {
                return null;
            }
            Object obj2 = pairK.first;
            long jLongValue = ((Long) pairK.second).longValue();
            y2 y2VarK = y2Var.k();
            if (y2VarK == null || !y2VarK.f13369b.equals(obj2)) {
                jT = T(obj2);
                if (jT == -1) {
                    jT = this.f11323f;
                    this.f11323f = 1 + jT;
                }
            } else {
                jT = y2VarK.f13375h.f13388a.f12886d;
            }
            j12 = jT;
            j13 = -9223372036854775807L;
            obj = obj2;
            j14 = jLongValue;
        } else {
            j12 = j16;
            j13 = 0;
            obj = objE;
            j14 = 0;
        }
        androidx.media3.exoplayer.source.r.b bVarQ = Q(e0Var, obj, j14, j12, this.f11319b, this.f11318a);
        if (j13 == C.TIME_UNSET || z2Var.f13390c == C.TIME_UNSET) {
            j15 = j14;
        } else {
            boolean zA = A(z2Var.f13388a.f12883a, e0Var);
            if (bVarQ.b() && zA) {
                j13 = z2Var.f13390c;
            } else if (zA) {
                j15 = z2Var.f13390c;
            }
            j15 = j14;
        }
        return o(e0Var, bVarQ, j13, j15);
    }

    private z2 l(androidx.media3.common.e0 e0Var, y2 y2Var, long j11) {
        z2 z2Var = y2Var.f13375h;
        long jM = (y2Var.m() + z2Var.f13392e) - j11;
        return z2Var.f13395h ? k(e0Var, y2Var, jM) : m(e0Var, y2Var, jM);
    }

    private z2 m(androidx.media3.common.e0 e0Var, y2 y2Var, long j11) {
        z2 z2Var = y2Var.f13375h;
        androidx.media3.exoplayer.source.r.b bVar = z2Var.f13388a;
        e0Var.h(bVar.f12883a, this.f11318a);
        boolean z10 = z2Var.f13394g;
        if (!bVar.b()) {
            int i11 = bVar.f12887e;
            if (i11 != -1 && this.f11318a.r(i11)) {
                return k(e0Var, y2Var, j11);
            }
            int iL = this.f11318a.l(bVar.f12887e);
            boolean z11 = this.f11318a.s(bVar.f12887e) && this.f11318a.h(bVar.f12887e, iL) == 3;
            if (iL == this.f11318a.a(bVar.f12887e) || z11) {
                return q(e0Var, bVar.f12883a, s(e0Var, bVar.f12883a, bVar.f12887e), z2Var.f13392e, bVar.f12886d, false);
            }
            return p(e0Var, bVar.f12883a, bVar.f12887e, iL, z2Var.f13392e, bVar.f12886d, z10);
        }
        int i12 = bVar.f12884b;
        int iA = this.f11318a.a(i12);
        if (iA == -1) {
            return null;
        }
        int iM = this.f11318a.m(i12, bVar.f12885c);
        if (iM < iA) {
            return p(e0Var, bVar.f12883a, i12, iM, z2Var.f13390c, bVar.f12886d, z10);
        }
        long jLongValue = z2Var.f13390c;
        if (jLongValue == C.TIME_UNSET) {
            androidx.media3.common.e0.c cVar = this.f11319b;
            androidx.media3.common.e0.b bVar2 = this.f11318a;
            Pair pairK = e0Var.k(cVar, bVar2, bVar2.f9936c, C.TIME_UNSET, Math.max(0L, j11));
            if (pairK == null) {
                return null;
            }
            jLongValue = ((Long) pairK.second).longValue();
        }
        return q(e0Var, bVar.f12883a, Math.max(s(e0Var, bVar.f12883a, bVar.f12884b), jLongValue), z2Var.f13390c, bVar.f12886d, z10);
    }

    private z2 o(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar, long j11, long j12) {
        e0Var.h(bVar.f12883a, this.f11318a);
        return bVar.b() ? p(e0Var, bVar.f12883a, bVar.f12884b, bVar.f12885c, j11, bVar.f12886d, false) : q(e0Var, bVar.f12883a, j12, j11, bVar.f12886d, false);
    }

    private z2 p(androidx.media3.common.e0 e0Var, Object obj, int i11, int i12, long j11, long j12, boolean z10) {
        androidx.media3.exoplayer.source.r.b bVar = new androidx.media3.exoplayer.source.r.b(obj, i11, i12, j12);
        long jB = e0Var.h(bVar.f12883a, this.f11318a).b(bVar.f12884b, bVar.f12885c);
        long jG = i12 == this.f11318a.l(i11) ? this.f11318a.g() : 0L;
        return new z2(bVar, (jB == C.TIME_UNSET || jG < jB) ? jG : Math.max(0L, jB - 1), j11, C.TIME_UNSET, jB, z10, this.f11318a.s(bVar.f12884b), false, false, false);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005a  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ba  */
    private z2 q(androidx.media3.common.e0 e0Var, Object obj, long j11, long j12, long j13, boolean z10) {
        boolean z11;
        long j14;
        long jF;
        long j15;
        long jMax = j11;
        e0Var.h(obj, this.f11318a);
        int iD = this.f11318a.d(jMax);
        boolean z12 = iD != -1 && this.f11318a.r(iD);
        if (iD == -1) {
            if (this.f11318a.c() > 0) {
                androidx.media3.common.e0.b bVar = this.f11318a;
                if (bVar.s(bVar.p())) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            } else {
                z11 = false;
            }
        } else if (this.f11318a.s(iD)) {
            long jF2 = this.f11318a.f(iD);
            androidx.media3.common.e0.b bVar2 = this.f11318a;
            if (jF2 == bVar2.f9937d && bVar2.q(iD)) {
                z11 = true;
                iD = -1;
            } else {
                z11 = false;
            }
        } else {
            z11 = false;
        }
        androidx.media3.exoplayer.source.r.b bVar3 = new androidx.media3.exoplayer.source.r.b(obj, j13, iD);
        boolean zC = C(bVar3);
        boolean zE = E(e0Var, bVar3);
        boolean zD = D(e0Var, bVar3, zC);
        boolean z13 = (iD == -1 || !this.f11318a.s(iD) || z12) ? false : true;
        if (iD == -1 || z12) {
            if (z11) {
                jF = this.f11318a.f9937d;
            } else {
                j14 = -9223372036854775807L;
            }
            if (j14 != C.TIME_UNSET || j14 == Long.MIN_VALUE) {
                j15 = this.f11318a.f9937d;
            } else {
                j15 = j14;
            }
            if (j15 != C.TIME_UNSET && jMax >= j15) {
                jMax = Math.max(0L, j15 - ((long) ((zD && z11) ? 0 : 1)));
            }
            return new z2(bVar3, jMax, j12, j14, j15, z10, z13, zC, zE, zD);
        }
        jF = this.f11318a.f(iD);
        j14 = jF;
        if (j14 != C.TIME_UNSET) {
            j15 = this.f11318a.f9937d;
        } else {
            j15 = this.f11318a.f9937d;
        }
        if (j15 != C.TIME_UNSET) {
            jMax = Math.max(0L, j15 - ((long) ((zD && z11) ? 0 : 1)));
        }
        return new z2(bVar3, jMax, j12, j14, j15, z10, z13, zC, zE, zD);
    }

    private z2 r(androidx.media3.common.e0 e0Var, Object obj, long j11, long j12) {
        androidx.media3.exoplayer.source.r.b bVarQ = Q(e0Var, obj, j11, j12, this.f11319b, this.f11318a);
        return bVarQ.b() ? p(e0Var, bVarQ.f12883a, bVarQ.f12884b, bVarQ.f12885c, j11, bVarQ.f12886d, false) : q(e0Var, bVarQ.f12883a, j11, C.TIME_UNSET, bVarQ.f12886d, false);
    }

    private long s(androidx.media3.common.e0 e0Var, Object obj, int i11) {
        e0Var.h(obj, this.f11318a);
        long jF = this.f11318a.f(i11);
        return jF == Long.MIN_VALUE ? this.f11318a.f9937d : jF + this.f11318a.i(i11);
    }

    public void B(androidx.media3.common.e0 e0Var) {
        y2 y2Var;
        if (this.f11326i.f10986a == C.TIME_UNSET || (y2Var = this.f11330m) == null) {
            N();
            return;
        }
        ArrayList arrayList = new ArrayList();
        Pair pairI = i(e0Var, y2Var.f13375h.f13388a.f12883a, 0L);
        if (pairI != null && !e0Var.n(e0Var.h(pairI.first, this.f11318a).f9936c, this.f11319b).f()) {
            long jT = T(pairI.first);
            if (jT == -1) {
                jT = this.f11323f;
                this.f11323f = 1 + jT;
            }
            z2 z2VarR = r(e0Var, pairI.first, ((Long) pairI.second).longValue(), jT);
            y2 y2VarP = P(z2VarR);
            if (y2VarP == null) {
                y2VarP = this.f11322e.a(z2VarR, (y2Var.m() + y2Var.f13375h.f13392e) - z2VarR.f13389b);
            }
            arrayList.add(y2VarP);
        }
        M(arrayList);
    }

    public boolean F(androidx.media3.exoplayer.source.q qVar) {
        y2 y2Var = this.f11330m;
        return y2Var != null && y2Var.f13368a == qVar;
    }

    public boolean G(androidx.media3.exoplayer.source.q qVar) {
        y2 y2Var = this.f11331n;
        return y2Var != null && y2Var.f13368a == qVar;
    }

    public void J() {
        y2 y2Var = this.f11331n;
        if (y2Var == null || y2Var.t()) {
            this.f11331n = null;
            for (int i11 = 0; i11 < this.f11335r.size(); i11++) {
                y2 y2Var2 = (y2) this.f11335r.get(i11);
                if (!y2Var2.t()) {
                    this.f11331n = y2Var2;
                    return;
                }
            }
        }
    }

    public void L(long j11) {
        y2 y2Var = this.f11330m;
        if (y2Var != null) {
            y2Var.w(j11);
        }
    }

    public void N() {
        if (this.f11335r.isEmpty()) {
            return;
        }
        M(new ArrayList());
    }

    public int O(y2 y2Var) {
        androidx.media3.common.util.a.i(y2Var);
        int i11 = 0;
        if (y2Var.equals(this.f11330m)) {
            return 0;
        }
        this.f11330m = y2Var;
        while (y2Var.k() != null) {
            y2Var = (y2) androidx.media3.common.util.a.e(y2Var.k());
            if (y2Var == this.f11328k) {
                y2 y2Var2 = this.f11327j;
                this.f11328k = y2Var2;
                this.f11329l = y2Var2;
                i11 = 3;
            }
            if (y2Var == this.f11329l) {
                this.f11329l = this.f11328k;
                i11 |= 2;
            }
            y2Var.x();
            this.f11332o--;
        }
        ((y2) androidx.media3.common.util.a.e(this.f11330m)).A(null);
        K();
        return i11;
    }

    public androidx.media3.exoplayer.source.r.b R(androidx.media3.common.e0 e0Var, Object obj, long j11) {
        long jS = S(e0Var, obj);
        e0Var.h(obj, this.f11318a);
        e0Var.n(this.f11318a.f9936c, this.f11319b);
        boolean z10 = false;
        for (int iB = e0Var.b(obj); iB >= this.f11319b.f9964n; iB--) {
            e0Var.g(iB, this.f11318a, true);
            boolean z11 = this.f11318a.c() > 0;
            z10 |= z11;
            androidx.media3.common.e0.b bVar = this.f11318a;
            if (bVar.e(bVar.f9937d) != -1) {
                obj = androidx.media3.common.util.a.e(this.f11318a.f9935b);
            }
            if (z10 && (!z11 || this.f11318a.f9937d != 0)) {
                break;
            }
        }
        return Q(e0Var, obj, j11, jS, this.f11319b, this.f11318a);
    }

    public boolean U() {
        y2 y2Var = this.f11330m;
        return y2Var == null || (!y2Var.f13375h.f13397j && y2Var.s() && this.f11330m.f13375h.f13392e != C.TIME_UNSET && this.f11332o < 100);
    }

    public void W(androidx.media3.common.e0 e0Var, ExoPlayer.c cVar) {
        this.f11326i = cVar;
        B(e0Var);
    }

    public int X(androidx.media3.common.e0 e0Var, long j11, long j12, long j13) {
        z2 z2VarZ;
        y2 y2VarK = this.f11327j;
        y2 y2Var = null;
        while (true) {
            boolean z10 = false;
            if (y2VarK == null) {
                return 0;
            }
            z2 z2Var = y2VarK.f13375h;
            if (y2Var == null) {
                z2VarZ = z(e0Var, z2Var);
            } else {
                z2 z2VarL = l(e0Var, y2Var, j11);
                if (z2VarL == null || !f(z2Var, z2VarL)) {
                    return O(y2Var);
                }
                z2VarZ = z2VarL;
            }
            y2VarK.f13375h = z2VarZ.a(z2Var.f13390c);
            if (!e(z2Var.f13392e, z2VarZ.f13392e)) {
                y2VarK.E();
                long j14 = z2VarZ.f13392e;
                long jD = j14 == C.TIME_UNSET ? Long.MAX_VALUE : y2VarK.D(j14);
                int i11 = (y2VarK != this.f11328k || y2VarK.f13375h.f13394g || (j12 != Long.MIN_VALUE && j12 < jD)) ? 0 : 1;
                if (y2VarK == this.f11329l && (j13 == Long.MIN_VALUE || j13 >= jD)) {
                    z10 = true;
                }
                int iO = O(y2VarK);
                if (iO != 0) {
                    return iO;
                }
                return z10 ? i11 | 2 : i11;
            }
            y2Var = y2VarK;
            y2VarK = y2VarK.k();
        }
    }

    public int Y(androidx.media3.common.e0 e0Var, int i11) {
        this.f11324g = i11;
        return V(e0Var);
    }

    public int Z(androidx.media3.common.e0 e0Var, boolean z10) {
        this.f11325h = z10;
        return V(e0Var);
    }

    public y2 b() {
        y2 y2Var = this.f11327j;
        if (y2Var == null) {
            return null;
        }
        if (y2Var == this.f11328k) {
            this.f11328k = y2Var.k();
        }
        y2 y2Var2 = this.f11327j;
        if (y2Var2 == this.f11329l) {
            this.f11329l = y2Var2.k();
        }
        this.f11327j.x();
        int i11 = this.f11332o - 1;
        this.f11332o = i11;
        if (i11 == 0) {
            this.f11330m = null;
            y2 y2Var3 = this.f11327j;
            this.f11333p = y2Var3.f13369b;
            this.f11334q = y2Var3.f13375h.f13388a.f12886d;
        }
        this.f11327j = this.f11327j.k();
        K();
        return this.f11327j;
    }

    public y2 c() {
        this.f11329l = ((y2) androidx.media3.common.util.a.i(this.f11329l)).k();
        K();
        return (y2) androidx.media3.common.util.a.i(this.f11329l);
    }

    public y2 d() {
        y2 y2Var = this.f11329l;
        y2 y2Var2 = this.f11328k;
        if (y2Var == y2Var2) {
            this.f11329l = ((y2) androidx.media3.common.util.a.i(y2Var2)).k();
        }
        this.f11328k = ((y2) androidx.media3.common.util.a.i(this.f11328k)).k();
        K();
        return (y2) androidx.media3.common.util.a.i(this.f11328k);
    }

    public void g() {
        if (this.f11332o == 0) {
            return;
        }
        y2 y2VarK = (y2) androidx.media3.common.util.a.i(this.f11327j);
        this.f11333p = y2VarK.f13369b;
        this.f11334q = y2VarK.f13375h.f13388a.f12886d;
        while (y2VarK != null) {
            y2VarK.x();
            y2VarK = y2VarK.k();
        }
        this.f11327j = null;
        this.f11330m = null;
        this.f11328k = null;
        this.f11329l = null;
        this.f11332o = 0;
        K();
    }

    public y2 h(z2 z2Var) {
        y2 y2Var = this.f11330m;
        long jM = y2Var == null ? 1000000000000L : (y2Var.m() + this.f11330m.f13375h.f13392e) - z2Var.f13389b;
        y2 y2VarP = P(z2Var);
        if (y2VarP == null) {
            y2VarP = this.f11322e.a(z2Var, jM);
        } else {
            y2VarP.f13375h = z2Var;
            y2VarP.B(jM);
        }
        y2 y2Var2 = this.f11330m;
        if (y2Var2 != null) {
            y2Var2.A(y2VarP);
        } else {
            this.f11327j = y2VarP;
            this.f11328k = y2VarP;
            this.f11329l = y2VarP;
        }
        this.f11333p = null;
        this.f11330m = y2VarP;
        this.f11332o++;
        K();
        return y2VarP;
    }

    public y2 n() {
        return this.f11330m;
    }

    public z2 t(long j11, r3 r3Var) {
        y2 y2Var = this.f11330m;
        return y2Var == null ? j(r3Var) : l(r3Var.f12543a, y2Var, j11);
    }

    public y2 u() {
        return this.f11327j;
    }

    public y2 v(androidx.media3.exoplayer.source.q qVar) {
        for (int i11 = 0; i11 < this.f11335r.size(); i11++) {
            y2 y2Var = (y2) this.f11335r.get(i11);
            if (y2Var.f13368a == qVar) {
                return y2Var;
            }
        }
        return null;
    }

    public y2 w() {
        return this.f11331n;
    }

    public y2 x() {
        return this.f11329l;
    }

    public y2 y() {
        return this.f11328k;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0062  */
    /* JADX WARN: Code duplicated, block: B:24:0x006c  */
    /* JADX WARN: Code duplicated, block: B:29:0x007a  */
    public z2 z(androidx.media3.common.e0 e0Var, z2 z2Var) {
        long jK;
        long j11;
        int i11;
        boolean zS;
        int i12;
        androidx.media3.exoplayer.source.r.b bVar = z2Var.f13388a;
        boolean zC = C(bVar);
        boolean zE = E(e0Var, bVar);
        boolean zD = D(e0Var, bVar, zC);
        e0Var.h(z2Var.f13388a.f12883a, this.f11318a);
        long jF = (bVar.b() || (i12 = bVar.f12887e) == -1) ? -9223372036854775807L : this.f11318a.f(i12);
        if (!bVar.b()) {
            if (jF == C.TIME_UNSET || jF == Long.MIN_VALUE) {
                jK = this.f11318a.k();
            } else {
                j11 = jF;
            }
            if (bVar.b()) {
                zS = this.f11318a.s(bVar.f12884b);
            } else {
                i11 = bVar.f12887e;
                if (i11 == -1 && this.f11318a.s(i11)) {
                    zS = true;
                } else {
                    zS = false;
                }
            }
            return new z2(bVar, z2Var.f13389b, z2Var.f13390c, jF, j11, z2Var.f13393f, zS, zC, zE, zD);
        }
        jK = this.f11318a.b(bVar.f12884b, bVar.f12885c);
        j11 = jK;
        if (bVar.b()) {
            zS = this.f11318a.s(bVar.f12884b);
        } else {
            i11 = bVar.f12887e;
            if (i11 == -1) {
                zS = false;
            } else {
                zS = false;
            }
        }
        return new z2(bVar, z2Var.f13389b, z2Var.f13390c, jF, j11, z2Var.f13393f, zS, zC, zE, zD);
    }
}
