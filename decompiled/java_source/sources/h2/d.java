package h2;

import android.util.SparseArray;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.y;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i3.s;
import java.util.List;
import java.util.Objects;
import l2.l0;
import l2.m0;
import l2.r;
import l2.r0;
import l2.s0;
import l2.t;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements t, f {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final b f64275j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final l0 f64276k = new l0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f64277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f64278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.common.r f64279c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseArray f64280d = new SparseArray();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f64281e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private f.b f64282f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f64283g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private m0 f64284h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private androidx.media3.common.r[] f64285i;

    private static final class a implements s0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f64286a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f64287b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final androidx.media3.common.r f64288c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final l2.n f64289d = new l2.n();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public androidx.media3.common.r f64290e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private s0 f64291f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f64292g;

        public a(int i11, int i12, androidx.media3.common.r rVar) {
            this.f64286a = i11;
            this.f64287b = i12;
            this.f64288c = rVar;
        }

        @Override // l2.s0
        public void a(j0 j0Var, int i11, int i12) {
            ((s0) a1.i(this.f64291f)).b(j0Var, i11);
        }

        @Override // l2.s0
        public /* synthetic */ void b(j0 j0Var, int i11) {
            r0.c(this, j0Var, i11);
        }

        @Override // l2.s0
        public void c(androidx.media3.common.r rVar) {
            androidx.media3.common.r rVar2 = this.f64288c;
            if (rVar2 != null) {
                rVar = rVar.j(rVar2);
            }
            this.f64290e = rVar;
            ((s0) a1.i(this.f64291f)).c(this.f64290e);
        }

        @Override // l2.s0
        public void d(long j11, int i11, int i12, int i13, s0.a aVar) {
            long j12 = this.f64292g;
            if (j12 != C.TIME_UNSET && j11 >= j12) {
                this.f64291f = this.f64289d;
            }
            ((s0) a1.i(this.f64291f)).d(j11, i11, i12, i13, aVar);
        }

        @Override // l2.s0
        public /* synthetic */ int e(androidx.media3.common.j jVar, int i11, boolean z10) {
            return r0.b(this, jVar, i11, z10);
        }

        @Override // l2.s0
        public /* synthetic */ void f(long j11) {
            r0.a(this, j11);
        }

        @Override // l2.s0
        public int g(androidx.media3.common.j jVar, int i11, boolean z10, int i12) {
            return ((s0) a1.i(this.f64291f)).e(jVar, i11, z10);
        }

        public void h(f.b bVar, long j11) {
            if (bVar == null) {
                this.f64291f = this.f64289d;
                return;
            }
            this.f64292g = j11;
            s0 s0VarTrack = bVar.track(this.f64286a, this.f64287b);
            this.f64291f = s0VarTrack;
            androidx.media3.common.r rVar = this.f64290e;
            if (rVar != null) {
                s0VarTrack.c(rVar);
            }
        }
    }

    public static final class b implements f.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private s.a f64293a = new i3.h();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f64294b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f64295c;

        @Override // h2.f.a
        public androidx.media3.common.r d(androidx.media3.common.r rVar) {
            String str;
            if (!this.f64294b || !this.f64293a.a(rVar)) {
                return rVar;
            }
            androidx.media3.common.r.b bVarW = rVar.b().u0("application/x-media3-cues").W(this.f64293a.b(rVar));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(rVar.f10161o);
            if (rVar.f10157k != null) {
                str = " " + rVar.f10157k;
            } else {
                str = "";
            }
            sb2.append(str);
            return bVarW.S(sb2.toString()).y0(Long.MAX_VALUE).N();
        }

        @Override // h2.f.a
        public f e(int i11, androidx.media3.common.r rVar, boolean z10, List list, s0 s0Var, f4 f4Var) {
            r hVar;
            String str = rVar.f10160n;
            if (!y.s(str)) {
                if (y.r(str)) {
                    hVar = new d3.e(this.f64293a, this.f64294b ? 1 : 3);
                } else if (Objects.equals(str, "image/jpeg")) {
                    hVar = new t2.a(1);
                } else if (Objects.equals(str, "image/png")) {
                    hVar = new h3.a();
                } else {
                    int i12 = z10 ? 4 : 0;
                    if (!this.f64294b) {
                        i12 |= 32;
                    }
                    hVar = new f3.h(this.f64293a, i12 | f3.h.j(this.f64295c), null, null, list, s0Var);
                }
            } else {
                if (!this.f64294b) {
                    return null;
                }
                hVar = new i3.n(this.f64293a.c(rVar), rVar);
            }
            return new d(hVar, i11, rVar);
        }

        @Override // h2.f.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public b c(boolean z10) {
            this.f64294b = z10;
            return this;
        }

        @Override // h2.f.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public b b(int i11) {
            this.f64295c = i11;
            return this;
        }

        @Override // h2.f.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public b a(s.a aVar) {
            this.f64293a = (s.a) androidx.media3.common.util.a.e(aVar);
            return this;
        }
    }

    public d(r rVar, int i11, androidx.media3.common.r rVar2) {
        this.f64277a = rVar;
        this.f64278b = i11;
        this.f64279c = rVar2;
    }

    @Override // h2.f
    public boolean a(l2.s sVar) {
        int iC = this.f64277a.c(sVar, f64276k);
        androidx.media3.common.util.a.g(iC != 1);
        return iC == 0;
    }

    @Override // h2.f
    public l2.h b() {
        m0 m0Var = this.f64284h;
        if (m0Var instanceof l2.h) {
            return (l2.h) m0Var;
        }
        return null;
    }

    @Override // h2.f
    public androidx.media3.common.r[] c() {
        return this.f64285i;
    }

    @Override // h2.f
    public void d(f.b bVar, long j11, long j12) {
        this.f64282f = bVar;
        this.f64283g = j12;
        if (!this.f64281e) {
            this.f64277a.b(this);
            if (j11 != C.TIME_UNSET) {
                this.f64277a.seek(0L, j11);
            }
            this.f64281e = true;
            return;
        }
        r rVar = this.f64277a;
        if (j11 == C.TIME_UNSET) {
            j11 = 0;
        }
        rVar.seek(0L, j11);
        for (int i11 = 0; i11 < this.f64280d.size(); i11++) {
            ((a) this.f64280d.valueAt(i11)).h(bVar, j12);
        }
    }

    @Override // l2.t
    public void endTracks() {
        androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[this.f64280d.size()];
        for (int i11 = 0; i11 < this.f64280d.size(); i11++) {
            rVarArr[i11] = (androidx.media3.common.r) androidx.media3.common.util.a.i(((a) this.f64280d.valueAt(i11)).f64290e);
        }
        this.f64285i = rVarArr;
    }

    @Override // l2.t
    public void f(m0 m0Var) {
        this.f64284h = m0Var;
    }

    @Override // h2.f
    public void release() {
        this.f64277a.release();
    }

    @Override // l2.t
    public s0 track(int i11, int i12) {
        a aVar = (a) this.f64280d.get(i11);
        if (aVar == null) {
            androidx.media3.common.util.a.g(this.f64285i == null);
            aVar = new a(i11, i12, i12 == this.f64278b ? this.f64279c : null);
            aVar.h(this.f64282f, this.f64283g);
            this.f64280d.put(i11, aVar);
        }
        return aVar;
    }
}
