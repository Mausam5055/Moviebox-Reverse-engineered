package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.KotlinNothingValueException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class o implements y, d2, w1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f3833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f3834b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicReference f3835c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f3836d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set f3837e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final j2 f3838f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final androidx.compose.runtime.collection.e f3839g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final MutableScatterSet f3840h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final MutableScatterSet f3841i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.compose.runtime.collection.e f3842j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final s.a f3843k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final s.a f3844l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final androidx.compose.runtime.collection.e f3845m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private androidx.compose.runtime.collection.e f3846n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f3847o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private o f3848p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f3849q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final u f3850r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final ComposerImpl f3851s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final CoroutineContext f3852t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final boolean f3853u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f3854v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Function2 f3855w;

    private static final class a implements a2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Set f3856a;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private MutableScatterSet f3860e;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f3857b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List f3858c = new ArrayList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List f3859d = new ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final List f3861f = new ArrayList();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final androidx.collection.d0 f3862g = new androidx.collection.d0(0, 1, null);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final androidx.collection.d0 f3863h = new androidx.collection.d0(0, 1, null);

        public a(Set set) {
            this.f3856a = set;
        }

        private final void i(int i11) {
            int i12 = 0;
            if (this.f3861f.isEmpty()) {
                return;
            }
            int i13 = 0;
            List listQ = null;
            androidx.collection.d0 d0Var = null;
            androidx.collection.d0 d0Var2 = null;
            while (i13 < this.f3863h.b()) {
                if (i11 <= this.f3863h.a(i13)) {
                    Object objRemove = this.f3861f.remove(i13);
                    int i14 = this.f3863h.i(i13);
                    int i15 = this.f3862g.i(i13);
                    if (listQ == null) {
                        listQ = CollectionsKt.q(objRemove);
                        d0Var2 = new androidx.collection.d0(0, 1, null);
                        d0Var2.e(i14);
                        d0Var = new androidx.collection.d0(0, 1, null);
                        d0Var.e(i15);
                    } else {
                        Intrinsics.f(d0Var, "null cannot be cast to non-null type androidx.collection.MutableIntList");
                        Intrinsics.f(d0Var2, "null cannot be cast to non-null type androidx.collection.MutableIntList");
                        listQ.add(objRemove);
                        d0Var2.e(i14);
                        d0Var.e(i15);
                    }
                } else {
                    i13++;
                }
            }
            if (listQ != null) {
                Intrinsics.f(d0Var, "null cannot be cast to non-null type androidx.collection.MutableIntList");
                Intrinsics.f(d0Var2, "null cannot be cast to non-null type androidx.collection.MutableIntList");
                int size = listQ.size() - 1;
                while (i12 < size) {
                    int i16 = i12 + 1;
                    int size2 = listQ.size();
                    for (int i17 = i16; i17 < size2; i17++) {
                        int iA = d0Var2.a(i12);
                        int iA2 = d0Var2.a(i17);
                        if (iA < iA2 || (iA2 == iA && d0Var.a(i12) < d0Var.a(i17))) {
                            p.g(listQ, i12, i17);
                            p.f(d0Var, i12, i17);
                            p.f(d0Var2, i12, i17);
                        }
                    }
                    i12 = i16;
                }
                this.f3858c.addAll(listQ);
            }
        }

        private final void j(Object obj, int i11, int i12, int i13) {
            i(i11);
            if (i13 < 0 || i13 >= i11) {
                this.f3858c.add(obj);
                return;
            }
            this.f3861f.add(obj);
            this.f3862g.e(i12);
            this.f3863h.e(i13);
        }

        @Override // androidx.compose.runtime.a2
        public void a(Function0 function0) {
            this.f3859d.add(function0);
        }

        @Override // androidx.compose.runtime.a2
        public void b(h hVar, int i11, int i12, int i13) {
            MutableScatterSet mutableScatterSetA = this.f3860e;
            if (mutableScatterSetA == null) {
                mutableScatterSetA = androidx.collection.w0.a();
                this.f3860e = mutableScatterSetA;
            }
            mutableScatterSetA.w(hVar);
            j(hVar, i11, i12, i13);
        }

        @Override // androidx.compose.runtime.a2
        public void c(b2 b2Var) {
            this.f3857b.add(b2Var);
        }

        @Override // androidx.compose.runtime.a2
        public void d(h hVar, int i11, int i12, int i13) {
            j(hVar, i11, i12, i13);
        }

        @Override // androidx.compose.runtime.a2
        public void e(b2 b2Var, int i11, int i12, int i13) {
            j(b2Var, i11, i12, i13);
        }

        public final void f() {
            if (this.f3856a.isEmpty()) {
                return;
            }
            Object objA = e3.f3694a.a("Compose:abandons");
            try {
                Iterator it = this.f3856a.iterator();
                while (it.hasNext()) {
                    b2 b2Var = (b2) it.next();
                    it.remove();
                    b2Var.onAbandoned();
                }
                Unit unit = Unit.f67061a;
            } finally {
                e3.f3694a.b(objA);
            }
        }

        public final void g() {
            i(Integer.MIN_VALUE);
            if (!this.f3858c.isEmpty()) {
                Object objA = e3.f3694a.a("Compose:onForgotten");
                try {
                    MutableScatterSet mutableScatterSet = this.f3860e;
                    for (int size = this.f3858c.size() - 1; -1 < size; size--) {
                        Object obj = this.f3858c.get(size);
                        if (obj instanceof b2) {
                            this.f3856a.remove(obj);
                            ((b2) obj).onForgotten();
                        }
                        if (obj instanceof h) {
                            if (mutableScatterSet == null || !mutableScatterSet.a(obj)) {
                                ((h) obj).onDeactivate();
                            } else {
                                ((h) obj).onRelease();
                            }
                        }
                    }
                    Unit unit = Unit.f67061a;
                    e3.f3694a.b(objA);
                } catch (Throwable th2) {
                    e3.f3694a.b(objA);
                    throw th2;
                }
            }
            if (this.f3857b.isEmpty()) {
                return;
            }
            Object objA2 = e3.f3694a.a("Compose:onRemembered");
            try {
                List list = this.f3857b;
                int size2 = list.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    b2 b2Var = (b2) list.get(i11);
                    this.f3856a.remove(b2Var);
                    b2Var.onRemembered();
                }
                Unit unit2 = Unit.f67061a;
            } finally {
                e3.f3694a.b(objA2);
            }
        }

        public final void h() {
            if (this.f3859d.isEmpty()) {
                return;
            }
            Object objA = e3.f3694a.a("Compose:sideeffects");
            try {
                List list = this.f3859d;
                int size = list.size();
                for (int i11 = 0; i11 < size; i11++) {
                    ((Function0) list.get(i11)).invoke();
                }
                this.f3859d.clear();
                Unit unit = Unit.f67061a;
            } finally {
                e3.f3694a.b(objA);
            }
        }
    }

    public o(m mVar, f fVar, CoroutineContext coroutineContext) {
        this.f3833a = mVar;
        this.f3834b = fVar;
        this.f3835c = new AtomicReference(null);
        this.f3836d = new Object();
        Set setL = new MutableScatterSet(0, 1, null).l();
        this.f3837e = setL;
        j2 j2Var = new j2();
        if (mVar.c()) {
            j2Var.h();
        }
        if (mVar.e()) {
            j2Var.j();
        }
        this.f3838f = j2Var;
        this.f3839g = new androidx.compose.runtime.collection.e();
        this.f3840h = new MutableScatterSet(0, 1, null);
        this.f3841i = new MutableScatterSet(0, 1, null);
        this.f3842j = new androidx.compose.runtime.collection.e();
        s.a aVar = new s.a();
        this.f3843k = aVar;
        s.a aVar2 = new s.a();
        this.f3844l = aVar2;
        this.f3845m = new androidx.compose.runtime.collection.e();
        this.f3846n = new androidx.compose.runtime.collection.e();
        this.f3850r = new u(null, false, 3, null);
        ComposerImpl composerImpl = new ComposerImpl(fVar, mVar, j2Var, setL, aVar, aVar2, this);
        mVar.n(composerImpl);
        this.f3851s = composerImpl;
        this.f3852t = coroutineContext;
        this.f3853u = mVar instanceof Recomposer;
        this.f3855w = ComposableSingletons$CompositionKt.f3559a.a();
    }

    public /* synthetic */ o(m mVar, f fVar, CoroutineContext coroutineContext, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(mVar, fVar, (i11 & 4) != 0 ? null : coroutineContext);
    }

    private final void A(Function2 function2) {
        if (this.f3854v) {
            o1.b("The composition is disposed");
        }
        this.f3855w = function2;
        this.f3833a.a(this, function2);
    }

    private final void B() {
        Object andSet = this.f3835c.getAndSet(p.f3867a);
        if (andSet != null) {
            if (Intrinsics.c(andSet, p.f3867a)) {
                k.s("pending composition has not been applied");
                throw new KotlinNothingValueException();
            }
            if (andSet instanceof Set) {
                x((Set) andSet, true);
                return;
            }
            if (!(andSet instanceof Object[])) {
                k.s("corrupt pendingModifications drain: " + this.f3835c);
                throw new KotlinNothingValueException();
            }
            for (Set set : (Set[]) andSet) {
                x(set, true);
            }
        }
    }

    private final void C() {
        Object andSet = this.f3835c.getAndSet(null);
        if (Intrinsics.c(andSet, p.f3867a)) {
            return;
        }
        if (andSet instanceof Set) {
            x((Set) andSet, false);
            return;
        }
        if (andSet instanceof Object[]) {
            for (Set set : (Set[]) andSet) {
                x(set, false);
            }
            return;
        }
        if (andSet == null) {
            k.s("calling recordModificationsOf and applyChanges concurrently is not supported");
            throw new KotlinNothingValueException();
        }
        k.s("corrupt pendingModifications drain: " + this.f3835c);
        throw new KotlinNothingValueException();
    }

    private final boolean D() {
        return this.f3851s.z0();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00a1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x00a3 A[Catch: all -> 0x001e, LOOP:0: B:32:0x0064->B:47:0x00a3, LOOP_END, TryCatch #0 {all -> 0x001e, blocks: (B:4:0x000b, B:6:0x0010, B:14:0x0023, B:16:0x0029, B:19:0x002d, B:21:0x0032, B:22:0x003b, B:24:0x003f, B:25:0x0048, B:27:0x0054, B:29:0x0058, B:32:0x0064, B:34:0x0074, B:36:0x0080, B:38:0x008a, B:43:0x0099, B:47:0x00a3, B:48:0x00a6, B:51:0x00ab), top: B:63:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00ab A[Catch: all -> 0x001e, EDGE_INSN: B:51:0x00ab->B:52:0x00b0 BREAK  A[LOOP:0: B:32:0x0064->B:47:0x00a3], TRY_LEAVE, TryCatch #0 {all -> 0x001e, blocks: (B:4:0x000b, B:6:0x0010, B:14:0x0023, B:16:0x0029, B:19:0x002d, B:21:0x0032, B:22:0x003b, B:24:0x003f, B:25:0x0048, B:27:0x0054, B:29:0x0058, B:32:0x0064, B:34:0x0074, B:36:0x0080, B:38:0x008a, B:43:0x0099, B:47:0x00a3, B:48:0x00a6, B:51:0x00ab), top: B:63:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00ab A[SYNTHETIC] */
    private final InvalidationResult F(RecomposeScopeImpl recomposeScopeImpl, c cVar, Object obj) {
        int i11;
        synchronized (this.f3836d) {
            try {
                o oVar = this.f3848p;
                o oVar2 = null;
                if (oVar != null) {
                    if (!this.f3838f.v(this.f3849q, cVar)) {
                        oVar = null;
                    }
                    oVar2 = oVar;
                }
                if (oVar2 == null) {
                    if (L(recomposeScopeImpl, obj)) {
                        return InvalidationResult.IMMINENT;
                    }
                    H();
                    if (obj != null && (obj instanceof z)) {
                        Object objB = this.f3846n.d().b(recomposeScopeImpl);
                        if (objB != null) {
                            if (!(objB instanceof MutableScatterSet)) {
                                if (objB != f2.f3732a) {
                                    this.f3846n.a(recomposeScopeImpl, obj);
                                    break;
                                }
                            } else {
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) objB;
                                Object[] objArr = mutableScatterSet.f2247b;
                                long[] jArr = mutableScatterSet.f2246a;
                                int length = jArr.length - 2;
                                if (length < 0) {
                                    this.f3846n.a(recomposeScopeImpl, obj);
                                    break;
                                }
                                int i12 = 0;
                                loop0: while (true) {
                                    long j11 = jArr[i12];
                                    if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                                        if (i12 == length) {
                                            this.f3846n.a(recomposeScopeImpl, obj);
                                            break;
                                        }
                                        i12++;
                                    } else {
                                        int i13 = 8;
                                        int i14 = 8 - ((~(i12 - length)) >>> 31);
                                        int i15 = 0;
                                        while (i15 < i14) {
                                            if ((j11 & 255) >= 128) {
                                                i11 = i13;
                                            } else {
                                                if (objArr[(i12 << 3) + i15] == f2.f3732a) {
                                                    break loop0;
                                                }
                                                i11 = 8;
                                            }
                                            j11 >>= i11;
                                            i15++;
                                            i13 = i11;
                                        }
                                        if (i14 == i13) {
                                            if (i12 == length) {
                                                i12++;
                                            }
                                        }
                                        this.f3846n.a(recomposeScopeImpl, obj);
                                        break;
                                    }
                                }
                            }
                        } else {
                            this.f3846n.a(recomposeScopeImpl, obj);
                            break;
                        }
                    } else {
                        this.f3846n.h(recomposeScopeImpl, f2.f3732a);
                    }
                }
                if (oVar2 != null) {
                    return oVar2.F(recomposeScopeImpl, cVar, obj);
                }
                this.f3833a.k(this);
                return o() ? InvalidationResult.DEFERRED : InvalidationResult.SCHEDULED;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void G(Object obj) {
        Object objB = this.f3839g.d().b(obj);
        if (objB == null) {
            return;
        }
        if (!(objB instanceof MutableScatterSet)) {
            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objB;
            if (recomposeScopeImpl.s(obj) == InvalidationResult.IMMINENT) {
                this.f3845m.a(obj, recomposeScopeImpl);
                return;
            }
            return;
        }
        MutableScatterSet mutableScatterSet = (MutableScatterSet) objB;
        Object[] objArr = mutableScatterSet.f2247b;
        long[] jArr = mutableScatterSet.f2246a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i11 = 0;
        while (true) {
            long j11 = jArr[i11];
            if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8 - ((~(i11 - length)) >>> 31);
                for (int i13 = 0; i13 < i12; i13++) {
                    if ((255 & j11) < 128) {
                        RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) objArr[(i11 << 3) + i13];
                        if (recomposeScopeImpl2.s(obj) == InvalidationResult.IMMINENT) {
                            this.f3845m.a(obj, recomposeScopeImpl2);
                        }
                    }
                    j11 >>= 8;
                }
                if (i12 != 8) {
                    return;
                }
            }
            if (i11 == length) {
                return;
            } else {
                i11++;
            }
        }
    }

    private final androidx.compose.runtime.tooling.c H() {
        u uVar = this.f3850r;
        if (uVar.b()) {
            uVar.a();
        } else {
            u uVarI = this.f3833a.i();
            if (uVarI != null) {
                uVarI.a();
            }
            uVar.a();
            if (!Intrinsics.c(null, null)) {
                uVar.c(null);
            }
        }
        return null;
    }

    private final androidx.compose.runtime.collection.e K() {
        androidx.compose.runtime.collection.e eVar = this.f3846n;
        this.f3846n = new androidx.compose.runtime.collection.e();
        return eVar;
    }

    private final boolean L(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        return o() && this.f3851s.o1(recomposeScopeImpl, obj);
    }

    private final void w(Object obj, boolean z10) {
        Object objB = this.f3839g.d().b(obj);
        if (objB == null) {
            return;
        }
        if (!(objB instanceof MutableScatterSet)) {
            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objB;
            if (this.f3845m.f(obj, recomposeScopeImpl) || recomposeScopeImpl.s(obj) == InvalidationResult.IGNORED) {
                return;
            }
            if (!recomposeScopeImpl.t() || z10) {
                this.f3840h.h(recomposeScopeImpl);
                return;
            } else {
                this.f3841i.h(recomposeScopeImpl);
                return;
            }
        }
        MutableScatterSet mutableScatterSet = (MutableScatterSet) objB;
        Object[] objArr = mutableScatterSet.f2247b;
        long[] jArr = mutableScatterSet.f2246a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i11 = 0;
        while (true) {
            long j11 = jArr[i11];
            if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8 - ((~(i11 - length)) >>> 31);
                for (int i13 = 0; i13 < i12; i13++) {
                    if ((255 & j11) < 128) {
                        RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) objArr[(i11 << 3) + i13];
                        if (!this.f3845m.f(obj, recomposeScopeImpl2) && recomposeScopeImpl2.s(obj) != InvalidationResult.IGNORED) {
                            if (!recomposeScopeImpl2.t() || z10) {
                                this.f3840h.h(recomposeScopeImpl2);
                            } else {
                                this.f3841i.h(recomposeScopeImpl2);
                            }
                        }
                    }
                    j11 >>= 8;
                }
                if (i12 != 8) {
                    return;
                }
            }
            if (i11 == length) {
                return;
            } else {
                i11++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:193:0x00d3 A[EDGE_INSN: B:193:0x00d3->B:37:0x00d3 BREAK  A[LOOP:2: B:24:0x007b->B:35:0x00bf], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:0x0111 A[EDGE_INSN: B:221:0x0111->B:216:0x0111 BREAK  A[LOOP:13: B:59:0x0146->B:70:0x0182], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x00bd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00bf A[LOOP:2: B:24:0x007b->B:35:0x00bf, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:69:0x0180 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x0182 A[LOOP:13: B:59:0x0146->B:70:0x0182, LOOP_END] */
    private final void x(Set set, boolean z10) {
        long[] jArr;
        String str;
        int i11;
        int i12;
        String str2;
        boolean zA;
        Object[] objArr;
        long[] jArr2;
        Object[] objArr2;
        long[] jArr3;
        String str3;
        long[] jArr4;
        int i13;
        String str4;
        long[] jArr5;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean zD;
        Object[] objArr3;
        long[] jArr6;
        Object[] objArr4;
        long[] jArr7;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        char c11 = 7;
        long j11 = -9187201950435737472L;
        int i24 = 8;
        if (set instanceof ScatterSetWrapper) {
            ScatterSet scatterSetA = ((ScatterSetWrapper) set).a();
            Object[] objArr5 = scatterSetA.f2247b;
            long[] jArr8 = scatterSetA.f2246a;
            int length = jArr8.length - 2;
            if (length >= 0) {
                int i25 = 0;
                while (true) {
                    long j12 = jArr8[i25];
                    if ((((~j12) << c11) & j12 & j11) != j11) {
                        int i26 = 8 - ((~(i25 - length)) >>> 31);
                        int i27 = 0;
                        while (i27 < i26) {
                            if ((j12 & 255) < 128) {
                                Object obj = objArr5[(i25 << 3) + i27];
                                if (obj instanceof RecomposeScopeImpl) {
                                    ((RecomposeScopeImpl) obj).s(null);
                                } else {
                                    w(obj, z10);
                                    Object objB = this.f3842j.d().b(obj);
                                    if (objB != null) {
                                        if (objB instanceof MutableScatterSet) {
                                            MutableScatterSet mutableScatterSet = (MutableScatterSet) objB;
                                            Object[] objArr6 = mutableScatterSet.f2247b;
                                            long[] jArr9 = mutableScatterSet.f2246a;
                                            int length2 = jArr9.length - 2;
                                            if (length2 >= 0) {
                                                i21 = length;
                                                i22 = i25;
                                                int i28 = 0;
                                                while (true) {
                                                    long j13 = jArr9[i28];
                                                    i19 = i26;
                                                    i20 = i27;
                                                    if ((((~j13) << c11) & j13 & (-9187201950435737472L)) == -9187201950435737472L) {
                                                        if (i28 != length2) {
                                                            break;
                                                            break;
                                                        }
                                                        i28++;
                                                        i26 = i19;
                                                        i27 = i20;
                                                        c11 = 7;
                                                    } else {
                                                        int i29 = 8 - ((~(i28 - length2)) >>> 31);
                                                        for (int i30 = 0; i30 < i29; i30++) {
                                                            if ((j13 & 255) < 128) {
                                                                w((z) objArr6[(i28 << 3) + i30], z10);
                                                            }
                                                            j13 >>= 8;
                                                        }
                                                        if (i29 != 8) {
                                                            break;
                                                        }
                                                        if (i28 != length2) {
                                                            break;
                                                        }
                                                        i28++;
                                                        i26 = i19;
                                                        i27 = i20;
                                                        c11 = 7;
                                                    }
                                                }
                                            }
                                        } else {
                                            i19 = i26;
                                            i20 = i27;
                                            i21 = length;
                                            i22 = i25;
                                            w((z) objB, z10);
                                        }
                                    }
                                    i23 = 8;
                                }
                                i19 = i26;
                                i20 = i27;
                                i21 = length;
                                i22 = i25;
                                i23 = 8;
                            } else {
                                i19 = i26;
                                i20 = i27;
                                i21 = length;
                                i22 = i25;
                                i23 = i24;
                            }
                            j12 >>= i23;
                            i27 = i20 + 1;
                            length = i21;
                            i24 = i23;
                            i25 = i22;
                            i26 = i19;
                            c11 = 7;
                        }
                        int i31 = length;
                        i18 = i25;
                        if (i26 != i24) {
                            break;
                        } else {
                            length = i31;
                        }
                    } else {
                        i18 = i25;
                    }
                    if (i18 == length) {
                        break;
                    }
                    i25 = i18 + 1;
                    c11 = 7;
                    j11 = -9187201950435737472L;
                    i24 = 8;
                }
            }
        } else {
            for (Object obj2 : set) {
                if (obj2 instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj2).s(null);
                } else {
                    w(obj2, z10);
                    Object objB2 = this.f3842j.d().b(obj2);
                    if (objB2 != null) {
                        if (objB2 instanceof MutableScatterSet) {
                            MutableScatterSet mutableScatterSet2 = (MutableScatterSet) objB2;
                            Object[] objArr7 = mutableScatterSet2.f2247b;
                            long[] jArr10 = mutableScatterSet2.f2246a;
                            int length3 = jArr10.length - 2;
                            if (length3 >= 0) {
                                int i32 = 0;
                                while (true) {
                                    long j14 = jArr10[i32];
                                    if ((((~j14) << 7) & j14 & (-9187201950435737472L)) == -9187201950435737472L) {
                                        if (i32 != length3) {
                                            break;
                                            break;
                                        }
                                        i32++;
                                    } else {
                                        int i33 = 8 - ((~(i32 - length3)) >>> 31);
                                        for (int i34 = 0; i34 < i33; i34++) {
                                            if ((j14 & 255) < 128) {
                                                w((z) objArr7[(i32 << 3) + i34], z10);
                                            }
                                            j14 >>= 8;
                                        }
                                        if (i33 != 8) {
                                            break;
                                        } else if (i32 != length3) {
                                            break;
                                        } else {
                                            i32++;
                                        }
                                    }
                                }
                            }
                        } else {
                            w((z) objB2, z10);
                        }
                    }
                }
            }
        }
        MutableScatterSet mutableScatterSet3 = this.f3841i;
        MutableScatterSet mutableScatterSet4 = this.f3840h;
        String str5 = "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>";
        if (!z10 || !mutableScatterSet3.e()) {
            String str6 = "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>";
            if (mutableScatterSet4.e()) {
                androidx.collection.n0 n0VarD = this.f3839g.d();
                long[] jArr11 = n0VarD.f2344a;
                int length4 = jArr11.length - 2;
                if (length4 >= 0) {
                    int i35 = 0;
                    while (true) {
                        long j15 = jArr11[i35];
                        if ((((~j15) << 7) & j15 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i36 = 8 - ((~(i35 - length4)) >>> 31);
                            int i37 = 0;
                            while (i37 < i36) {
                                if ((j15 & 255) < 128) {
                                    int i38 = (i35 << 3) + i37;
                                    Object obj3 = n0VarD.f2345b[i38];
                                    Object obj4 = n0VarD.f2346c[i38];
                                    if (obj4 instanceof MutableScatterSet) {
                                        String str7 = str6;
                                        Intrinsics.f(obj4, str7);
                                        MutableScatterSet mutableScatterSet5 = (MutableScatterSet) obj4;
                                        Object[] objArr8 = mutableScatterSet5.f2247b;
                                        long[] jArr12 = mutableScatterSet5.f2246a;
                                        int length5 = jArr12.length - 2;
                                        if (length5 >= 0) {
                                            int i39 = 0;
                                            while (true) {
                                                long j16 = jArr12[i39];
                                                str2 = str7;
                                                i12 = i36;
                                                if ((((~j16) << 7) & j16 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                    int i40 = 8 - ((~(i39 - length5)) >>> 31);
                                                    int i41 = 0;
                                                    while (i41 < i40) {
                                                        if ((j16 & 255) < 128) {
                                                            jArr3 = jArr12;
                                                            int i42 = (i39 << 3) + i41;
                                                            objArr2 = objArr8;
                                                            if (mutableScatterSet4.a((RecomposeScopeImpl) objArr8[i42])) {
                                                                mutableScatterSet5.y(i42);
                                                            }
                                                        } else {
                                                            objArr2 = objArr8;
                                                            jArr3 = jArr12;
                                                        }
                                                        j16 >>= 8;
                                                        i41++;
                                                        jArr12 = jArr3;
                                                        objArr8 = objArr2;
                                                    }
                                                    objArr = objArr8;
                                                    jArr2 = jArr12;
                                                    if (i40 != 8) {
                                                        break;
                                                    }
                                                } else {
                                                    objArr = objArr8;
                                                    jArr2 = jArr12;
                                                }
                                                if (i39 == length5) {
                                                    break;
                                                }
                                                i39++;
                                                i36 = i12;
                                                str7 = str2;
                                                jArr12 = jArr2;
                                                objArr8 = objArr;
                                            }
                                        } else {
                                            str2 = str7;
                                            i12 = i36;
                                        }
                                        zA = mutableScatterSet5.d();
                                    } else {
                                        i12 = i36;
                                        str2 = str6;
                                        Intrinsics.f(obj4, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2");
                                        zA = mutableScatterSet4.a((RecomposeScopeImpl) obj4);
                                    }
                                    if (zA) {
                                        n0VarD.p(i38);
                                    }
                                } else {
                                    jArr11 = jArr11;
                                    length4 = length4;
                                    i12 = i36;
                                    str2 = str6;
                                    i35 = i35;
                                }
                                j15 >>= 8;
                                i37++;
                                length4 = length4;
                                jArr11 = jArr11;
                                i35 = i35;
                                i36 = i12;
                                str6 = str2;
                            }
                            jArr = jArr11;
                            int i43 = length4;
                            str = str6;
                            int i44 = i35;
                            if (i36 != 8) {
                                break;
                            }
                            length4 = i43;
                            i11 = i44;
                        } else {
                            jArr = jArr11;
                            str = str6;
                            i11 = i35;
                        }
                        if (i11 == length4) {
                            break;
                        }
                        i35 = i11 + 1;
                        jArr11 = jArr;
                        str6 = str;
                    }
                }
                z();
                mutableScatterSet4.m();
                return;
            }
            return;
        }
        androidx.collection.n0 n0VarD2 = this.f3839g.d();
        long[] jArr13 = n0VarD2.f2344a;
        int length6 = jArr13.length - 2;
        if (length6 >= 0) {
            int i45 = 0;
            while (true) {
                long j17 = jArr13[i45];
                if ((((~j17) << 7) & j17 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i46 = 8 - ((~(i45 - length6)) >>> 31);
                    int i47 = 0;
                    while (i47 < i46) {
                        if ((j17 & 255) < 128) {
                            int i48 = (i45 << 3) + i47;
                            Object obj5 = n0VarD2.f2345b[i48];
                            Object obj6 = n0VarD2.f2346c[i48];
                            if (obj6 instanceof MutableScatterSet) {
                                Intrinsics.f(obj6, str5);
                                MutableScatterSet mutableScatterSet6 = (MutableScatterSet) obj6;
                                Object[] objArr9 = mutableScatterSet6.f2247b;
                                jArr5 = jArr13;
                                long[] jArr14 = mutableScatterSet6.f2246a;
                                str4 = str5;
                                int length7 = jArr14.length - 2;
                                i14 = length6;
                                i15 = i45;
                                if (length7 >= 0) {
                                    int i49 = 0;
                                    while (true) {
                                        long j18 = jArr14[i49];
                                        i16 = i46;
                                        i17 = i47;
                                        if ((((~j18) << 7) & j18 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i50 = 8 - ((~(i49 - length7)) >>> 31);
                                            int i51 = 0;
                                            while (i51 < i50) {
                                                if ((j18 & 255) < 128) {
                                                    jArr7 = jArr14;
                                                    int i52 = (i49 << 3) + i51;
                                                    objArr4 = objArr9;
                                                    RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objArr9[i52];
                                                    if (mutableScatterSet3.a(recomposeScopeImpl) || mutableScatterSet4.a(recomposeScopeImpl)) {
                                                        mutableScatterSet6.y(i52);
                                                    }
                                                } else {
                                                    objArr4 = objArr9;
                                                    jArr7 = jArr14;
                                                }
                                                j18 >>= 8;
                                                i51++;
                                                jArr14 = jArr7;
                                                objArr9 = objArr4;
                                            }
                                            objArr3 = objArr9;
                                            jArr6 = jArr14;
                                            if (i50 != 8) {
                                                break;
                                            }
                                        } else {
                                            objArr3 = objArr9;
                                            jArr6 = jArr14;
                                        }
                                        if (i49 == length7) {
                                            break;
                                        }
                                        i49++;
                                        i46 = i16;
                                        i47 = i17;
                                        jArr14 = jArr6;
                                        objArr9 = objArr3;
                                    }
                                } else {
                                    i16 = i46;
                                    i17 = i47;
                                }
                                zD = mutableScatterSet6.d();
                            } else {
                                str4 = str5;
                                jArr5 = jArr13;
                                i14 = length6;
                                i15 = i45;
                                i16 = i46;
                                i17 = i47;
                                Intrinsics.f(obj6, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2");
                                RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj6;
                                zD = mutableScatterSet3.a(recomposeScopeImpl2) || mutableScatterSet4.a(recomposeScopeImpl2);
                            }
                            if (zD) {
                                n0VarD2.p(i48);
                            }
                        } else {
                            str4 = str5;
                            jArr5 = jArr13;
                            i14 = length6;
                            i15 = i45;
                            i16 = i46;
                            i17 = i47;
                        }
                        j17 >>= 8;
                        i47 = i17 + 1;
                        length6 = i14;
                        jArr13 = jArr5;
                        str5 = str4;
                        i45 = i15;
                        i46 = i16;
                    }
                    str3 = str5;
                    jArr4 = jArr13;
                    int i53 = length6;
                    int i54 = i45;
                    if (i46 != 8) {
                        break;
                    }
                    length6 = i53;
                    i13 = i54;
                } else {
                    str3 = str5;
                    jArr4 = jArr13;
                    i13 = i45;
                }
                if (i13 == length6) {
                    break;
                }
                i45 = i13 + 1;
                jArr13 = jArr4;
                str5 = str3;
            }
        }
        mutableScatterSet3.m();
        z();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01e3  */
    private final void y(s.a aVar) throws Throwable {
        a aVar2;
        boolean z10;
        long[] jArr;
        int i11;
        a aVar3;
        long[] jArr2;
        int i12;
        int i13;
        char c11;
        long j11;
        int i14;
        boolean zD;
        long[] jArr3;
        long[] jArr4;
        o oVar = this;
        boolean z11 = true;
        a aVar4 = new a(oVar.f3837e);
        try {
            if (aVar.c()) {
                if (oVar.f3844l.c()) {
                    aVar4.f();
                    return;
                }
                return;
            }
            e3 e3Var = e3.f3694a;
            Object objA = e3Var.a("Compose:applyChanges");
            oVar.f3834b.k();
            m2 m2VarX = oVar.f3838f.x();
            int i15 = 0;
            try {
                aVar.b(oVar.f3834b, m2VarX, aVar4);
                Unit unit = Unit.f67061a;
                m2VarX.L(true);
                oVar.f3834b.h();
                e3Var.b(objA);
                aVar4.g();
                aVar4.h();
                if (oVar.f3847o) {
                    try {
                        try {
                            Object objA2 = e3Var.a("Compose:unobserve");
                            try {
                                oVar.f3847o = false;
                                androidx.collection.n0 n0VarD = oVar.f3839g.d();
                                long[] jArr5 = n0VarD.f2344a;
                                int length = jArr5.length - 2;
                                if (length >= 0) {
                                    int i16 = 0;
                                    while (true) {
                                        long j12 = jArr5[i16];
                                        char c12 = 7;
                                        long j13 = -9187201950435737472L;
                                        if ((((~j12) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i17 = 8;
                                            int i18 = 8 - ((~(i16 - length)) >>> 31);
                                            while (i15 < i18) {
                                                if ((j12 & 255) < 128) {
                                                    int i19 = (i16 << 3) + i15;
                                                    Object obj = n0VarD.f2345b[i19];
                                                    Object obj2 = n0VarD.f2346c[i19];
                                                    if (obj2 instanceof MutableScatterSet) {
                                                        Intrinsics.f(obj2, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>");
                                                        MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                                        Object[] objArr = mutableScatterSet.f2247b;
                                                        long[] jArr6 = mutableScatterSet.f2246a;
                                                        int length2 = jArr6.length - 2;
                                                        aVar3 = aVar4;
                                                        jArr2 = jArr5;
                                                        if (length2 >= 0) {
                                                            int i20 = 0;
                                                            while (true) {
                                                                try {
                                                                    long j14 = jArr6[i20];
                                                                    i12 = length;
                                                                    i13 = i16;
                                                                    c11 = 7;
                                                                    j11 = -9187201950435737472L;
                                                                    if ((((~j14) << 7) & j14 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                        int i21 = 8 - ((~(i20 - length2)) >>> 31);
                                                                        int i22 = 0;
                                                                        while (i22 < i21) {
                                                                            if ((j14 & 255) < 128) {
                                                                                jArr4 = jArr6;
                                                                                int i23 = (i20 << 3) + i22;
                                                                                if (!((RecomposeScopeImpl) objArr[i23]).r()) {
                                                                                    mutableScatterSet.y(i23);
                                                                                }
                                                                            } else {
                                                                                jArr4 = jArr6;
                                                                            }
                                                                            j14 >>= 8;
                                                                            i22++;
                                                                            jArr6 = jArr4;
                                                                        }
                                                                        jArr3 = jArr6;
                                                                        if (i21 != 8) {
                                                                            break;
                                                                        }
                                                                    } else {
                                                                        jArr3 = jArr6;
                                                                    }
                                                                    if (i20 == length2) {
                                                                        break;
                                                                    }
                                                                    i20++;
                                                                    length = i12;
                                                                    i16 = i13;
                                                                    jArr6 = jArr3;
                                                                } catch (Throwable th2) {
                                                                    th = th2;
                                                                    e3.f3694a.b(objA2);
                                                                    throw th;
                                                                }
                                                            }
                                                        } else {
                                                            i12 = length;
                                                            i13 = i16;
                                                            c11 = 7;
                                                            j11 = -9187201950435737472L;
                                                        }
                                                        zD = mutableScatterSet.d();
                                                    } else {
                                                        aVar3 = aVar4;
                                                        jArr2 = jArr5;
                                                        i12 = length;
                                                        i13 = i16;
                                                        c11 = c12;
                                                        j11 = -9187201950435737472L;
                                                        Intrinsics.f(obj2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2");
                                                        zD = !((RecomposeScopeImpl) obj2).r();
                                                    }
                                                    if (zD) {
                                                        n0VarD.p(i19);
                                                    }
                                                    i14 = 8;
                                                } else {
                                                    aVar3 = aVar4;
                                                    jArr2 = jArr5;
                                                    i12 = length;
                                                    i13 = i16;
                                                    c11 = c12;
                                                    j11 = j13;
                                                    i14 = i17;
                                                }
                                                j12 >>= i14;
                                                i15++;
                                                i17 = i14;
                                                z11 = true;
                                                c12 = c11;
                                                j13 = j11;
                                                jArr5 = jArr2;
                                                aVar4 = aVar3;
                                                length = i12;
                                                i16 = i13;
                                            }
                                            z10 = z11;
                                            aVar2 = aVar4;
                                            jArr = jArr5;
                                            int i24 = length;
                                            int i25 = i16;
                                            if (i18 != i17) {
                                                break;
                                            }
                                            length = i24;
                                            i11 = i25;
                                        } else {
                                            z10 = z11;
                                            aVar2 = aVar4;
                                            jArr = jArr5;
                                            i11 = i16;
                                        }
                                        if (i11 == length) {
                                            break;
                                        }
                                        i16 = i11 + 1;
                                        z11 = z10;
                                        jArr5 = jArr;
                                        aVar4 = aVar2;
                                        i15 = 0;
                                    }
                                } else {
                                    aVar2 = aVar4;
                                }
                                z();
                                Unit unit2 = Unit.f67061a;
                                e3.f3694a.b(objA2);
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            aVar4 = aVar4;
                            oVar = this;
                            if (oVar.f3844l.c()) {
                                aVar4.f();
                            }
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        oVar = this;
                        if (oVar.f3844l.c()) {
                            aVar4.f();
                        }
                        throw th;
                    }
                } else {
                    aVar2 = aVar4;
                }
                if (this.f3844l.c()) {
                    aVar2.f();
                    return;
                }
                return;
            } catch (Throwable th6) {
                try {
                    m2VarX.L(false);
                    throw th6;
                } catch (Throwable th7) {
                    th = th7;
                    try {
                        e3.f3694a.b(objA);
                        throw th;
                    } catch (Throwable th8) {
                        th = th8;
                    }
                }
            }
        } catch (Throwable th9) {
            th = th9;
            aVar4 = aVar4;
        }
        if (oVar.f3844l.c()) {
            aVar4.f();
        }
        throw th;
    }

    private final void z() {
        long[] jArr;
        int i11;
        long[] jArr2;
        int i12;
        int i13;
        int i14;
        boolean zD;
        Object[] objArr;
        long[] jArr3;
        long[] jArr4;
        androidx.collection.n0 n0VarD = this.f3842j.d();
        long[] jArr5 = n0VarD.f2344a;
        int length = jArr5.length - 2;
        char c11 = 7;
        long j11 = -9187201950435737472L;
        int i15 = 8;
        if (length >= 0) {
            int i16 = 0;
            while (true) {
                long j12 = jArr5[i16];
                if ((((~j12) << c11) & j12 & j11) != j11) {
                    int i17 = 8 - ((~(i16 - length)) >>> 31);
                    int i18 = 0;
                    while (i18 < i17) {
                        if ((j12 & 255) < 128) {
                            int i19 = (i16 << 3) + i18;
                            Object obj = n0VarD.f2345b[i19];
                            Object obj2 = n0VarD.f2346c[i19];
                            if (obj2 instanceof MutableScatterSet) {
                                Intrinsics.f(obj2, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>");
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                Object[] objArr2 = mutableScatterSet.f2247b;
                                long[] jArr6 = mutableScatterSet.f2246a;
                                int length2 = jArr6.length - 2;
                                jArr2 = jArr5;
                                i12 = length;
                                if (length2 >= 0) {
                                    int i20 = 0;
                                    while (true) {
                                        long j13 = jArr6[i20];
                                        i13 = i16;
                                        Object[] objArr3 = objArr2;
                                        if ((((~j13) << c11) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i21 = 8 - ((~(i20 - length2)) >>> 31);
                                            int i22 = 0;
                                            while (i22 < i21) {
                                                int i23 = i22;
                                                Object[] objArr4 = objArr3;
                                                if ((j13 & 255) < 128) {
                                                    int i24 = (i20 << 3) + i23;
                                                    jArr4 = jArr6;
                                                    if (!this.f3839g.c((z) objArr4[i24])) {
                                                        mutableScatterSet.y(i24);
                                                    }
                                                } else {
                                                    jArr4 = jArr6;
                                                }
                                                j13 >>= 8;
                                                i22 = i23 + 1;
                                                jArr6 = jArr4;
                                                objArr3 = objArr4;
                                            }
                                            objArr = objArr3;
                                            jArr3 = jArr6;
                                            if (i21 != 8) {
                                                break;
                                            }
                                        } else {
                                            objArr = objArr3;
                                            jArr3 = jArr6;
                                        }
                                        if (i20 == length2) {
                                            break;
                                        }
                                        i20++;
                                        jArr6 = jArr3;
                                        objArr2 = objArr;
                                        i16 = i13;
                                        c11 = 7;
                                    }
                                } else {
                                    i13 = i16;
                                }
                                zD = mutableScatterSet.d();
                            } else {
                                jArr2 = jArr5;
                                i12 = length;
                                i13 = i16;
                                Intrinsics.f(obj2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2");
                                zD = !this.f3839g.c((z) obj2);
                            }
                            if (zD) {
                                n0VarD.p(i19);
                            }
                            i14 = 8;
                        } else {
                            jArr2 = jArr5;
                            i12 = length;
                            i13 = i16;
                            i14 = i15;
                        }
                        j12 >>= i14;
                        i18++;
                        i15 = i14;
                        jArr5 = jArr2;
                        length = i12;
                        i16 = i13;
                        c11 = 7;
                    }
                    jArr = jArr5;
                    int i25 = length;
                    int i26 = i16;
                    if (i17 != i15) {
                        break;
                    }
                    length = i25;
                    i11 = i26;
                } else {
                    jArr = jArr5;
                    i11 = i16;
                }
                if (i11 == length) {
                    break;
                }
                i16 = i11 + 1;
                jArr5 = jArr;
                c11 = 7;
                j11 = -9187201950435737472L;
                i15 = 8;
            }
        }
        if (!this.f3841i.e()) {
            return;
        }
        MutableScatterSet mutableScatterSet2 = this.f3841i;
        Object[] objArr5 = mutableScatterSet2.f2247b;
        long[] jArr7 = mutableScatterSet2.f2246a;
        int length3 = jArr7.length - 2;
        if (length3 < 0) {
            return;
        }
        int i27 = 0;
        while (true) {
            long j14 = jArr7[i27];
            if ((((~j14) << 7) & j14 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i28 = 8 - ((~(i27 - length3)) >>> 31);
                for (int i29 = 0; i29 < i28; i29++) {
                    if ((j14 & 255) < 128) {
                        int i30 = (i27 << 3) + i29;
                        if (!((RecomposeScopeImpl) objArr5[i30]).t()) {
                            mutableScatterSet2.y(i30);
                        }
                    }
                    j14 >>= 8;
                }
                if (i28 != 8) {
                    return;
                }
            }
            if (i27 == length3) {
                return;
            } else {
                i27++;
            }
        }
    }

    public final u E() {
        return this.f3850r;
    }

    public final void I(z zVar) {
        if (this.f3839g.c(zVar)) {
            return;
        }
        this.f3842j.g(zVar);
    }

    public final void J(Object obj, RecomposeScopeImpl recomposeScopeImpl) {
        this.f3839g.f(obj, recomposeScopeImpl);
    }

    @Override // androidx.compose.runtime.y, androidx.compose.runtime.w1
    public void a(Object obj) {
        RecomposeScopeImpl recomposeScopeImplB0;
        long[] jArr;
        int i11;
        if (D() || (recomposeScopeImplB0 = this.f3851s.B0()) == null) {
            return;
        }
        recomposeScopeImplB0.H(true);
        if (recomposeScopeImplB0.w(obj)) {
            return;
        }
        if (obj instanceof androidx.compose.runtime.snapshots.d0) {
            ((androidx.compose.runtime.snapshots.d0) obj).m101recordReadInh_f27i8$runtime_release(androidx.compose.runtime.snapshots.f.a(1));
        }
        this.f3839g.a(obj, recomposeScopeImplB0);
        if (obj instanceof z) {
            z zVar = (z) obj;
            z.a aVarB = zVar.b();
            this.f3842j.g(obj);
            androidx.collection.p0 p0VarB = aVarB.b();
            Object[] objArr = p0VarB.f2315b;
            long[] jArr2 = p0VarB.f2314a;
            int length = jArr2.length - 2;
            if (length >= 0) {
                int i12 = 0;
                while (true) {
                    long j11 = jArr2[i12];
                    if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i13 = 8;
                        int i14 = 8 - ((~(i12 - length)) >>> 31);
                        int i15 = 0;
                        while (i15 < i14) {
                            if ((j11 & 255) < 128) {
                                androidx.compose.runtime.snapshots.c0 c0Var = (androidx.compose.runtime.snapshots.c0) objArr[(i12 << 3) + i15];
                                if (c0Var instanceof androidx.compose.runtime.snapshots.d0) {
                                    ((androidx.compose.runtime.snapshots.d0) c0Var).m101recordReadInh_f27i8$runtime_release(androidx.compose.runtime.snapshots.f.a(1));
                                }
                                this.f3842j.a(c0Var, obj);
                                i11 = 8;
                            } else {
                                jArr2 = jArr2;
                                i11 = i13;
                            }
                            j11 >>= i11;
                            i15++;
                            i13 = i11;
                            jArr2 = jArr2;
                        }
                        jArr = jArr2;
                        if (i14 != i13) {
                            break;
                        }
                    } else {
                        jArr = jArr2;
                    }
                    if (i12 == length) {
                        break;
                    }
                    i12++;
                    jArr2 = jArr;
                }
            }
            recomposeScopeImplB0.v(zVar, aVarB.a());
        }
    }

    @Override // androidx.compose.runtime.y
    public void b(Function2 function2) throws Exception {
        try {
            synchronized (this.f3836d) {
                B();
                androidx.compose.runtime.collection.e eVarK = K();
                try {
                    H();
                    this.f3851s.g0(eVarK, function2);
                } catch (Exception e11) {
                    this.f3846n = eVarK;
                    throw e11;
                }
            }
        } catch (Throwable th2) {
            try {
                if (!this.f3837e.isEmpty()) {
                    new a(this.f3837e).f();
                }
                throw th2;
            } catch (Exception e12) {
                s();
                throw e12;
            }
        }
    }

    @Override // androidx.compose.runtime.y
    public void c() {
        synchronized (this.f3836d) {
            try {
                if (this.f3844l.d()) {
                    y(this.f3844l);
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                try {
                    try {
                        if (!this.f3837e.isEmpty()) {
                            new a(this.f3837e).f();
                        }
                        throw th2;
                    } catch (Exception e11) {
                        s();
                        throw e11;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    @Override // androidx.compose.runtime.l
    public void d(Function2 function2) {
        A(function2);
    }

    @Override // androidx.compose.runtime.d2
    public void deactivate() {
        synchronized (this.f3836d) {
            try {
                boolean z10 = this.f3838f.p() > 0;
                if (z10 || !this.f3837e.isEmpty()) {
                    e3 e3Var = e3.f3694a;
                    Object objA = e3Var.a("Compose:deactivate");
                    try {
                        a aVar = new a(this.f3837e);
                        if (z10) {
                            this.f3834b.k();
                            m2 m2VarX = this.f3838f.x();
                            try {
                                k.t(m2VarX, aVar);
                                Unit unit = Unit.f67061a;
                                m2VarX.L(true);
                                this.f3834b.h();
                                aVar.g();
                            } catch (Throwable th2) {
                                m2VarX.L(false);
                                throw th2;
                            }
                        }
                        aVar.f();
                        Unit unit2 = Unit.f67061a;
                        e3Var.b(objA);
                    } catch (Throwable th3) {
                        e3.f3694a.b(objA);
                        throw th3;
                    }
                }
                this.f3839g.b();
                this.f3842j.b();
                this.f3846n.b();
                this.f3843k.a();
                this.f3844l.a();
                this.f3851s.l0();
                Unit unit3 = Unit.f67061a;
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    @Override // androidx.compose.runtime.l
    public void dispose() {
        synchronized (this.f3836d) {
            try {
                if (this.f3851s.K0()) {
                    o1.b("Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block.");
                }
                if (!this.f3854v) {
                    this.f3854v = true;
                    this.f3855w = ComposableSingletons$CompositionKt.f3559a.b();
                    s.a aVarC0 = this.f3851s.C0();
                    if (aVarC0 != null) {
                        y(aVarC0);
                    }
                    boolean z10 = this.f3838f.p() > 0;
                    if (z10 || !this.f3837e.isEmpty()) {
                        a aVar = new a(this.f3837e);
                        if (z10) {
                            this.f3834b.k();
                            m2 m2VarX = this.f3838f.x();
                            try {
                                k.K(m2VarX, aVar);
                                Unit unit = Unit.f67061a;
                                m2VarX.L(true);
                                this.f3834b.clear();
                                this.f3834b.h();
                                aVar.g();
                            } catch (Throwable th2) {
                                m2VarX.L(false);
                                throw th2;
                            }
                        }
                        aVar.f();
                    }
                    this.f3851s.m0();
                }
                Unit unit2 = Unit.f67061a;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        this.f3833a.r(this);
    }

    @Override // androidx.compose.runtime.y
    public void e(x0 x0Var) {
        a aVar = new a(this.f3837e);
        m2 m2VarX = x0Var.a().x();
        try {
            k.K(m2VarX, aVar);
            Unit unit = Unit.f67061a;
            m2VarX.L(true);
            aVar.g();
        } catch (Throwable th2) {
            m2VarX.L(false);
            throw th2;
        }
    }

    @Override // androidx.compose.runtime.y
    public void f(List list) throws Exception {
        boolean z10 = true;
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (!Intrinsics.c(((y0) ((Pair) list.get(i11)).getFirst()).b(), this)) {
                z10 = false;
                break;
            }
        }
        k.O(z10);
        try {
            this.f3851s.H0(list);
            Unit unit = Unit.f67061a;
        } catch (Throwable th2) {
            try {
                if (!this.f3837e.isEmpty()) {
                    new a(this.f3837e).f();
                }
                throw th2;
            } catch (Exception e11) {
                s();
                throw e11;
            }
        }
    }

    @Override // androidx.compose.runtime.y
    public Object g(y yVar, int i11, Function0 function0) {
        if (yVar == null || Intrinsics.c(yVar, this) || i11 < 0) {
            return function0.invoke();
        }
        this.f3848p = (o) yVar;
        this.f3849q = i11;
        try {
            return function0.invoke();
        } finally {
            this.f3848p = null;
            this.f3849q = 0;
        }
    }

    @Override // androidx.compose.runtime.w1
    public void h(RecomposeScopeImpl recomposeScopeImpl) {
        this.f3847o = true;
    }

    @Override // androidx.compose.runtime.y
    public boolean i() {
        boolean zR0;
        synchronized (this.f3836d) {
            try {
                B();
                try {
                    androidx.compose.runtime.collection.e eVarK = K();
                    try {
                        H();
                        zR0 = this.f3851s.R0(eVarK);
                        if (!zR0) {
                            C();
                        }
                    } catch (Exception e11) {
                        this.f3846n = eVarK;
                        throw e11;
                    }
                } catch (Throwable th2) {
                    try {
                        if (!this.f3837e.isEmpty()) {
                            new a(this.f3837e).f();
                        }
                        throw th2;
                    } catch (Exception e12) {
                        s();
                        throw e12;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return zR0;
    }

    @Override // androidx.compose.runtime.l
    public boolean isDisposed() {
        return this.f3854v;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0057 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x0059 A[LOOP:0: B:7:0x0016->B:21:0x0059, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:34:0x007d A[SYNTHETIC] */
    @Override // androidx.compose.runtime.y
    public boolean j(Set set) {
        if (set instanceof ScatterSetWrapper) {
            ScatterSet scatterSetA = ((ScatterSetWrapper) set).a();
            Object[] objArr = scatterSetA.f2247b;
            long[] jArr = scatterSetA.f2246a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i11 = 0;
                loop0: while (true) {
                    long j11 = jArr[i11];
                    if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i12 = 8 - ((~(i11 - length)) >>> 31);
                        for (int i13 = 0; i13 < i12; i13++) {
                            if ((255 & j11) < 128) {
                                Object obj = objArr[(i11 << 3) + i13];
                                if (this.f3839g.c(obj) || this.f3842j.c(obj)) {
                                    break loop0;
                                }
                            }
                            j11 >>= 8;
                        }
                        if (i12 == 8) {
                            if (i11 != length) {
                                i11++;
                            }
                        }
                    } else if (i11 != length) {
                        i11++;
                    }
                }
                return true;
            }
        } else {
            for (Object obj2 : set) {
                if (this.f3839g.c(obj2) || this.f3842j.c(obj2)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.compose.runtime.w1
    public InvalidationResult k(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        o oVar;
        if (recomposeScopeImpl.k()) {
            recomposeScopeImpl.C(true);
        }
        c cVarI = recomposeScopeImpl.i();
        if (cVarI == null || !cVarI.b()) {
            return InvalidationResult.IGNORED;
        }
        if (this.f3838f.y(cVarI)) {
            return !recomposeScopeImpl.j() ? InvalidationResult.IGNORED : F(recomposeScopeImpl, cVarI, obj);
        }
        synchronized (this.f3836d) {
            oVar = this.f3848p;
        }
        return (oVar == null || !oVar.L(recomposeScopeImpl, obj)) ? InvalidationResult.IGNORED : InvalidationResult.IMMINENT;
    }

    @Override // androidx.compose.runtime.y
    public void l(Function0 function0) {
        this.f3851s.P0(function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.y
    public void m(Set set) {
        Object obj;
        Object objE;
        do {
            obj = this.f3835c.get();
            if (obj == null ? true : Intrinsics.c(obj, p.f3867a)) {
                objE = set;
            } else if (obj instanceof Set) {
                objE = new Set[]{obj, set};
            } else {
                if (!(obj instanceof Object[])) {
                    throw new IllegalStateException(("corrupt pendingModifications: " + this.f3835c).toString());
                }
                Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.collections.Set<kotlin.Any>>");
                objE = ArraysKt.E((Set[]) obj, set);
            }
        } while (!androidx.compose.animation.core.j0.a(this.f3835c, obj, objE));
        if (obj == null) {
            synchronized (this.f3836d) {
                C();
                Unit unit = Unit.f67061a;
            }
        }
    }

    @Override // androidx.compose.runtime.y
    public void n() {
        synchronized (this.f3836d) {
            try {
                y(this.f3843k);
                C();
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                try {
                    try {
                        if (!this.f3837e.isEmpty()) {
                            new a(this.f3837e).f();
                        }
                        throw th2;
                    } catch (Exception e11) {
                        s();
                        throw e11;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    @Override // androidx.compose.runtime.y
    public boolean o() {
        return this.f3851s.K0();
    }

    @Override // androidx.compose.runtime.d2
    public void p(Function2 function2) {
        this.f3851s.m1();
        A(function2);
        this.f3851s.s0();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x005d A[Catch: all -> 0x0053, LOOP:0: B:11:0x0023->B:23:0x005d, LOOP_END, TryCatch #0 {all -> 0x0053, blocks: (B:4:0x0003, B:6:0x0012, B:8:0x0016, B:11:0x0023, B:13:0x0033, B:15:0x003f, B:17:0x0048, B:20:0x0055, B:23:0x005d, B:24:0x0060, B:25:0x0065), top: B:30:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0065 A[EDGE_INSN: B:33:0x0065->B:25:0x0065 BREAK  A[LOOP:0: B:11:0x0023->B:23:0x005d], SYNTHETIC] */
    @Override // androidx.compose.runtime.y
    public void q(Object obj) {
        synchronized (this.f3836d) {
            try {
                G(obj);
                Object objB = this.f3842j.d().b(obj);
                if (objB != null) {
                    if (objB instanceof MutableScatterSet) {
                        MutableScatterSet mutableScatterSet = (MutableScatterSet) objB;
                        Object[] objArr = mutableScatterSet.f2247b;
                        long[] jArr = mutableScatterSet.f2246a;
                        int length = jArr.length - 2;
                        if (length >= 0) {
                            int i11 = 0;
                            while (true) {
                                long j11 = jArr[i11];
                                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                                    if (i11 != length) {
                                        break;
                                        break;
                                    }
                                    i11++;
                                } else {
                                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                                    for (int i13 = 0; i13 < i12; i13++) {
                                        if ((255 & j11) < 128) {
                                            G((z) objArr[(i11 << 3) + i13]);
                                        }
                                        j11 >>= 8;
                                    }
                                    if (i12 != 8) {
                                        break;
                                    } else if (i11 != length) {
                                        break;
                                    } else {
                                        i11++;
                                    }
                                }
                            }
                        }
                    } else {
                        G((z) objB);
                    }
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.compose.runtime.l
    public boolean r() {
        boolean z10;
        synchronized (this.f3836d) {
            z10 = this.f3846n.e() > 0;
        }
        return z10;
    }

    @Override // androidx.compose.runtime.y
    public void s() {
        this.f3835c.set(null);
        this.f3843k.a();
        this.f3844l.a();
        if (this.f3837e.isEmpty()) {
            return;
        }
        new a(this.f3837e).f();
    }

    @Override // androidx.compose.runtime.y
    public void t() {
        synchronized (this.f3836d) {
            try {
                this.f3851s.d0();
                if (!this.f3837e.isEmpty()) {
                    new a(this.f3837e).f();
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                try {
                    try {
                        if (!this.f3837e.isEmpty()) {
                            new a(this.f3837e).f();
                        }
                        throw th2;
                    } catch (Exception e11) {
                        s();
                        throw e11;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    @Override // androidx.compose.runtime.y
    public void u() {
        synchronized (this.f3836d) {
            try {
                for (Object obj : this.f3838f.q()) {
                    RecomposeScopeImpl recomposeScopeImpl = obj instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) obj : null;
                    if (recomposeScopeImpl != null) {
                        recomposeScopeImpl.invalidate();
                    }
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
