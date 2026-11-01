package y1;

import android.os.Looper;
import android.util.SparseArray;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.PointerIconCompat;
import androidx.media3.common.PlaybackException;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.audio.AudioSink;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class s1 implements y1.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.common.util.i f78740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.e0.b f78741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.common.e0.c f78742c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f78743d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SparseArray f78744e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.media3.common.util.t f78745f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private androidx.media3.common.a0 f78746g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private androidx.media3.common.util.p f78747h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f78748i;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.media3.common.e0.b f78749a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ImmutableList f78750b = ImmutableList.of();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ImmutableMap f78751c = ImmutableMap.of();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.media3.exoplayer.source.r.b f78752d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private androidx.media3.exoplayer.source.r.b f78753e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private androidx.media3.exoplayer.source.r.b f78754f;

        public a(androidx.media3.common.e0.b bVar) {
            this.f78749a = bVar;
        }

        private void b(ImmutableMap.b bVar, androidx.media3.exoplayer.source.r.b bVar2, androidx.media3.common.e0 e0Var) {
            if (bVar2 == null) {
                return;
            }
            if (e0Var.b(bVar2.f12883a) != -1) {
                bVar.h(bVar2, e0Var);
                return;
            }
            androidx.media3.common.e0 e0Var2 = (androidx.media3.common.e0) this.f78751c.get(bVar2);
            if (e0Var2 != null) {
                bVar.h(bVar2, e0Var2);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static androidx.media3.exoplayer.source.r.b c(androidx.media3.common.a0 a0Var, ImmutableList immutableList, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.e0.b bVar2) {
            androidx.media3.common.e0 currentTimeline = a0Var.getCurrentTimeline();
            int currentPeriodIndex = a0Var.getCurrentPeriodIndex();
            Object objM = currentTimeline.q() ? null : currentTimeline.m(currentPeriodIndex);
            int iD = (a0Var.isPlayingAd() || currentTimeline.q()) ? -1 : currentTimeline.f(currentPeriodIndex, bVar2).d(androidx.media3.common.util.a1.R0(a0Var.getCurrentPosition()) - bVar2.o());
            for (int i11 = 0; i11 < immutableList.size(); i11++) {
                androidx.media3.exoplayer.source.r.b bVar3 = (androidx.media3.exoplayer.source.r.b) immutableList.get(i11);
                if (i(bVar3, objM, a0Var.isPlayingAd(), a0Var.getCurrentAdGroupIndex(), a0Var.getCurrentAdIndexInAdGroup(), iD)) {
                    return bVar3;
                }
            }
            if (immutableList.isEmpty() && bVar != null) {
                if (i(bVar, objM, a0Var.isPlayingAd(), a0Var.getCurrentAdGroupIndex(), a0Var.getCurrentAdIndexInAdGroup(), iD)) {
                    return bVar;
                }
            }
            return null;
        }

        private static boolean i(androidx.media3.exoplayer.source.r.b bVar, Object obj, boolean z10, int i11, int i12, int i13) {
            if (bVar.f12883a.equals(obj)) {
                return (z10 && bVar.f12884b == i11 && bVar.f12885c == i12) || (!z10 && bVar.f12884b == -1 && bVar.f12887e == i13);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void m(androidx.media3.common.e0 e0Var) {
            ImmutableMap.b bVarBuilder = ImmutableMap.builder();
            if (this.f78750b.isEmpty()) {
                b(bVarBuilder, this.f78753e, e0Var);
                if (!Objects.equals(this.f78754f, this.f78753e)) {
                    b(bVarBuilder, this.f78754f, e0Var);
                }
                if (!Objects.equals(this.f78752d, this.f78753e) && !Objects.equals(this.f78752d, this.f78754f)) {
                    b(bVarBuilder, this.f78752d, e0Var);
                }
            } else {
                for (int i11 = 0; i11 < this.f78750b.size(); i11++) {
                    b(bVarBuilder, (androidx.media3.exoplayer.source.r.b) this.f78750b.get(i11), e0Var);
                }
                if (!this.f78750b.contains(this.f78752d)) {
                    b(bVarBuilder, this.f78752d, e0Var);
                }
            }
            this.f78751c = bVarBuilder.d();
        }

        public androidx.media3.exoplayer.source.r.b d() {
            return this.f78752d;
        }

        public androidx.media3.exoplayer.source.r.b e() {
            if (this.f78750b.isEmpty()) {
                return null;
            }
            return (androidx.media3.exoplayer.source.r.b) com.google.common.collect.g3.g(this.f78750b);
        }

        public androidx.media3.common.e0 f(androidx.media3.exoplayer.source.r.b bVar) {
            return (androidx.media3.common.e0) this.f78751c.get(bVar);
        }

        public androidx.media3.exoplayer.source.r.b g() {
            return this.f78753e;
        }

        public androidx.media3.exoplayer.source.r.b h() {
            return this.f78754f;
        }

        public void j(androidx.media3.common.a0 a0Var) {
            this.f78752d = c(a0Var, this.f78750b, this.f78753e, this.f78749a);
        }

        public void k(List list, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.a0 a0Var) {
            this.f78750b = ImmutableList.copyOf((Collection) list);
            if (!list.isEmpty()) {
                this.f78753e = (androidx.media3.exoplayer.source.r.b) list.get(0);
                this.f78754f = (androidx.media3.exoplayer.source.r.b) androidx.media3.common.util.a.e(bVar);
            }
            if (this.f78752d == null) {
                this.f78752d = c(a0Var, this.f78750b, this.f78753e, this.f78749a);
            }
            m(a0Var.getCurrentTimeline());
        }

        public void l(androidx.media3.common.a0 a0Var) {
            this.f78752d = c(a0Var, this.f78750b, this.f78753e, this.f78749a);
            m(a0Var.getCurrentTimeline());
        }
    }

    public s1(androidx.media3.common.util.i iVar) {
        this.f78740a = (androidx.media3.common.util.i) androidx.media3.common.util.a.e(iVar);
        this.f78745f = new androidx.media3.common.util.t(androidx.media3.common.util.a1.X(), iVar, new androidx.media3.common.util.t.b() { // from class: y1.u
            @Override // androidx.media3.common.util.t.b
            public final void a(Object obj, androidx.media3.common.p pVar) {
                s1.f1((c) obj, pVar);
            }
        });
        androidx.media3.common.e0.b bVar = new androidx.media3.common.e0.b();
        this.f78741b = bVar;
        this.f78742c = new androidx.media3.common.e0.c();
        this.f78743d = new a(bVar);
        this.f78744e = new SparseArray();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void D1(c.a aVar, int i11, c cVar) {
        cVar.A(aVar);
        cVar.U(aVar, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void H1(c.a aVar, boolean z10, c cVar) {
        cVar.M(aVar, z10);
        cVar.g(aVar, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void M1(c.a aVar, g2.i iVar, g2.j jVar, int i11, c cVar) {
        cVar.I(aVar, iVar, jVar);
        cVar.k0(aVar, iVar, jVar, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void X1(c.a aVar, int i11, androidx.media3.common.a0.e eVar, androidx.media3.common.a0.e eVar2, c cVar) {
        cVar.d(aVar, i11);
        cVar.F(aVar, eVar, eVar2, i11);
    }

    private c.a Z0(androidx.media3.exoplayer.source.r.b bVar) {
        androidx.media3.common.util.a.e(this.f78746g);
        androidx.media3.common.e0 e0VarF = bVar == null ? null : this.f78743d.f(bVar);
        if (bVar != null && e0VarF != null) {
            return Y0(e0VarF, e0VarF.h(bVar.f12883a, this.f78741b).f9936c, bVar);
        }
        int iT = this.f78746g.t();
        androidx.media3.common.e0 currentTimeline = this.f78746g.getCurrentTimeline();
        if (iT >= currentTimeline.p()) {
            currentTimeline = androidx.media3.common.e0.f9925a;
        }
        return Y0(currentTimeline, iT, null);
    }

    private c.a a1() {
        return Z0(this.f78743d.e());
    }

    private c.a b1(int i11, androidx.media3.exoplayer.source.r.b bVar) {
        androidx.media3.common.util.a.e(this.f78746g);
        if (bVar != null) {
            return this.f78743d.f(bVar) != null ? Z0(bVar) : Y0(androidx.media3.common.e0.f9925a, i11, bVar);
        }
        androidx.media3.common.e0 currentTimeline = this.f78746g.getCurrentTimeline();
        if (i11 >= currentTimeline.p()) {
            currentTimeline = androidx.media3.common.e0.f9925a;
        }
        return Y0(currentTimeline, i11, null);
    }

    private c.a c1() {
        return Z0(this.f78743d.g());
    }

    private c.a d1() {
        return Z0(this.f78743d.h());
    }

    private c.a e1(PlaybackException playbackException) {
        androidx.media3.exoplayer.source.r.b bVar;
        return (!(playbackException instanceof ExoPlaybackException) || (bVar = ((ExoPlaybackException) playbackException).mediaPeriodId) == null) ? X0() : Z0(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f1(c cVar, androidx.media3.common.p pVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i1(c.a aVar, String str, long j11, long j12, c cVar) {
        cVar.W(aVar, str, j11);
        cVar.R(aVar, str, j12, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j2(c.a aVar, String str, long j11, long j12, c cVar) {
        cVar.w(aVar, str, j11);
        cVar.q(aVar, str, j12, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void p2(c.a aVar, androidx.media3.common.m0 m0Var, c cVar) {
        cVar.S(aVar, m0Var);
        cVar.f0(aVar, m0Var.f10115a, m0Var.f10116b, 0, m0Var.f10118d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s2(androidx.media3.common.a0 a0Var, c cVar, androidx.media3.common.p pVar) {
        cVar.d0(a0Var, new c.b(pVar, this.f78744e));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t2() {
        final c.a aVarX0 = X0();
        u2(aVarX0, 1028, new androidx.media3.common.util.t.a() { // from class: y1.m0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).q0(aVarX0);
            }
        });
        this.f78745f.j();
    }

    @Override // androidx.media3.exoplayer.drm.r
    public final void A(int i11, androidx.media3.exoplayer.source.r.b bVar) {
        final c.a aVarB1 = b1(i11, bVar);
        u2(aVarB1, InputDeviceCompat.SOURCE_GAMEPAD, new androidx.media3.common.util.t.a() { // from class: y1.j1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).k(aVarB1);
            }
        });
    }

    @Override // y1.a
    public void B(final int i11, final int i12, final boolean z10) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 1033, new androidx.media3.common.util.t.a() { // from class: y1.s
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).f(aVarD1, i11, i12, z10);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.s
    public final void C(int i11, androidx.media3.exoplayer.source.r.b bVar, final g2.i iVar, final g2.j jVar) {
        final c.a aVarB1 = b1(i11, bVar);
        u2(aVarB1, 1001, new androidx.media3.common.util.t.a() { // from class: y1.y
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).x0(aVarB1, iVar, jVar);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.s
    public final void D(int i11, androidx.media3.exoplayer.source.r.b bVar, final g2.j jVar) {
        final c.a aVarB1 = b1(i11, bVar);
        u2(aVarB1, 1005, new androidx.media3.common.util.t.a() { // from class: y1.d1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).v0(aVarB1, jVar);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.s
    public final void E(int i11, androidx.media3.exoplayer.source.r.b bVar, final g2.j jVar) {
        final c.a aVarB1 = b1(i11, bVar);
        u2(aVarB1, 1004, new androidx.media3.common.util.t.a() { // from class: y1.j0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).j(aVarB1, jVar);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.s
    public final void F(int i11, androidx.media3.exoplayer.source.r.b bVar, final g2.i iVar, final g2.j jVar, final int i12) {
        final c.a aVarB1 = b1(i11, bVar);
        u2(aVarB1, 1000, new androidx.media3.common.util.t.a() { // from class: y1.v0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                s1.M1(aVarB1, iVar, jVar, i12, (c) obj);
            }
        });
    }

    @Override // androidx.media3.exoplayer.drm.r
    public final void G(int i11, androidx.media3.exoplayer.source.r.b bVar) {
        final c.a aVarB1 = b1(i11, bVar);
        u2(aVarB1, 1027, new androidx.media3.common.util.t.a() { // from class: y1.e1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).Q(aVarB1);
            }
        });
    }

    @Override // y1.a
    public void H(final androidx.media3.common.a0 a0Var, Looper looper) {
        androidx.media3.common.util.a.g(this.f78746g == null || this.f78743d.f78750b.isEmpty());
        this.f78746g = (androidx.media3.common.a0) androidx.media3.common.util.a.e(a0Var);
        this.f78747h = this.f78740a.createHandler(looper, null);
        this.f78745f = this.f78745f.e(looper, new androidx.media3.common.util.t.b() { // from class: y1.i
            @Override // androidx.media3.common.util.t.b
            public final void a(Object obj, androidx.media3.common.p pVar) {
                this.f78669a.s2(a0Var, (c) obj, pVar);
            }
        });
    }

    protected final c.a X0() {
        return Z0(this.f78743d.d());
    }

    protected final c.a Y0(androidx.media3.common.e0 e0Var, int i11, androidx.media3.exoplayer.source.r.b bVar) {
        androidx.media3.exoplayer.source.r.b bVar2 = e0Var.q() ? null : bVar;
        long jElapsedRealtime = this.f78740a.elapsedRealtime();
        boolean z10 = e0Var.equals(this.f78746g.getCurrentTimeline()) && i11 == this.f78746g.t();
        long jB = 0;
        if (bVar2 == null || !bVar2.b()) {
            if (z10) {
                jB = this.f78746g.getContentPosition();
            } else if (!e0Var.q()) {
                jB = e0Var.n(i11, this.f78742c).b();
            }
        } else if (z10 && this.f78746g.getCurrentAdGroupIndex() == bVar2.f12884b && this.f78746g.getCurrentAdIndexInAdGroup() == bVar2.f12885c) {
            jB = this.f78746g.getCurrentPosition();
        }
        return new c.a(jElapsedRealtime, e0Var, i11, bVar2, jB, this.f78746g.getCurrentTimeline(), this.f78746g.t(), this.f78743d.d(), this.f78746g.getCurrentPosition(), this.f78746g.d());
    }

    @Override // y1.a
    public final void a(final Exception exc) {
        final c.a aVarD1 = d1();
        u2(aVarD1, PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW, new androidx.media3.common.util.t.a() { // from class: y1.f1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).n0(aVarD1, exc);
            }
        });
    }

    @Override // y1.a
    public final void b(final String str) {
        final c.a aVarD1 = d1();
        u2(aVarD1, PointerIconCompat.TYPE_ZOOM_OUT, new androidx.media3.common.util.t.a() { // from class: y1.p
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).Z(aVarD1, str);
            }
        });
    }

    @Override // y1.a
    public final void c(final String str) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 1012, new androidx.media3.common.util.t.a() { // from class: y1.p1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).a0(aVarD1, str);
            }
        });
    }

    @Override // y1.a
    public final void d(final long j11) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 1010, new androidx.media3.common.util.t.a() { // from class: y1.o0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).j0(aVarD1, j11);
            }
        });
    }

    @Override // y1.a
    public final void e(final Exception exc) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 1030, new androidx.media3.common.util.t.a() { // from class: y1.g
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).h0(aVarD1, exc);
            }
        });
    }

    @Override // y1.a
    public final void f(final Object obj, final long j11) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 26, new androidx.media3.common.util.t.a() { // from class: y1.c1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj2) {
                ((c) obj2).G(aVarD1, obj, j11);
            }
        });
    }

    @Override // y1.a
    public final void g(final Exception exc) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 1029, new androidx.media3.common.util.t.a() { // from class: y1.e0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).o(aVarD1, exc);
            }
        });
    }

    @Override // y1.a
    public final void h(final int i11, final long j11, final long j12) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 1011, new androidx.media3.common.util.t.a() { // from class: y1.h1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).N(aVarD1, i11, j11, j12);
            }
        });
    }

    @Override // y1.a
    public final void i(final long j11, final int i11) {
        final c.a aVarC1 = c1();
        u2(aVarC1, PointerIconCompat.TYPE_GRABBING, new androidx.media3.common.util.t.a() { // from class: y1.r0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).T(aVarC1, j11, i11);
            }
        });
    }

    @Override // y1.a
    public void j(final AudioSink.a aVar) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 1031, new androidx.media3.common.util.t.a() { // from class: y1.n1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).Y(aVarD1, aVar);
            }
        });
    }

    @Override // y1.a
    public void k(final AudioSink.a aVar) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 1032, new androidx.media3.common.util.t.a() { // from class: y1.l1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).s(aVarD1, aVar);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.s
    public final void l(int i11, androidx.media3.exoplayer.source.r.b bVar, final g2.i iVar, final g2.j jVar) {
        final c.a aVarB1 = b1(i11, bVar);
        u2(aVarB1, 1002, new androidx.media3.common.util.t.a() { // from class: y1.v
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).r(aVarB1, iVar, jVar);
            }
        });
    }

    @Override // y1.a
    public final void m() {
        if (this.f78748i) {
            return;
        }
        final c.a aVarX0 = X0();
        this.f78748i = true;
        u2(aVarX0, -1, new androidx.media3.common.util.t.a() { // from class: y1.a0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).B(aVarX0);
            }
        });
    }

    @Override // y1.a
    public final void n(final androidx.media3.exoplayer.j jVar) {
        final c.a aVarD1 = d1();
        u2(aVarD1, PointerIconCompat.TYPE_CROSSHAIR, new androidx.media3.common.util.t.a() { // from class: y1.n0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).K(aVarD1, jVar);
            }
        });
    }

    @Override // y1.a
    public final void o(final androidx.media3.exoplayer.j jVar) {
        final c.a aVarD1 = d1();
        u2(aVarD1, PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW, new androidx.media3.common.util.t.a() { // from class: y1.b1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).o0(aVarD1, jVar);
            }
        });
    }

    @Override // y1.a
    public final void onAudioDecoderInitialized(final String str, final long j11, final long j12) {
        final c.a aVarD1 = d1();
        u2(aVarD1, PointerIconCompat.TYPE_TEXT, new androidx.media3.common.util.t.a() { // from class: y1.m
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                s1.i1(aVarD1, str, j12, j11, (c) obj);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public final void onAudioSessionIdChanged(final int i11) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 21, new androidx.media3.common.util.t.a() { // from class: y1.y0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).L(aVarD1, i11);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public void onAvailableCommandsChanged(final androidx.media3.common.a0.b bVar) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 13, new androidx.media3.common.util.t.a() { // from class: y1.q1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).c0(aVarX0, bVar);
            }
        });
    }

    @Override // androidx.media3.exoplayer.upstream.e.a
    public final void onBandwidthSample(final int i11, final long j11, final long j12) {
        final c.a aVarA1 = a1();
        u2(aVarA1, PointerIconCompat.TYPE_CELL, new androidx.media3.common.util.t.a() { // from class: y1.i0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).J(aVarA1, i11, j11, j12);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public void onCues(final List list) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 27, new androidx.media3.common.util.t.a() { // from class: y1.t
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).r0(aVarX0, list);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public void onCues(final u1.b bVar) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 27, new androidx.media3.common.util.t.a() { // from class: y1.z
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).i(aVarX0, bVar);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public void onDeviceInfoChanged(final androidx.media3.common.m mVar) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 29, new androidx.media3.common.util.t.a() { // from class: y1.u0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).u(aVarX0, mVar);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public void onDeviceVolumeChanged(final int i11, final boolean z10) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 30, new androidx.media3.common.util.t.a() { // from class: y1.q0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).s0(aVarX0, i11, z10);
            }
        });
    }

    @Override // y1.a
    public final void onDroppedFrames(final int i11, final long j11) {
        final c.a aVarC1 = c1();
        u2(aVarC1, PointerIconCompat.TYPE_ZOOM_IN, new androidx.media3.common.util.t.a() { // from class: y1.p0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).h(aVarC1, i11, j11);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public void onEvents(androidx.media3.common.a0 a0Var, androidx.media3.common.a0.c cVar) {
    }

    @Override // androidx.media3.common.a0.d
    public final void onIsLoadingChanged(final boolean z10) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 3, new androidx.media3.common.util.t.a() { // from class: y1.o1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                s1.H1(aVarX0, z10, (c) obj);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public void onIsPlayingChanged(final boolean z10) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 7, new androidx.media3.common.util.t.a() { // from class: y1.l
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).n(aVarX0, z10);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public void onLoadingChanged(boolean z10) {
    }

    @Override // androidx.media3.common.a0.d
    public final void onMediaItemTransition(final androidx.media3.common.t tVar, final int i11) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 1, new androidx.media3.common.util.t.a() { // from class: y1.e
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).t0(aVarX0, tVar, i11);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public void onMediaMetadataChanged(final androidx.media3.common.v vVar) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 14, new androidx.media3.common.util.t.a() { // from class: y1.k0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).g0(aVarX0, vVar);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public final void onMetadata(final androidx.media3.common.x xVar) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 28, new androidx.media3.common.util.t.a() { // from class: y1.k
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).m(aVarX0, xVar);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public final void onPlayWhenReadyChanged(final boolean z10, final int i11) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 5, new androidx.media3.common.util.t.a() { // from class: y1.r
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).O(aVarX0, z10, i11);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public final void onPlaybackParametersChanged(final androidx.media3.common.z zVar) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 12, new androidx.media3.common.util.t.a() { // from class: y1.d
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).P(aVarX0, zVar);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public final void onPlaybackStateChanged(final int i11) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 4, new androidx.media3.common.util.t.a() { // from class: y1.x
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).l0(aVarX0, i11);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public final void onPlaybackSuppressionReasonChanged(final int i11) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 6, new androidx.media3.common.util.t.a() { // from class: y1.n
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).V(aVarX0, i11);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public final void onPlayerError(final PlaybackException playbackException) {
        final c.a aVarE1 = e1(playbackException);
        u2(aVarE1, 10, new androidx.media3.common.util.t.a() { // from class: y1.w
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).c(aVarE1, playbackException);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public void onPlayerErrorChanged(final PlaybackException playbackException) {
        final c.a aVarE1 = e1(playbackException);
        u2(aVarE1, 10, new androidx.media3.common.util.t.a() { // from class: y1.q
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).D(aVarE1, playbackException);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public final void onPlayerStateChanged(final boolean z10, final int i11) {
        final c.a aVarX0 = X0();
        u2(aVarX0, -1, new androidx.media3.common.util.t.a() { // from class: y1.j
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).b0(aVarX0, z10, i11);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public void onPositionDiscontinuity(int i11) {
    }

    @Override // androidx.media3.common.a0.d
    public final void onPositionDiscontinuity(final androidx.media3.common.a0.e eVar, final androidx.media3.common.a0.e eVar2, final int i11) {
        if (i11 == 1) {
            this.f78748i = false;
        }
        this.f78743d.j((androidx.media3.common.a0) androidx.media3.common.util.a.e(this.f78746g));
        final c.a aVarX0 = X0();
        u2(aVarX0, 11, new androidx.media3.common.util.t.a() { // from class: y1.b0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                s1.X1(aVarX0, i11, eVar, eVar2, (c) obj);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public void onRenderedFirstFrame() {
    }

    @Override // androidx.media3.common.a0.d
    public final void onRepeatModeChanged(final int i11) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 8, new androidx.media3.common.util.t.a() { // from class: y1.d0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).z(aVarX0, i11);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public final void onShuffleModeEnabledChanged(final boolean z10) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 9, new androidx.media3.common.util.t.a() { // from class: y1.g0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).e0(aVarX0, z10);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public final void onSkipSilenceEnabledChanged(final boolean z10) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 23, new androidx.media3.common.util.t.a() { // from class: y1.m1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).m0(aVarD1, z10);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public final void onSurfaceSizeChanged(final int i11, final int i12) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 24, new androidx.media3.common.util.t.a() { // from class: y1.h0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).p0(aVarD1, i11, i12);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public final void onTimelineChanged(androidx.media3.common.e0 e0Var, final int i11) {
        this.f78743d.l((androidx.media3.common.a0) androidx.media3.common.util.a.e(this.f78746g));
        final c.a aVarX0 = X0();
        u2(aVarX0, 0, new androidx.media3.common.util.t.a() { // from class: y1.r1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).w0(aVarX0, i11);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public void onTrackSelectionParametersChanged(final androidx.media3.common.h0 h0Var) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 19, new androidx.media3.common.util.t.a() { // from class: y1.g1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).u0(aVarX0, h0Var);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public void onTracksChanged(final androidx.media3.common.i0 i0Var) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 2, new androidx.media3.common.util.t.a() { // from class: y1.o
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).y(aVarX0, i0Var);
            }
        });
    }

    @Override // y1.a
    public final void onVideoDecoderInitialized(final String str, final long j11, final long j12) {
        final c.a aVarD1 = d1();
        u2(aVarD1, PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, new androidx.media3.common.util.t.a() { // from class: y1.f0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                s1.j2(aVarD1, str, j12, j11, (c) obj);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public final void onVideoSizeChanged(final androidx.media3.common.m0 m0Var) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 25, new androidx.media3.common.util.t.a() { // from class: y1.z0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                s1.p2(aVarD1, m0Var, (c) obj);
            }
        });
    }

    @Override // androidx.media3.common.a0.d
    public final void onVolumeChanged(final float f11) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 22, new androidx.media3.common.util.t.a() { // from class: y1.f
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).b(aVarD1, f11);
            }
        });
    }

    @Override // y1.a
    public final void p(List list, androidx.media3.exoplayer.source.r.b bVar) {
        this.f78743d.k(list, bVar, (androidx.media3.common.a0) androidx.media3.common.util.a.e(this.f78746g));
    }

    @Override // androidx.media3.exoplayer.drm.r
    public final void q(int i11, androidx.media3.exoplayer.source.r.b bVar) {
        final c.a aVarB1 = b1(i11, bVar);
        u2(aVarB1, 1023, new androidx.media3.common.util.t.a() { // from class: y1.k1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).p(aVarB1);
            }
        });
    }

    @Override // androidx.media3.exoplayer.drm.r
    public final void r(int i11, androidx.media3.exoplayer.source.r.b bVar, final int i12) {
        final c.a aVarB1 = b1(i11, bVar);
        u2(aVarB1, 1022, new androidx.media3.common.util.t.a() { // from class: y1.t0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                s1.D1(aVarB1, i12, (c) obj);
            }
        });
    }

    @Override // y1.a
    public void release() {
        ((androidx.media3.common.util.p) androidx.media3.common.util.a.i(this.f78747h)).post(new Runnable() { // from class: y1.c0
            @Override // java.lang.Runnable
            public final void run() {
                this.f78622a.t2();
            }
        });
    }

    @Override // y1.a
    public final void s(final androidx.media3.common.r rVar, final androidx.media3.exoplayer.k kVar) {
        final c.a aVarD1 = d1();
        u2(aVarD1, PointerIconCompat.TYPE_VERTICAL_TEXT, new androidx.media3.common.util.t.a() { // from class: y1.a1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).i0(aVarD1, rVar, kVar);
            }
        });
    }

    @Override // y1.a
    public final void t(final androidx.media3.exoplayer.j jVar) {
        final c.a aVarC1 = c1();
        u2(aVarC1, PointerIconCompat.TYPE_ALL_SCROLL, new androidx.media3.common.util.t.a() { // from class: y1.s0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).a(aVarC1, jVar);
            }
        });
    }

    @Override // y1.a
    public final void u(final androidx.media3.common.r rVar, final androidx.media3.exoplayer.k kVar) {
        final c.a aVarD1 = d1();
        u2(aVarD1, PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, new androidx.media3.common.util.t.a() { // from class: y1.x0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).x(aVarD1, rVar, kVar);
            }
        });
    }

    protected final void u2(c.a aVar, int i11, androidx.media3.common.util.t.a aVar2) {
        this.f78744e.put(i11, aVar);
        this.f78745f.l(i11, aVar2);
    }

    @Override // y1.a
    public final void v(final androidx.media3.exoplayer.j jVar) {
        final c.a aVarC1 = c1();
        u2(aVarC1, PointerIconCompat.TYPE_GRAB, new androidx.media3.common.util.t.a() { // from class: y1.l0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).E(aVarC1, jVar);
            }
        });
    }

    @Override // androidx.media3.exoplayer.drm.r
    public final void w(int i11, androidx.media3.exoplayer.source.r.b bVar) {
        final c.a aVarB1 = b1(i11, bVar);
        u2(aVarB1, 1026, new androidx.media3.common.util.t.a() { // from class: y1.i1
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).t(aVarB1);
            }
        });
    }

    @Override // androidx.media3.exoplayer.drm.r
    public final void x(int i11, androidx.media3.exoplayer.source.r.b bVar, final Exception exc) {
        final c.a aVarB1 = b1(i11, bVar);
        u2(aVarB1, 1024, new androidx.media3.common.util.t.a() { // from class: y1.w0
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).X(aVarB1, exc);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.s
    public final void y(int i11, androidx.media3.exoplayer.source.r.b bVar, final g2.i iVar, final g2.j jVar, final IOException iOException, final boolean z10) {
        final c.a aVarB1 = b1(i11, bVar);
        u2(aVarB1, 1003, new androidx.media3.common.util.t.a() { // from class: y1.h
            @Override // androidx.media3.common.util.t.a
            public final void invoke(Object obj) {
                ((c) obj).v(aVarB1, iVar, jVar, iOException, z10);
            }
        });
    }

    @Override // y1.a
    public void z(c cVar) {
        androidx.media3.common.util.a.e(cVar);
        this.f78745f.c(cVar);
    }
}
