package com.google.android.exoplayer2.source.dash;

import android.os.SystemClock;
import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.trackselection.h;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.android.exoplayer2.upstream.a0;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import e9.u1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import v9.f;
import v9.g;
import v9.m;
import v9.n;
import v9.o;
import v9.p;
import x9.i;
import x9.j;

/* JADX INFO: loaded from: classes3.dex */
public class c implements com.google.android.exoplayer2.source.dash.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a0 f25848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w9.b f25849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int[] f25850c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f25851d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k f25852e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f25853f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f25854g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final e.c f25855h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected final b[] f25856i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private h f25857j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private x9.c f25858k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f25859l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private IOException f25860m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f25861n;

    public static final class a implements com.google.android.exoplayer2.source.dash.a.InterfaceC0369a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k.a f25862a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f25863b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final g.a f25864c;

        public a(k.a aVar) {
            this(aVar, 1);
        }

        public a(k.a aVar, int i11) {
            this(v9.e.f77114j, aVar, i11);
        }

        public a(g.a aVar, k.a aVar2, int i11) {
            this.f25864c = aVar;
            this.f25862a = aVar2;
            this.f25863b = i11;
        }

        @Override // com.google.android.exoplayer2.source.dash.a.InterfaceC0369a
        public com.google.android.exoplayer2.source.dash.a a(a0 a0Var, x9.c cVar, w9.b bVar, int i11, int[] iArr, h hVar, int i12, long j11, boolean z10, List list, e.c cVar2, k0 k0Var, u1 u1Var) {
            k kVarCreateDataSource = this.f25862a.createDataSource();
            if (k0Var != null) {
                kVarCreateDataSource.e(k0Var);
            }
            return new c(this.f25864c, a0Var, cVar, bVar, i11, iArr, hVar, i12, kVarCreateDataSource, j11, this.f25863b, z10, list, cVar2, u1Var);
        }
    }

    protected static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final g f25865a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final j f25866b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final x9.b f25867c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final w9.e f25868d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final long f25869e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f25870f;

        b(long j11, j jVar, x9.b bVar, g gVar, long j12, w9.e eVar) {
            this.f25869e = j11;
            this.f25866b = jVar;
            this.f25867c = bVar;
            this.f25870f = j12;
            this.f25865a = gVar;
            this.f25868d = eVar;
        }

        b b(long j11, j jVar) throws BehindLiveWindowException {
            long jE;
            w9.e eVarK = this.f25866b.k();
            w9.e eVarK2 = jVar.k();
            if (eVarK == null) {
                return new b(j11, jVar, this.f25867c, this.f25865a, this.f25870f, eVarK);
            }
            if (!eVarK.g()) {
                return new b(j11, jVar, this.f25867c, this.f25865a, this.f25870f, eVarK2);
            }
            long jF = eVarK.f(j11);
            if (jF == 0) {
                return new b(j11, jVar, this.f25867c, this.f25865a, this.f25870f, eVarK2);
            }
            long jH = eVarK.h();
            long timeUs = eVarK.getTimeUs(jH);
            long jE2 = jF + jH;
            long j12 = jE2 - 1;
            long timeUs2 = eVarK.getTimeUs(j12) + eVarK.a(j12, j11);
            long jH2 = eVarK2.h();
            long timeUs3 = eVarK2.getTimeUs(jH2);
            long j13 = this.f25870f;
            if (timeUs2 == timeUs3) {
                jE = j13 + (jE2 - jH2);
            } else {
                if (timeUs2 < timeUs3) {
                    throw new BehindLiveWindowException();
                }
                if (timeUs3 < timeUs) {
                    jE = j13 - (eVarK2.e(timeUs, j11) - jH);
                } else {
                    jE2 = eVarK.e(timeUs3, j11);
                    jE = j13 + (jE2 - jH2);
                }
            }
            return new b(j11, jVar, this.f25867c, this.f25865a, jE, eVarK2);
        }

        b c(w9.e eVar) {
            return new b(this.f25869e, this.f25866b, this.f25867c, this.f25865a, this.f25870f, eVar);
        }

        b d(x9.b bVar) {
            return new b(this.f25869e, this.f25866b, bVar, this.f25865a, this.f25870f, this.f25868d);
        }

        public long e(long j11) {
            return this.f25868d.b(this.f25869e, j11) + this.f25870f;
        }

        public long f() {
            return this.f25868d.h() + this.f25870f;
        }

        public long g(long j11) {
            return (e(j11) + this.f25868d.i(this.f25869e, j11)) - 1;
        }

        public long h() {
            return this.f25868d.f(this.f25869e);
        }

        public long i(long j11) {
            return k(j11) + this.f25868d.a(j11 - this.f25870f, this.f25869e);
        }

        public long j(long j11) {
            return this.f25868d.e(j11, this.f25869e) + this.f25870f;
        }

        public long k(long j11) {
            return this.f25868d.getTimeUs(j11 - this.f25870f);
        }

        public i l(long j11) {
            return this.f25868d.d(j11 - this.f25870f);
        }

        public boolean m(long j11, long j12) {
            return this.f25868d.g() || j12 == C.TIME_UNSET || i(j11) <= j12;
        }
    }

    /* JADX INFO: renamed from: com.google.android.exoplayer2.source.dash.c$c, reason: collision with other inner class name */
    protected static final class C0370c extends v9.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final b f25871e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f25872f;

        public C0370c(b bVar, long j11, long j12, long j13) {
            super(j11, j12);
            this.f25871e = bVar;
            this.f25872f = j13;
        }

        @Override // v9.o
        public long a() {
            c();
            return this.f25871e.k(d());
        }

        @Override // v9.o
        public long b() {
            c();
            return this.f25871e.i(d());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(g.a aVar, a0 a0Var, x9.c cVar, w9.b bVar, int i11, int[] iArr, h hVar, int i12, k kVar, long j11, int i13, boolean z10, List list, e.c cVar2, u1 u1Var) {
        this.f25848a = a0Var;
        this.f25858k = cVar;
        this.f25849b = bVar;
        this.f25850c = iArr;
        this.f25857j = hVar;
        this.f25851d = i12;
        this.f25852e = kVar;
        this.f25859l = i11;
        this.f25853f = j11;
        this.f25854g = i13;
        this.f25855h = cVar2;
        long jF = cVar.f(i11);
        ArrayList arrayListL = l();
        this.f25856i = new b[hVar.length()];
        int i14 = 0;
        while (i14 < this.f25856i.length) {
            j jVar = (j) arrayListL.get(hVar.getIndexInTrackGroup(i14));
            x9.b bVarJ = bVar.j(jVar.f78112c);
            int i15 = i14;
            this.f25856i[i15] = new b(jF, jVar, bVarJ == null ? (x9.b) jVar.f78112c.get(0) : bVarJ, aVar.a(i12, jVar.f78111b, z10, list, cVar2, u1Var), 0L, jVar.k());
            i14 = i15 + 1;
        }
    }

    private z.a i(h hVar, List list) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int length = hVar.length();
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            if (hVar.e(i12, jElapsedRealtime)) {
                i11++;
            }
        }
        int iF = w9.b.f(list);
        return new z.a(iF, iF - this.f25849b.g(list), length, i11);
    }

    private long j(long j11, long j12) {
        if (!this.f25858k.f78064d) {
            return C.TIME_UNSET;
        }
        return Math.max(0L, Math.min(k(j11), this.f25856i[0].i(this.f25856i[0].g(j11))) - j12);
    }

    private long k(long j11) {
        x9.c cVar = this.f25858k;
        long j12 = cVar.f78061a;
        return j12 == C.TIME_UNSET ? C.TIME_UNSET : j11 - p0.B0(j12 + cVar.c(this.f25859l).f78097b);
    }

    private ArrayList l() {
        List list = this.f25858k.c(this.f25859l).f78098c;
        ArrayList arrayList = new ArrayList();
        for (int i11 : this.f25850c) {
            arrayList.addAll(((x9.a) list.get(i11)).f78053c);
        }
        return arrayList;
    }

    private long m(b bVar, n nVar, long j11, long j12, long j13) {
        return nVar != null ? nVar.e() : p0.r(bVar.j(j11), j12, j13);
    }

    private b p(int i11) {
        b bVar = this.f25856i[i11];
        x9.b bVarJ = this.f25849b.j(bVar.f25866b.f78112c);
        if (bVarJ == null || bVarJ.equals(bVar.f25867c)) {
            return bVar;
        }
        b bVarD = bVar.d(bVarJ);
        this.f25856i[i11] = bVarD;
        return bVarD;
    }

    @Override // v9.j
    public long a(long j11, c3 c3Var) {
        for (b bVar : this.f25856i) {
            if (bVar.f25868d != null) {
                long j12 = bVar.j(j11);
                long jK = bVar.k(j12);
                long jH = bVar.h();
                return c3Var.a(j11, jK, (jK >= j11 || (jH != -1 && j12 >= (bVar.f() + jH) - 1)) ? jK : bVar.k(j12 + 1));
            }
        }
        return j11;
    }

    @Override // com.google.android.exoplayer2.source.dash.a
    public void b(h hVar) {
        this.f25857j = hVar;
    }

    @Override // v9.j
    public boolean d(f fVar, boolean z10, z.c cVar, z zVar) {
        z.b bVarD;
        if (!z10) {
            return false;
        }
        e.c cVar2 = this.f25855h;
        if (cVar2 != null && cVar2.j(fVar)) {
            return true;
        }
        if (!this.f25858k.f78064d && (fVar instanceof n)) {
            IOException iOException = cVar.f27544c;
            if ((iOException instanceof HttpDataSource$InvalidResponseCodeException) && ((HttpDataSource$InvalidResponseCodeException) iOException).responseCode == 404) {
                b bVar = this.f25856i[this.f25857j.g(fVar.f77135d)];
                long jH = bVar.h();
                if (jH != -1 && jH != 0) {
                    if (((n) fVar).e() > (bVar.f() + jH) - 1) {
                        this.f25861n = true;
                        return true;
                    }
                }
            }
        }
        b bVar2 = this.f25856i[this.f25857j.g(fVar.f77135d)];
        x9.b bVarJ = this.f25849b.j(bVar2.f25866b.f78112c);
        if (bVarJ != null && !bVar2.f25867c.equals(bVarJ)) {
            return true;
        }
        z.a aVarI = i(this.f25857j, bVar2.f25866b.f78112c);
        if ((!aVarI.a(2) && !aVarI.a(1)) || (bVarD = zVar.d(aVarI, cVar)) == null || !aVarI.a(bVarD.f27540a)) {
            return false;
        }
        int i11 = bVarD.f27540a;
        if (i11 == 2) {
            h hVar = this.f25857j;
            return hVar.blacklist(hVar.g(fVar.f77135d), bVarD.f27541b);
        }
        if (i11 != 1) {
            return false;
        }
        this.f25849b.e(bVar2.f25867c, bVarD.f27541b);
        return true;
    }

    @Override // com.google.android.exoplayer2.source.dash.a
    public void e(x9.c cVar, int i11) {
        try {
            this.f25858k = cVar;
            this.f25859l = i11;
            long jF = cVar.f(i11);
            ArrayList arrayListL = l();
            for (int i12 = 0; i12 < this.f25856i.length; i12++) {
                j jVar = (j) arrayListL.get(this.f25857j.getIndexInTrackGroup(i12));
                b[] bVarArr = this.f25856i;
                bVarArr[i12] = bVarArr[i12].b(jF, jVar);
            }
        } catch (BehindLiveWindowException e11) {
            this.f25860m = e11;
        }
    }

    @Override // v9.j
    public void f(long j11, long j12, List list, v9.h hVar) {
        int i11;
        int i12;
        o[] oVarArr;
        long j13;
        long j14;
        if (this.f25860m != null) {
            return;
        }
        long j15 = j12 - j11;
        long jB0 = p0.B0(this.f25858k.f78061a) + p0.B0(this.f25858k.c(this.f25859l).f78097b) + j12;
        e.c cVar = this.f25855h;
        if (cVar == null || !cVar.h(jB0)) {
            long jB1 = p0.B0(p0.b0(this.f25853f));
            long jK = k(jB1);
            n nVar = list.isEmpty() ? null : (n) list.get(list.size() - 1);
            int length = this.f25857j.length();
            o[] oVarArr2 = new o[length];
            int i13 = 0;
            while (i13 < length) {
                b bVar = this.f25856i[i13];
                if (bVar.f25868d == null) {
                    oVarArr2[i13] = o.f77184a;
                    i11 = i13;
                    i12 = length;
                    oVarArr = oVarArr2;
                    j13 = j15;
                    j14 = jB1;
                } else {
                    long jE = bVar.e(jB1);
                    long jG = bVar.g(jB1);
                    i11 = i13;
                    i12 = length;
                    oVarArr = oVarArr2;
                    j13 = j15;
                    j14 = jB1;
                    long jM = m(bVar, nVar, j12, jE, jG);
                    if (jM < jE) {
                        oVarArr[i11] = o.f77184a;
                    } else {
                        oVarArr[i11] = new C0370c(p(i11), jM, jG, jK);
                    }
                }
                i13 = i11 + 1;
                jB1 = j14;
                length = i12;
                oVarArr2 = oVarArr;
                j15 = j13;
            }
            long j16 = j15;
            long j17 = jB1;
            this.f25857j.d(j11, j16, j(j17, j11), list, oVarArr2);
            b bVarP = p(this.f25857j.getSelectedIndex());
            g gVar = bVarP.f25865a;
            if (gVar != null) {
                j jVar = bVarP.f25866b;
                i iVarM = gVar.c() == null ? jVar.m() : null;
                i iVarL = bVarP.f25868d == null ? jVar.l() : null;
                if (iVarM != null || iVarL != null) {
                    hVar.f77141a = n(bVarP, this.f25852e, this.f25857j.getSelectedFormat(), this.f25857j.getSelectionReason(), this.f25857j.getSelectionData(), iVarM, iVarL);
                    return;
                }
            }
            long j18 = bVarP.f25869e;
            long j19 = C.TIME_UNSET;
            boolean z10 = j18 != C.TIME_UNSET;
            if (bVarP.h() == 0) {
                hVar.f77142b = z10;
                return;
            }
            long jE2 = bVarP.e(j17);
            long jG2 = bVarP.g(j17);
            long jM2 = m(bVarP, nVar, j12, jE2, jG2);
            if (jM2 < jE2) {
                this.f25860m = new BehindLiveWindowException();
                return;
            }
            if (jM2 > jG2 || (this.f25861n && jM2 >= jG2)) {
                hVar.f77142b = z10;
                return;
            }
            if (z10 && bVarP.k(jM2) >= j18) {
                hVar.f77142b = true;
                return;
            }
            int iMin = (int) Math.min(this.f25854g, (jG2 - jM2) + 1);
            if (j18 != C.TIME_UNSET) {
                while (iMin > 1 && bVarP.k((((long) iMin) + jM2) - 1) >= j18) {
                    iMin--;
                }
            }
            int i14 = iMin;
            if (list.isEmpty()) {
                j19 = j12;
            }
            hVar.f77141a = o(bVarP, this.f25852e, this.f25851d, this.f25857j.getSelectedFormat(), this.f25857j.getSelectionReason(), this.f25857j.getSelectionData(), jM2, i14, j19, jK);
        }
    }

    @Override // v9.j
    public void g(f fVar) {
        g9.d dVarB;
        if (fVar instanceof m) {
            int iG = this.f25857j.g(((m) fVar).f77135d);
            b bVar = this.f25856i[iG];
            if (bVar.f25868d == null && (dVarB = bVar.f25865a.b()) != null) {
                this.f25856i[iG] = bVar.c(new w9.g(dVarB, bVar.f25866b.f78113d));
            }
        }
        e.c cVar = this.f25855h;
        if (cVar != null) {
            cVar.i(fVar);
        }
    }

    @Override // v9.j
    public int getPreferredQueueSize(long j11, List list) {
        return (this.f25860m != null || this.f25857j.length() < 2) ? list.size() : this.f25857j.evaluateQueueSize(j11, list);
    }

    @Override // v9.j
    public boolean h(long j11, f fVar, List list) {
        if (this.f25860m != null) {
            return false;
        }
        return this.f25857j.f(j11, fVar, list);
    }

    @Override // v9.j
    public void maybeThrowError() throws IOException {
        IOException iOException = this.f25860m;
        if (iOException != null) {
            throw iOException;
        }
        this.f25848a.maybeThrowError();
    }

    protected f n(b bVar, k kVar, o1 o1Var, int i11, Object obj, i iVar, i iVar2) {
        i iVar3 = iVar;
        j jVar = bVar.f25866b;
        if (iVar3 != null) {
            i iVarA = iVar3.a(iVar2, bVar.f25867c.f78057a);
            if (iVarA != null) {
                iVar3 = iVarA;
            }
        } else {
            iVar3 = iVar2;
        }
        return new m(kVar, w9.f.a(jVar, bVar.f25867c.f78057a, iVar3, 0), o1Var, i11, obj, bVar.f25865a);
    }

    protected f o(b bVar, k kVar, int i11, o1 o1Var, int i12, Object obj, long j11, int i13, long j12, long j13) {
        j jVar = bVar.f25866b;
        long jK = bVar.k(j11);
        i iVarL = bVar.l(j11);
        if (bVar.f25865a == null) {
            return new p(kVar, w9.f.a(jVar, bVar.f25867c.f78057a, iVarL, bVar.m(j11, j13) ? 0 : 8), o1Var, i12, obj, jK, bVar.i(j11), j11, i11, o1Var);
        }
        int i14 = 1;
        int i15 = 1;
        while (i14 < i13) {
            i iVarA = iVarL.a(bVar.l(((long) i14) + j11), bVar.f25867c.f78057a);
            if (iVarA == null) {
                break;
            }
            i15++;
            i14++;
            iVarL = iVarA;
        }
        long j14 = (((long) i15) + j11) - 1;
        long jI = bVar.i(j14);
        long j15 = bVar.f25869e;
        return new v9.k(kVar, w9.f.a(jVar, bVar.f25867c.f78057a, iVarL, bVar.m(j14, j13) ? 0 : 8), o1Var, i12, obj, jK, jI, j12, (j15 == C.TIME_UNSET || j15 > jI) ? -9223372036854775807L : j15, j11, i15, -jVar.f78113d, bVar.f25865a);
    }

    @Override // v9.j
    public void release() {
        for (b bVar : this.f25856i) {
            g gVar = bVar.f25865a;
            if (gVar != null) {
                gVar.release();
            }
        }
    }
}
