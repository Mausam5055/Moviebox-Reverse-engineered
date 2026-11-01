package e9;

import android.os.Looper;
import android.util.SparseArray;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.PointerIconCompat;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p3;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.v1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.g3;
import java.io.IOException;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class p1 implements e9.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.e f61713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k3.b f61714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k3.d f61715c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f61716d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SparseArray f61717e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.google.android.exoplayer2.util.r f61718f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private o2 f61719g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.google.android.exoplayer2.util.o f61720h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f61721i;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k3.b f61722a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ImmutableList f61723b = ImmutableList.of();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ImmutableMap f61724c = ImmutableMap.of();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.google.android.exoplayer2.source.o.b f61725d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private com.google.android.exoplayer2.source.o.b f61726e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private com.google.android.exoplayer2.source.o.b f61727f;

        public a(k3.b bVar) {
            this.f61722a = bVar;
        }

        private void b(ImmutableMap.b bVar, com.google.android.exoplayer2.source.o.b bVar2, k3 k3Var) {
            if (bVar2 == null) {
                return;
            }
            if (k3Var.f(bVar2.f76114a) != -1) {
                bVar.h(bVar2, k3Var);
                return;
            }
            k3 k3Var2 = (k3) this.f61724c.get(bVar2);
            if (k3Var2 != null) {
                bVar.h(bVar2, k3Var2);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static com.google.android.exoplayer2.source.o.b c(o2 o2Var, ImmutableList immutableList, com.google.android.exoplayer2.source.o.b bVar, k3.b bVar2) {
            k3 currentTimeline = o2Var.getCurrentTimeline();
            int currentPeriodIndex = o2Var.getCurrentPeriodIndex();
            Object objQ = currentTimeline.u() ? null : currentTimeline.q(currentPeriodIndex);
            int iG = (o2Var.isPlayingAd() || currentTimeline.u()) ? -1 : currentTimeline.j(currentPeriodIndex, bVar2).g(com.google.android.exoplayer2.util.p0.B0(o2Var.getCurrentPosition()) - bVar2.q());
            for (int i11 = 0; i11 < immutableList.size(); i11++) {
                com.google.android.exoplayer2.source.o.b bVar3 = (com.google.android.exoplayer2.source.o.b) immutableList.get(i11);
                if (i(bVar3, objQ, o2Var.isPlayingAd(), o2Var.getCurrentAdGroupIndex(), o2Var.getCurrentAdIndexInAdGroup(), iG)) {
                    return bVar3;
                }
            }
            if (immutableList.isEmpty() && bVar != null) {
                if (i(bVar, objQ, o2Var.isPlayingAd(), o2Var.getCurrentAdGroupIndex(), o2Var.getCurrentAdIndexInAdGroup(), iG)) {
                    return bVar;
                }
            }
            return null;
        }

        private static boolean i(com.google.android.exoplayer2.source.o.b bVar, Object obj, boolean z10, int i11, int i12, int i13) {
            if (bVar.f76114a.equals(obj)) {
                return (z10 && bVar.f76115b == i11 && bVar.f76116c == i12) || (!z10 && bVar.f76115b == -1 && bVar.f76118e == i13);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void m(k3 k3Var) {
            ImmutableMap.b bVarBuilder = ImmutableMap.builder();
            if (this.f61723b.isEmpty()) {
                b(bVarBuilder, this.f61726e, k3Var);
                if (!com.google.common.base.j.a(this.f61727f, this.f61726e)) {
                    b(bVarBuilder, this.f61727f, k3Var);
                }
                if (!com.google.common.base.j.a(this.f61725d, this.f61726e) && !com.google.common.base.j.a(this.f61725d, this.f61727f)) {
                    b(bVarBuilder, this.f61725d, k3Var);
                }
            } else {
                for (int i11 = 0; i11 < this.f61723b.size(); i11++) {
                    b(bVarBuilder, (com.google.android.exoplayer2.source.o.b) this.f61723b.get(i11), k3Var);
                }
                if (!this.f61723b.contains(this.f61725d)) {
                    b(bVarBuilder, this.f61725d, k3Var);
                }
            }
            this.f61724c = bVarBuilder.d();
        }

        public com.google.android.exoplayer2.source.o.b d() {
            return this.f61725d;
        }

        public com.google.android.exoplayer2.source.o.b e() {
            if (this.f61723b.isEmpty()) {
                return null;
            }
            return (com.google.android.exoplayer2.source.o.b) g3.g(this.f61723b);
        }

        public k3 f(com.google.android.exoplayer2.source.o.b bVar) {
            return (k3) this.f61724c.get(bVar);
        }

        public com.google.android.exoplayer2.source.o.b g() {
            return this.f61726e;
        }

        public com.google.android.exoplayer2.source.o.b h() {
            return this.f61727f;
        }

        public void j(o2 o2Var) {
            this.f61725d = c(o2Var, this.f61723b, this.f61726e, this.f61722a);
        }

        public void k(List list, com.google.android.exoplayer2.source.o.b bVar, o2 o2Var) {
            this.f61723b = ImmutableList.copyOf((Collection) list);
            if (!list.isEmpty()) {
                this.f61726e = (com.google.android.exoplayer2.source.o.b) list.get(0);
                this.f61727f = (com.google.android.exoplayer2.source.o.b) com.google.android.exoplayer2.util.a.e(bVar);
            }
            if (this.f61725d == null) {
                this.f61725d = c(o2Var, this.f61723b, this.f61726e, this.f61722a);
            }
            m(o2Var.getCurrentTimeline());
        }

        public void l(o2 o2Var) {
            this.f61725d = c(o2Var, this.f61723b, this.f61726e, this.f61722a);
            m(o2Var.getCurrentTimeline());
        }
    }

    public p1(com.google.android.exoplayer2.util.e eVar) {
        this.f61713a = (com.google.android.exoplayer2.util.e) com.google.android.exoplayer2.util.a.e(eVar);
        this.f61718f = new com.google.android.exoplayer2.util.r(com.google.android.exoplayer2.util.p0.Q(), eVar, new com.google.android.exoplayer2.util.r.b() { // from class: e9.a0
            @Override // com.google.android.exoplayer2.util.r.b
            public final void a(Object obj, com.google.android.exoplayer2.util.m mVar) {
                p1.a1((c) obj, mVar);
            }
        });
        k3.b bVar = new k3.b();
        this.f61714b = bVar;
        this.f61715c = new k3.d();
        this.f61716d = new a(bVar);
        this.f61717e = new SparseArray();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void P1(c.a aVar, int i11, o2.e eVar, o2.e eVar2, c cVar) {
        cVar.R(aVar, i11);
        cVar.k(aVar, eVar, eVar2, i11);
    }

    private c.a U0(com.google.android.exoplayer2.source.o.b bVar) {
        com.google.android.exoplayer2.util.a.e(this.f61719g);
        k3 k3VarF = bVar == null ? null : this.f61716d.f(bVar);
        if (bVar != null && k3VarF != null) {
            return T0(k3VarF, k3VarF.l(bVar.f76114a, this.f61714b).f25156c, bVar);
        }
        int iT = this.f61719g.t();
        k3 currentTimeline = this.f61719g.getCurrentTimeline();
        if (iT >= currentTimeline.t()) {
            currentTimeline = k3.f25151a;
        }
        return T0(currentTimeline, iT, null);
    }

    private c.a V0() {
        return U0(this.f61716d.e());
    }

    private c.a W0(int i11, com.google.android.exoplayer2.source.o.b bVar) {
        com.google.android.exoplayer2.util.a.e(this.f61719g);
        if (bVar != null) {
            return this.f61716d.f(bVar) != null ? U0(bVar) : T0(k3.f25151a, i11, bVar);
        }
        k3 currentTimeline = this.f61719g.getCurrentTimeline();
        if (i11 >= currentTimeline.t()) {
            currentTimeline = k3.f25151a;
        }
        return T0(currentTimeline, i11, null);
    }

    private c.a X0() {
        return U0(this.f61716d.g());
    }

    private c.a Y0() {
        return U0(this.f61716d.h());
    }

    private c.a Z0(PlaybackException playbackException) {
        t9.j jVar;
        return (!(playbackException instanceof ExoPlaybackException) || (jVar = ((ExoPlaybackException) playbackException).mediaPeriodId) == null) ? S0() : U0(new com.google.android.exoplayer2.source.o.b(jVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a1(c cVar, com.google.android.exoplayer2.util.m mVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b2(c.a aVar, String str, long j11, long j12, c cVar) {
        cVar.Y(aVar, str, j11);
        cVar.j0(aVar, str, j12, j11);
        cVar.Z(aVar, 2, str, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d1(c.a aVar, String str, long j11, long j12, c cVar) {
        cVar.C(aVar, str, j11);
        cVar.e0(aVar, str, j12, j11);
        cVar.Z(aVar, 1, str, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d2(c.a aVar, com.google.android.exoplayer2.decoder.e eVar, c cVar) {
        cVar.U(aVar, eVar);
        cVar.g0(aVar, 2, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e2(c.a aVar, com.google.android.exoplayer2.decoder.e eVar, c cVar) {
        cVar.H(aVar, eVar);
        cVar.N(aVar, 2, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f1(c.a aVar, com.google.android.exoplayer2.decoder.e eVar, c cVar) {
        cVar.P(aVar, eVar);
        cVar.g0(aVar, 1, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g1(c.a aVar, com.google.android.exoplayer2.decoder.e eVar, c cVar) {
        cVar.t(aVar, eVar);
        cVar.N(aVar, 1, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g2(c.a aVar, com.google.android.exoplayer2.o1 o1Var, com.google.android.exoplayer2.decoder.g gVar, c cVar) {
        cVar.o0(aVar, o1Var);
        cVar.e(aVar, o1Var, gVar);
        cVar.D(aVar, 2, o1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h1(c.a aVar, com.google.android.exoplayer2.o1 o1Var, com.google.android.exoplayer2.decoder.g gVar, c cVar) {
        cVar.w(aVar, o1Var);
        cVar.B(aVar, o1Var, gVar);
        cVar.D(aVar, 1, o1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h2(c.a aVar, com.google.android.exoplayer2.video.y yVar, c cVar) {
        cVar.v0(aVar, yVar);
        cVar.u0(aVar, yVar.f28009a, yVar.f28010b, yVar.f28011c, yVar.f28012d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k2(o2 o2Var, c cVar, com.google.android.exoplayer2.util.m mVar) {
        cVar.I(o2Var, new c.b(mVar, this.f61717e));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l2() {
        final c.a aVarS0 = S0();
        m2(aVarS0, 1028, new com.google.android.exoplayer2.util.r.a() { // from class: e9.h1
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).h0(aVarS0);
            }
        });
        this.f61718f.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void v1(c.a aVar, int i11, c cVar) {
        cVar.E(aVar);
        cVar.m(aVar, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void z1(c.a aVar, boolean z10, c cVar) {
        cVar.b(aVar, z10);
        cVar.c0(aVar, z10);
    }

    @Override // e9.a
    public final void A(List list, com.google.android.exoplayer2.source.o.b bVar) {
        this.f61716d.k(list, bVar, (o2) com.google.android.exoplayer2.util.a.e(this.f61719g));
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void B(int i11, com.google.android.exoplayer2.source.o.b bVar) {
        final c.a aVarW0 = W0(i11, bVar);
        m2(aVarW0, 1023, new com.google.android.exoplayer2.util.r.a() { // from class: e9.i1
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).f0(aVarW0);
            }
        });
    }

    @Override // e9.a
    public void C(c cVar) {
        com.google.android.exoplayer2.util.a.e(cVar);
        this.f61718f.c(cVar);
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void D(int i11, com.google.android.exoplayer2.source.o.b bVar, final int i12) {
        final c.a aVarW0 = W0(i11, bVar);
        m2(aVarW0, 1022, new com.google.android.exoplayer2.util.r.a() { // from class: e9.u0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                p1.v1(aVarW0, i12, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void E(int i11, com.google.android.exoplayer2.source.o.b bVar) {
        final c.a aVarW0 = W0(i11, bVar);
        m2(aVarW0, 1027, new com.google.android.exoplayer2.util.r.a() { // from class: e9.g0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).t0(aVarW0);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void F(int i11, com.google.android.exoplayer2.source.o.b bVar) {
        final c.a aVarW0 = W0(i11, bVar);
        m2(aVarW0, InputDeviceCompat.SOURCE_GAMEPAD, new com.google.android.exoplayer2.util.r.a() { // from class: e9.j1
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).f(aVarW0);
            }
        });
    }

    protected final c.a S0() {
        return U0(this.f61716d.d());
    }

    protected final c.a T0(k3 k3Var, int i11, com.google.android.exoplayer2.source.o.b bVar) {
        com.google.android.exoplayer2.source.o.b bVar2 = k3Var.u() ? null : bVar;
        long jElapsedRealtime = this.f61713a.elapsedRealtime();
        boolean z10 = k3Var.equals(this.f61719g.getCurrentTimeline()) && i11 == this.f61719g.t();
        long jE = 0;
        if (bVar2 == null || !bVar2.b()) {
            if (z10) {
                jE = this.f61719g.getContentPosition();
            } else if (!k3Var.u()) {
                jE = k3Var.r(i11, this.f61715c).e();
            }
        } else if (z10 && this.f61719g.getCurrentAdGroupIndex() == bVar2.f76115b && this.f61719g.getCurrentAdIndexInAdGroup() == bVar2.f76116c) {
            jE = this.f61719g.getCurrentPosition();
        }
        return new c.a(jElapsedRealtime, k3Var, i11, bVar2, jE, this.f61719g.getCurrentTimeline(), this.f61719g.t(), this.f61716d.d(), this.f61719g.getCurrentPosition(), this.f61719g.d());
    }

    @Override // e9.a
    public final void a(final Exception exc) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW, new com.google.android.exoplayer2.util.r.a() { // from class: e9.n0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).w0(aVarY0, exc);
            }
        });
    }

    @Override // e9.a
    public final void b(final String str) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, PointerIconCompat.TYPE_ZOOM_OUT, new com.google.android.exoplayer2.util.r.a() { // from class: e9.a1
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).a(aVarY0, str);
            }
        });
    }

    @Override // e9.a
    public final void c(final String str) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 1012, new com.google.android.exoplayer2.util.r.a() { // from class: e9.d0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).n(aVarY0, str);
            }
        });
    }

    @Override // e9.a
    public final void d(final long j11) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 1010, new com.google.android.exoplayer2.util.r.a() { // from class: e9.f0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).m0(aVarY0, j11);
            }
        });
    }

    @Override // e9.a
    public final void e(final Exception exc) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 1030, new com.google.android.exoplayer2.util.r.a() { // from class: e9.m1
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).r0(aVarY0, exc);
            }
        });
    }

    @Override // e9.a
    public final void f(final Object obj, final long j11) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 26, new com.google.android.exoplayer2.util.r.a() { // from class: e9.e1
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj2) {
                ((c) obj2).A(aVarY0, obj, j11);
            }
        });
    }

    @Override // e9.a
    public final void g(final Exception exc) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 1029, new com.google.android.exoplayer2.util.r.a() { // from class: e9.n1
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).v(aVarY0, exc);
            }
        });
    }

    @Override // e9.a
    public final void h(final int i11, final long j11, final long j12) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 1011, new com.google.android.exoplayer2.util.r.a() { // from class: e9.f1
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).F(aVarY0, i11, j11, j12);
            }
        });
    }

    @Override // e9.a
    public final void i(final long j11, final int i11) {
        final c.a aVarX0 = X0();
        m2(aVarX0, PointerIconCompat.TYPE_GRABBING, new com.google.android.exoplayer2.util.r.a() { // from class: e9.o0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).G(aVarX0, j11, i11);
            }
        });
    }

    @Override // e9.a
    public final void j(final com.google.android.exoplayer2.decoder.e eVar) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, PointerIconCompat.TYPE_CROSSHAIR, new com.google.android.exoplayer2.util.r.a() { // from class: e9.s0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                p1.g1(aVarY0, eVar, (c) obj);
            }
        });
    }

    @Override // e9.a
    public final void k(final com.google.android.exoplayer2.o1 o1Var, final com.google.android.exoplayer2.decoder.g gVar) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, new com.google.android.exoplayer2.util.r.a() { // from class: e9.v
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                p1.g2(aVarY0, o1Var, gVar, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void l(int i11, com.google.android.exoplayer2.source.o.b bVar, final t9.i iVar) {
        final c.a aVarW0 = W0(i11, bVar);
        m2(aVarW0, 1005, new com.google.android.exoplayer2.util.r.a() { // from class: e9.p0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).n0(aVarW0, iVar);
            }
        });
    }

    @Override // e9.a
    public final void m() {
        if (this.f61721i) {
            return;
        }
        final c.a aVarS0 = S0();
        this.f61721i = true;
        m2(aVarS0, -1, new com.google.android.exoplayer2.util.r.a() { // from class: e9.k
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).L(aVarS0);
            }
        });
    }

    protected final void m2(c.a aVar, int i11, com.google.android.exoplayer2.util.r.a aVar2) {
        this.f61717e.put(i11, aVar);
        this.f61718f.l(i11, aVar2);
    }

    @Override // e9.a
    public final void n(final com.google.android.exoplayer2.decoder.e eVar) {
        final c.a aVarX0 = X0();
        m2(aVarX0, PointerIconCompat.TYPE_GRAB, new com.google.android.exoplayer2.util.r.a() { // from class: e9.z
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                p1.d2(aVarX0, eVar, (c) obj);
            }
        });
    }

    @Override // e9.a
    public final void o(final com.google.android.exoplayer2.decoder.e eVar) {
        final c.a aVarX0 = X0();
        m2(aVarX0, PointerIconCompat.TYPE_ALL_SCROLL, new com.google.android.exoplayer2.util.r.a() { // from class: e9.c0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                p1.f1(aVarX0, eVar, (c) obj);
            }
        });
    }

    @Override // e9.a
    public final void onAudioDecoderInitialized(final String str, final long j11, final long j12) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, PointerIconCompat.TYPE_TEXT, new com.google.android.exoplayer2.util.r.a() { // from class: e9.d
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                p1.d1(aVarY0, str, j12, j11, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public void onAvailableCommandsChanged(final o2.b bVar) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 13, new com.google.android.exoplayer2.util.r.a() { // from class: e9.u
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).s(aVarS0, bVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.upstream.e.a
    public final void onBandwidthSample(final int i11, final long j11, final long j12) {
        final c.a aVarV0 = V0();
        m2(aVarV0, PointerIconCompat.TYPE_CELL, new com.google.android.exoplayer2.util.r.a() { // from class: e9.b1
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).a0(aVarV0, i11, j11, j12);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public void onCues(final ba.f fVar) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 27, new com.google.android.exoplayer2.util.r.a() { // from class: e9.t
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).r(aVarS0, fVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public void onCues(final List list) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 27, new com.google.android.exoplayer2.util.r.a() { // from class: e9.h0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).k0(aVarS0, list);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public void onDeviceInfoChanged(final com.google.android.exoplayer2.r rVar) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 29, new com.google.android.exoplayer2.util.r.a() { // from class: e9.x0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).l(aVarS0, rVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public void onDeviceVolumeChanged(final int i11, final boolean z10) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 30, new com.google.android.exoplayer2.util.r.a() { // from class: e9.y0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).d0(aVarS0, i11, z10);
            }
        });
    }

    @Override // e9.a
    public final void onDroppedFrames(final int i11, final long j11) {
        final c.a aVarX0 = X0();
        m2(aVarX0, PointerIconCompat.TYPE_ZOOM_IN, new com.google.android.exoplayer2.util.r.a() { // from class: e9.j0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).W(aVarX0, i11, j11);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public void onEvents(o2 o2Var, o2.c cVar) {
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onIsLoadingChanged(final boolean z10) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 3, new com.google.android.exoplayer2.util.r.a() { // from class: e9.v0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                p1.z1(aVarS0, z10, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public void onIsPlayingChanged(final boolean z10) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 7, new com.google.android.exoplayer2.util.r.a() { // from class: e9.l1
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).O(aVarS0, z10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public void onLoadingChanged(boolean z10) {
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onMediaItemTransition(final v1 v1Var, final int i11) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 1, new com.google.android.exoplayer2.util.r.a() { // from class: e9.s
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).o(aVarS0, v1Var, i11);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public void onMediaMetadataChanged(final a2 a2Var) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 14, new com.google.android.exoplayer2.util.r.a() { // from class: e9.f
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).h(aVarS0, a2Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onMetadata(final Metadata metadata) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 28, new com.google.android.exoplayer2.util.r.a() { // from class: e9.z0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).i(aVarS0, metadata);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onPlayWhenReadyChanged(final boolean z10, final int i11) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 5, new com.google.android.exoplayer2.util.r.a() { // from class: e9.o
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).g(aVarS0, z10, i11);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onPlaybackParametersChanged(final n2 n2Var) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 12, new com.google.android.exoplayer2.util.r.a() { // from class: e9.h
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).q0(aVarS0, n2Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onPlaybackStateChanged(final int i11) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 4, new com.google.android.exoplayer2.util.r.a() { // from class: e9.x
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).s0(aVarS0, i11);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onPlaybackSuppressionReasonChanged(final int i11) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 6, new com.google.android.exoplayer2.util.r.a() { // from class: e9.m0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).c(aVarS0, i11);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onPlayerError(final PlaybackException playbackException) {
        final c.a aVarZ0 = Z0(playbackException);
        m2(aVarZ0, 10, new com.google.android.exoplayer2.util.r.a() { // from class: e9.r
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).M(aVarZ0, playbackException);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public void onPlayerErrorChanged(final PlaybackException playbackException) {
        final c.a aVarZ0 = Z0(playbackException);
        m2(aVarZ0, 10, new com.google.android.exoplayer2.util.r.a() { // from class: e9.l0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).z0(aVarZ0, playbackException);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onPlayerStateChanged(final boolean z10, final int i11) {
        final c.a aVarS0 = S0();
        m2(aVarS0, -1, new com.google.android.exoplayer2.util.r.a() { // from class: e9.j
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).y(aVarS0, z10, i11);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public void onPositionDiscontinuity(int i11) {
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onPositionDiscontinuity(final o2.e eVar, final o2.e eVar2, final int i11) {
        if (i11 == 1) {
            this.f61721i = false;
        }
        this.f61716d.j((o2) com.google.android.exoplayer2.util.a.e(this.f61719g));
        final c.a aVarS0 = S0();
        m2(aVarS0, 11, new com.google.android.exoplayer2.util.r.a() { // from class: e9.r0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                p1.P1(aVarS0, i11, eVar, eVar2, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public void onRenderedFirstFrame() {
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onRepeatModeChanged(final int i11) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 8, new com.google.android.exoplayer2.util.r.a() { // from class: e9.e0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).K(aVarS0, i11);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onSeekProcessed() {
        final c.a aVarS0 = S0();
        m2(aVarS0, -1, new com.google.android.exoplayer2.util.r.a() { // from class: e9.m
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).X(aVarS0);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onShuffleModeEnabledChanged(final boolean z10) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 9, new com.google.android.exoplayer2.util.r.a() { // from class: e9.o1
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).l0(aVarS0, z10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onSkipSilenceEnabledChanged(final boolean z10) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 23, new com.google.android.exoplayer2.util.r.a() { // from class: e9.k1
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).b0(aVarY0, z10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onSurfaceSizeChanged(final int i11, final int i12) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 24, new com.google.android.exoplayer2.util.r.a() { // from class: e9.p
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).x0(aVarY0, i11, i12);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onTimelineChanged(k3 k3Var, final int i11) {
        this.f61716d.l((o2) com.google.android.exoplayer2.util.a.e(this.f61719g));
        final c.a aVarS0 = S0();
        m2(aVarS0, 0, new com.google.android.exoplayer2.util.r.a() { // from class: e9.t0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).i0(aVarS0, i11);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public void onTrackSelectionParametersChanged(final TrackSelectionParameters trackSelectionParameters) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 19, new com.google.android.exoplayer2.util.r.a() { // from class: e9.b0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).p0(aVarS0, trackSelectionParameters);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public void onTracksChanged(final p3 p3Var) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 2, new com.google.android.exoplayer2.util.r.a() { // from class: e9.i0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).V(aVarS0, p3Var);
            }
        });
    }

    @Override // e9.a
    public final void onVideoDecoderInitialized(final String str, final long j11, final long j12) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, new com.google.android.exoplayer2.util.r.a() { // from class: e9.y
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                p1.b2(aVarY0, str, j12, j11, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onVideoSizeChanged(final com.google.android.exoplayer2.video.y yVar) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 25, new com.google.android.exoplayer2.util.r.a() { // from class: e9.d1
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                p1.h2(aVarY0, yVar, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.o2.d
    public final void onVolumeChanged(final float f11) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 22, new com.google.android.exoplayer2.util.r.a() { // from class: e9.w0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).T(aVarY0, f11);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void p(int i11, com.google.android.exoplayer2.source.o.b bVar, final t9.h hVar, final t9.i iVar) {
        final c.a aVarW0 = W0(i11, bVar);
        m2(aVarW0, 1000, new com.google.android.exoplayer2.util.r.a() { // from class: e9.k0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).d(aVarW0, hVar, iVar);
            }
        });
    }

    @Override // e9.a
    public void q(final o2 o2Var, Looper looper) {
        com.google.android.exoplayer2.util.a.g(this.f61719g == null || this.f61716d.f61723b.isEmpty());
        this.f61719g = (o2) com.google.android.exoplayer2.util.a.e(o2Var);
        this.f61720h = this.f61713a.createHandler(looper, null);
        this.f61718f = this.f61718f.e(looper, new com.google.android.exoplayer2.util.r.b() { // from class: e9.l
            @Override // com.google.android.exoplayer2.util.r.b
            public final void a(Object obj, com.google.android.exoplayer2.util.m mVar) {
                this.f61683a.k2(o2Var, (c) obj, mVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void r(int i11, com.google.android.exoplayer2.source.o.b bVar) {
        final c.a aVarW0 = W0(i11, bVar);
        m2(aVarW0, 1026, new com.google.android.exoplayer2.util.r.a() { // from class: e9.c1
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).J(aVarW0);
            }
        });
    }

    @Override // e9.a
    public void release() {
        ((com.google.android.exoplayer2.util.o) com.google.android.exoplayer2.util.a.i(this.f61720h)).post(new Runnable() { // from class: e9.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f61654a.l2();
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.s
    public /* synthetic */ void s(int i11, com.google.android.exoplayer2.source.o.b bVar) {
        com.google.android.exoplayer2.drm.l.a(this, i11, bVar);
    }

    @Override // e9.a
    public final void t(final com.google.android.exoplayer2.o1 o1Var, final com.google.android.exoplayer2.decoder.g gVar) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, PointerIconCompat.TYPE_VERTICAL_TEXT, new com.google.android.exoplayer2.util.r.a() { // from class: e9.e
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                p1.h1(aVarY0, o1Var, gVar, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void u(int i11, com.google.android.exoplayer2.source.o.b bVar, final t9.h hVar, final t9.i iVar) {
        final c.a aVarW0 = W0(i11, bVar);
        m2(aVarW0, 1002, new com.google.android.exoplayer2.util.r.a() { // from class: e9.g1
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).y0(aVarW0, hVar, iVar);
            }
        });
    }

    @Override // e9.a
    public final void v(final com.google.android.exoplayer2.decoder.e eVar) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW, new com.google.android.exoplayer2.util.r.a() { // from class: e9.w
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                p1.e2(aVarY0, eVar, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void w(int i11, com.google.android.exoplayer2.source.o.b bVar, final t9.i iVar) {
        final c.a aVarW0 = W0(i11, bVar);
        m2(aVarW0, 1004, new com.google.android.exoplayer2.util.r.a() { // from class: e9.n
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).z(aVarW0, iVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void x(int i11, com.google.android.exoplayer2.source.o.b bVar, final t9.h hVar, final t9.i iVar, final IOException iOException, final boolean z10) {
        final c.a aVarW0 = W0(i11, bVar);
        m2(aVarW0, 1003, new com.google.android.exoplayer2.util.r.a() { // from class: e9.q
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).u(aVarW0, hVar, iVar, iOException, z10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void y(int i11, com.google.android.exoplayer2.source.o.b bVar, final Exception exc) {
        final c.a aVarW0 = W0(i11, bVar);
        m2(aVarW0, 1024, new com.google.android.exoplayer2.util.r.a() { // from class: e9.q0
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).j(aVarW0, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void z(int i11, com.google.android.exoplayer2.source.o.b bVar, final t9.h hVar, final t9.i iVar) {
        final c.a aVarW0 = W0(i11, bVar);
        m2(aVarW0, 1001, new com.google.android.exoplayer2.util.r.a() { // from class: e9.i
            @Override // com.google.android.exoplayer2.util.r.a
            public final void invoke(Object obj) {
                ((c) obj).p(aVarW0, hVar, iVar);
            }
        });
    }
}
