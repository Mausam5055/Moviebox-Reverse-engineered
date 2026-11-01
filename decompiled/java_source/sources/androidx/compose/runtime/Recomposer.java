package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class Recomposer extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f3636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BroadcastFrameClock f3637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f3638c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private kotlinx.coroutines.t1 f3639d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Throwable f3640e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f3641f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List f3642g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private MutableScatterSet f3643h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f3644i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final List f3645j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final List f3646k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Map f3647l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Map f3648m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private List f3649n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Set f3650o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private kotlinx.coroutines.n f3651p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f3652q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f3653r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private b f3654s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f3655t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final kotlinx.coroutines.flow.y0 f3656u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final kotlinx.coroutines.z f3657v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final CoroutineContext f3658w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final c f3659x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final a f3634y = new a(null);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f3635z = 8;
    private static final kotlinx.coroutines.flow.y0 A = kotlinx.coroutines.flow.j1.a(t.a.c());
    private static final AtomicReference B = new AtomicReference(Boolean.FALSE);

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/Recomposer$State;", "", "(Ljava/lang/String;I)V", "ShutDown", "ShuttingDown", "Inactive", "InactivePendingWork", "Idle", "PendingWork", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum State {
        ShutDown,
        ShuttingDown,
        Inactive,
        InactivePendingWork,
        Idle,
        PendingWork
    }

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void c(c cVar) {
            t.h hVar;
            t.h hVarAdd;
            do {
                hVar = (t.h) Recomposer.A.getValue();
                hVarAdd = hVar.add((Object) cVar);
                if (hVar == hVarAdd) {
                    return;
                }
            } while (!Recomposer.A.e(hVar, hVarAdd));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void d(c cVar) {
            t.h hVar;
            t.h hVarRemove;
            do {
                hVar = (t.h) Recomposer.A.getValue();
                hVarRemove = hVar.remove((Object) cVar);
                if (hVar == hVarRemove) {
                    return;
                }
            } while (!Recomposer.A.e(hVar, hVarRemove));
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f3660a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Exception f3661b;

        public b(boolean z10, Exception exc) {
            this.f3660a = z10;
            this.f3661b = exc;
        }

        public Exception a() {
            return this.f3661b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class c {
        public c() {
        }
    }

    public Recomposer(CoroutineContext coroutineContext) {
        BroadcastFrameClock broadcastFrameClock = new BroadcastFrameClock(new Function0<Unit>() { // from class: androidx.compose.runtime.Recomposer$broadcastFrameClock$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m85invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m85invoke() {
                kotlinx.coroutines.n nVarA0;
                Object obj = this.this$0.f3638c;
                Recomposer recomposer = this.this$0;
                synchronized (obj) {
                    nVarA0 = recomposer.a0();
                    if (((Recomposer.State) recomposer.f3656u.getValue()).compareTo(Recomposer.State.ShuttingDown) <= 0) {
                        throw kotlinx.coroutines.i1.a("Recomposer shutdown; frame clock awaiter will never resume", recomposer.f3640e);
                    }
                }
                if (nVarA0 != null) {
                    Result.Companion companion = Result.INSTANCE;
                    nVarA0.resumeWith(Result.m454constructorimpl(Unit.f67061a));
                }
            }
        });
        this.f3637b = broadcastFrameClock;
        this.f3638c = new Object();
        this.f3641f = new ArrayList();
        this.f3643h = new MutableScatterSet(0, 1, null);
        this.f3644i = new androidx.compose.runtime.collection.b(new y[16], 0);
        this.f3645j = new ArrayList();
        this.f3646k = new ArrayList();
        this.f3647l = new LinkedHashMap();
        this.f3648m = new LinkedHashMap();
        this.f3656u = kotlinx.coroutines.flow.j1.a(State.Inactive);
        kotlinx.coroutines.z zVarA = kotlinx.coroutines.v1.a((kotlinx.coroutines.t1) coroutineContext.get(kotlinx.coroutines.t1.f67996l1));
        zVarA.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.compose.runtime.Recomposer$effectJob$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f67061a;
            }

            public final void invoke(final Throwable th2) {
                kotlinx.coroutines.n nVar;
                kotlinx.coroutines.n nVar2;
                CancellationException cancellationExceptionA = kotlinx.coroutines.i1.a("Recomposer effect job completed", th2);
                Object obj = this.this$0.f3638c;
                final Recomposer recomposer = this.this$0;
                synchronized (obj) {
                    try {
                        kotlinx.coroutines.t1 t1Var = recomposer.f3639d;
                        nVar = null;
                        if (t1Var != null) {
                            recomposer.f3656u.setValue(Recomposer.State.ShuttingDown);
                            if (recomposer.f3653r) {
                                if (recomposer.f3651p != null) {
                                    nVar2 = recomposer.f3651p;
                                }
                                recomposer.f3651p = null;
                                t1Var.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.compose.runtime.Recomposer$effectJob$1$1$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                                        invoke((Throwable) obj2);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(Throwable th3) {
                                        Object obj2 = recomposer.f3638c;
                                        Recomposer recomposer2 = recomposer;
                                        Throwable th4 = th2;
                                        synchronized (obj2) {
                                            if (th4 == null) {
                                                th4 = null;
                                            } else if (th3 != null) {
                                                try {
                                                    if (th3 instanceof CancellationException) {
                                                        th3 = null;
                                                    }
                                                    if (th3 != null) {
                                                        ExceptionsKt.a(th4, th3);
                                                    }
                                                } catch (Throwable th5) {
                                                    throw th5;
                                                }
                                            }
                                            recomposer2.f3640e = th4;
                                            recomposer2.f3656u.setValue(Recomposer.State.ShutDown);
                                            Unit unit = Unit.f67061a;
                                        }
                                    }
                                });
                                nVar = nVar2;
                            } else {
                                t1Var.cancel(cancellationExceptionA);
                            }
                            nVar2 = null;
                            recomposer.f3651p = null;
                            t1Var.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.compose.runtime.Recomposer$effectJob$1$1$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                                    invoke((Throwable) obj2);
                                    return Unit.f67061a;
                                }

                                public final void invoke(Throwable th3) {
                                    Object obj2 = recomposer.f3638c;
                                    Recomposer recomposer2 = recomposer;
                                    Throwable th4 = th2;
                                    synchronized (obj2) {
                                        if (th4 == null) {
                                            th4 = null;
                                        } else if (th3 != null) {
                                            try {
                                                if (th3 instanceof CancellationException) {
                                                    th3 = null;
                                                }
                                                if (th3 != null) {
                                                    ExceptionsKt.a(th4, th3);
                                                }
                                            } catch (Throwable th5) {
                                                throw th5;
                                            }
                                        }
                                        recomposer2.f3640e = th4;
                                        recomposer2.f3656u.setValue(Recomposer.State.ShutDown);
                                        Unit unit = Unit.f67061a;
                                    }
                                }
                            });
                            nVar = nVar2;
                        } else {
                            recomposer.f3640e = cancellationExceptionA;
                            recomposer.f3656u.setValue(Recomposer.State.ShutDown);
                            Unit unit = Unit.f67061a;
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                if (nVar != null) {
                    Result.Companion companion = Result.INSTANCE;
                    nVar.resumeWith(Result.m454constructorimpl(Unit.f67061a));
                }
            }
        });
        this.f3657v = zVarA;
        this.f3658w = coroutineContext.plus(broadcastFrameClock).plus(zVarA);
        this.f3659x = new c();
    }

    private final Function1 A0(final y yVar, final MutableScatterSet mutableScatterSet) {
        return new Function1<Object, Unit>() { // from class: androidx.compose.runtime.Recomposer$writeObserverOf$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                m88invoke(obj);
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m88invoke(Object obj) {
                yVar.q(obj);
                MutableScatterSet mutableScatterSet2 = mutableScatterSet;
                if (mutableScatterSet2 != null) {
                    mutableScatterSet2.h(obj);
                }
            }
        };
    }

    private final void V(y yVar) {
        this.f3641f.add(yVar);
        this.f3642g = null;
    }

    private final void W(androidx.compose.runtime.snapshots.b bVar) {
        try {
            if (bVar.C() instanceof androidx.compose.runtime.snapshots.k.a) {
                throw new IllegalStateException("Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition.");
            }
            bVar.d();
        } catch (Throwable th2) {
            bVar.d();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object X(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl;
        if (h0()) {
            return Unit.f67061a;
        }
        CancellableContinuationImpl cancellableContinuationImpl2 = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl2.initCancellability();
        synchronized (this.f3638c) {
            if (h0()) {
                cancellableContinuationImpl = cancellableContinuationImpl2;
            } else {
                this.f3651p = cancellableContinuationImpl2;
                cancellableContinuationImpl = null;
            }
        }
        if (cancellableContinuationImpl != null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m454constructorimpl(Unit.f67061a));
        }
        Object result = cancellableContinuationImpl2.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result == IntrinsicsKt.f() ? result : Unit.f67061a;
    }

    private final void Z() {
        this.f3641f.clear();
        this.f3642g = CollectionsKt.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlinx.coroutines.n a0() {
        State state;
        if (((State) this.f3656u.getValue()).compareTo(State.ShuttingDown) <= 0) {
            Z();
            this.f3643h = new MutableScatterSet(0, 1, null);
            this.f3644i.h();
            this.f3645j.clear();
            this.f3646k.clear();
            this.f3649n = null;
            kotlinx.coroutines.n nVar = this.f3651p;
            if (nVar != null) {
                kotlinx.coroutines.n.a.a(nVar, null, 1, null);
            }
            this.f3651p = null;
            this.f3654s = null;
            return null;
        }
        if (this.f3654s != null) {
            state = State.Inactive;
        } else if (this.f3639d == null) {
            this.f3643h = new MutableScatterSet(0, 1, null);
            this.f3644i.h();
            state = f0() ? State.InactivePendingWork : State.Inactive;
        } else {
            state = (this.f3644i.q() || this.f3643h.e() || !this.f3645j.isEmpty() || !this.f3646k.isEmpty() || this.f3652q > 0 || f0()) ? State.PendingWork : State.Idle;
        }
        this.f3656u.setValue(state);
        if (state != State.PendingWork) {
            return null;
        }
        kotlinx.coroutines.n nVar2 = this.f3651p;
        this.f3651p = null;
        return nVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b0() {
        int i11;
        List listL;
        synchronized (this.f3638c) {
            try {
                if (this.f3647l.isEmpty()) {
                    listL = CollectionsKt.l();
                } else {
                    List listX = CollectionsKt.x(this.f3647l.values());
                    this.f3647l.clear();
                    listL = new ArrayList(listX.size());
                    int size = listX.size();
                    for (int i12 = 0; i12 < size; i12++) {
                        y0 y0Var = (y0) listX.get(i12);
                        listL.add(TuplesKt.a(y0Var, this.f3648m.get(y0Var)));
                    }
                    this.f3648m.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        int size2 = listL.size();
        for (i11 = 0; i11 < size2; i11++) {
            Pair pair = (Pair) listL.get(i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean e0() {
        boolean zF0;
        synchronized (this.f3638c) {
            zF0 = f0();
        }
        return zF0;
    }

    private final boolean f0() {
        return !this.f3655t && this.f3637b.p();
    }

    private final boolean g0() {
        return this.f3644i.q() || f0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean h0() {
        boolean z10;
        synchronized (this.f3638c) {
            z10 = this.f3643h.e() || this.f3644i.q() || f0();
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List i0() {
        List listL = this.f3642g;
        if (listL == null) {
            List list = this.f3641f;
            listL = list.isEmpty() ? CollectionsKt.l() : new ArrayList(list);
            this.f3642g = listL;
        }
        return listL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean j0() {
        boolean z10;
        synchronized (this.f3638c) {
            z10 = this.f3653r;
        }
        if (z10) {
            Iterator f67431a = this.f3657v.getChildren().getF67431a();
            while (f67431a.hasNext()) {
                if (((kotlinx.coroutines.t1) f67431a.next()).isActive()) {
                }
            }
            return false;
        }
        return true;
    }

    private final void m0(y yVar) {
        synchronized (this.f3638c) {
            List list = this.f3646k;
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                if (Intrinsics.c(((y0) list.get(i11)).b(), yVar)) {
                    Unit unit = Unit.f67061a;
                    ArrayList arrayList = new ArrayList();
                    n0(arrayList, this, yVar);
                    while (!arrayList.isEmpty()) {
                        o0(arrayList, null);
                        n0(arrayList, this, yVar);
                    }
                    return;
                }
            }
        }
    }

    private static final void n0(List list, Recomposer recomposer, y yVar) {
        list.clear();
        synchronized (recomposer.f3638c) {
            try {
                Iterator it = recomposer.f3646k.iterator();
                while (it.hasNext()) {
                    y0 y0Var = (y0) it.next();
                    if (Intrinsics.c(y0Var.b(), yVar)) {
                        list.add(y0Var);
                        it.remove();
                    }
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List o0(List list, MutableScatterSet mutableScatterSet) {
        ArrayList arrayList;
        HashMap map = new HashMap(list.size());
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            y yVarB = ((y0) obj).b();
            Object arrayList2 = map.get(yVarB);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                map.put(yVarB, arrayList2);
            }
            ((ArrayList) arrayList2).add(obj);
        }
        for (Map.Entry entry : map.entrySet()) {
            y yVar = (y) entry.getKey();
            List list2 = (List) entry.getValue();
            k.O(!yVar.o());
            androidx.compose.runtime.snapshots.b bVarO = androidx.compose.runtime.snapshots.j.f4004e.o(s0(yVar), A0(yVar, mutableScatterSet));
            try {
                androidx.compose.runtime.snapshots.j jVarL = bVarO.l();
                try {
                    synchronized (this.f3638c) {
                        arrayList = new ArrayList(list2.size());
                        int size2 = list2.size();
                        for (int i12 = 0; i12 < size2; i12++) {
                            y0 y0Var = (y0) list2.get(i12);
                            Map map2 = this.f3647l;
                            y0Var.c();
                            arrayList.add(TuplesKt.a(y0Var, x1.a(map2, null)));
                        }
                    }
                    int size3 = arrayList.size();
                    for (int i13 = 0; i13 < size3; i13++) {
                        if (((Pair) arrayList.get(i13)).getSecond() != null) {
                            int size4 = arrayList.size();
                            for (int i14 = 0; i14 < size4; i14++) {
                                if (((Pair) arrayList.get(i14)).getSecond() == null) {
                                    ArrayList arrayList3 = new ArrayList(arrayList.size());
                                    int size5 = arrayList.size();
                                    for (int i15 = 0; i15 < size5; i15++) {
                                        Pair pair = (Pair) arrayList.get(i15);
                                        y0 y0Var2 = pair.getSecond() == null ? (y0) pair.getFirst() : null;
                                        if (y0Var2 != null) {
                                            arrayList3.add(y0Var2);
                                        }
                                    }
                                    synchronized (this.f3638c) {
                                        CollectionsKt.B(this.f3646k, arrayList3);
                                        Unit unit = Unit.f67061a;
                                    }
                                    ArrayList arrayList4 = new ArrayList(arrayList.size());
                                    int size6 = arrayList.size();
                                    for (int i16 = 0; i16 < size6; i16++) {
                                        Object obj2 = arrayList.get(i16);
                                        if (((Pair) obj2).getSecond() != null) {
                                            arrayList4.add(obj2);
                                        }
                                    }
                                    arrayList = arrayList4;
                                    break;
                                }
                            }
                            break;
                        }
                    }
                    yVar.f(arrayList);
                    Unit unit2 = Unit.f67061a;
                    bVarO.s(jVarL);
                    W(bVarO);
                } catch (Throwable th2) {
                    bVarO.s(jVarL);
                    throw th2;
                }
            } catch (Throwable th3) {
                W(bVarO);
                throw th3;
            }
        }
        return CollectionsKt.R0(map.keySet());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final y p0(final y yVar, final MutableScatterSet mutableScatterSet) {
        Set set;
        if (yVar.o() || yVar.isDisposed() || ((set = this.f3650o) != null && set.contains(yVar))) {
            return null;
        }
        androidx.compose.runtime.snapshots.b bVarO = androidx.compose.runtime.snapshots.j.f4004e.o(s0(yVar), A0(yVar, mutableScatterSet));
        try {
            androidx.compose.runtime.snapshots.j jVarL = bVarO.l();
            if (mutableScatterSet != null) {
                try {
                    if (mutableScatterSet.e()) {
                        yVar.l(new Function0<Unit>() { // from class: androidx.compose.runtime.Recomposer$performRecompose$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Object invoke() {
                                m86invoke();
                                return Unit.f67061a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                            public final void m86invoke() {
                                MutableScatterSet mutableScatterSet2 = mutableScatterSet;
                                y yVar2 = yVar;
                                Object[] objArr = mutableScatterSet2.f2247b;
                                long[] jArr = mutableScatterSet2.f2246a;
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
                                                yVar2.q(objArr[(i11 << 3) + i13]);
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
                        });
                    }
                } catch (Throwable th2) {
                    bVarO.s(jVarL);
                    throw th2;
                }
            }
            boolean zI = yVar.i();
            bVarO.s(jVarL);
            W(bVarO);
            if (zI) {
                return yVar;
            }
            return null;
        } catch (Throwable th3) {
            W(bVarO);
            throw th3;
        }
    }

    private final void q0(Exception exc, y yVar, boolean z10) throws Exception {
        if (!((Boolean) B.get()).booleanValue() || (exc instanceof ComposeRuntimeError)) {
            synchronized (this.f3638c) {
                b bVar = this.f3654s;
                if (bVar != null) {
                    throw bVar.a();
                }
                this.f3654s = new b(false, exc);
                Unit unit = Unit.f67061a;
            }
            throw exc;
        }
        synchronized (this.f3638c) {
            try {
                ActualAndroid_androidKt.e("Error was captured in composition while live edit was enabled.", exc);
                this.f3645j.clear();
                this.f3644i.h();
                this.f3643h = new MutableScatterSet(0, 1, null);
                this.f3646k.clear();
                this.f3647l.clear();
                this.f3648m.clear();
                this.f3654s = new b(z10, exc);
                if (yVar != null) {
                    v0(yVar);
                }
                a0();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    static /* synthetic */ void r0(Recomposer recomposer, Exception exc, y yVar, boolean z10, int i11, Object obj) throws Exception {
        if ((i11 & 2) != 0) {
            yVar = null;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        recomposer.q0(exc, yVar, z10);
    }

    private final Function1 s0(final y yVar) {
        return new Function1<Object, Unit>() { // from class: androidx.compose.runtime.Recomposer$readObserverOf$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                m87invoke(obj);
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m87invoke(Object obj) {
                yVar.a(obj);
            }
        };
    }

    private final Object t0(Function3 function3, Continuation continuation) {
        Object objG = kotlinx.coroutines.i.g(this.f3637b, new Recomposer$recompositionRunner$2(this, function3, v0.a(continuation.getContext()), null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean u0() {
        List listI0;
        boolean zG0;
        synchronized (this.f3638c) {
            if (this.f3643h.d()) {
                return g0();
            }
            Set setA = androidx.compose.runtime.collection.d.a(this.f3643h);
            this.f3643h = new MutableScatterSet(0, 1, null);
            synchronized (this.f3638c) {
                listI0 = i0();
            }
            try {
                int size = listI0.size();
                for (int i11 = 0; i11 < size; i11++) {
                    ((y) listI0.get(i11)).m(setA);
                    if (((State) this.f3656u.getValue()).compareTo(State.ShuttingDown) <= 0) {
                        break;
                    }
                }
                synchronized (this.f3638c) {
                    this.f3643h = new MutableScatterSet(0, 1, null);
                    Unit unit = Unit.f67061a;
                }
                synchronized (this.f3638c) {
                    if (a0() != null) {
                        throw new IllegalStateException("called outside of runRecomposeAndApplyChanges");
                    }
                    zG0 = g0();
                }
                return zG0;
            } catch (Throwable th2) {
                synchronized (this.f3638c) {
                    this.f3643h.j(setA);
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v0(y yVar) {
        List arrayList = this.f3649n;
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.f3649n = arrayList;
        }
        if (!arrayList.contains(yVar)) {
            arrayList.add(yVar);
        }
        x0(yVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w0(kotlinx.coroutines.t1 t1Var) {
        synchronized (this.f3638c) {
            Throwable th2 = this.f3640e;
            if (th2 != null) {
                throw th2;
            }
            if (((State) this.f3656u.getValue()).compareTo(State.ShuttingDown) <= 0) {
                throw new IllegalStateException("Recomposer shut down");
            }
            if (this.f3639d != null) {
                throw new IllegalStateException("Recomposer already running");
            }
            this.f3639d = t1Var;
            a0();
        }
    }

    private final void x0(y yVar) {
        this.f3641f.remove(yVar);
        this.f3642g = null;
    }

    public final void Y() {
        synchronized (this.f3638c) {
            try {
                if (((State) this.f3656u.getValue()).compareTo(State.Idle) >= 0) {
                    this.f3656u.setValue(State.ShuttingDown);
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        kotlinx.coroutines.t1.a.b(this.f3657v, null, 1, null);
    }

    @Override // androidx.compose.runtime.m
    public void a(y yVar, Function2 function2) throws Exception {
        boolean zO = yVar.o();
        try {
            androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f4004e;
            androidx.compose.runtime.snapshots.b bVarO = aVar.o(s0(yVar), A0(yVar, null));
            try {
                androidx.compose.runtime.snapshots.j jVarL = bVarO.l();
                try {
                    yVar.b(function2);
                    Unit unit = Unit.f67061a;
                    bVarO.s(jVarL);
                    W(bVarO);
                    if (!zO) {
                        aVar.g();
                    }
                    synchronized (this.f3638c) {
                        if (((State) this.f3656u.getValue()).compareTo(State.ShuttingDown) > 0 && !i0().contains(yVar)) {
                            V(yVar);
                        }
                    }
                    try {
                        m0(yVar);
                        try {
                            yVar.n();
                            yVar.c();
                            if (zO) {
                                return;
                            }
                            aVar.g();
                        } catch (Exception e11) {
                            r0(this, e11, null, false, 6, null);
                        }
                    } catch (Exception e12) {
                        q0(e12, yVar, true);
                    }
                } catch (Throwable th2) {
                    bVarO.s(jVarL);
                    throw th2;
                }
            } catch (Throwable th3) {
                W(bVarO);
                throw th3;
            }
        } catch (Exception e13) {
            q0(e13, yVar, true);
        }
    }

    @Override // androidx.compose.runtime.m
    public boolean c() {
        return ((Boolean) B.get()).booleanValue();
    }

    public final long c0() {
        return this.f3636a;
    }

    @Override // androidx.compose.runtime.m
    public boolean d() {
        return false;
    }

    public final kotlinx.coroutines.flow.i1 d0() {
        return this.f3656u;
    }

    @Override // androidx.compose.runtime.m
    public boolean e() {
        return false;
    }

    @Override // androidx.compose.runtime.m
    public int g() {
        return 1000;
    }

    @Override // androidx.compose.runtime.m
    public CoroutineContext h() {
        return this.f3658w;
    }

    @Override // androidx.compose.runtime.m
    public void j(y0 y0Var) {
        kotlinx.coroutines.n nVarA0;
        synchronized (this.f3638c) {
            this.f3646k.add(y0Var);
            nVarA0 = a0();
        }
        if (nVarA0 != null) {
            Result.Companion companion = Result.INSTANCE;
            nVarA0.resumeWith(Result.m454constructorimpl(Unit.f67061a));
        }
    }

    @Override // androidx.compose.runtime.m
    public void k(y yVar) {
        kotlinx.coroutines.n nVarA0;
        synchronized (this.f3638c) {
            if (this.f3644i.i(yVar)) {
                nVarA0 = null;
            } else {
                this.f3644i.b(yVar);
                nVarA0 = a0();
            }
        }
        if (nVarA0 != null) {
            Result.Companion companion = Result.INSTANCE;
            nVarA0.resumeWith(Result.m454constructorimpl(Unit.f67061a));
        }
    }

    public final Object k0(Continuation continuation) {
        Object objQ = kotlinx.coroutines.flow.d.q(d0(), new Recomposer$join$2(null), continuation);
        return objQ == IntrinsicsKt.f() ? objQ : Unit.f67061a;
    }

    @Override // androidx.compose.runtime.m
    public x0 l(y0 y0Var) {
        x0 x0Var;
        synchronized (this.f3638c) {
            x0Var = (x0) this.f3648m.remove(y0Var);
        }
        return x0Var;
    }

    public final void l0() {
        synchronized (this.f3638c) {
            this.f3655t = true;
            Unit unit = Unit.f67061a;
        }
    }

    @Override // androidx.compose.runtime.m
    public void m(Set set) {
    }

    @Override // androidx.compose.runtime.m
    public void o(y yVar) {
        synchronized (this.f3638c) {
            try {
                Set linkedHashSet = this.f3650o;
                if (linkedHashSet == null) {
                    linkedHashSet = new LinkedHashSet();
                    this.f3650o = linkedHashSet;
                }
                linkedHashSet.add(yVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.compose.runtime.m
    public void r(y yVar) {
        synchronized (this.f3638c) {
            x0(yVar);
            this.f3644i.t(yVar);
            this.f3645j.remove(yVar);
            Unit unit = Unit.f67061a;
        }
    }

    public final void y0() {
        kotlinx.coroutines.n nVarA0;
        synchronized (this.f3638c) {
            if (this.f3655t) {
                this.f3655t = false;
                nVarA0 = a0();
            } else {
                nVarA0 = null;
            }
        }
        if (nVarA0 != null) {
            Result.Companion companion = Result.INSTANCE;
            nVarA0.resumeWith(Result.m454constructorimpl(Unit.f67061a));
        }
    }

    public final Object z0(Continuation continuation) {
        Object objT0 = t0(new Recomposer$runRecomposeAndApplyChanges$2(this, null), continuation);
        return objT0 == IntrinsicsKt.f() ? objT0 : Unit.f67061a;
    }
}
