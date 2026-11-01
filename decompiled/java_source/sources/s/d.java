package s;

import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.a2;
import androidx.compose.runtime.b2;
import androidx.compose.runtime.c2;
import androidx.compose.runtime.j2;
import androidx.compose.runtime.k1;
import androidx.compose.runtime.m2;
import androidx.compose.runtime.y0;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f74784a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f74785b;

    public static final class a extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final a f74786c = new a();

        private a() {
            super(1, 0, 2, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            m2Var.D(eVar.b(q.a(0)));
        }

        @Override // s.d
        public String e(int i11) {
            return q.b(i11, q.a(0)) ? "distance" : super.e(i11);
        }
    }

    public static final class a0 extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final a0 f74787c = new a0();

        /* JADX WARN: Illegal instructions before constructor call */
        private a0() {
            int i11 = 0;
            super(i11, i11, 3, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            m2Var.W0();
        }
    }

    public static final class b extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final b f74788c = new b();

        private b() {
            super(0, 2, 1, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            androidx.compose.runtime.c cVar = (androidx.compose.runtime.c) eVar.a(t.a(0));
            Object objA = eVar.a(t.a(1));
            if (objA instanceof c2) {
                a2Var.c(((c2) objA).b());
            }
            m2Var.G(cVar, objA);
        }

        @Override // s.d
        public String f(int i11) {
            if (t.b(i11, t.a(0))) {
                return "anchor";
            }
            return t.b(i11, t.a(1)) ? AppMeasurementSdk.ConditionalUserProperty.VALUE : super.f(i11);
        }
    }

    public static final class b0 extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final b0 f74789c = new b0();

        private b0() {
            super(1, 0, 2, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            int iB = eVar.b(q.a(0));
            int iE0 = m2Var.e0();
            int iC0 = m2Var.c0();
            int iD1 = m2Var.d1(iC0);
            int iC1 = m2Var.c1(iC0);
            for (int iMax = Math.max(iD1, iC1 - iB); iMax < iC1; iMax++) {
                Object obj = m2Var.f3810c[m2Var.R(iMax)];
                if (obj instanceof c2) {
                    a2Var.e(((c2) obj).b(), iE0 - iMax, -1, -1);
                } else if (obj instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj).x();
                }
            }
            m2Var.k1(iB);
        }

        @Override // s.d
        public String e(int i11) {
            return q.b(i11, q.a(0)) ? "count" : super.e(i11);
        }
    }

    public static final class c extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final c f74790c = new c();

        private c() {
            super(0, 2, 1, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            androidx.compose.runtime.internal.c cVar = (androidx.compose.runtime.internal.c) eVar.a(t.a(1));
            int iA = cVar != null ? cVar.a() : 0;
            s.a aVar = (s.a) eVar.a(t.a(0));
            if (iA > 0) {
                fVar = new k1(fVar, iA);
            }
            aVar.b(fVar, m2Var, a2Var);
        }

        @Override // s.d
        public String f(int i11) {
            if (t.b(i11, t.a(0))) {
                return "changes";
            }
            return t.b(i11, t.a(1)) ? "effectiveNodeIndex" : super.f(i11);
        }
    }

    public static final class c0 extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final c0 f74791c = new c0();

        private c0() {
            super(1, 2, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            int iF;
            int iE0;
            Object objA = eVar.a(t.a(0));
            androidx.compose.runtime.c cVar = (androidx.compose.runtime.c) eVar.a(t.a(1));
            int iB = eVar.b(q.a(0));
            if (objA instanceof c2) {
                a2Var.c(((c2) objA).b());
            }
            int iF2 = m2Var.F(cVar);
            Object objR0 = m2Var.R0(iF2, iB, objA);
            if (!(objR0 instanceof c2)) {
                if (objR0 instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) objR0).x();
                    return;
                }
                return;
            }
            int iE1 = m2Var.e0() - m2Var.a1(iF2, iB);
            c2 c2Var = (c2) objR0;
            androidx.compose.runtime.c cVarA = c2Var.a();
            if (cVarA == null || !cVarA.b()) {
                iF = -1;
                iE0 = -1;
            } else {
                iF = m2Var.F(cVarA);
                iE0 = m2Var.e0() - m2Var.b1(iF);
            }
            a2Var.e(c2Var.b(), iE1, iF, iE0);
        }

        @Override // s.d
        public String e(int i11) {
            return q.b(i11, q.a(0)) ? "groupSlotIndex" : super.e(i11);
        }

        @Override // s.d
        public String f(int i11) {
            if (t.b(i11, t.a(0))) {
                return AppMeasurementSdk.ConditionalUserProperty.VALUE;
            }
            return t.b(i11, t.a(1)) ? "anchor" : super.f(i11);
        }
    }

    /* JADX INFO: renamed from: s.d$d, reason: collision with other inner class name */
    public static final class C0913d extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final C0913d f74792c = new C0913d();

        private C0913d() {
            super(0, 2, 1, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            int iA = ((androidx.compose.runtime.internal.c) eVar.a(t.a(0))).a();
            List list = (List) eVar.a(t.a(1));
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                Object obj = list.get(i11);
                Intrinsics.f(fVar, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
                int i12 = iA + i11;
                fVar.i(i12, obj);
                fVar.g(i12, obj);
            }
        }

        @Override // s.d
        public String f(int i11) {
            if (t.b(i11, t.a(0))) {
                return "effectiveNodeIndex";
            }
            return t.b(i11, t.a(1)) ? "nodes" : super.f(i11);
        }
    }

    public static final class d0 extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final d0 f74793c = new d0();

        /* JADX WARN: Illegal instructions before constructor call */
        private d0() {
            int i11 = 1;
            super(0, i11, i11, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            m2Var.o1(eVar.a(t.a(0)));
        }

        @Override // s.d
        public String f(int i11) {
            return t.b(i11, t.a(0)) ? "data" : super.f(i11);
        }
    }

    public static final class e extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final e f74794c = new e();

        private e() {
            super(0, 4, 1, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            y0 y0Var = (y0) eVar.a(t.a(2));
            androidx.compose.runtime.m mVar = (androidx.compose.runtime.m) eVar.a(t.a(1));
            mVar.l(y0Var);
            androidx.compose.runtime.k.s("Could not resolve state for movable content");
            throw new KotlinNothingValueException();
        }

        @Override // s.d
        public String f(int i11) {
            if (t.b(i11, t.a(0))) {
                return "resolvedState";
            }
            if (t.b(i11, t.a(1))) {
                return "resolvedCompositionContext";
            }
            if (t.b(i11, t.a(2))) {
                return "from";
            }
            return t.b(i11, t.a(3)) ? "to" : super.f(i11);
        }
    }

    public static final class e0 extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final e0 f74795c = new e0();

        private e0() {
            super(0, 2, 1, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            ((Function2) eVar.a(t.a(1))).invoke(fVar.d(), eVar.a(t.a(0)));
        }

        @Override // s.d
        public String f(int i11) {
            if (t.b(i11, t.a(0))) {
                return AppMeasurementSdk.ConditionalUserProperty.VALUE;
            }
            return t.b(i11, t.a(1)) ? "block" : super.f(i11);
        }
    }

    public static final class f extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final f f74796c = new f();

        /* JADX WARN: Illegal instructions before constructor call */
        private f() {
            int i11 = 0;
            super(i11, i11, 3, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            androidx.compose.runtime.k.t(m2Var, a2Var);
        }
    }

    public static final class f0 extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final f0 f74797c = new f0();

        /* JADX WARN: Illegal instructions before constructor call */
        private f0() {
            int i11 = 1;
            super(i11, i11, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            Object objA = eVar.a(t.a(0));
            int iB = eVar.b(q.a(0));
            if (objA instanceof c2) {
                a2Var.c(((c2) objA).b());
            }
            Object objS0 = m2Var.S0(iB, objA);
            if (objS0 instanceof c2) {
                a2Var.e(((c2) objS0).b(), m2Var.e0() - m2Var.a1(m2Var.a0(), iB), -1, -1);
            } else if (objS0 instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) objS0).x();
            }
        }

        @Override // s.d
        public String e(int i11) {
            return q.b(i11, q.a(0)) ? "groupSlotIndex" : super.e(i11);
        }

        @Override // s.d
        public String f(int i11) {
            return t.b(i11, t.a(0)) ? AppMeasurementSdk.ConditionalUserProperty.VALUE : super.f(i11);
        }
    }

    public static final class g extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final g f74798c = new g();

        private g() {
            super(0, 2, 1, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            androidx.compose.runtime.internal.c cVar = (androidx.compose.runtime.internal.c) eVar.a(t.a(0));
            androidx.compose.runtime.c cVar2 = (androidx.compose.runtime.c) eVar.a(t.a(1));
            Intrinsics.f(fVar, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            cVar.b(s.f.d(m2Var, cVar2, fVar));
        }

        @Override // s.d
        public String f(int i11) {
            if (t.b(i11, t.a(0))) {
                return "effectiveNodeIndexOut";
            }
            return t.b(i11, t.a(1)) ? "anchor" : super.f(i11);
        }
    }

    public static final class g0 extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final g0 f74799c = new g0();

        private g0() {
            super(1, 0, 2, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            int iB = eVar.b(q.a(0));
            for (int i11 = 0; i11 < iB; i11++) {
                fVar.l();
            }
        }

        @Override // s.d
        public String e(int i11) {
            return q.b(i11, q.a(0)) ? "count" : super.e(i11);
        }
    }

    public static final class h extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final h f74800c = new h();

        /* JADX WARN: Illegal instructions before constructor call */
        private h() {
            int i11 = 1;
            super(0, i11, i11, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            Intrinsics.f(fVar, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            for (Object obj : (Object[]) eVar.a(t.a(0))) {
                fVar.j(obj);
            }
        }

        @Override // s.d
        public String f(int i11) {
            return t.b(i11, t.a(0)) ? "nodes" : super.f(i11);
        }
    }

    public static final class h0 extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final h0 f74801c = new h0();

        /* JADX WARN: Illegal instructions before constructor call */
        private h0() {
            int i11 = 0;
            super(i11, i11, 3, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            Object objD = fVar.d();
            Intrinsics.f(objD, "null cannot be cast to non-null type androidx.compose.runtime.ComposeNodeLifecycleCallback");
            ((androidx.compose.runtime.h) objD).onReuse();
        }
    }

    public static final class i extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final i f74802c = new i();

        private i() {
            super(0, 2, 1, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            ((Function1) eVar.a(t.a(0))).invoke((androidx.compose.runtime.l) eVar.a(t.a(1)));
        }

        @Override // s.d
        public String f(int i11) {
            if (t.b(i11, t.a(0))) {
                return "anchor";
            }
            return t.b(i11, t.a(1)) ? "composition" : super.f(i11);
        }
    }

    public static final class j extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final j f74803c = new j();

        /* JADX WARN: Illegal instructions before constructor call */
        private j() {
            int i11 = 0;
            super(i11, i11, 3, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            m2Var.T();
        }
    }

    public static final class k extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final k f74804c = new k();

        /* JADX WARN: Illegal instructions before constructor call */
        private k() {
            int i11 = 0;
            super(i11, i11, 3, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            Intrinsics.f(fVar, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            s.f.e(m2Var, fVar, 0);
            m2Var.T();
        }
    }

    public static final class l extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final l f74805c = new l();

        /* JADX WARN: Illegal instructions before constructor call */
        private l() {
            int i11 = 1;
            super(0, i11, i11, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            m2Var.W((androidx.compose.runtime.c) eVar.a(t.a(0)));
        }

        @Override // s.d
        public String f(int i11) {
            return t.b(i11, t.a(0)) ? "anchor" : super.f(i11);
        }
    }

    public static final class m extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final m f74806c = new m();

        /* JADX WARN: Illegal instructions before constructor call */
        private m() {
            int i11 = 0;
            super(i11, i11, 3, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            m2Var.V(0);
        }
    }

    public static final class n extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final n f74807c = new n();

        private n() {
            super(1, 2, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            Object objInvoke = ((Function0) eVar.a(t.a(0))).invoke();
            androidx.compose.runtime.c cVar = (androidx.compose.runtime.c) eVar.a(t.a(1));
            int iB = eVar.b(q.a(0));
            Intrinsics.f(fVar, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            m2Var.s1(cVar, objInvoke);
            fVar.g(iB, objInvoke);
            fVar.j(objInvoke);
        }

        @Override // s.d
        public String e(int i11) {
            return q.b(i11, q.a(0)) ? "insertIndex" : super.e(i11);
        }

        @Override // s.d
        public String f(int i11) {
            if (t.b(i11, t.a(0))) {
                return "factory";
            }
            return t.b(i11, t.a(1)) ? "groupAnchor" : super.f(i11);
        }
    }

    public static final class o extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final o f74808c = new o();

        private o() {
            super(0, 2, 1, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            j2 j2Var = (j2) eVar.a(t.a(1));
            androidx.compose.runtime.c cVar = (androidx.compose.runtime.c) eVar.a(t.a(0));
            m2Var.I();
            m2Var.v0(j2Var, cVar.d(j2Var), false);
            m2Var.U();
        }

        @Override // s.d
        public String f(int i11) {
            if (t.b(i11, t.a(0))) {
                return "anchor";
            }
            return t.b(i11, t.a(1)) ? "from" : super.f(i11);
        }
    }

    public static final class p extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final p f74809c = new p();

        private p() {
            super(0, 3, 1, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            j2 j2Var = (j2) eVar.a(t.a(1));
            androidx.compose.runtime.c cVar = (androidx.compose.runtime.c) eVar.a(t.a(0));
            s.c cVar2 = (s.c) eVar.a(t.a(2));
            m2 m2VarX = j2Var.x();
            try {
                cVar2.d(fVar, m2VarX, a2Var);
                Unit unit = Unit.f67061a;
                m2VarX.L(true);
                m2Var.I();
                m2Var.v0(j2Var, cVar.d(j2Var), false);
                m2Var.U();
            } catch (Throwable th2) {
                m2VarX.L(false);
                throw th2;
            }
        }

        @Override // s.d
        public String f(int i11) {
            if (t.b(i11, t.a(0))) {
                return "anchor";
            }
            if (t.b(i11, t.a(1))) {
                return "from";
            }
            return t.b(i11, t.a(2)) ? "fixups" : super.f(i11);
        }
    }

    public static final class q {
        public static int a(int i11) {
            return i11;
        }

        public static final boolean b(int i11, int i12) {
            return i11 == i12;
        }
    }

    public static final class r extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final r f74810c = new r();

        private r() {
            super(1, 0, 2, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            m2Var.w0(eVar.b(q.a(0)));
        }

        @Override // s.d
        public String e(int i11) {
            return q.b(i11, q.a(0)) ? "offset" : super.e(i11);
        }
    }

    public static final class s extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final s f74811c = new s();

        private s() {
            super(3, 0, 2, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            fVar.f(eVar.b(q.a(0)), eVar.b(q.a(1)), eVar.b(q.a(2)));
        }

        @Override // s.d
        public String e(int i11) {
            if (q.b(i11, q.a(0))) {
                return "from";
            }
            if (q.b(i11, q.a(1))) {
                return "to";
            }
            return q.b(i11, q.a(2)) ? "count" : super.e(i11);
        }
    }

    public static final class t {
        public static int a(int i11) {
            return i11;
        }

        public static final boolean b(int i11, int i12) {
            return i11 == i12;
        }
    }

    public static final class u extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final u f74812c = new u();

        /* JADX WARN: Illegal instructions before constructor call */
        private u() {
            int i11 = 1;
            super(i11, i11, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            androidx.compose.runtime.c cVar = (androidx.compose.runtime.c) eVar.a(t.a(0));
            int iB = eVar.b(q.a(0));
            fVar.l();
            Intrinsics.f(fVar, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            fVar.i(iB, m2Var.B0(cVar));
        }

        @Override // s.d
        public String e(int i11) {
            return q.b(i11, q.a(0)) ? "insertIndex" : super.e(i11);
        }

        @Override // s.d
        public String f(int i11) {
            return t.b(i11, t.a(0)) ? "groupAnchor" : super.f(i11);
        }
    }

    public static final class v extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final v f74813c = new v();

        /* JADX WARN: Illegal instructions before constructor call */
        private v() {
            int i11 = 1;
            super(0, i11, i11, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            a2Var.c((b2) eVar.a(t.a(0)));
        }

        @Override // s.d
        public String f(int i11) {
            return t.b(i11, t.a(0)) ? AppMeasurementSdk.ConditionalUserProperty.VALUE : super.f(i11);
        }
    }

    public static final class w extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final w f74814c = new w();

        /* JADX WARN: Illegal instructions before constructor call */
        private w() {
            int i11 = 0;
            super(i11, i11, 3, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            androidx.compose.runtime.k.K(m2Var, a2Var);
        }
    }

    public static final class x extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final x f74815c = new x();

        /* JADX WARN: Illegal instructions before constructor call */
        private x() {
            int i11 = 2;
            super(i11, 0, i11, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            fVar.e(eVar.b(q.a(0)), eVar.b(q.a(1)));
        }

        @Override // s.d
        public String e(int i11) {
            if (q.b(i11, q.a(0))) {
                return "removeIndex";
            }
            return q.b(i11, q.a(1)) ? "count" : super.e(i11);
        }
    }

    public static final class y extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final y f74816c = new y();

        /* JADX WARN: Illegal instructions before constructor call */
        private y() {
            int i11 = 0;
            super(i11, i11, 3, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            m2Var.O0();
        }
    }

    public static final class z extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final z f74817c = new z();

        /* JADX WARN: Illegal instructions before constructor call */
        private z() {
            int i11 = 1;
            super(0, i11, i11, null);
        }

        @Override // s.d
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            a2Var.a((Function0) eVar.a(t.a(0)));
        }

        @Override // s.d
        public String f(int i11) {
            return t.b(i11, t.a(0)) ? "effect" : super.f(i11);
        }
    }

    private d(int i11, int i12) {
        this.f74784a = i11;
        this.f74785b = i12;
    }

    public /* synthetic */ d(int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 0 : i11, (i13 & 2) != 0 ? 0 : i12, null);
    }

    public /* synthetic */ d(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, i12);
    }

    public abstract void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var);

    public final int b() {
        return this.f74784a;
    }

    public final String c() {
        String strG = Reflection.b(getClass()).g();
        return strG == null ? "" : strG;
    }

    public final int d() {
        return this.f74785b;
    }

    public String e(int i11) {
        return "IntParameter(" + i11 + ')';
    }

    public String f(int i11) {
        return "ObjectParameter(" + i11 + ')';
    }

    public String toString() {
        return c();
    }
}
