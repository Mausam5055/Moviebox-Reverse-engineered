package v9;

import android.util.SparseArray;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.w;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import e9.u1;
import g9.a0;
import g9.b0;
import g9.d0;
import g9.e0;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class e implements g9.n, g {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final g.a f77114j = new g.a() { // from class: v9.d
        @Override // v9.g.a
        public final g a(int i11, o1 o1Var, boolean z10, List list, e0 e0Var, u1 u1Var) {
            return e.g(i11, o1Var, z10, list, e0Var, u1Var);
        }
    };

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final a0 f77115k = new a0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g9.l f77116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f77117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final o1 f77118c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseArray f77119d = new SparseArray();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f77120e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private g.b f77121f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f77122g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private b0 f77123h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private o1[] f77124i;

    private static final class a implements e0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f77125a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f77126b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final o1 f77127c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final g9.k f77128d = new g9.k();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public o1 f77129e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private e0 f77130f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f77131g;

        public a(int i11, int i12, o1 o1Var) {
            this.f77125a = i11;
            this.f77126b = i12;
            this.f77127c = o1Var;
        }

        @Override // g9.e0
        public int a(com.google.android.exoplayer2.upstream.g gVar, int i11, boolean z10, int i12) {
            return ((e0) p0.j(this.f77130f)).b(gVar, i11, z10);
        }

        @Override // g9.e0
        public /* synthetic */ int b(com.google.android.exoplayer2.upstream.g gVar, int i11, boolean z10) {
            return d0.a(this, gVar, i11, z10);
        }

        @Override // g9.e0
        public /* synthetic */ void c(com.google.android.exoplayer2.util.d0 d0Var, int i11) {
            d0.b(this, d0Var, i11);
        }

        @Override // g9.e0
        public void d(long j11, int i11, int i12, int i13, e0.a aVar) {
            long j12 = this.f77131g;
            if (j12 != C.TIME_UNSET && j11 >= j12) {
                this.f77130f = this.f77128d;
            }
            ((e0) p0.j(this.f77130f)).d(j11, i11, i12, i13, aVar);
        }

        @Override // g9.e0
        public void e(o1 o1Var) {
            o1 o1Var2 = this.f77127c;
            if (o1Var2 != null) {
                o1Var = o1Var.j(o1Var2);
            }
            this.f77129e = o1Var;
            ((e0) p0.j(this.f77130f)).e(this.f77129e);
        }

        @Override // g9.e0
        public void f(com.google.android.exoplayer2.util.d0 d0Var, int i11, int i12) {
            ((e0) p0.j(this.f77130f)).c(d0Var, i11);
        }

        public void g(g.b bVar, long j11) {
            if (bVar == null) {
                this.f77130f = this.f77128d;
                return;
            }
            this.f77131g = j11;
            e0 e0VarTrack = bVar.track(this.f77125a, this.f77126b);
            this.f77130f = e0VarTrack;
            o1 o1Var = this.f77129e;
            if (o1Var != null) {
                e0VarTrack.e(o1Var);
            }
        }
    }

    public e(g9.l lVar, int i11, o1 o1Var) {
        this.f77116a = lVar;
        this.f77117b = i11;
        this.f77118c = o1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g g(int i11, o1 o1Var, boolean z10, List list, e0 e0Var, u1 u1Var) {
        g9.l gVar;
        String str = o1Var.f25495k;
        if (w.s(str)) {
            return null;
        }
        if (w.r(str)) {
            gVar = new m9.e(1);
        } else {
            gVar = new o9.g(z10 ? 4 : 0, null, null, list, e0Var);
        }
        return new e(gVar, i11, o1Var);
    }

    @Override // v9.g
    public boolean a(g9.m mVar) {
        int iC = this.f77116a.c(mVar, f77115k);
        com.google.android.exoplayer2.util.a.g(iC != 1);
        return iC == 0;
    }

    @Override // v9.g
    public g9.d b() {
        b0 b0Var = this.f77123h;
        if (b0Var instanceof g9.d) {
            return (g9.d) b0Var;
        }
        return null;
    }

    @Override // v9.g
    public o1[] c() {
        return this.f77124i;
    }

    @Override // g9.n
    public void d(b0 b0Var) {
        this.f77123h = b0Var;
    }

    @Override // v9.g
    public void e(g.b bVar, long j11, long j12) {
        this.f77121f = bVar;
        this.f77122g = j12;
        if (!this.f77120e) {
            this.f77116a.b(this);
            if (j11 != C.TIME_UNSET) {
                this.f77116a.seek(0L, j11);
            }
            this.f77120e = true;
            return;
        }
        g9.l lVar = this.f77116a;
        if (j11 == C.TIME_UNSET) {
            j11 = 0;
        }
        lVar.seek(0L, j11);
        for (int i11 = 0; i11 < this.f77119d.size(); i11++) {
            ((a) this.f77119d.valueAt(i11)).g(bVar, j12);
        }
    }

    @Override // g9.n
    public void endTracks() {
        o1[] o1VarArr = new o1[this.f77119d.size()];
        for (int i11 = 0; i11 < this.f77119d.size(); i11++) {
            o1VarArr[i11] = (o1) com.google.android.exoplayer2.util.a.i(((a) this.f77119d.valueAt(i11)).f77129e);
        }
        this.f77124i = o1VarArr;
    }

    @Override // v9.g
    public void release() {
        this.f77116a.release();
    }

    @Override // g9.n
    public e0 track(int i11, int i12) {
        a aVar = (a) this.f77119d.get(i11);
        if (aVar == null) {
            com.google.android.exoplayer2.util.a.g(this.f77124i == null);
            aVar = new a(i11, i12, i12 == this.f77117b ? this.f77118c : null);
            aVar.g(this.f77121f, this.f77122g);
            this.f77119d.put(i11, aVar);
        }
        return aVar;
    }
}
