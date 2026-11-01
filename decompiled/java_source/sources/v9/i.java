package v9;

import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.source.a0;
import com.google.android.exoplayer2.source.b0;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import t9.s;

/* JADX INFO: loaded from: classes4.dex */
public class i implements s, b0, Loader.b, Loader.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f77143a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f77144b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final o1[] f77145c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean[] f77146d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j f77147e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0.a f77148f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.google.android.exoplayer2.source.p.a f77149g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final z f77150h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Loader f77151i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final h f77152j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final ArrayList f77153k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final List f77154l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final a0 f77155m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final a0[] f77156n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final c f77157o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private f f77158p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private o1 f77159q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private b f77160r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f77161s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f77162t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f77163u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private v9.a f77164v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    boolean f77165w;

    public final class a implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final i f77166a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a0 f77167b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f77168c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f77169d;

        public a(i iVar, a0 a0Var, int i11) {
            this.f77166a = iVar;
            this.f77167b = a0Var;
            this.f77168c = i11;
        }

        private void a() {
            if (this.f77169d) {
                return;
            }
            i.this.f77149g.i(i.this.f77144b[this.f77168c], i.this.f77145c[this.f77168c], 0, null, i.this.f77162t);
            this.f77169d = true;
        }

        public void b() {
            com.google.android.exoplayer2.util.a.g(i.this.f77146d[this.f77168c]);
            i.this.f77146d[this.f77168c] = false;
        }

        @Override // t9.s
        public int c(p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i11) {
            if (i.this.u()) {
                return -3;
            }
            if (i.this.f77164v != null && i.this.f77164v.g(this.f77168c + 1) <= this.f77167b.C()) {
                return -3;
            }
            a();
            return this.f77167b.S(p1Var, decoderInputBuffer, i11, i.this.f77165w);
        }

        @Override // t9.s
        public boolean isReady() {
            return !i.this.u() && this.f77167b.K(i.this.f77165w);
        }

        @Override // t9.s
        public void maybeThrowError() {
        }

        @Override // t9.s
        public int skipData(long j11) {
            if (i.this.u()) {
                return 0;
            }
            int iE = this.f77167b.E(j11, i.this.f77165w);
            if (i.this.f77164v != null) {
                iE = Math.min(iE, i.this.f77164v.g(this.f77168c + 1) - this.f77167b.C());
            }
            this.f77167b.e0(iE);
            if (iE > 0) {
                a();
            }
            return iE;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public interface b {
        void c(i iVar);
    }

    public i(int i11, int[] iArr, o1[] o1VarArr, j jVar, b0.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j11, u uVar, com.google.android.exoplayer2.drm.s.a aVar2, z zVar, com.google.android.exoplayer2.source.p.a aVar3) {
        this.f77143a = i11;
        int i12 = 0;
        iArr = iArr == null ? new int[0] : iArr;
        this.f77144b = iArr;
        this.f77145c = o1VarArr == null ? new o1[0] : o1VarArr;
        this.f77147e = jVar;
        this.f77148f = aVar;
        this.f77149g = aVar3;
        this.f77150h = zVar;
        this.f77151i = new Loader("ChunkSampleStream");
        this.f77152j = new h();
        ArrayList arrayList = new ArrayList();
        this.f77153k = arrayList;
        this.f77154l = Collections.unmodifiableList(arrayList);
        int length = iArr.length;
        this.f77156n = new a0[length];
        this.f77146d = new boolean[length];
        int i13 = length + 1;
        int[] iArr2 = new int[i13];
        a0[] a0VarArr = new a0[i13];
        a0 a0VarK = a0.k(bVar, uVar, aVar2);
        this.f77155m = a0VarK;
        iArr2[0] = i11;
        a0VarArr[0] = a0VarK;
        while (i12 < length) {
            a0 a0VarL = a0.l(bVar);
            this.f77156n[i12] = a0VarL;
            int i14 = i12 + 1;
            a0VarArr[i14] = a0VarL;
            iArr2[i14] = this.f77144b[i12];
            i12 = i14;
        }
        this.f77157o = new c(iArr2, a0VarArr);
        this.f77161s = j11;
        this.f77162t = j11;
    }

    private int A(int i11, int i12) {
        do {
            i12++;
            if (i12 >= this.f77153k.size()) {
                return this.f77153k.size() - 1;
            }
        } while (((v9.a) this.f77153k.get(i12)).g(0) <= i11);
        return i12 - 1;
    }

    private void D() {
        this.f77155m.V();
        for (a0 a0Var : this.f77156n) {
            a0Var.V();
        }
    }

    private void m(int i11) {
        int iMin = Math.min(A(i11, 0), this.f77163u);
        if (iMin > 0) {
            p0.M0(this.f77153k, 0, iMin);
            this.f77163u -= iMin;
        }
    }

    private void o(int i11) {
        com.google.android.exoplayer2.util.a.g(!this.f77151i.i());
        int size = this.f77153k.size();
        while (true) {
            if (i11 >= size) {
                i11 = -1;
                break;
            } else if (!s(i11)) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 == -1) {
            return;
        }
        long j11 = r().f77139h;
        v9.a aVarP = p(i11);
        if (this.f77153k.isEmpty()) {
            this.f77161s = this.f77162t;
        }
        this.f77165w = false;
        this.f77149g.D(this.f77143a, aVarP.f77138g, j11);
    }

    private v9.a p(int i11) {
        v9.a aVar = (v9.a) this.f77153k.get(i11);
        ArrayList arrayList = this.f77153k;
        p0.M0(arrayList, i11, arrayList.size());
        this.f77163u = Math.max(this.f77163u, this.f77153k.size());
        int i12 = 0;
        this.f77155m.u(aVar.g(0));
        while (true) {
            a0[] a0VarArr = this.f77156n;
            if (i12 >= a0VarArr.length) {
                return aVar;
            }
            a0 a0Var = a0VarArr[i12];
            i12++;
            a0Var.u(aVar.g(i12));
        }
    }

    private v9.a r() {
        ArrayList arrayList = this.f77153k;
        return (v9.a) arrayList.get(arrayList.size() - 1);
    }

    private boolean s(int i11) {
        int iC;
        v9.a aVar = (v9.a) this.f77153k.get(i11);
        if (this.f77155m.C() > aVar.g(0)) {
            return true;
        }
        int i12 = 0;
        do {
            a0[] a0VarArr = this.f77156n;
            if (i12 >= a0VarArr.length) {
                return false;
            }
            iC = a0VarArr[i12].C();
            i12++;
        } while (iC <= aVar.g(i12));
        return true;
    }

    private boolean t(f fVar) {
        return fVar instanceof v9.a;
    }

    private void v() {
        int iA = A(this.f77155m.C(), this.f77163u - 1);
        while (true) {
            int i11 = this.f77163u;
            if (i11 > iA) {
                return;
            }
            this.f77163u = i11 + 1;
            w(i11);
        }
    }

    private void w(int i11) {
        v9.a aVar = (v9.a) this.f77153k.get(i11);
        o1 o1Var = aVar.f77135d;
        if (!o1Var.equals(this.f77159q)) {
            this.f77149g.i(this.f77143a, o1Var, aVar.f77136e, aVar.f77137f, aVar.f77138g);
        }
        this.f77159q = o1Var;
    }

    public void B() {
        C(null);
    }

    public void C(b bVar) {
        this.f77160r = bVar;
        this.f77155m.R();
        for (a0 a0Var : this.f77156n) {
            a0Var.R();
        }
        this.f77151i.l(this);
    }

    public void E(long j11) {
        v9.a aVar;
        boolean Z;
        this.f77162t = j11;
        if (u()) {
            this.f77161s = j11;
            return;
        }
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i12 < this.f77153k.size()) {
                aVar = (v9.a) this.f77153k.get(i12);
                long j12 = aVar.f77138g;
                if (j12 == j11 && aVar.f77105k == C.TIME_UNSET) {
                    break;
                } else if (j12 <= j11) {
                    i12++;
                }
            }
            aVar = null;
            break;
        }
        if (aVar != null) {
            Z = this.f77155m.Y(aVar.g(0));
        } else {
            Z = this.f77155m.Z(j11, j11 < getNextLoadPositionUs());
        }
        if (Z) {
            this.f77163u = A(this.f77155m.C(), 0);
            a0[] a0VarArr = this.f77156n;
            int length = a0VarArr.length;
            while (i11 < length) {
                a0VarArr[i11].Z(j11, true);
                i11++;
            }
            return;
        }
        this.f77161s = j11;
        this.f77165w = false;
        this.f77153k.clear();
        this.f77163u = 0;
        if (!this.f77151i.i()) {
            this.f77151i.f();
            D();
            return;
        }
        this.f77155m.r();
        a0[] a0VarArr2 = this.f77156n;
        int length2 = a0VarArr2.length;
        while (i11 < length2) {
            a0VarArr2[i11].r();
            i11++;
        }
        this.f77151i.e();
    }

    public a F(long j11, int i11) {
        for (int i12 = 0; i12 < this.f77156n.length; i12++) {
            if (this.f77144b[i12] == i11) {
                com.google.android.exoplayer2.util.a.g(!this.f77146d[i12]);
                this.f77146d[i12] = true;
                this.f77156n[i12].Z(j11, true);
                return new a(this, this.f77156n[i12], i12);
            }
        }
        throw new IllegalStateException();
    }

    public long a(long j11, c3 c3Var) {
        return this.f77147e.a(j11, c3Var);
    }

    @Override // t9.s
    public int c(p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        if (u()) {
            return -3;
        }
        v9.a aVar = this.f77164v;
        if (aVar != null && aVar.g(0) <= this.f77155m.C()) {
            return -3;
        }
        v();
        return this.f77155m.S(p1Var, decoderInputBuffer, i11, this.f77165w);
    }

    @Override // com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j11) {
        List listEmptyList;
        long j12;
        if (this.f77165w || this.f77151i.i() || this.f77151i.h()) {
            return false;
        }
        boolean zU = u();
        if (zU) {
            listEmptyList = Collections.emptyList();
            j12 = this.f77161s;
        } else {
            listEmptyList = this.f77154l;
            j12 = r().f77139h;
        }
        this.f77147e.f(j11, j12, listEmptyList, this.f77152j);
        h hVar = this.f77152j;
        boolean z10 = hVar.f77142b;
        f fVar = hVar.f77141a;
        hVar.a();
        if (z10) {
            this.f77161s = C.TIME_UNSET;
            this.f77165w = true;
            return true;
        }
        if (fVar == null) {
            return false;
        }
        this.f77158p = fVar;
        if (t(fVar)) {
            v9.a aVar = (v9.a) fVar;
            if (zU) {
                long j13 = aVar.f77138g;
                long j14 = this.f77161s;
                if (j13 != j14) {
                    this.f77155m.b0(j14);
                    for (a0 a0Var : this.f77156n) {
                        a0Var.b0(this.f77161s);
                    }
                }
                this.f77161s = C.TIME_UNSET;
            }
            aVar.i(this.f77157o);
            this.f77153k.add(aVar);
        } else if (fVar instanceof m) {
            ((m) fVar).e(this.f77157o);
        }
        this.f77149g.A(new t9.h(fVar.f77132a, fVar.f77133b, this.f77151i.m(fVar, this, this.f77150h.a(fVar.f77134c))), fVar.f77134c, this.f77143a, fVar.f77135d, fVar.f77136e, fVar.f77137f, fVar.f77138g, fVar.f77139h);
        return true;
    }

    public void discardBuffer(long j11, boolean z10) {
        if (u()) {
            return;
        }
        int iX = this.f77155m.x();
        this.f77155m.q(j11, z10, true);
        int iX2 = this.f77155m.x();
        if (iX2 > iX) {
            long jY = this.f77155m.y();
            int i11 = 0;
            while (true) {
                a0[] a0VarArr = this.f77156n;
                if (i11 >= a0VarArr.length) {
                    break;
                }
                a0VarArr[i11].q(jY, z10, this.f77146d[i11]);
                i11++;
            }
        }
        m(iX2);
    }

    @Override // com.google.android.exoplayer2.source.b0
    public long getBufferedPositionUs() {
        if (this.f77165w) {
            return Long.MIN_VALUE;
        }
        if (u()) {
            return this.f77161s;
        }
        long jMax = this.f77162t;
        v9.a aVarR = r();
        if (!aVarR.f()) {
            if (this.f77153k.size() > 1) {
                ArrayList arrayList = this.f77153k;
                aVarR = (v9.a) arrayList.get(arrayList.size() - 2);
            } else {
                aVarR = null;
            }
        }
        if (aVarR != null) {
            jMax = Math.max(jMax, aVarR.f77139h);
        }
        return Math.max(jMax, this.f77155m.z());
    }

    @Override // com.google.android.exoplayer2.source.b0
    public long getNextLoadPositionUs() {
        if (u()) {
            return this.f77161s;
        }
        if (this.f77165w) {
            return Long.MIN_VALUE;
        }
        return r().f77139h;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        return this.f77151i.i();
    }

    @Override // t9.s
    public boolean isReady() {
        return !u() && this.f77155m.K(this.f77165w);
    }

    @Override // t9.s
    public void maybeThrowError() throws IOException {
        this.f77151i.maybeThrowError();
        this.f77155m.N();
        if (this.f77151i.i()) {
            return;
        }
        this.f77147e.maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.e
    public void onLoaderReleased() {
        this.f77155m.T();
        for (a0 a0Var : this.f77156n) {
            a0Var.T();
        }
        this.f77147e.release();
        b bVar = this.f77160r;
        if (bVar != null) {
            bVar.c(this);
        }
    }

    public j q() {
        return this.f77147e;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public void reevaluateBuffer(long j11) {
        if (this.f77151i.h() || u()) {
            return;
        }
        if (!this.f77151i.i()) {
            int preferredQueueSize = this.f77147e.getPreferredQueueSize(j11, this.f77154l);
            if (preferredQueueSize < this.f77153k.size()) {
                o(preferredQueueSize);
                return;
            }
            return;
        }
        f fVar = (f) com.google.android.exoplayer2.util.a.e(this.f77158p);
        if (!(t(fVar) && s(this.f77153k.size() - 1)) && this.f77147e.h(j11, fVar, this.f77154l)) {
            this.f77151i.e();
            if (t(fVar)) {
                this.f77164v = (v9.a) fVar;
            }
        }
    }

    @Override // t9.s
    public int skipData(long j11) {
        if (u()) {
            return 0;
        }
        int iE = this.f77155m.E(j11, this.f77165w);
        v9.a aVar = this.f77164v;
        if (aVar != null) {
            iE = Math.min(iE, aVar.g(0) - this.f77155m.C());
        }
        this.f77155m.e0(iE);
        v();
        return iE;
    }

    boolean u() {
        return this.f77161s != C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void j(f fVar, long j11, long j12, boolean z10) {
        this.f77158p = null;
        this.f77164v = null;
        t9.h hVar = new t9.h(fVar.f77132a, fVar.f77133b, fVar.d(), fVar.c(), j11, j12, fVar.a());
        this.f77150h.b(fVar.f77132a);
        this.f77149g.r(hVar, fVar.f77134c, this.f77143a, fVar.f77135d, fVar.f77136e, fVar.f77137f, fVar.f77138g, fVar.f77139h);
        if (z10) {
            return;
        }
        if (u()) {
            D();
        } else if (t(fVar)) {
            p(this.f77153k.size() - 1);
            if (this.f77153k.isEmpty()) {
                this.f77161s = this.f77162t;
            }
        }
        this.f77148f.g(this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void l(f fVar, long j11, long j12) {
        this.f77158p = null;
        this.f77147e.g(fVar);
        t9.h hVar = new t9.h(fVar.f77132a, fVar.f77133b, fVar.d(), fVar.c(), j11, j12, fVar.a());
        this.f77150h.b(fVar.f77132a);
        this.f77149g.u(hVar, fVar.f77134c, this.f77143a, fVar.f77135d, fVar.f77136e, fVar.f77137f, fVar.f77138g, fVar.f77139h);
        this.f77148f.g(this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public Loader.c n(f fVar, long j11, long j12, IOException iOException, int i11) {
        Loader.c cVarG;
        long jA = fVar.a();
        boolean zT = t(fVar);
        int size = this.f77153k.size() - 1;
        boolean z10 = (jA != 0 && zT && s(size)) ? false : true;
        t9.h hVar = new t9.h(fVar.f77132a, fVar.f77133b, fVar.d(), fVar.c(), j11, j12, jA);
        z.c cVar = new z.c(hVar, new t9.i(fVar.f77134c, this.f77143a, fVar.f77135d, fVar.f77136e, fVar.f77137f, p0.e1(fVar.f77138g), p0.e1(fVar.f77139h)), iOException, i11);
        if (!this.f77147e.d(fVar, z10, cVar, this.f77150h)) {
            cVarG = null;
        } else if (z10) {
            cVarG = Loader.f27246f;
            if (zT) {
                com.google.android.exoplayer2.util.a.g(p(size) == fVar);
                if (this.f77153k.isEmpty()) {
                    this.f77161s = this.f77162t;
                }
            }
        } else {
            com.google.android.exoplayer2.util.s.i("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
            cVarG = null;
        }
        if (cVarG == null) {
            long jC = this.f77150h.c(cVar);
            cVarG = jC != C.TIME_UNSET ? Loader.g(false, jC) : Loader.f27247g;
        }
        boolean zC = cVarG.c();
        this.f77149g.w(hVar, fVar.f77134c, this.f77143a, fVar.f77135d, fVar.f77136e, fVar.f77137f, fVar.f77138g, fVar.f77139h, iOException, !zC);
        if (!zC) {
            this.f77158p = null;
            this.f77150h.b(fVar.f77132a);
            this.f77148f.g(this);
        }
        return cVarG;
    }
}
