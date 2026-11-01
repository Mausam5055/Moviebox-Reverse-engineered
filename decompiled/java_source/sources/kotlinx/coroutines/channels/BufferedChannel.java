package kotlinx.coroutines.channels;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.internal.x;
import kotlinx.coroutines.internal.y;
import kotlinx.coroutines.s2;

/* JADX INFO: loaded from: classes7.dex */
public class BufferedChannel implements d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f67646d = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f67647e = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f67648f = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f67649g = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f67650h = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment$volatile");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f67651i = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment$volatile");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f67652j = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment$volatile");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f67653k = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause$volatile");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f67654l = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler$volatile");
    private volatile /* synthetic */ Object _closeCause$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f67655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f67656b;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function3 f67657c;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    private final class a implements f, s2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Object f67658a = BufferedChannelKt.f67676p;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private CancellableContinuationImpl f67659b;

        public a() {
        }

        private final Object e(j jVar, int i11, long j11, Continuation continuation) {
            Boolean boolA;
            BufferedChannel bufferedChannel = BufferedChannel.this;
            CancellableContinuationImpl cancellableContinuationImplB = kotlinx.coroutines.q.b(IntrinsicsKt.c(continuation));
            try {
                this.f67659b = cancellableContinuationImplB;
                Object objG1 = bufferedChannel.g1(jVar, i11, j11, this);
                if (objG1 != BufferedChannelKt.f67673m) {
                    Function3 function3H = null;
                    if (objG1 == BufferedChannelKt.f67675o) {
                        if (j11 < bufferedChannel.l0()) {
                            jVar.c();
                        }
                        j jVar2 = (j) BufferedChannel.f0().get(bufferedChannel);
                        while (true) {
                            if (bufferedChannel.t0()) {
                                g();
                                break;
                            }
                            long andIncrement = BufferedChannel.g0().getAndIncrement(bufferedChannel);
                            int i12 = BufferedChannelKt.f67662b;
                            long j12 = andIncrement / ((long) i12);
                            int i13 = (int) (andIncrement % ((long) i12));
                            if (jVar2.f67887c != j12) {
                                j jVarW = bufferedChannel.W(j12, jVar2);
                                if (jVarW != null) {
                                    jVar2 = jVarW;
                                }
                            }
                            Object objG2 = bufferedChannel.g1(jVar2, i13, andIncrement, this);
                            if (objG2 == BufferedChannelKt.f67673m) {
                                bufferedChannel.O0(this, jVar2, i13);
                                break;
                            }
                            if (objG2 == BufferedChannelKt.f67675o) {
                                if (andIncrement < bufferedChannel.l0()) {
                                    jVar2.c();
                                }
                            } else {
                                if (objG2 == BufferedChannelKt.f67674n) {
                                    throw new IllegalStateException("unexpected");
                                }
                                jVar2.c();
                                this.f67658a = objG2;
                                this.f67659b = null;
                                boolA = Boxing.a(true);
                                Function1 function1 = bufferedChannel.f67656b;
                                if (function1 != null) {
                                    function3H = bufferedChannel.H(function1, objG2);
                                }
                            }
                        }
                    } else {
                        jVar.c();
                        this.f67658a = objG1;
                        this.f67659b = null;
                        boolA = Boxing.a(true);
                        Function1 function2 = bufferedChannel.f67656b;
                        if (function2 != null) {
                            function3H = bufferedChannel.H(function2, objG1);
                        }
                    }
                    cancellableContinuationImplB.resume(boolA, (Function3<? super Throwable, ? super Boolean, ? super CoroutineContext, Unit>) function3H);
                    break;
                }
                bufferedChannel.O0(this, jVar, i11);
                Object result = cancellableContinuationImplB.getResult();
                if (result == IntrinsicsKt.f()) {
                    DebugProbesKt.c(continuation);
                }
                return result;
            } catch (Throwable th2) {
                cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                throw th2;
            }
        }

        private final boolean f() throws Throwable {
            this.f67658a = BufferedChannelKt.z();
            Throwable thB0 = BufferedChannel.this.b0();
            if (thB0 == null) {
                return false;
            }
            throw y.a(thB0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void g() {
            CancellableContinuationImpl cancellableContinuationImpl = this.f67659b;
            Intrinsics.e(cancellableContinuationImpl);
            this.f67659b = null;
            this.f67658a = BufferedChannelKt.z();
            Throwable thB0 = BufferedChannel.this.b0();
            if (thB0 == null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m454constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m454constructorimpl(ResultKt.a(thB0)));
            }
        }

        @Override // kotlinx.coroutines.channels.f
        public Object a(Continuation continuation) throws Throwable {
            boolean zF = true;
            if (this.f67658a == BufferedChannelKt.f67676p || this.f67658a == BufferedChannelKt.z()) {
                BufferedChannel bufferedChannel = BufferedChannel.this;
                j jVar = (j) BufferedChannel.f0().get(bufferedChannel);
                while (!bufferedChannel.t0()) {
                    long andIncrement = BufferedChannel.g0().getAndIncrement(bufferedChannel);
                    int i11 = BufferedChannelKt.f67662b;
                    long j11 = andIncrement / ((long) i11);
                    int i12 = (int) (andIncrement % ((long) i11));
                    if (jVar.f67887c != j11) {
                        j jVarW = bufferedChannel.W(j11, jVar);
                        if (jVarW == null) {
                            continue;
                        } else {
                            jVar = jVarW;
                        }
                    }
                    Object objG1 = bufferedChannel.g1(jVar, i12, andIncrement, null);
                    if (objG1 == BufferedChannelKt.f67673m) {
                        throw new IllegalStateException("unreachable");
                    }
                    if (objG1 == BufferedChannelKt.f67675o) {
                        if (andIncrement < bufferedChannel.l0()) {
                            jVar.c();
                        }
                    } else {
                        if (objG1 == BufferedChannelKt.f67674n) {
                            return e(jVar, i12, andIncrement, continuation);
                        }
                        jVar.c();
                        this.f67658a = objG1;
                    }
                }
                zF = f();
            }
            return Boxing.a(zF);
        }

        public final boolean h(Object obj) {
            CancellableContinuationImpl cancellableContinuationImpl = this.f67659b;
            Intrinsics.e(cancellableContinuationImpl);
            this.f67659b = null;
            this.f67658a = obj;
            Boolean bool = Boolean.TRUE;
            BufferedChannel bufferedChannel = BufferedChannel.this;
            Function1 function1 = bufferedChannel.f67656b;
            return BufferedChannelKt.B(cancellableContinuationImpl, bool, function1 != null ? bufferedChannel.H(function1, obj) : null);
        }

        public final void i() {
            CancellableContinuationImpl cancellableContinuationImpl = this.f67659b;
            Intrinsics.e(cancellableContinuationImpl);
            this.f67659b = null;
            this.f67658a = BufferedChannelKt.z();
            Throwable thB0 = BufferedChannel.this.b0();
            if (thB0 == null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m454constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m454constructorimpl(ResultKt.a(thB0)));
            }
        }

        @Override // kotlinx.coroutines.s2
        public void invokeOnCancellation(w wVar, int i11) {
            CancellableContinuationImpl cancellableContinuationImpl = this.f67659b;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.invokeOnCancellation(wVar, i11);
            }
        }

        @Override // kotlinx.coroutines.channels.f
        public Object next() throws Throwable {
            Object obj = this.f67658a;
            if (obj == BufferedChannelKt.f67676p) {
                throw new IllegalStateException("`hasNext()` has not been invoked");
            }
            this.f67658a = BufferedChannelKt.f67676p;
            if (obj != BufferedChannelKt.z()) {
                return obj;
            }
            throw y.a(BufferedChannel.this.e0());
        }
    }

    public BufferedChannel(int i11, Function1 function1) {
        this.f67655a = i11;
        this.f67656b = function1;
        if (i11 < 0) {
            throw new IllegalArgumentException(("Invalid channel capacity: " + i11 + ", should be >=0").toString());
        }
        this.bufferEnd$volatile = BufferedChannelKt.A(i11);
        this.completedExpandBuffersAndPauseFlag$volatile = Z();
        j jVar = new j(0L, null, this, 3);
        this.sendSegment$volatile = jVar;
        this.receiveSegment$volatile = jVar;
        if (x0()) {
            jVar = BufferedChannelKt.f67661a;
            Intrinsics.f(jVar, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
        }
        this.bufferEndSegment$volatile = jVar;
        this.f67657c = function1 != null ? new Function3() { // from class: kotlinx.coroutines.channels.a
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                BufferedChannel bufferedChannel = this.f67681a;
                android.support.v4.media.session.c.a(obj);
                return BufferedChannel.M0(bufferedChannel, null, obj2, obj3);
            }
        } : null;
        this._closeCause$volatile = BufferedChannelKt.f67679s;
    }

    private final void A0() {
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f67646d;
        do {
            j11 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j11, BufferedChannelKt.w(1152921504606846975L & j11, 3)));
    }

    private final void B0() {
        long j11;
        long jW;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f67646d;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            int i11 = (int) (j11 >> 60);
            if (i11 == 0) {
                jW = BufferedChannelKt.w(j11 & 1152921504606846975L, 2);
            } else if (i11 != 1) {
                return;
            } else {
                jW = BufferedChannelKt.w(j11 & 1152921504606846975L, 3);
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j11, jW));
    }

    private final void C0(long j11, j jVar) {
        j jVar2;
        j jVar3;
        while (jVar.f67887c < j11 && (jVar3 = (j) jVar.f()) != null) {
            jVar = jVar3;
        }
        while (true) {
            if (!jVar.k() || (jVar2 = (j) jVar.f()) == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f67652j;
                while (true) {
                    w wVar = (w) atomicReferenceFieldUpdater.get(this);
                    if (wVar.f67887c >= jVar.f67887c) {
                        return;
                    }
                    if (!jVar.u()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, wVar, jVar)) {
                        if (wVar.p()) {
                            wVar.n();
                            return;
                        }
                        return;
                    } else if (jVar.p()) {
                        jVar.n();
                    }
                }
            } else {
                jVar = jVar2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D0(Throwable th2, Object obj, CoroutineContext coroutineContext) {
        Function1 function1 = this.f67656b;
        Intrinsics.e(function1);
        Object objF = h.f(obj);
        Intrinsics.e(objF);
        kotlinx.coroutines.internal.s.a(function1, objF, coroutineContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E0(Throwable th2, Object obj, CoroutineContext coroutineContext) {
        Function1 function1 = this.f67656b;
        Intrinsics.e(function1);
        kotlinx.coroutines.internal.s.a(function1, obj, coroutineContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G0(kotlinx.coroutines.n nVar) {
        Result.Companion companion = Result.INSTANCE;
        nVar.resumeWith(Result.m454constructorimpl(h.b(h.f67690b.a(b0()))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Function3 H(final Function1 function1, final Object obj) {
        return new Function3() { // from class: kotlinx.coroutines.channels.b
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj2, Object obj3, Object obj4) {
                return BufferedChannel.J(function1, obj, (Throwable) obj2, obj3, (CoroutineContext) obj4);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H0(kotlinx.coroutines.n nVar) {
        Result.Companion companion = Result.INSTANCE;
        nVar.resumeWith(Result.m454constructorimpl(ResultKt.a(e0())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KFunction I(Function1 function1) {
        return new BufferedChannel$bindCancellationFun$2(this);
    }

    private final Object I0(Object obj, Continuation continuation) {
        UndeliveredElementException undeliveredElementExceptionC;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Function1 function1 = this.f67656b;
        if (function1 == null || (undeliveredElementExceptionC = kotlinx.coroutines.internal.s.c(function1, obj, null, 2, null)) == null) {
            Throwable thI0 = i0();
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m454constructorimpl(ResultKt.a(thI0)));
        } else {
            ExceptionsKt.a(undeliveredElementExceptionC, i0());
            Result.Companion companion2 = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m454constructorimpl(ResultKt.a(undeliveredElementExceptionC)));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result == IntrinsicsKt.f() ? result : Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J(Function1 function1, Object obj, Throwable th2, Object obj2, CoroutineContext coroutineContext) {
        kotlinx.coroutines.internal.s.a(function1, obj, coroutineContext);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J0(Object obj, kotlinx.coroutines.n nVar) {
        Function1 function1 = this.f67656b;
        if (function1 != null) {
            kotlinx.coroutines.internal.s.a(function1, obj, nVar.getContext());
        }
        Throwable thI0 = i0();
        Result.Companion companion = Result.INSTANCE;
        nVar.resumeWith(Result.m454constructorimpl(ResultKt.a(thI0)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KFunction K(Function1 function1) {
        return new BufferedChannel$bindCancellationFunResult$1(this);
    }

    private final boolean L(long j11) {
        return j11 < Z() || j11 < h0() + ((long) this.f67655a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function3 M0(final BufferedChannel bufferedChannel, final kotlinx.coroutines.selects.f fVar, Object obj, final Object obj2) {
        return new Function3(obj2, bufferedChannel, fVar) { // from class: kotlinx.coroutines.channels.c

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Object f67684a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ BufferedChannel f67685b;

            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                return BufferedChannel.N0(this.f67684a, this.f67685b, null, (Throwable) obj3, obj4, (CoroutineContext) obj5);
            }
        };
    }

    private final void N(j jVar, long j11) {
        Object objB = kotlinx.coroutines.internal.h.b(null, 1, null);
        loop0: while (jVar != null) {
            for (int i11 = BufferedChannelKt.f67662b - 1; -1 < i11; i11--) {
                if ((jVar.f67887c * ((long) BufferedChannelKt.f67662b)) + ((long) i11) < j11) {
                    break loop0;
                }
                while (true) {
                    Object objB2 = jVar.B(i11);
                    if (objB2 != null && objB2 != BufferedChannelKt.f67665e) {
                        if (!(objB2 instanceof s)) {
                            if (!(objB2 instanceof s2)) {
                                break;
                            }
                            if (jVar.v(i11, objB2, BufferedChannelKt.z())) {
                                objB = kotlinx.coroutines.internal.h.c(objB, objB2);
                                jVar.C(i11, true);
                                break;
                            }
                        } else {
                            if (jVar.v(i11, objB2, BufferedChannelKt.z())) {
                                objB = kotlinx.coroutines.internal.h.c(objB, ((s) objB2).f67699a);
                                jVar.C(i11, true);
                                break;
                            }
                        }
                    } else {
                        if (jVar.v(i11, objB2, BufferedChannelKt.z())) {
                            jVar.t();
                            break;
                        }
                    }
                }
            }
            jVar = (j) jVar.h();
        }
        if (objB != null) {
            if (!(objB instanceof ArrayList)) {
                V0((s2) objB);
                return;
            }
            Intrinsics.f(objB, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
            ArrayList arrayList = (ArrayList) objB;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                V0((s2) arrayList.get(size));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N0(Object obj, BufferedChannel bufferedChannel, kotlinx.coroutines.selects.f fVar, Throwable th2, Object obj2, CoroutineContext coroutineContext) {
        if (obj != BufferedChannelKt.z()) {
            kotlinx.coroutines.internal.s.a(bufferedChannel.f67656b, obj, fVar.getContext());
        }
        return Unit.f67061a;
    }

    private final j O() {
        Object obj = f67652j.get(this);
        j jVar = (j) f67650h.get(this);
        if (jVar.f67887c > ((j) obj).f67887c) {
            obj = jVar;
        }
        j jVar2 = (j) f67651i.get(this);
        if (jVar2.f67887c > ((j) obj).f67887c) {
            obj = jVar2;
        }
        return (j) kotlinx.coroutines.internal.a.b((kotlinx.coroutines.internal.b) obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O0(s2 s2Var, j jVar, int i11) {
        L0();
        s2Var.invokeOnCancellation(jVar, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P0(s2 s2Var, j jVar, int i11) {
        s2Var.invokeOnCancellation(jVar, i11 + BufferedChannelKt.f67662b);
    }

    private final void Q(long j11) {
        U0(R(j11));
    }

    static /* synthetic */ Object Q0(BufferedChannel bufferedChannel, Continuation continuation) throws Throwable {
        j jVar = (j) f0().get(bufferedChannel);
        while (!bufferedChannel.t0()) {
            long andIncrement = g0().getAndIncrement(bufferedChannel);
            int i11 = BufferedChannelKt.f67662b;
            long j11 = andIncrement / ((long) i11);
            int i12 = (int) (andIncrement % ((long) i11));
            if (jVar.f67887c != j11) {
                j jVarW = bufferedChannel.W(j11, jVar);
                if (jVarW == null) {
                    continue;
                } else {
                    jVar = jVarW;
                }
            }
            Object objG1 = bufferedChannel.g1(jVar, i12, andIncrement, null);
            if (objG1 == BufferedChannelKt.f67673m) {
                throw new IllegalStateException("unexpected");
            }
            if (objG1 != BufferedChannelKt.f67675o) {
                if (objG1 == BufferedChannelKt.f67674n) {
                    return bufferedChannel.T0(jVar, i12, andIncrement, continuation);
                }
                jVar.c();
                return objG1;
            }
            if (andIncrement < bufferedChannel.l0()) {
                jVar.c();
            }
        }
        throw y.a(bufferedChannel.e0());
    }

    private final j R(long j11) {
        j jVarO = O();
        if (w0()) {
            long jY0 = y0(jVarO);
            if (jY0 != -1) {
                T(jY0);
            }
        }
        N(jVarO, j11);
        return jVarO;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    static /* synthetic */ Object R0(BufferedChannel bufferedChannel, Continuation continuation) throws Throwable {
        BufferedChannel$receiveCatching$1 bufferedChannel$receiveCatching$1;
        if (continuation instanceof BufferedChannel$receiveCatching$1) {
            bufferedChannel$receiveCatching$1 = (BufferedChannel$receiveCatching$1) continuation;
            int i11 = bufferedChannel$receiveCatching$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                bufferedChannel$receiveCatching$1.label = i11 - Integer.MIN_VALUE;
            } else {
                bufferedChannel$receiveCatching$1 = new BufferedChannel$receiveCatching$1(bufferedChannel, continuation);
            }
        } else {
            bufferedChannel$receiveCatching$1 = new BufferedChannel$receiveCatching$1(bufferedChannel, continuation);
        }
        BufferedChannel$receiveCatching$1 bufferedChannel$receiveCatching$2 = bufferedChannel$receiveCatching$1;
        Object obj = bufferedChannel$receiveCatching$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = bufferedChannel$receiveCatching$2.label;
        if (i12 != 0) {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            return ((h) obj).k();
        }
        ResultKt.b(obj);
        j jVar = (j) f0().get(bufferedChannel);
        while (!bufferedChannel.t0()) {
            long andIncrement = g0().getAndIncrement(bufferedChannel);
            int i13 = BufferedChannelKt.f67662b;
            long j11 = andIncrement / ((long) i13);
            int i14 = (int) (andIncrement % ((long) i13));
            if (jVar.f67887c != j11) {
                j jVarW = bufferedChannel.W(j11, jVar);
                if (jVarW == null) {
                    continue;
                } else {
                    jVar = jVarW;
                }
            }
            Object objG1 = bufferedChannel.g1(jVar, i14, andIncrement, null);
            if (objG1 == BufferedChannelKt.f67673m) {
                throw new IllegalStateException("unexpected");
            }
            if (objG1 != BufferedChannelKt.f67675o) {
                if (objG1 != BufferedChannelKt.f67674n) {
                    jVar.c();
                    return h.f67690b.c(objG1);
                }
                bufferedChannel$receiveCatching$2.label = 1;
                Object objS0 = bufferedChannel.S0(jVar, i14, andIncrement, bufferedChannel$receiveCatching$2);
                return objS0 == objF ? objF : objS0;
            }
            if (andIncrement < bufferedChannel.l0()) {
                jVar.c();
            }
        }
        return h.f67690b.a(bufferedChannel.b0());
    }

    private final void S() {
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object S0(j jVar, int i11, long j11, Continuation continuation) throws Throwable {
        BufferedChannel$receiveCatchingOnNoWaiterSuspend$1 bufferedChannel$receiveCatchingOnNoWaiterSuspend$1;
        h hVarB;
        Function3 function3;
        if (continuation instanceof BufferedChannel$receiveCatchingOnNoWaiterSuspend$1) {
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = (BufferedChannel$receiveCatchingOnNoWaiterSuspend$1) continuation;
            int i12 = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.label = i12 - Integer.MIN_VALUE;
            } else {
                bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = new BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(this, continuation);
            }
        } else {
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = new BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(this, continuation);
        }
        Object result = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.result;
        Object objF = IntrinsicsKt.f();
        int i13 = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.label;
        if (i13 == 0) {
            ResultKt.b(result);
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.L$0 = this;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.L$1 = jVar;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.I$0 = i11;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.J$0 = j11;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.label = 1;
            CancellableContinuationImpl cancellableContinuationImplB = kotlinx.coroutines.q.b(IntrinsicsKt.c(bufferedChannel$receiveCatchingOnNoWaiterSuspend$1));
            try {
                Intrinsics.f(cancellableContinuationImplB, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlinx.coroutines.channels.ChannelResult<E of kotlinx.coroutines.channels.BufferedChannel.receiveCatchingOnNoWaiterSuspend_GKJJFZk$lambda$38>>");
                p pVar = new p(cancellableContinuationImplB);
                Object objG1 = g1(jVar, i11, j11, pVar);
                if (objG1 != BufferedChannelKt.f67673m) {
                    if (objG1 == BufferedChannelKt.f67675o) {
                        if (j11 < l0()) {
                            jVar.c();
                        }
                        j jVar2 = (j) f0().get(this);
                        while (true) {
                            if (t0()) {
                                G0(cancellableContinuationImplB);
                                break;
                            }
                            long andIncrement = g0().getAndIncrement(this);
                            int i14 = BufferedChannelKt.f67662b;
                            long j12 = andIncrement / ((long) i14);
                            int i15 = (int) (andIncrement % ((long) i14));
                            if (jVar2.f67887c != j12) {
                                j jVarW = W(j12, jVar2);
                                if (jVarW != null) {
                                    jVar2 = jVarW;
                                }
                            }
                            Object objG2 = g1(jVar2, i15, andIncrement, pVar);
                            if (objG2 == BufferedChannelKt.f67673m) {
                                O0(pVar, jVar2, i15);
                                break;
                            }
                            if (objG2 == BufferedChannelKt.f67675o) {
                                if (andIncrement < l0()) {
                                    jVar2.c();
                                }
                            } else {
                                if (objG2 == BufferedChannelKt.f67674n) {
                                    throw new IllegalStateException("unexpected");
                                }
                                jVar2.c();
                                hVarB = h.b(h.f67690b.c(objG2));
                                Function1 function1 = this.f67656b;
                                function3 = (Function3) (function1 != null ? K(function1) : null);
                            }
                        }
                    } else {
                        jVar.c();
                        hVarB = h.b(h.f67690b.c(objG1));
                        Function1 function2 = this.f67656b;
                        function3 = (Function3) (function2 != null ? K(function2) : null);
                    }
                    cancellableContinuationImplB.resume(hVarB, (Function3<? super Throwable, ? super h, ? super CoroutineContext, Unit>) function3);
                    break;
                }
                O0(pVar, jVar, i11);
                result = cancellableContinuationImplB.getResult();
                if (result == IntrinsicsKt.f()) {
                    DebugProbesKt.c(bufferedChannel$receiveCatchingOnNoWaiterSuspend$1);
                }
                if (result == objF) {
                    return objF;
                }
            } catch (Throwable th2) {
                cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                throw th2;
            }
        } else {
            if (i13 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(result);
        }
        return ((h) result).k();
    }

    private final Object T0(j jVar, int i11, long j11, Continuation continuation) {
        Function3 function3;
        CancellableContinuationImpl cancellableContinuationImplB = kotlinx.coroutines.q.b(IntrinsicsKt.c(continuation));
        try {
            Object objG1 = g1(jVar, i11, j11, cancellableContinuationImplB);
            if (objG1 != BufferedChannelKt.f67673m) {
                if (objG1 == BufferedChannelKt.f67675o) {
                    if (j11 < l0()) {
                        jVar.c();
                    }
                    j jVar2 = (j) f0().get(this);
                    while (true) {
                        if (t0()) {
                            H0(cancellableContinuationImplB);
                            break;
                        }
                        long andIncrement = g0().getAndIncrement(this);
                        int i12 = BufferedChannelKt.f67662b;
                        long j12 = andIncrement / ((long) i12);
                        int i13 = (int) (andIncrement % ((long) i12));
                        if (jVar2.f67887c != j12) {
                            j jVarW = W(j12, jVar2);
                            if (jVarW != null) {
                                jVar2 = jVarW;
                            }
                        }
                        objG1 = g1(jVar2, i13, andIncrement, cancellableContinuationImplB);
                        if (objG1 == BufferedChannelKt.f67673m) {
                            CancellableContinuationImpl cancellableContinuationImpl = cancellableContinuationImplB instanceof s2 ? cancellableContinuationImplB : null;
                            if (cancellableContinuationImpl == null) {
                                break;
                            }
                            O0(cancellableContinuationImpl, jVar2, i13);
                            break;
                        }
                        if (objG1 == BufferedChannelKt.f67675o) {
                            if (andIncrement < l0()) {
                                jVar2.c();
                            }
                        } else {
                            if (objG1 == BufferedChannelKt.f67674n) {
                                throw new IllegalStateException("unexpected");
                            }
                            jVar2.c();
                            Function1 function1 = this.f67656b;
                            function3 = (Function3) (function1 != null ? I(function1) : null);
                        }
                    }
                } else {
                    jVar.c();
                    Function1 function2 = this.f67656b;
                    function3 = (Function3) (function2 != null ? I(function2) : null);
                }
                cancellableContinuationImplB.resume(objG1, (Function3<? super Throwable, ? super Object, ? super CoroutineContext, Unit>) function3);
                break;
            }
            O0(cancellableContinuationImplB, jVar, i11);
            Object result = cancellableContinuationImplB.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result;
        } catch (Throwable th2) {
            cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th2;
        }
    }

    private final void U() {
        if (x0()) {
            return;
        }
        j jVar = (j) f67652j.get(this);
        while (true) {
            long andIncrement = f67648f.getAndIncrement(this);
            int i11 = BufferedChannelKt.f67662b;
            long j11 = andIncrement / ((long) i11);
            if (l0() <= andIncrement) {
                if (jVar.f67887c < j11 && jVar.f() != null) {
                    C0(j11, jVar);
                }
                p0(this, 0L, 1, null);
                return;
            }
            if (jVar.f67887c != j11) {
                j jVarV = V(j11, jVar, andIncrement);
                if (jVarV == null) {
                    continue;
                } else {
                    jVar = jVarV;
                }
            }
            if (e1(jVar, (int) (andIncrement % ((long) i11)), andIncrement)) {
                p0(this, 0L, 1, null);
                return;
            }
            p0(this, 0L, 1, null);
        }
    }

    private final void U0(j jVar) {
        Function1 function1 = this.f67656b;
        UndeliveredElementException undeliveredElementExceptionB = null;
        Object objB = kotlinx.coroutines.internal.h.b(null, 1, null);
        loop0: do {
            for (int i11 = BufferedChannelKt.f67662b - 1; -1 < i11; i11--) {
                long j11 = (jVar.f67887c * ((long) BufferedChannelKt.f67662b)) + ((long) i11);
                while (true) {
                    Object objB2 = jVar.B(i11);
                    if (objB2 == BufferedChannelKt.f67669i) {
                        break loop0;
                    }
                    if (objB2 != BufferedChannelKt.f67664d) {
                        if (objB2 != BufferedChannelKt.f67665e && objB2 != null) {
                            if (!(objB2 instanceof s2) && !(objB2 instanceof s)) {
                                if (objB2 != BufferedChannelKt.f67667g && objB2 != BufferedChannelKt.f67666f) {
                                    if (objB2 != BufferedChannelKt.f67667g) {
                                        break;
                                    }
                                } else {
                                    break loop0;
                                }
                            } else {
                                if (j11 < h0()) {
                                    break loop0;
                                }
                                s2 s2Var = objB2 instanceof s ? ((s) objB2).f67699a : (s2) objB2;
                                if (jVar.v(i11, objB2, BufferedChannelKt.z())) {
                                    if (function1 != null) {
                                        undeliveredElementExceptionB = kotlinx.coroutines.internal.s.b(function1, jVar.A(i11), undeliveredElementExceptionB);
                                    }
                                    objB = kotlinx.coroutines.internal.h.c(objB, s2Var);
                                    jVar.w(i11);
                                    jVar.t();
                                    break;
                                }
                            }
                        } else {
                            if (jVar.v(i11, objB2, BufferedChannelKt.z())) {
                                jVar.t();
                                break;
                            }
                        }
                    } else {
                        if (j11 < h0()) {
                            break loop0;
                        }
                        if (jVar.v(i11, objB2, BufferedChannelKt.z())) {
                            if (function1 != null) {
                                undeliveredElementExceptionB = kotlinx.coroutines.internal.s.b(function1, jVar.A(i11), undeliveredElementExceptionB);
                            }
                            jVar.w(i11);
                            jVar.t();
                            break;
                        }
                    }
                }
            }
            jVar = (j) jVar.h();
        } while (jVar != null);
        if (objB != null) {
            if (objB instanceof ArrayList) {
                Intrinsics.f(objB, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
                ArrayList arrayList = (ArrayList) objB;
                for (int size = arrayList.size() - 1; -1 < size; size--) {
                    W0((s2) arrayList.get(size));
                }
            } else {
                W0((s2) objB);
            }
        }
        if (undeliveredElementExceptionB != null) {
            throw undeliveredElementExceptionB;
        }
    }

    private final j V(long j11, j jVar, long j12) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f67652j;
        Function2 function2 = (Function2) BufferedChannelKt.y();
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.a.c(jVar, j11, function2);
            if (!x.c(objC)) {
                w wVarB = x.b(objC);
                while (true) {
                    w wVar = (w) atomicReferenceFieldUpdater.get(this);
                    if (wVar.f67887c >= wVarB.f67887c) {
                        break loop0;
                    }
                    if (!wVarB.u()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, wVar, wVarB)) {
                        if (!wVar.p()) {
                            break loop0;
                        }
                        wVar.n();
                        break loop0;
                    }
                    if (wVarB.p()) {
                        wVarB.n();
                    }
                }
            } else {
                break;
            }
        }
        if (x.c(objC)) {
            S();
            C0(j11, jVar);
            p0(this, 0L, 1, null);
            return null;
        }
        j jVar2 = (j) x.b(objC);
        if (jVar2.f67887c <= j11) {
            return jVar2;
        }
        long j13 = jVar2.f67887c;
        int i11 = BufferedChannelKt.f67662b;
        if (f67648f.compareAndSet(this, j12 + 1, j13 * ((long) i11))) {
            o0((jVar2.f67887c * ((long) i11)) - j12);
            return null;
        }
        p0(this, 0L, 1, null);
        return null;
    }

    private final void V0(s2 s2Var) {
        X0(s2Var, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j W(long j11, j jVar) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f67651i;
        Function2 function2 = (Function2) BufferedChannelKt.y();
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.a.c(jVar, j11, function2);
            if (!x.c(objC)) {
                w wVarB = x.b(objC);
                while (true) {
                    w wVar = (w) atomicReferenceFieldUpdater.get(this);
                    if (wVar.f67887c >= wVarB.f67887c) {
                        break loop0;
                    }
                    if (!wVarB.u()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, wVar, wVarB)) {
                        if (!wVar.p()) {
                            break loop0;
                        }
                        wVar.n();
                        break loop0;
                    }
                    if (wVarB.p()) {
                        wVarB.n();
                    }
                }
            } else {
                break;
            }
        }
        if (x.c(objC)) {
            S();
            if (jVar.f67887c * ((long) BufferedChannelKt.f67662b) >= l0()) {
                return null;
            }
            jVar.c();
            return null;
        }
        j jVar2 = (j) x.b(objC);
        if (!x0() && j11 <= Z() / ((long) BufferedChannelKt.f67662b)) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f67652j;
            while (true) {
                w wVar2 = (w) atomicReferenceFieldUpdater2.get(this);
                if (wVar2.f67887c >= jVar2.f67887c || !jVar2.u()) {
                    break;
                }
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater2, this, wVar2, jVar2)) {
                    if (!wVar2.p()) {
                        break;
                    }
                    wVar2.n();
                    break;
                }
                if (jVar2.p()) {
                    jVar2.n();
                }
            }
        }
        long j12 = jVar2.f67887c;
        if (j12 <= j11) {
            return jVar2;
        }
        int i11 = BufferedChannelKt.f67662b;
        k1(j12 * ((long) i11));
        if (jVar2.f67887c * ((long) i11) >= l0()) {
            return null;
        }
        jVar2.c();
        return null;
    }

    private final void W0(s2 s2Var) {
        X0(s2Var, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j X(long j11, j jVar) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f67650h;
        Function2 function2 = (Function2) BufferedChannelKt.y();
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.a.c(jVar, j11, function2);
            if (!x.c(objC)) {
                w wVarB = x.b(objC);
                while (true) {
                    w wVar = (w) atomicReferenceFieldUpdater.get(this);
                    if (wVar.f67887c >= wVarB.f67887c) {
                        break loop0;
                    }
                    if (!wVarB.u()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, wVar, wVarB)) {
                        if (!wVar.p()) {
                            break loop0;
                        }
                        wVar.n();
                        break loop0;
                    }
                    if (wVarB.p()) {
                        wVarB.n();
                    }
                }
            } else {
                break;
            }
        }
        if (x.c(objC)) {
            S();
            if (jVar.f67887c * ((long) BufferedChannelKt.f67662b) >= h0()) {
                return null;
            }
            jVar.c();
            return null;
        }
        j jVar2 = (j) x.b(objC);
        long j12 = jVar2.f67887c;
        if (j12 <= j11) {
            return jVar2;
        }
        int i11 = BufferedChannelKt.f67662b;
        l1(j12 * ((long) i11));
        if (jVar2.f67887c * ((long) i11) >= h0()) {
            return null;
        }
        jVar2.c();
        return null;
    }

    private final void X0(s2 s2Var, boolean z10) {
        if (s2Var instanceof kotlinx.coroutines.n) {
            Continuation continuation = (Continuation) s2Var;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m454constructorimpl(ResultKt.a(z10 ? e0() : i0())));
        } else if (s2Var instanceof p) {
            CancellableContinuationImpl cancellableContinuationImpl = ((p) s2Var).f67698a;
            Result.Companion companion2 = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m454constructorimpl(h.b(h.f67690b.a(b0()))));
        } else {
            if (s2Var instanceof a) {
                ((a) s2Var).i();
                return;
            }
            throw new IllegalStateException(("Unexpected waiter: " + s2Var).toString());
        }
    }

    static /* synthetic */ Object Y0(BufferedChannel bufferedChannel, Object obj, Continuation continuation) {
        j jVar = (j) j0().get(bufferedChannel);
        while (true) {
            long andIncrement = k0().getAndIncrement(bufferedChannel);
            long j11 = 1152921504606846975L & andIncrement;
            boolean zV0 = bufferedChannel.v0(andIncrement);
            int i11 = BufferedChannelKt.f67662b;
            long j12 = j11 / ((long) i11);
            int i12 = (int) (j11 % ((long) i11));
            if (jVar.f67887c != j12) {
                j jVarX = bufferedChannel.X(j12, jVar);
                if (jVarX != null) {
                    jVar = jVarX;
                } else if (zV0) {
                    Object objI0 = bufferedChannel.I0(obj, continuation);
                    if (objI0 != IntrinsicsKt.f()) {
                        break;
                    }
                    return objI0;
                }
            }
            int iI1 = bufferedChannel.i1(jVar, i12, obj, j11, null, zV0);
            if (iI1 == 0) {
                jVar.c();
                break;
            }
            if (iI1 != 1) {
                if (iI1 == 2) {
                    if (!zV0) {
                        break;
                    }
                    jVar.t();
                    Object objI1 = bufferedChannel.I0(obj, continuation);
                    if (objI1 != IntrinsicsKt.f()) {
                        break;
                    }
                    return objI1;
                }
                if (iI1 == 3) {
                    Object objZ0 = bufferedChannel.Z0(jVar, i12, obj, j11, continuation);
                    if (objZ0 != IntrinsicsKt.f()) {
                        break;
                    }
                    return objZ0;
                }
                if (iI1 == 4) {
                    if (j11 < bufferedChannel.h0()) {
                        jVar.c();
                    }
                    Object objI2 = bufferedChannel.I0(obj, continuation);
                    if (objI2 != IntrinsicsKt.f()) {
                        break;
                    }
                    return objI2;
                }
                if (iI1 == 5) {
                    jVar.c();
                }
            } else {
                break;
            }
        }
        return Unit.f67061a;
    }

    private final long Z() {
        return f67648f.get(this);
    }

    /* JADX WARN: Code duplicated, block: B:62:0x0114  */
    /* JADX WARN: Code duplicated, block: B:65:0x011d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:66:0x011e  */
    private final Object Z0(j jVar, int i11, Object obj, long j11, Continuation continuation) {
        Object objM454constructorimpl;
        Object result;
        j jVar2;
        CancellableContinuationImpl cancellableContinuationImplB = kotlinx.coroutines.q.b(IntrinsicsKt.c(continuation));
        try {
            int iI1 = i1(jVar, i11, obj, j11, cancellableContinuationImplB, false);
            if (iI1 == 0) {
                jVar.c();
                Result.Companion companion = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            } else {
                if (iI1 != 1) {
                    if (iI1 != 2) {
                        if (iI1 != 4) {
                            if (iI1 != 5) {
                                throw new IllegalStateException("unexpected");
                            }
                            jVar.c();
                            j jVar3 = (j) j0().get(this);
                            while (true) {
                                long andIncrement = k0().getAndIncrement(this);
                                long j12 = andIncrement & 1152921504606846975L;
                                boolean zV0 = v0(andIncrement);
                                int i12 = BufferedChannelKt.f67662b;
                                long j13 = j12 / ((long) i12);
                                int i13 = (int) (j12 % ((long) i12));
                                if (jVar3.f67887c != j13) {
                                    j jVarX = X(j13, jVar3);
                                    if (jVarX != null) {
                                        jVar2 = jVarX;
                                    } else if (zV0) {
                                    }
                                } else {
                                    jVar2 = jVar3;
                                }
                                j jVar4 = jVar2;
                                int iI2 = i1(jVar2, i13, obj, j12, cancellableContinuationImplB, zV0);
                                if (iI2 == 0) {
                                    jVar4.c();
                                    Result.Companion companion2 = Result.INSTANCE;
                                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                                } else if (iI2 == 1) {
                                    Result.Companion companion3 = Result.INSTANCE;
                                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                                } else if (iI2 == 2) {
                                    if (!zV0) {
                                        CancellableContinuationImpl cancellableContinuationImpl = cancellableContinuationImplB instanceof s2 ? cancellableContinuationImplB : null;
                                        if (cancellableContinuationImpl == null) {
                                            break;
                                        }
                                        P0(cancellableContinuationImpl, jVar4, i13);
                                        break;
                                    }
                                    jVar4.t();
                                } else {
                                    if (iI2 == 3) {
                                        throw new IllegalStateException("unexpected");
                                    }
                                    if (iI2 != 4) {
                                        if (iI2 == 5) {
                                            jVar4.c();
                                        }
                                        jVar3 = jVar4;
                                    } else if (j12 < h0()) {
                                        jVar4.c();
                                    }
                                }
                            }
                        } else if (j11 < h0()) {
                            jVar.c();
                        }
                        J0(obj, cancellableContinuationImplB);
                        break;
                    } else {
                        P0(cancellableContinuationImplB, jVar, i11);
                    }
                    result = cancellableContinuationImplB.getResult();
                    if (result == IntrinsicsKt.f()) {
                        DebugProbesKt.c(continuation);
                    }
                    if (result == IntrinsicsKt.f()) {
                        return result;
                    }
                    return Unit.f67061a;
                }
                Result.Companion companion4 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            }
            cancellableContinuationImplB.resumeWith(objM454constructorimpl);
            result = cancellableContinuationImplB.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            if (result == IntrinsicsKt.f()) {
                return result;
            }
            return Unit.f67061a;
        } catch (Throwable th2) {
            cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th2;
        }
    }

    private final boolean a1(long j11) {
        if (v0(j11)) {
            return false;
        }
        return !L(j11 & 1152921504606846975L);
    }

    private final boolean b1(Object obj, Object obj2) {
        if (obj instanceof p) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            CancellableContinuationImpl cancellableContinuationImpl = ((p) obj).f67698a;
            h hVarB = h.b(h.f67690b.c(obj2));
            Function1 function1 = this.f67656b;
            return BufferedChannelKt.B(cancellableContinuationImpl, hVarB, (Function3) (function1 != null ? K(function1) : null));
        }
        if (obj instanceof a) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((a) obj).h(obj2);
        }
        if (obj instanceof kotlinx.coroutines.n) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            kotlinx.coroutines.n nVar = (kotlinx.coroutines.n) obj;
            Function1 function2 = this.f67656b;
            return BufferedChannelKt.B(nVar, obj2, (Function3) (function2 != null ? I(function2) : null));
        }
        throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
    }

    private final boolean c1(Object obj, j jVar, int i11) {
        if (obj instanceof kotlinx.coroutines.n) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return BufferedChannelKt.C((kotlinx.coroutines.n) obj, Unit.f67061a, null, 2, null);
        }
        throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Throwable e0() {
        Throwable thB0 = b0();
        return thB0 == null ? new ClosedReceiveChannelException("Channel was closed") : thB0;
    }

    private final boolean e1(j jVar, int i11, long j11) {
        Object objB = jVar.B(i11);
        if (!(objB instanceof s2) || j11 < f67647e.get(this) || !jVar.v(i11, objB, BufferedChannelKt.f67667g)) {
            return f1(jVar, i11, j11);
        }
        if (c1(objB, jVar, i11)) {
            jVar.F(i11, BufferedChannelKt.f67664d);
            return true;
        }
        jVar.F(i11, BufferedChannelKt.f67670j);
        jVar.C(i11, false);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f0() {
        return f67651i;
    }

    private final boolean f1(j jVar, int i11, long j11) {
        while (true) {
            Object objB = jVar.B(i11);
            if (objB instanceof s2) {
                if (j11 < f67647e.get(this)) {
                    if (jVar.v(i11, objB, new s((s2) objB))) {
                        return true;
                    }
                } else if (jVar.v(i11, objB, BufferedChannelKt.f67667g)) {
                    if (c1(objB, jVar, i11)) {
                        jVar.F(i11, BufferedChannelKt.f67664d);
                        return true;
                    }
                    jVar.F(i11, BufferedChannelKt.f67670j);
                    jVar.C(i11, false);
                    return false;
                }
            } else {
                if (objB == BufferedChannelKt.f67670j) {
                    return false;
                }
                if (objB == null) {
                    if (jVar.v(i11, objB, BufferedChannelKt.f67665e)) {
                        return true;
                    }
                } else {
                    if (objB == BufferedChannelKt.f67664d || objB == BufferedChannelKt.f67668h || objB == BufferedChannelKt.f67669i || objB == BufferedChannelKt.f67671k || objB == BufferedChannelKt.z()) {
                        return true;
                    }
                    if (objB != BufferedChannelKt.f67666f) {
                        throw new IllegalStateException(("Unexpected cell state: " + objB).toString());
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicLongFieldUpdater g0() {
        return f67647e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object g1(j jVar, int i11, long j11, Object obj) {
        Object objB = jVar.B(i11);
        if (objB == null) {
            if (j11 >= (f67646d.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return BufferedChannelKt.f67674n;
                }
                if (jVar.v(i11, objB, obj)) {
                    U();
                    return BufferedChannelKt.f67673m;
                }
            }
        } else if (objB == BufferedChannelKt.f67664d && jVar.v(i11, objB, BufferedChannelKt.f67669i)) {
            U();
            return jVar.D(i11);
        }
        return h1(jVar, i11, j11, obj);
    }

    private final Object h1(j jVar, int i11, long j11, Object obj) {
        while (true) {
            Object objB = jVar.B(i11);
            if (objB == null || objB == BufferedChannelKt.f67665e) {
                if (j11 < (f67646d.get(this) & 1152921504606846975L)) {
                    if (jVar.v(i11, objB, BufferedChannelKt.f67668h)) {
                        U();
                        return BufferedChannelKt.f67675o;
                    }
                } else {
                    if (obj == null) {
                        return BufferedChannelKt.f67674n;
                    }
                    if (jVar.v(i11, objB, obj)) {
                        U();
                        return BufferedChannelKt.f67673m;
                    }
                }
            } else {
                if (objB != BufferedChannelKt.f67664d) {
                    if (objB != BufferedChannelKt.f67670j && objB != BufferedChannelKt.f67668h) {
                        if (objB == BufferedChannelKt.z()) {
                            U();
                            return BufferedChannelKt.f67675o;
                        }
                        if (objB != BufferedChannelKt.f67667g && jVar.v(i11, objB, BufferedChannelKt.f67666f)) {
                            boolean z10 = objB instanceof s;
                            if (z10) {
                                objB = ((s) objB).f67699a;
                            }
                            if (c1(objB, jVar, i11)) {
                                jVar.F(i11, BufferedChannelKt.f67669i);
                                U();
                                return jVar.D(i11);
                            }
                            jVar.F(i11, BufferedChannelKt.f67670j);
                            jVar.C(i11, false);
                            if (z10) {
                                U();
                            }
                            return BufferedChannelKt.f67675o;
                        }
                    }
                    return BufferedChannelKt.f67675o;
                }
                if (jVar.v(i11, objB, BufferedChannelKt.f67669i)) {
                    U();
                    return jVar.D(i11);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int i1(j jVar, int i11, Object obj, long j11, Object obj2, boolean z10) {
        jVar.G(i11, obj);
        if (z10) {
            return j1(jVar, i11, obj, j11, obj2, z10);
        }
        Object objB = jVar.B(i11);
        if (objB == null) {
            if (L(j11)) {
                if (jVar.v(i11, null, BufferedChannelKt.f67664d)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (jVar.v(i11, null, obj2)) {
                    return 2;
                }
            }
        } else if (objB instanceof s2) {
            jVar.w(i11);
            if (b1(objB, obj)) {
                jVar.F(i11, BufferedChannelKt.f67669i);
                K0();
                return 0;
            }
            if (jVar.x(i11, BufferedChannelKt.f67671k) != BufferedChannelKt.f67671k) {
                jVar.C(i11, true);
            }
            return 5;
        }
        return j1(jVar, i11, obj, j11, obj2, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicReferenceFieldUpdater j0() {
        return f67650h;
    }

    private final int j1(j jVar, int i11, Object obj, long j11, Object obj2, boolean z10) {
        while (true) {
            Object objB = jVar.B(i11);
            if (objB == null) {
                if (!L(j11) || z10) {
                    if (z10) {
                        if (jVar.v(i11, null, BufferedChannelKt.f67670j)) {
                            jVar.C(i11, false);
                            return 4;
                        }
                    } else {
                        if (obj2 == null) {
                            return 3;
                        }
                        if (jVar.v(i11, null, obj2)) {
                            return 2;
                        }
                    }
                } else if (jVar.v(i11, null, BufferedChannelKt.f67664d)) {
                    return 1;
                }
            } else {
                if (objB != BufferedChannelKt.f67665e) {
                    if (objB == BufferedChannelKt.f67671k) {
                        jVar.w(i11);
                        return 5;
                    }
                    if (objB == BufferedChannelKt.f67668h) {
                        jVar.w(i11);
                        return 5;
                    }
                    if (objB == BufferedChannelKt.z()) {
                        jVar.w(i11);
                        S();
                        return 4;
                    }
                    jVar.w(i11);
                    if (objB instanceof s) {
                        objB = ((s) objB).f67699a;
                    }
                    if (b1(objB, obj)) {
                        jVar.F(i11, BufferedChannelKt.f67669i);
                        K0();
                        return 0;
                    }
                    if (jVar.x(i11, BufferedChannelKt.f67671k) != BufferedChannelKt.f67671k) {
                        jVar.C(i11, true);
                    }
                    return 5;
                }
                if (jVar.v(i11, objB, BufferedChannelKt.f67664d)) {
                    return 1;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicLongFieldUpdater k0() {
        return f67646d;
    }

    private final void k1(long j11) {
        long j12;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f67647e;
        do {
            j12 = atomicLongFieldUpdater.get(this);
            if (j12 >= j11) {
                return;
            }
        } while (!f67647e.compareAndSet(this, j12, j11));
    }

    private final void l1(long j11) {
        long j12;
        long j13;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f67646d;
        do {
            j12 = atomicLongFieldUpdater.get(this);
            j13 = 1152921504606846975L & j12;
            if (j13 >= j11) {
                return;
            }
        } while (!f67646d.compareAndSet(this, j12, BufferedChannelKt.w(j13, (int) (j12 >> 60))));
    }

    private final void o0(long j11) {
        if ((f67649g.addAndGet(this, j11) & 4611686018427387904L) != 0) {
            while ((f67649g.get(this) & 4611686018427387904L) != 0) {
            }
        }
    }

    static /* synthetic */ void p0(BufferedChannel bufferedChannel, long j11, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts");
        }
        if ((i11 & 1) != 0) {
            j11 = 1;
        }
        bufferedChannel.o0(j11);
    }

    private final void q0() {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f67654l;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, obj == null ? BufferedChannelKt.f67677q : BufferedChannelKt.f67678r));
        if (obj == null) {
            return;
        }
        ((Function1) obj).invoke(b0());
    }

    private final boolean r0(j jVar, int i11, long j11) {
        Object objB;
        do {
            objB = jVar.B(i11);
            if (objB != null && objB != BufferedChannelKt.f67665e) {
                if (objB == BufferedChannelKt.f67664d) {
                    return true;
                }
                if (objB == BufferedChannelKt.f67670j || objB == BufferedChannelKt.z() || objB == BufferedChannelKt.f67669i || objB == BufferedChannelKt.f67668h) {
                    return false;
                }
                if (objB == BufferedChannelKt.f67667g) {
                    return true;
                }
                return objB != BufferedChannelKt.f67666f && j11 == h0();
            }
        } while (!jVar.v(i11, objB, BufferedChannelKt.f67668h));
        U();
        return false;
    }

    private final boolean s0(long j11, boolean z10) {
        int i11 = (int) (j11 >> 60);
        if (i11 == 0 || i11 == 1) {
            return false;
        }
        if (i11 == 2) {
            R(j11 & 1152921504606846975L);
            if (z10 && n0()) {
                return false;
            }
        } else {
            if (i11 != 3) {
                throw new IllegalStateException(("unexpected close status: " + i11).toString());
            }
            Q(j11 & 1152921504606846975L);
        }
        return true;
    }

    private final boolean u0(long j11) {
        return s0(j11, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean v0(long j11) {
        return s0(j11, false);
    }

    private final boolean x0() {
        long jZ = Z();
        return jZ == 0 || jZ == Long.MAX_VALUE;
    }

    private final long y0(j jVar) {
        do {
            int i11 = BufferedChannelKt.f67662b;
            while (true) {
                i11--;
                if (-1 < i11) {
                    long j11 = (jVar.f67887c * ((long) BufferedChannelKt.f67662b)) + ((long) i11);
                    if (j11 >= h0()) {
                        while (true) {
                            Object objB = jVar.B(i11);
                            if (objB != null && objB != BufferedChannelKt.f67665e) {
                                if (objB != BufferedChannelKt.f67664d) {
                                    break;
                                }
                                return j11;
                            }
                            if (jVar.v(i11, objB, BufferedChannelKt.z())) {
                                jVar.t();
                                break;
                            }
                        }
                    } else {
                        return -1L;
                    }
                }
            }
            jVar = (j) jVar.h();
        } while (jVar != null);
        return -1L;
    }

    private final void z0() {
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f67646d;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            if (((int) (j11 >> 60)) != 0) {
                return;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j11, BufferedChannelKt.w(1152921504606846975L & j11, 1)));
    }

    protected void F0() {
    }

    protected void K0() {
    }

    protected void L0() {
    }

    public boolean M(Throwable th2) {
        if (th2 == null) {
            th2 = new CancellationException("Channel was cancelled");
        }
        return P(th2, true);
    }

    protected boolean P(Throwable th2, boolean z10) {
        if (z10) {
            z0();
        }
        boolean zA = androidx.concurrent.futures.a.a(f67653k, this, BufferedChannelKt.f67679s, th2);
        if (z10) {
            A0();
        } else {
            B0();
        }
        S();
        F0();
        if (zA) {
            q0();
        }
        return zA;
    }

    protected final void T(long j11) {
        UndeliveredElementException undeliveredElementExceptionC;
        j jVar = (j) f67651i.get(this);
        while (true) {
            long j12 = f67647e.get(this);
            if (j11 < Math.max(((long) this.f67655a) + j12, Z())) {
                return;
            }
            if (f67647e.compareAndSet(this, j12, j12 + 1)) {
                int i11 = BufferedChannelKt.f67662b;
                long j13 = j12 / ((long) i11);
                int i12 = (int) (j12 % ((long) i11));
                if (jVar.f67887c != j13) {
                    j jVarW = W(j13, jVar);
                    if (jVarW == null) {
                        continue;
                    } else {
                        jVar = jVarW;
                    }
                }
                Object objG1 = g1(jVar, i12, j12, null);
                if (objG1 != BufferedChannelKt.f67675o) {
                    jVar.c();
                    Function1 function1 = this.f67656b;
                    if (function1 != null && (undeliveredElementExceptionC = kotlinx.coroutines.internal.s.c(function1, objG1, null, 2, null)) != null) {
                        throw undeliveredElementExceptionC;
                    }
                } else if (j12 < l0()) {
                    jVar.c();
                }
            }
        }
    }

    @Override // kotlinx.coroutines.channels.r
    public void a(Function1 function1) {
        if (androidx.concurrent.futures.a.a(f67654l, this, null, function1)) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f67654l;
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != BufferedChannelKt.f67677q) {
                if (obj == BufferedChannelKt.f67678r) {
                    throw new IllegalStateException("Another handler was already registered and successfully invoked");
                }
                throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
            }
        } while (!androidx.concurrent.futures.a.a(f67654l, this, BufferedChannelKt.f67677q, BufferedChannelKt.f67678r));
        function1.invoke(b0());
    }

    protected final Throwable b0() {
        return (Throwable) f67653k.get(this);
    }

    @Override // kotlinx.coroutines.channels.r
    public Object c(Object obj) {
        j jVar;
        if (a1(f67646d.get(this))) {
            return h.f67690b.b();
        }
        Object obj2 = BufferedChannelKt.f67670j;
        j jVar2 = (j) j0().get(this);
        while (true) {
            long andIncrement = k0().getAndIncrement(this);
            long j11 = andIncrement & 1152921504606846975L;
            boolean zV0 = v0(andIncrement);
            int i11 = BufferedChannelKt.f67662b;
            long j12 = j11 / ((long) i11);
            int i12 = (int) (j11 % ((long) i11));
            if (jVar2.f67887c != j12) {
                j jVarX = X(j12, jVar2);
                if (jVarX != null) {
                    jVar = jVarX;
                } else if (zV0) {
                    break;
                }
            } else {
                jVar = jVar2;
            }
            int iI1 = i1(jVar, i12, obj, j11, obj2, zV0);
            if (iI1 == 0) {
                jVar.c();
            } else if (iI1 != 1) {
                if (iI1 == 2) {
                    if (zV0) {
                        jVar.t();
                        break;
                    }
                    s2 s2Var = obj2 instanceof s2 ? (s2) obj2 : null;
                    if (s2Var != null) {
                        P0(s2Var, jVar, i12);
                    }
                    jVar.t();
                    return h.f67690b.b();
                }
                if (iI1 == 3) {
                    throw new IllegalStateException("unexpected");
                }
                if (iI1 == 4) {
                    if (j11 >= h0()) {
                        break;
                    }
                    jVar.c();
                    break;
                }
                if (iI1 == 5) {
                    jVar.c();
                }
                jVar2 = jVar;
            }
            return h.f67690b.c(Unit.f67061a);
        }
        return h.f67690b.a(i0());
    }

    @Override // kotlinx.coroutines.channels.q
    public final void cancel(CancellationException cancellationException) {
        M(cancellationException);
    }

    protected final Object d1(Object obj) {
        j jVar;
        Object obj2 = BufferedChannelKt.f67664d;
        j jVar2 = (j) j0().get(this);
        while (true) {
            long andIncrement = k0().getAndIncrement(this);
            long j11 = andIncrement & 1152921504606846975L;
            boolean zV0 = v0(andIncrement);
            int i11 = BufferedChannelKt.f67662b;
            long j12 = j11 / ((long) i11);
            int i12 = (int) (j11 % ((long) i11));
            if (jVar2.f67887c != j12) {
                j jVarX = X(j12, jVar2);
                if (jVarX != null) {
                    jVar = jVarX;
                } else if (zV0) {
                    return h.f67690b.a(i0());
                }
            } else {
                jVar = jVar2;
            }
            int iI1 = i1(jVar, i12, obj, j11, obj2, zV0);
            if (iI1 == 0) {
                jVar.c();
                return h.f67690b.c(Unit.f67061a);
            }
            if (iI1 == 1) {
                return h.f67690b.c(Unit.f67061a);
            }
            if (iI1 == 2) {
                if (zV0) {
                    jVar.t();
                    return h.f67690b.a(i0());
                }
                s2 s2Var = obj2 instanceof s2 ? (s2) obj2 : null;
                if (s2Var != null) {
                    P0(s2Var, jVar, i12);
                }
                T((jVar.f67887c * ((long) i11)) + ((long) i12));
                return h.f67690b.c(Unit.f67061a);
            }
            if (iI1 == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (iI1 == 4) {
                if (j11 < h0()) {
                    jVar.c();
                }
                return h.f67690b.a(i0());
            }
            if (iI1 == 5) {
                jVar.c();
            }
            jVar2 = jVar;
        }
    }

    @Override // kotlinx.coroutines.channels.q
    public Object e() {
        j jVar;
        long j11 = f67647e.get(this);
        long j12 = f67646d.get(this);
        if (u0(j12)) {
            return h.f67690b.a(b0());
        }
        if (j11 >= (j12 & 1152921504606846975L)) {
            return h.f67690b.b();
        }
        Object obj = BufferedChannelKt.f67671k;
        j jVar2 = (j) f0().get(this);
        while (!t0()) {
            long andIncrement = g0().getAndIncrement(this);
            int i11 = BufferedChannelKt.f67662b;
            long j13 = andIncrement / ((long) i11);
            int i12 = (int) (andIncrement % ((long) i11));
            if (jVar2.f67887c != j13) {
                j jVarW = W(j13, jVar2);
                if (jVarW == null) {
                    continue;
                } else {
                    jVar = jVarW;
                }
            } else {
                jVar = jVar2;
            }
            Object objG1 = g1(jVar, i12, andIncrement, obj);
            if (objG1 == BufferedChannelKt.f67673m) {
                s2 s2Var = obj instanceof s2 ? (s2) obj : null;
                if (s2Var != null) {
                    O0(s2Var, jVar, i12);
                }
                m1(andIncrement);
                jVar.t();
                return h.f67690b.b();
            }
            if (objG1 != BufferedChannelKt.f67675o) {
                if (objG1 == BufferedChannelKt.f67674n) {
                    throw new IllegalStateException("unexpected");
                }
                jVar.c();
                return h.f67690b.c(objG1);
            }
            if (andIncrement < l0()) {
                jVar.c();
            }
            jVar2 = jVar;
        }
        return h.f67690b.a(b0());
    }

    @Override // kotlinx.coroutines.channels.q
    public Object f(Continuation continuation) {
        return R0(this, continuation);
    }

    @Override // kotlinx.coroutines.channels.q
    public Object g(Continuation continuation) {
        return Q0(this, continuation);
    }

    public final long h0() {
        return f67647e.get(this);
    }

    protected final Throwable i0() {
        Throwable thB0 = b0();
        return thB0 == null ? new ClosedSendChannelException("Channel was closed") : thB0;
    }

    @Override // kotlinx.coroutines.channels.q
    public f iterator() {
        return new a();
    }

    @Override // kotlinx.coroutines.channels.r
    public boolean j(Throwable th2) {
        return P(th2, false);
    }

    public final long l0() {
        return f67646d.get(this) & 1152921504606846975L;
    }

    public final void m1(long j11) {
        long j12;
        long j13;
        if (x0()) {
            return;
        }
        while (Z() <= j11) {
        }
        int i11 = BufferedChannelKt.f67663c;
        for (int i12 = 0; i12 < i11; i12++) {
            long jZ = Z();
            if (jZ == (f67649g.get(this) & 4611686018427387903L) && jZ == Z()) {
                return;
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = f67649g;
        do {
            j12 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j12, BufferedChannelKt.v(j12 & 4611686018427387903L, true)));
        while (true) {
            long jZ2 = Z();
            long j14 = f67649g.get(this);
            long j15 = j14 & 4611686018427387903L;
            boolean z10 = (4611686018427387904L & j14) != 0;
            if (jZ2 == j15 && jZ2 == Z()) {
                break;
            } else if (!z10) {
                f67649g.compareAndSet(this, j14, BufferedChannelKt.v(j15, true));
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater2 = f67649g;
        do {
            j13 = atomicLongFieldUpdater2.get(this);
        } while (!atomicLongFieldUpdater2.compareAndSet(this, j13, BufferedChannelKt.v(j13 & 4611686018427387903L, false)));
    }

    public final boolean n0() {
        while (true) {
            j jVarW = (j) f67651i.get(this);
            long jH0 = h0();
            if (l0() <= jH0) {
                return false;
            }
            int i11 = BufferedChannelKt.f67662b;
            long j11 = jH0 / ((long) i11);
            if (jVarW.f67887c == j11 || (jVarW = W(j11, jVarW)) != null) {
                jVarW.c();
                if (r0(jVarW, (int) (jH0 % ((long) i11)), jH0)) {
                    return true;
                }
                f67647e.compareAndSet(this, jH0, 1 + jH0);
            } else if (((j) f67651i.get(this)).f67887c < j11) {
                return false;
            }
        }
    }

    @Override // kotlinx.coroutines.channels.r
    public Object p(Object obj, Continuation continuation) {
        return Y0(this, obj, continuation);
    }

    @Override // kotlinx.coroutines.channels.r
    public boolean q() {
        return v0(f67646d.get(this));
    }

    public boolean t0() {
        return u0(f67646d.get(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String toString() {
        String string;
        StringBuilder sb2 = new StringBuilder();
        int i11 = (int) (f67646d.get(this) >> 60);
        if (i11 == 2) {
            sb2.append("closed,");
        } else if (i11 == 3) {
            sb2.append("cancelled,");
        }
        sb2.append("capacity=" + this.f67655a + ',');
        sb2.append("data=[");
        int i12 = 0;
        List listO = CollectionsKt.o(f67651i.get(this), f67650h.get(this), f67652j.get(this));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listO) {
            if (((j) obj) != BufferedChannelKt.f67661a) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j11 = ((j) next).f67887c;
            do {
                Object next2 = it.next();
                long j12 = ((j) next2).f67887c;
                if (j11 > j12) {
                    next = next2;
                    j11 = j12;
                }
            } while (it.hasNext());
        }
        j jVar = (j) next;
        long jH0 = h0();
        long jL0 = l0();
        loop2: while (true) {
            int i13 = BufferedChannelKt.f67662b;
            for (int i14 = i12; i14 < i13; i14++) {
                long j13 = (jVar.f67887c * ((long) BufferedChannelKt.f67662b)) + ((long) i14);
                if (j13 >= jL0 && j13 >= jH0) {
                    break loop2;
                }
                Object objB = jVar.B(i14);
                Object objA = jVar.A(i14);
                if (objB instanceof kotlinx.coroutines.n) {
                    string = (j13 >= jH0 || j13 < jL0) ? (j13 >= jL0 || j13 < jH0) ? "cont" : "send" : "receive";
                } else if (objB instanceof p) {
                    string = "receiveCatching";
                } else if (objB instanceof s) {
                    string = "EB(" + objB + ')';
                } else if (Intrinsics.c(objB, BufferedChannelKt.f67666f) || Intrinsics.c(objB, BufferedChannelKt.f67667g)) {
                    string = "resuming_sender";
                } else {
                    if (objB != null && !Intrinsics.c(objB, BufferedChannelKt.f67665e) && !Intrinsics.c(objB, BufferedChannelKt.f67669i) && !Intrinsics.c(objB, BufferedChannelKt.f67668h) && !Intrinsics.c(objB, BufferedChannelKt.f67671k) && !Intrinsics.c(objB, BufferedChannelKt.f67670j) && !Intrinsics.c(objB, BufferedChannelKt.z())) {
                        string = objB.toString();
                    }
                }
                if (objA != null) {
                    sb2.append('(' + string + ',' + objA + "),");
                } else {
                    sb2.append(string + ',');
                }
            }
            jVar = (j) jVar.f();
            if (jVar == null) {
                break;
            }
            i12 = 0;
        }
        if (StringsKt.w1(sb2) == ',') {
            Intrinsics.g(sb2.deleteCharAt(sb2.length() - 1), "deleteCharAt(...)");
        }
        sb2.append("]");
        return sb2.toString();
    }

    protected boolean w0() {
        return false;
    }
}
