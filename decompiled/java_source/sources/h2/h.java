package h2;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.y;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.drm.t;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.source.e0;
import androidx.media3.exoplayer.source.f0;
import androidx.media3.exoplayer.source.s;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.v2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g2.u;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class h implements u, f0, Loader.b, Loader.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f64307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f64308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final r[] f64309c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean[] f64310d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i f64311e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final f0.a f64312f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final s.a f64313g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.m f64314h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Loader f64315i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final g f64316j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final ArrayList f64317k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final List f64318l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final e0 f64319m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final e0[] f64320n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final c f64321o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private e f64322p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private r f64323q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private b f64324r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f64325s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f64326t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f64327u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private h2.a f64328v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f64329w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f64330x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    boolean f64331y;

    public final class a implements u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final h f64332a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e0 f64333b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f64334c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f64335d;

        public a(h hVar, e0 e0Var, int i11) {
            this.f64332a = hVar;
            this.f64333b = e0Var;
            this.f64334c = i11;
        }

        private void a() {
            if (this.f64335d) {
                return;
            }
            h.this.f64313g.j(h.this.f64308b[this.f64334c], h.this.f64309c[this.f64334c], 0, null, h.this.f64326t);
            this.f64335d = true;
        }

        public void b() {
            androidx.media3.common.util.a.g(h.this.f64310d[this.f64334c]);
            h.this.f64310d[this.f64334c] = false;
        }

        @Override // g2.u
        public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i11) {
            if (h.this.y()) {
                return -3;
            }
            if (h.this.f64328v != null && h.this.f64328v.g(this.f64334c + 1) <= this.f64333b.F()) {
                return -3;
            }
            a();
            return this.f64333b.V(s2Var, decoderInputBuffer, i11, h.this.f64331y);
        }

        @Override // g2.u
        public boolean isReady() {
            return !h.this.y() && this.f64333b.N(h.this.f64331y);
        }

        @Override // g2.u
        public void maybeThrowError() {
        }

        @Override // g2.u
        public int skipData(long j11) {
            if (h.this.y()) {
                return 0;
            }
            int iH = this.f64333b.H(j11, h.this.f64331y);
            if (h.this.f64328v != null) {
                iH = Math.min(iH, h.this.f64328v.g(this.f64334c + 1) - this.f64333b.F());
            }
            this.f64333b.h0(iH);
            if (iH > 0) {
                a();
            }
            return iH;
        }
    }

    public interface b {
        void h(h hVar);
    }

    public h(int i11, int[] iArr, r[] rVarArr, i iVar, f0.a aVar, androidx.media3.exoplayer.upstream.b bVar, long j11, t tVar, androidx.media3.exoplayer.drm.r.a aVar2, androidx.media3.exoplayer.upstream.m mVar, s.a aVar3, boolean z10, androidx.media3.exoplayer.util.c cVar) {
        this.f64307a = i11;
        int i12 = 0;
        iArr = iArr == null ? new int[0] : iArr;
        this.f64308b = iArr;
        this.f64309c = rVarArr == null ? new r[0] : rVarArr;
        this.f64311e = iVar;
        this.f64312f = aVar;
        this.f64313g = aVar3;
        this.f64314h = mVar;
        this.f64329w = z10;
        this.f64315i = cVar != null ? new Loader(cVar) : new Loader("ChunkSampleStream");
        this.f64316j = new g();
        ArrayList arrayList = new ArrayList();
        this.f64317k = arrayList;
        this.f64318l = Collections.unmodifiableList(arrayList);
        int length = iArr.length;
        this.f64320n = new e0[length];
        this.f64310d = new boolean[length];
        int i13 = length + 1;
        int[] iArr2 = new int[i13];
        e0[] e0VarArr = new e0[i13];
        e0 e0VarL = e0.l(bVar, tVar, aVar2);
        this.f64319m = e0VarL;
        iArr2[0] = i11;
        e0VarArr[0] = e0VarL;
        while (i12 < length) {
            e0 e0VarM = e0.m(bVar);
            this.f64320n[i12] = e0VarM;
            int i14 = i12 + 1;
            e0VarArr[i14] = e0VarM;
            iArr2[i14] = this.f64308b[i12];
            i12 = i14;
        }
        this.f64321o = new c(iArr2, e0VarArr);
        this.f64325s = j11;
        this.f64326t = j11;
    }

    private void A(int i11) {
        h2.a aVar = (h2.a) this.f64317k.get(i11);
        r rVar = aVar.f64299d;
        if (!rVar.equals(this.f64323q)) {
            this.f64313g.j(this.f64307a, rVar, aVar.f64300e, aVar.f64301f, aVar.f64302g);
        }
        this.f64323q = rVar;
    }

    private int F(int i11, int i12) {
        do {
            i12++;
            if (i12 >= this.f64317k.size()) {
                return this.f64317k.size() - 1;
            }
        } while (((h2.a) this.f64317k.get(i12)).g(0) <= i11);
        return i12 - 1;
    }

    private void H() {
        this.f64319m.Y();
        for (e0 e0Var : this.f64320n) {
            e0Var.Y();
        }
    }

    private void n(int i11) {
        int iMin = Math.min(F(i11, 0), this.f64327u);
        if (iMin > 0) {
            a1.c1(this.f64317k, 0, iMin);
            this.f64327u -= iMin;
        }
    }

    private void r(int i11) {
        androidx.media3.common.util.a.g(!this.f64315i.i());
        int size = this.f64317k.size();
        while (true) {
            if (i11 >= size) {
                i11 = -1;
                break;
            } else if (!w(i11)) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 == -1) {
            return;
        }
        long j11 = v().f64303h;
        h2.a aVarS = s(i11);
        if (this.f64317k.isEmpty()) {
            this.f64325s = this.f64326t;
        }
        this.f64331y = false;
        this.f64313g.F(this.f64307a, aVarS.f64302g, j11);
    }

    private h2.a s(int i11) {
        h2.a aVar = (h2.a) this.f64317k.get(i11);
        ArrayList arrayList = this.f64317k;
        a1.c1(arrayList, i11, arrayList.size());
        this.f64327u = Math.max(this.f64327u, this.f64317k.size());
        int i12 = 0;
        this.f64319m.w(aVar.g(0));
        while (true) {
            e0[] e0VarArr = this.f64320n;
            if (i12 >= e0VarArr.length) {
                return aVar;
            }
            e0 e0Var = e0VarArr[i12];
            i12++;
            e0Var.w(aVar.g(i12));
        }
    }

    private h2.a v() {
        ArrayList arrayList = this.f64317k;
        return (h2.a) arrayList.get(arrayList.size() - 1);
    }

    private boolean w(int i11) {
        int iF;
        h2.a aVar = (h2.a) this.f64317k.get(i11);
        if (this.f64319m.F() > aVar.g(0)) {
            return true;
        }
        int i12 = 0;
        do {
            e0[] e0VarArr = this.f64320n;
            if (i12 >= e0VarArr.length) {
                return false;
            }
            iF = e0VarArr[i12].F();
            i12++;
        } while (iF <= aVar.g(i12));
        return true;
    }

    private boolean x(e eVar) {
        return eVar instanceof h2.a;
    }

    private void z() {
        int iF = F(this.f64319m.F(), this.f64327u - 1);
        while (true) {
            int i11 = this.f64327u;
            if (i11 > iF) {
                return;
            }
            this.f64327u = i11 + 1;
            A(i11);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void q(e eVar, long j11, long j12, boolean z10) {
        this.f64322p = null;
        this.f64328v = null;
        g2.i iVar = new g2.i(eVar.f64296a, eVar.f64297b, eVar.d(), eVar.c(), j11, j12, eVar.a());
        this.f64314h.b(eVar.f64296a);
        this.f64313g.t(iVar, eVar.f64298c, this.f64307a, eVar.f64299d, eVar.f64300e, eVar.f64301f, eVar.f64302g, eVar.f64303h);
        if (z10) {
            return;
        }
        if (y()) {
            H();
        } else if (x(eVar)) {
            s(this.f64317k.size() - 1);
            if (this.f64317k.isEmpty()) {
                this.f64325s = this.f64326t;
            }
        }
        this.f64312f.f(this);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public void p(e eVar, long j11, long j12) {
        this.f64322p = null;
        this.f64311e.a(eVar);
        g2.i iVar = new g2.i(eVar.f64296a, eVar.f64297b, eVar.d(), eVar.c(), j11, j12, eVar.a());
        this.f64314h.b(eVar.f64296a);
        this.f64313g.w(iVar, eVar.f64298c, this.f64307a, eVar.f64299d, eVar.f64300e, eVar.f64301f, eVar.f64302g, eVar.f64303h);
        this.f64312f.f(this);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public Loader.c k(e eVar, long j11, long j12, IOException iOException, int i11) {
        Loader.c cVarG;
        long jA = eVar.a();
        boolean zX = x(eVar);
        int size = this.f64317k.size() - 1;
        boolean z10 = (jA != 0 && zX && w(size)) ? false : true;
        g2.i iVar = new g2.i(eVar.f64296a, eVar.f64297b, eVar.d(), eVar.c(), j11, j12, jA);
        androidx.media3.exoplayer.upstream.m.c cVar = new androidx.media3.exoplayer.upstream.m.c(iVar, new g2.j(eVar.f64298c, this.f64307a, eVar.f64299d, eVar.f64300e, eVar.f64301f, a1.y1(eVar.f64302g), a1.y1(eVar.f64303h)), iOException, i11);
        if (!this.f64311e.f(eVar, z10, cVar, this.f64314h)) {
            cVarG = null;
        } else if (z10) {
            cVarG = Loader.f12949f;
            if (zX) {
                androidx.media3.common.util.a.g(s(size) == eVar);
                if (this.f64317k.isEmpty()) {
                    this.f64325s = this.f64326t;
                }
            }
        } else {
            androidx.media3.common.util.u.h("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
            cVarG = null;
        }
        if (cVarG == null) {
            long jC = this.f64314h.c(cVar);
            cVarG = jC != C.TIME_UNSET ? Loader.g(false, jC) : Loader.f12950g;
        }
        boolean zC = cVarG.c();
        this.f64313g.y(iVar, eVar.f64298c, this.f64307a, eVar.f64299d, eVar.f64300e, eVar.f64301f, eVar.f64302g, eVar.f64303h, iOException, !zC);
        if (!zC) {
            this.f64322p = null;
            this.f64314h.b(eVar.f64296a);
            this.f64312f.f(this);
        }
        return cVarG;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public void o(e eVar, long j11, long j12, int i11) {
        this.f64313g.C(i11 == 0 ? new g2.i(eVar.f64296a, eVar.f64297b, j11) : new g2.i(eVar.f64296a, eVar.f64297b, eVar.d(), eVar.c(), j11, j12, eVar.a()), eVar.f64298c, this.f64307a, eVar.f64299d, eVar.f64300e, eVar.f64301f, eVar.f64302g, eVar.f64303h, i11);
    }

    public void G(b bVar) {
        this.f64324r = bVar;
        this.f64319m.U();
        for (e0 e0Var : this.f64320n) {
            e0Var.U();
        }
        this.f64315i.l(this);
    }

    public void I(long j11) {
        h2.a aVar;
        boolean zC0;
        this.f64326t = j11;
        int i11 = 0;
        this.f64329w = false;
        if (y()) {
            this.f64325s = j11;
            return;
        }
        int i12 = 0;
        while (true) {
            if (i12 < this.f64317k.size()) {
                aVar = (h2.a) this.f64317k.get(i12);
                long j12 = aVar.f64302g;
                if (j12 == j11 && aVar.f64266k == C.TIME_UNSET) {
                    break;
                } else if (j12 <= j11) {
                    i12++;
                }
            }
            aVar = null;
            break;
        }
        if (aVar != null) {
            zC0 = this.f64319m.b0(aVar.g(0));
        } else {
            zC0 = this.f64319m.c0(j11, j11 < getNextLoadPositionUs());
        }
        if (zC0) {
            this.f64327u = F(this.f64319m.F(), 0);
            e0[] e0VarArr = this.f64320n;
            int length = e0VarArr.length;
            while (i11 < length) {
                e0VarArr[i11].c0(j11, true);
                i11++;
            }
            return;
        }
        this.f64325s = j11;
        this.f64331y = false;
        this.f64317k.clear();
        this.f64327u = 0;
        if (!this.f64315i.i()) {
            this.f64315i.f();
            H();
            return;
        }
        this.f64319m.s();
        e0[] e0VarArr2 = this.f64320n;
        int length2 = e0VarArr2.length;
        while (i11 < length2) {
            e0VarArr2[i11].s();
            i11++;
        }
        this.f64315i.e();
    }

    public a J(long j11, int i11) {
        for (int i12 = 0; i12 < this.f64320n.length; i12++) {
            if (this.f64308b[i12] == i11) {
                androidx.media3.common.util.a.g(!this.f64310d[i12]);
                this.f64310d[i12] = true;
                this.f64320n[i12].c0(j11, true);
                return new a(this, this.f64320n[i12], i12);
            }
        }
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.source.f0
    public boolean a(v2 v2Var) {
        List listEmptyList;
        long j11;
        if (this.f64331y || this.f64315i.i() || this.f64315i.h()) {
            return false;
        }
        boolean zY = y();
        if (zY) {
            listEmptyList = Collections.emptyList();
            j11 = this.f64325s;
        } else {
            listEmptyList = this.f64318l;
            j11 = v().f64303h;
        }
        this.f64311e.c(v2Var, j11, listEmptyList, this.f64316j);
        g gVar = this.f64316j;
        boolean z10 = gVar.f64306b;
        e eVar = gVar.f64305a;
        gVar.a();
        if (z10) {
            this.f64325s = C.TIME_UNSET;
            this.f64331y = true;
            return true;
        }
        if (eVar == null) {
            return false;
        }
        this.f64322p = eVar;
        if (x(eVar)) {
            h2.a aVar = (h2.a) eVar;
            if (zY) {
                long j12 = aVar.f64302g;
                long j13 = this.f64325s;
                if (j12 < j13) {
                    this.f64319m.e0(j13);
                    for (e0 e0Var : this.f64320n) {
                        e0Var.e0(this.f64325s);
                    }
                    if (this.f64329w) {
                        r rVar = aVar.f64299d;
                        this.f64330x = !y.a(rVar.f10161o, rVar.f10157k);
                    }
                }
                this.f64329w = false;
                this.f64325s = C.TIME_UNSET;
            }
            aVar.i(this.f64321o);
            this.f64317k.add(aVar);
        } else if (eVar instanceof l) {
            ((l) eVar).e(this.f64321o);
        }
        this.f64315i.m(eVar, this, this.f64314h.a(eVar.f64298c));
        return true;
    }

    public long b(long j11, c4 c4Var) {
        return this.f64311e.b(j11, c4Var);
    }

    @Override // g2.u
    public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        if (y()) {
            return -3;
        }
        h2.a aVar = this.f64328v;
        if (aVar != null && aVar.g(0) <= this.f64319m.F()) {
            return -3;
        }
        z();
        return this.f64319m.V(s2Var, decoderInputBuffer, i11, this.f64331y);
    }

    public void discardBuffer(long j11, boolean z10) {
        if (y()) {
            return;
        }
        int iA = this.f64319m.A();
        this.f64319m.r(j11, z10, true);
        int iA2 = this.f64319m.A();
        if (iA2 > iA) {
            long jB = this.f64319m.B();
            int i11 = 0;
            while (true) {
                e0[] e0VarArr = this.f64320n;
                if (i11 >= e0VarArr.length) {
                    break;
                }
                e0VarArr[i11].r(jB, z10, this.f64310d[i11]);
                i11++;
            }
        }
        n(iA2);
    }

    @Override // androidx.media3.exoplayer.source.f0
    public long getBufferedPositionUs() {
        if (this.f64331y) {
            return Long.MIN_VALUE;
        }
        if (y()) {
            return this.f64325s;
        }
        long jMax = this.f64326t;
        h2.a aVarV = v();
        if (!aVarV.f()) {
            if (this.f64317k.size() > 1) {
                ArrayList arrayList = this.f64317k;
                aVarV = (h2.a) arrayList.get(arrayList.size() - 2);
            } else {
                aVarV = null;
            }
        }
        if (aVarV != null) {
            jMax = Math.max(jMax, aVarV.f64303h);
        }
        return Math.max(jMax, this.f64319m.C());
    }

    @Override // androidx.media3.exoplayer.source.f0
    public long getNextLoadPositionUs() {
        if (y()) {
            return this.f64325s;
        }
        if (this.f64331y) {
            return Long.MIN_VALUE;
        }
        return v().f64303h;
    }

    @Override // androidx.media3.exoplayer.source.f0
    public boolean isLoading() {
        return this.f64315i.i();
    }

    @Override // g2.u
    public boolean isReady() {
        return !y() && this.f64319m.N(this.f64331y);
    }

    public boolean m() {
        try {
            return this.f64330x;
        } finally {
            this.f64330x = false;
        }
    }

    @Override // g2.u
    public void maybeThrowError() throws IOException {
        this.f64315i.maybeThrowError();
        this.f64319m.Q();
        if (this.f64315i.i()) {
            return;
        }
        this.f64311e.maybeThrowError();
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.e
    public void onLoaderReleased() {
        this.f64319m.W();
        for (e0 e0Var : this.f64320n) {
            e0Var.W();
        }
        this.f64311e.release();
        b bVar = this.f64324r;
        if (bVar != null) {
            bVar.h(this);
        }
    }

    @Override // androidx.media3.exoplayer.source.f0
    public void reevaluateBuffer(long j11) {
        if (this.f64315i.h() || y()) {
            return;
        }
        if (!this.f64315i.i()) {
            int preferredQueueSize = this.f64311e.getPreferredQueueSize(j11, this.f64318l);
            if (preferredQueueSize < this.f64317k.size()) {
                r(preferredQueueSize);
                return;
            }
            return;
        }
        e eVar = (e) androidx.media3.common.util.a.e(this.f64322p);
        if (!(x(eVar) && w(this.f64317k.size() - 1)) && this.f64311e.d(j11, eVar, this.f64318l)) {
            this.f64315i.e();
            if (x(eVar)) {
                this.f64328v = (h2.a) eVar;
            }
        }
    }

    @Override // g2.u
    public int skipData(long j11) {
        if (y()) {
            return 0;
        }
        int iH = this.f64319m.H(j11, this.f64331y);
        h2.a aVar = this.f64328v;
        if (aVar != null) {
            iH = Math.min(iH, aVar.g(0) - this.f64319m.F());
        }
        this.f64319m.h0(iH);
        z();
        return iH;
    }

    public void t(long j11) {
        androidx.media3.common.util.a.g(!this.f64315i.i());
        if (y() || j11 == C.TIME_UNSET || this.f64317k.isEmpty()) {
            return;
        }
        h2.a aVarV = v();
        long j12 = aVarV.f64267l;
        if (j12 == C.TIME_UNSET) {
            j12 = aVarV.f64303h;
        }
        if (j12 <= j11) {
            return;
        }
        long jC = this.f64319m.C();
        if (jC <= j11) {
            return;
        }
        this.f64319m.u(j11);
        for (e0 e0Var : this.f64320n) {
            e0Var.u(j11);
        }
        this.f64313g.F(this.f64307a, j11, jC);
    }

    public i u() {
        return this.f64311e;
    }

    boolean y() {
        return this.f64325s != C.TIME_UNSET;
    }
}
