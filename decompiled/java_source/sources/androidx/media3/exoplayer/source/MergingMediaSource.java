package androidx.media3.exoplayer.source;

import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.j3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class MergingMediaSource extends androidx.media3.exoplayer.source.c {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final androidx.media3.common.t f12609w = new androidx.media3.common.t.c().d("MergingMediaSource").a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f12610k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f12611l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final r[] f12612m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final List f12613n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final androidx.media3.common.e0[] f12614o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ArrayList f12615p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final g2.e f12616q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Map f12617r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final j3 f12618s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f12619t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long[][] f12620u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private IllegalMergeException f12621v;

    public static final class IllegalMergeException extends IOException {
        public static final int REASON_PERIOD_COUNT_MISMATCH = 0;
        public final int reason;

        public IllegalMergeException(int i11) {
            this.reason = i11;
        }
    }

    private static final class b extends m {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long[] f12622f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final long[] f12623g;

        public b(androidx.media3.common.e0 e0Var, Map map) {
            super(e0Var);
            int iP = e0Var.p();
            this.f12623g = new long[e0Var.p()];
            androidx.media3.common.e0.c cVar = new androidx.media3.common.e0.c();
            for (int i11 = 0; i11 < iP; i11++) {
                this.f12623g[i11] = e0Var.n(i11, cVar).f9963m;
            }
            int i12 = e0Var.i();
            this.f12622f = new long[i12];
            androidx.media3.common.e0.b bVar = new androidx.media3.common.e0.b();
            for (int i13 = 0; i13 < i12; i13++) {
                e0Var.g(i13, bVar, true);
                long jLongValue = ((Long) androidx.media3.common.util.a.e((Long) map.get(bVar.f9935b))).longValue();
                long[] jArr = this.f12622f;
                jLongValue = jLongValue == Long.MIN_VALUE ? bVar.f9937d : jLongValue;
                jArr[i13] = jLongValue;
                long j11 = bVar.f9937d;
                if (j11 != C.TIME_UNSET) {
                    long[] jArr2 = this.f12623g;
                    int i14 = bVar.f9936c;
                    jArr2[i14] = jArr2[i14] - (j11 - jLongValue);
                }
            }
        }

        @Override // androidx.media3.exoplayer.source.m, androidx.media3.common.e0
        public androidx.media3.common.e0.b g(int i11, androidx.media3.common.e0.b bVar, boolean z10) {
            super.g(i11, bVar, z10);
            bVar.f9937d = this.f12622f[i11];
            return bVar;
        }

        /* JADX WARN: Code duplicated, block: B:8:0x001e  */
        @Override // androidx.media3.exoplayer.source.m, androidx.media3.common.e0
        public androidx.media3.common.e0.c o(int i11, androidx.media3.common.e0.c cVar, long j11) {
            long jMin;
            super.o(i11, cVar, j11);
            long j12 = this.f12623g[i11];
            cVar.f9963m = j12;
            if (j12 != C.TIME_UNSET) {
                long j13 = cVar.f9962l;
                if (j13 == C.TIME_UNSET) {
                    jMin = cVar.f9962l;
                } else {
                    jMin = Math.min(j13, j12);
                }
            } else {
                jMin = cVar.f9962l;
            }
            cVar.f9962l = jMin;
            return cVar;
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final r.b f12624a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final q f12625b;

        private c(r.b bVar, q qVar) {
            this.f12624a = bVar;
            this.f12625b = qVar;
        }
    }

    public MergingMediaSource(boolean z10, boolean z11, g2.e eVar, r... rVarArr) {
        this.f12610k = z10;
        this.f12611l = z11;
        this.f12612m = rVarArr;
        this.f12616q = eVar;
        this.f12615p = new ArrayList(Arrays.asList(rVarArr));
        this.f12619t = -1;
        this.f12613n = new ArrayList(rVarArr.length);
        for (int i11 = 0; i11 < rVarArr.length; i11++) {
            this.f12613n.add(new ArrayList());
        }
        this.f12614o = new androidx.media3.common.e0[rVarArr.length];
        this.f12620u = new long[0][];
        this.f12617r = new HashMap();
        this.f12618s = MultimapBuilder.a().a().g();
    }

    public MergingMediaSource(boolean z10, boolean z11, r... rVarArr) {
        this(z10, z11, new g2.f(), rVarArr);
    }

    public MergingMediaSource(boolean z10, r... rVarArr) {
        this(z10, false, rVarArr);
    }

    public MergingMediaSource(r... rVarArr) {
        this(false, rVarArr);
    }

    private void J() {
        androidx.media3.common.e0.b bVar = new androidx.media3.common.e0.b();
        for (int i11 = 0; i11 < this.f12619t; i11++) {
            long j11 = -this.f12614o[0].f(i11, bVar).o();
            int i12 = 1;
            while (true) {
                androidx.media3.common.e0[] e0VarArr = this.f12614o;
                if (i12 < e0VarArr.length) {
                    this.f12620u[i11][i12] = j11 - (-e0VarArr[i12].f(i11, bVar).o());
                    i12++;
                }
            }
        }
    }

    private void M() {
        androidx.media3.common.e0[] e0VarArr;
        androidx.media3.common.e0.b bVar = new androidx.media3.common.e0.b();
        for (int i11 = 0; i11 < this.f12619t; i11++) {
            int i12 = 0;
            long j11 = Long.MIN_VALUE;
            while (true) {
                e0VarArr = this.f12614o;
                if (i12 >= e0VarArr.length) {
                    break;
                }
                long jK = e0VarArr[i12].f(i11, bVar).k();
                if (jK != C.TIME_UNSET) {
                    long j12 = jK + this.f12620u[i11][i12];
                    if (j11 == Long.MIN_VALUE || j12 < j11) {
                        j11 = j12;
                    }
                }
                i12++;
            }
            Object objM = e0VarArr[0].m(i11);
            this.f12617r.put(objM, Long.valueOf(j11));
            Iterator it = this.f12618s.get(objM).iterator();
            while (it.hasNext()) {
                ((androidx.media3.exoplayer.source.b) it.next()).n(0L, j11);
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.c, androidx.media3.exoplayer.source.a
    protected void B() {
        super.B();
        Arrays.fill(this.f12614o, (Object) null);
        this.f12619t = -1;
        this.f12621v = null;
        this.f12615p.clear();
        Collections.addAll(this.f12615p, this.f12612m);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.c
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public r.b D(Integer num, r.b bVar) {
        List list = (List) this.f12613n.get(num.intValue());
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (((c) list.get(i11)).f12624a.equals(bVar)) {
                return ((c) ((List) this.f12613n.get(0)).get(i11)).f12624a;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.c
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public void G(Integer num, r rVar, androidx.media3.common.e0 e0Var) {
        if (this.f12621v != null) {
            return;
        }
        if (this.f12619t == -1) {
            this.f12619t = e0Var.i();
        } else if (e0Var.i() != this.f12619t) {
            this.f12621v = new IllegalMergeException(0);
            return;
        }
        if (this.f12620u.length == 0) {
            this.f12620u = (long[][]) Array.newInstance((Class<?>) Long.TYPE, this.f12619t, this.f12614o.length);
        }
        this.f12615p.remove(rVar);
        this.f12614o[num.intValue()] = e0Var;
        if (this.f12615p.isEmpty()) {
            if (this.f12610k) {
                J();
            }
            androidx.media3.common.e0 bVar = this.f12614o[0];
            if (this.f12611l) {
                M();
                bVar = new b(bVar, this.f12617r);
            }
            A(bVar);
        }
    }

    @Override // androidx.media3.exoplayer.source.r
    public androidx.media3.common.t a() {
        r[] rVarArr = this.f12612m;
        return rVarArr.length > 0 ? rVarArr[0].a() : f12609w;
    }

    @Override // androidx.media3.exoplayer.source.r
    public q g(r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j11) {
        int length = this.f12612m.length;
        q[] qVarArr = new q[length];
        int iB = this.f12614o[0].b(bVar.f12883a);
        for (int i11 = 0; i11 < length; i11++) {
            r.b bVarA = bVar.a(this.f12614o[i11].m(iB));
            qVarArr[i11] = this.f12612m[i11].g(bVarA, bVar2, j11 - this.f12620u[iB][i11]);
            ((List) this.f12613n.get(i11)).add(new c(bVarA, qVarArr[i11]));
        }
        u uVar = new u(this.f12616q, this.f12620u[iB], qVarArr);
        if (!this.f12611l) {
            return uVar;
        }
        androidx.media3.exoplayer.source.b bVar3 = new androidx.media3.exoplayer.source.b(uVar, false, 0L, ((Long) androidx.media3.common.util.a.e((Long) this.f12617r.get(bVar.f12883a))).longValue());
        this.f12618s.put(bVar.f12883a, bVar3);
        return bVar3;
    }

    @Override // androidx.media3.exoplayer.source.r
    public void j(q qVar) {
        if (this.f12611l) {
            androidx.media3.exoplayer.source.b bVar = (androidx.media3.exoplayer.source.b) qVar;
            for (Map.Entry entry : this.f12618s.entries()) {
                if (((androidx.media3.exoplayer.source.b) entry.getValue()).equals(bVar)) {
                    this.f12618s.remove(entry.getKey(), entry.getValue());
                    break;
                }
            }
            qVar = bVar.f12682a;
        }
        u uVar = (u) qVar;
        for (int i11 = 0; i11 < this.f12612m.length; i11++) {
            List list = (List) this.f12613n.get(i11);
            for (int i12 = 0; i12 < list.size(); i12++) {
                if (((c) list.get(i12)).f12625b.equals(qVar)) {
                    list.remove(i12);
                    break;
                }
            }
            this.f12612m[i11].j(uVar.i(i11));
        }
    }

    @Override // androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.r
    public void l(androidx.media3.common.t tVar) {
        this.f12612m[0].l(tVar);
    }

    @Override // androidx.media3.exoplayer.source.c, androidx.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() throws IllegalMergeException {
        IllegalMergeException illegalMergeException = this.f12621v;
        if (illegalMergeException != null) {
            throw illegalMergeException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    @Override // androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.r
    public boolean q(androidx.media3.common.t tVar) {
        r[] rVarArr = this.f12612m;
        return rVarArr.length > 0 && rVarArr[0].q(tVar);
    }

    @Override // androidx.media3.exoplayer.source.c, androidx.media3.exoplayer.source.a
    protected void z(w1.n nVar) {
        super.z(nVar);
        for (int i11 = 0; i11 < this.f12612m.length; i11++) {
            I(Integer.valueOf(i11), this.f12612m[i11]);
        }
    }
}
