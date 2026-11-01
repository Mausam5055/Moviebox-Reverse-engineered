package androidx.compose.animation.core;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class Animatable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s0 f2374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f2375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f2376c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i f2377d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i1 f2378e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i1 f2379f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final MutatorMutex f2380g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final o0 f2381h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final o f2382i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final o f2383j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private o f2384k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private o f2385l;

    public Animatable(Object obj, s0 s0Var, Object obj2, String str) {
        this.f2374a = s0Var;
        this.f2375b = obj2;
        this.f2376c = str;
        this.f2377d = new i(s0Var, obj, null, 0L, 0L, false, 60, null);
        this.f2378e = u2.c(Boolean.FALSE, null, 2, null);
        this.f2379f = u2.c(obj, null, 2, null);
        this.f2380g = new MutatorMutex();
        this.f2381h = new o0(0.0f, 0.0f, obj2, 3, null);
        o oVarM = m();
        o oVar = oVarM instanceof k ? a.f2403e : oVarM instanceof l ? a.f2404f : oVarM instanceof m ? a.f2405g : a.f2406h;
        Intrinsics.f(oVar, "null cannot be cast to non-null type V of androidx.compose.animation.core.Animatable");
        this.f2382i = oVar;
        o oVarM2 = m();
        o oVar2 = oVarM2 instanceof k ? a.f2399a : oVarM2 instanceof l ? a.f2400b : oVarM2 instanceof m ? a.f2401c : a.f2402d;
        Intrinsics.f(oVar2, "null cannot be cast to non-null type V of androidx.compose.animation.core.Animatable");
        this.f2383j = oVar2;
        this.f2384k = oVar;
        this.f2385l = oVar2;
    }

    public /* synthetic */ Animatable(Object obj, s0 s0Var, Object obj2, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, s0Var, (i11 & 4) != 0 ? null : obj2, (i11 & 8) != 0 ? "Animatable" : str);
    }

    public static /* synthetic */ Object f(Animatable animatable, Object obj, g gVar, Object obj2, Function1 function1, Continuation continuation, int i11, Object obj3) {
        if ((i11 & 2) != 0) {
            gVar = animatable.f2381h;
        }
        g gVar2 = gVar;
        if ((i11 & 4) != 0) {
            obj2 = animatable.l();
        }
        Object obj4 = obj2;
        if ((i11 & 8) != 0) {
            function1 = null;
        }
        return animatable.e(obj, gVar2, obj4, function1, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object g(Object obj) {
        if (Intrinsics.c(this.f2384k, this.f2382i) && Intrinsics.c(this.f2385l, this.f2383j)) {
            return obj;
        }
        o oVar = (o) this.f2374a.a().invoke(obj);
        int iB = oVar.b();
        boolean z10 = false;
        for (int i11 = 0; i11 < iB; i11++) {
            if (oVar.a(i11) < this.f2384k.a(i11) || oVar.a(i11) > this.f2385l.a(i11)) {
                oVar.e(i11, RangesKt.l(oVar.a(i11), this.f2384k.a(i11), this.f2385l.a(i11)));
                z10 = true;
            }
        }
        return z10 ? this.f2374a.b().invoke(oVar) : obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h() {
        i iVar = this.f2377d;
        iVar.g().d();
        iVar.j(Long.MIN_VALUE);
        o(false);
    }

    private final Object n(c cVar, Object obj, Function1 function1, Continuation continuation) {
        return MutatorMutex.e(this.f2380g, null, new Animatable$runAnimation$2(this, obj, cVar, this.f2377d.d(), function1, null), continuation, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(boolean z10) {
        this.f2378e.setValue(Boolean.valueOf(z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p(Object obj) {
        this.f2379f.setValue(obj);
    }

    public final Object e(Object obj, g gVar, Object obj2, Function1 function1, Continuation continuation) {
        return n(d.a(gVar, this.f2374a, k(), obj, obj2), obj2, function1, continuation);
    }

    public final i i() {
        return this.f2377d;
    }

    public final s0 j() {
        return this.f2374a;
    }

    public final Object k() {
        return this.f2377d.getValue();
    }

    public final Object l() {
        return this.f2374a.b().invoke(m());
    }

    public final o m() {
        return this.f2377d.g();
    }
}
