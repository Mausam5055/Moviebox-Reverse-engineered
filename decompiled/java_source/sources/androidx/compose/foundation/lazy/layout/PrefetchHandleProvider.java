package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.compose.ui.node.m1;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class PrefetchHandleProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LazyLayoutItemContentFactory f3011a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SubcomposeLayoutState f3012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i0 f3013c;

    private final class HandleAndRequestImpl implements x.b, g0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f3014a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f3015b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final f0 f3016c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private SubcomposeLayoutState.a f3017d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f3018e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f3019f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f3020g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private a f3021h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f3022i;

        private final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final List f3024a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final List[] f3025b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f3026c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f3027d;

            public a(List list) {
                this.f3024a = list;
                this.f3025b = new List[list.size()];
                if (list.isEmpty()) {
                    throw new IllegalArgumentException("NestedPrefetchController shouldn't be created with no states");
                }
            }

            public final boolean a(h0 h0Var) {
                if (this.f3026c >= this.f3024a.size()) {
                    return false;
                }
                if (HandleAndRequestImpl.this.f3019f) {
                    throw new IllegalStateException("Should not execute nested prefetch on canceled request");
                }
                Trace.beginSection("compose:lazy:prefetch:nested");
                while (this.f3026c < this.f3024a.size()) {
                    try {
                        if (this.f3025b[this.f3026c] == null) {
                            if (h0Var.a() <= 0) {
                                Trace.endSection();
                                return true;
                            }
                            List[] listArr = this.f3025b;
                            int i11 = this.f3026c;
                            listArr[i11] = ((x) this.f3024a.get(i11)).b();
                        }
                        List list = this.f3025b[this.f3026c];
                        Intrinsics.e(list);
                        while (this.f3027d < list.size()) {
                            if (((g0) list.get(this.f3027d)).b(h0Var)) {
                                Trace.endSection();
                                return true;
                            }
                            this.f3027d++;
                        }
                        this.f3027d = 0;
                        this.f3026c++;
                    } catch (Throwable th2) {
                        Trace.endSection();
                        throw th2;
                    }
                }
                Unit unit = Unit.f67061a;
                Trace.endSection();
                return false;
            }
        }

        private HandleAndRequestImpl(int i11, long j11, f0 f0Var) {
            this.f3014a = i11;
            this.f3015b = j11;
            this.f3016c = f0Var;
        }

        public /* synthetic */ HandleAndRequestImpl(PrefetchHandleProvider prefetchHandleProvider, int i11, long j11, f0 f0Var, DefaultConstructorMarker defaultConstructorMarker) {
            this(i11, j11, f0Var);
        }

        private final boolean d() {
            return this.f3017d != null;
        }

        private final boolean e() {
            if (!this.f3019f) {
                int itemCount = ((m) PrefetchHandleProvider.this.f3011a.d().invoke()).getItemCount();
                int i11 = this.f3014a;
                if (i11 >= 0 && i11 < itemCount) {
                    return true;
                }
            }
            return false;
        }

        private final void f() {
            if (!e()) {
                throw new IllegalArgumentException("Callers should check whether the request is still valid before calling performComposition()");
            }
            if (this.f3017d != null) {
                throw new IllegalArgumentException("Request was already composed!");
            }
            m mVar = (m) PrefetchHandleProvider.this.f3011a.d().invoke();
            Object objB = mVar.b(this.f3014a);
            this.f3017d = PrefetchHandleProvider.this.f3012b.i(objB, PrefetchHandleProvider.this.f3011a.b(this.f3014a, objB, mVar.c(this.f3014a)));
        }

        private final void g(long j11) {
            if (this.f3019f) {
                throw new IllegalArgumentException("Callers should check whether the request is still valid before calling performMeasure()");
            }
            if (this.f3018e) {
                throw new IllegalArgumentException("Request was already measured!");
            }
            this.f3018e = true;
            SubcomposeLayoutState.a aVar = this.f3017d;
            if (aVar == null) {
                throw new IllegalArgumentException("performComposition() must be called before performMeasure()");
            }
            int iB = aVar.b();
            for (int i11 = 0; i11 < iB; i11++) {
                aVar.c(i11, j11);
            }
        }

        private final a h() {
            SubcomposeLayoutState.a aVar = this.f3017d;
            if (aVar == null) {
                throw new IllegalArgumentException("Should precompose before resolving nested prefetch states");
            }
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            aVar.a("androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode", new Function1<m1, TraversableNode$Companion$TraverseDescendantsAction>() { // from class: androidx.compose.foundation.lazy.layout.PrefetchHandleProvider$HandleAndRequestImpl$resolveNestedPrefetchStates$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public final TraversableNode$Companion$TraverseDescendantsAction invoke(m1 m1Var) {
                    T tQ;
                    Intrinsics.f(m1Var, "null cannot be cast to non-null type androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode");
                    x xVarD1 = ((l0) m1Var).D1();
                    Ref.ObjectRef<List<x>> objectRef2 = objectRef;
                    List<x> list = objectRef2.element;
                    if (list != null) {
                        list.add(xVarD1);
                        tQ = list;
                    } else {
                        tQ = CollectionsKt.q(xVarD1);
                    }
                    objectRef2.element = tQ;
                    return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
                }
            });
            List list = (List) objectRef.element;
            if (list != null) {
                return new a(list);
            }
            return null;
        }

        private final boolean i(h0 h0Var, long j11) {
            long jA = h0Var.a();
            return (this.f3022i && jA > 0) || j11 < jA;
        }

        @Override // androidx.compose.foundation.lazy.layout.x.b
        public void a() {
            this.f3022i = true;
        }

        @Override // androidx.compose.foundation.lazy.layout.g0
        public boolean b(h0 h0Var) {
            if (!e()) {
                return false;
            }
            Object objC = ((m) PrefetchHandleProvider.this.f3011a.d().invoke()).c(this.f3014a);
            if (!d()) {
                if (!i(h0Var, (objC == null || !this.f3016c.f().a(objC)) ? this.f3016c.e() : this.f3016c.f().c(objC))) {
                    return true;
                }
                f0 f0Var = this.f3016c;
                long jNanoTime = System.nanoTime();
                Trace.beginSection("compose:lazy:prefetch:compose");
                try {
                    f();
                    Unit unit = Unit.f67061a;
                    Trace.endSection();
                    long jNanoTime2 = System.nanoTime() - jNanoTime;
                    if (objC != null) {
                        f0Var.f().p(objC, f0Var.d(jNanoTime2, f0Var.f().e(objC, 0L)));
                    }
                    f0Var.f3055c = f0Var.d(jNanoTime2, f0Var.e());
                } catch (Throwable th2) {
                    Trace.endSection();
                    throw th2;
                }
            }
            if (!this.f3022i) {
                if (!this.f3020g) {
                    if (h0Var.a() <= 0) {
                        return true;
                    }
                    Trace.beginSection("compose:lazy:prefetch:resolve-nested");
                    try {
                        this.f3021h = h();
                        this.f3020g = true;
                        Unit unit2 = Unit.f67061a;
                        Trace.endSection();
                    } catch (Throwable th3) {
                        Trace.endSection();
                        throw th3;
                    }
                }
                a aVar = this.f3021h;
                if (aVar != null ? aVar.a(h0Var) : false) {
                    return true;
                }
            }
            if (!this.f3018e && !o0.b.p(this.f3015b)) {
                if (!i(h0Var, (objC == null || !this.f3016c.h().a(objC)) ? this.f3016c.g() : this.f3016c.h().c(objC))) {
                    return true;
                }
                f0 f0Var2 = this.f3016c;
                long jNanoTime3 = System.nanoTime();
                Trace.beginSection("compose:lazy:prefetch:measure");
                try {
                    g(this.f3015b);
                    Unit unit3 = Unit.f67061a;
                    Trace.endSection();
                    long jNanoTime4 = System.nanoTime() - jNanoTime3;
                    if (objC != null) {
                        f0Var2.h().p(objC, f0Var2.d(jNanoTime4, f0Var2.h().e(objC, 0L)));
                    }
                    f0Var2.f3056d = f0Var2.d(jNanoTime4, f0Var2.g());
                } catch (Throwable th4) {
                    Trace.endSection();
                    throw th4;
                }
            }
            return false;
        }

        @Override // androidx.compose.foundation.lazy.layout.x.b
        public void cancel() {
            if (this.f3019f) {
                return;
            }
            this.f3019f = true;
            SubcomposeLayoutState.a aVar = this.f3017d;
            if (aVar != null) {
                aVar.dispose();
            }
            this.f3017d = null;
        }

        public String toString() {
            return "HandleAndRequestImpl { index = " + this.f3014a + ", constraints = " + ((Object) o0.b.q(this.f3015b)) + ", isComposed = " + d() + ", isMeasured = " + this.f3018e + ", isCanceled = " + this.f3019f + " }";
        }
    }

    public PrefetchHandleProvider(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, SubcomposeLayoutState subcomposeLayoutState, i0 i0Var) {
        this.f3011a = lazyLayoutItemContentFactory;
        this.f3012b = subcomposeLayoutState;
        this.f3013c = i0Var;
    }

    public final g0 c(int i11, long j11, f0 f0Var) {
        return new HandleAndRequestImpl(this, i11, j11, f0Var, null);
    }

    public final x.b d(int i11, long j11, f0 f0Var) {
        HandleAndRequestImpl handleAndRequestImpl = new HandleAndRequestImpl(this, i11, j11, f0Var, null);
        this.f3013c.schedulePrefetch(handleAndRequestImpl);
        return handleAndRequestImpl;
    }
}
