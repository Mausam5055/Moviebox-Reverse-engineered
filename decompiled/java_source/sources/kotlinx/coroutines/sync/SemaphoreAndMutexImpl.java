package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.internal.x;
import kotlinx.coroutines.n;
import kotlinx.coroutines.q;
import kotlinx.coroutines.s2;

/* JADX INFO: loaded from: classes7.dex */
public class SemaphoreAndMutexImpl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f67967c = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "head$volatile");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f67968d = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "deqIdx$volatile");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f67969e = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "tail$volatile");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f67970f = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "enqIdx$volatile");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f67971g = AtomicIntegerFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "_availablePermits$volatile");
    private volatile /* synthetic */ int _availablePermits$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f67972a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function3 f67973b;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    private volatile /* synthetic */ Object tail$volatile;

    public SemaphoreAndMutexImpl(int i11, int i12) {
        this.f67972a = i11;
        if (i11 <= 0) {
            throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + i11).toString());
        }
        if (i12 < 0 || i12 > i11) {
            throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + i11).toString());
        }
        l lVar = new l(0L, null, 2);
        this.head$volatile = lVar;
        this.tail$volatile = lVar;
        this._availablePermits$volatile = i11 - i12;
        this.f67973b = new Function3() { // from class: kotlinx.coroutines.sync.i
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return SemaphoreAndMutexImpl.r(this.f67988a, (Throwable) obj, (Unit) obj2, (CoroutineContext) obj3);
            }
        };
    }

    private final Object i(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImplB = q.b(IntrinsicsKt.c(continuation));
        try {
            if (!j(cancellableContinuationImplB)) {
                g(cancellableContinuationImplB);
            }
            Object result = cancellableContinuationImplB.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result == IntrinsicsKt.f() ? result : Unit.f67061a;
        } catch (Throwable th2) {
            cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean j(s2 s2Var) {
        Object objC;
        l lVar = (l) f67969e.get(this);
        long andIncrement = f67970f.getAndIncrement(this);
        SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 = SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1.INSTANCE;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f67969e;
        long j11 = andIncrement / ((long) k.f67994f);
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.a.c(lVar, j11, semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1);
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
        l lVar2 = (l) x.b(objC);
        int i11 = (int) (andIncrement % ((long) k.f67994f));
        if (kotlinx.coroutines.channels.i.a(lVar2.v(), i11, null, s2Var)) {
            s2Var.invokeOnCancellation(lVar2, i11);
            return true;
        }
        if (!kotlinx.coroutines.channels.i.a(lVar2.v(), i11, k.f67990b, k.f67991c)) {
            return false;
        }
        if (s2Var instanceof n) {
            Intrinsics.f(s2Var, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            ((n) s2Var).resume(Unit.f67061a, this.f67973b);
            return true;
        }
        throw new IllegalStateException(("unexpected: " + s2Var).toString());
    }

    private final void k() {
        int i11;
        do {
            i11 = f67971g.get(this);
            if (i11 <= this.f67972a) {
                return;
            }
        } while (!f67971g.compareAndSet(this, i11, this.f67972a));
    }

    private final int l() {
        int andDecrement;
        do {
            andDecrement = f67971g.getAndDecrement(this);
        } while (andDecrement > this.f67972a);
        return andDecrement;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r(SemaphoreAndMutexImpl semaphoreAndMutexImpl, Throwable th2, Unit unit, CoroutineContext coroutineContext) {
        semaphoreAndMutexImpl.release();
        return Unit.f67061a;
    }

    private final boolean t(Object obj) {
        if (!(obj instanceof n)) {
            throw new IllegalStateException(("unexpected: " + obj).toString());
        }
        Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
        n nVar = (n) obj;
        Object objTryResume = nVar.tryResume(Unit.f67061a, null, this.f67973b);
        if (objTryResume == null) {
            return false;
        }
        nVar.completeResume(objTryResume);
        return true;
    }

    private final boolean u() {
        Object objC;
        l lVar = (l) f67967c.get(this);
        long andIncrement = f67968d.getAndIncrement(this);
        long j11 = andIncrement / ((long) k.f67994f);
        SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 = SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1.INSTANCE;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f67967c;
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.a.c(lVar, j11, semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1);
            if (x.c(objC)) {
                break;
            }
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
        }
        l lVar2 = (l) x.b(objC);
        lVar2.c();
        if (lVar2.f67887c > j11) {
            return false;
        }
        int i11 = (int) (andIncrement % ((long) k.f67994f));
        Object andSet = lVar2.v().getAndSet(i11, k.f67990b);
        if (andSet != null) {
            if (andSet == k.f67993e) {
                return false;
            }
            return t(andSet);
        }
        int i12 = k.f67989a;
        for (int i13 = 0; i13 < i12; i13++) {
            if (lVar2.v().get(i11) == k.f67991c) {
                return true;
            }
        }
        return !kotlinx.coroutines.channels.i.a(lVar2.v(), i11, k.f67990b, k.f67992d);
    }

    public final int a() {
        return Math.max(f67971g.get(this), 0);
    }

    public final Object c(Continuation continuation) {
        Object objI;
        return (l() <= 0 && (objI = i(continuation)) == IntrinsicsKt.f()) ? objI : Unit.f67061a;
    }

    protected final void g(n nVar) {
        while (l() <= 0) {
            Intrinsics.f(nVar, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (j((s2) nVar)) {
                return;
            }
        }
        nVar.resume(Unit.f67061a, this.f67973b);
    }

    public final void release() {
        do {
            int andIncrement = f67971g.getAndIncrement(this);
            if (andIncrement >= this.f67972a) {
                k();
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.f67972a).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
        } while (!u());
    }

    public final boolean s() {
        while (true) {
            int i11 = f67971g.get(this);
            if (i11 > this.f67972a) {
                k();
            } else {
                if (i11 <= 0) {
                    return false;
                }
                if (f67971g.compareAndSet(this, i11, i11 - 1)) {
                    return true;
                }
            }
        }
    }
}
