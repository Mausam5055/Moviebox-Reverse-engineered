package kotlinx.coroutines.internal;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.DispatchedTask;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.o2;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.q2;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00000\u0005B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0016\u001a\u00020\u0013H\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\u0013H\u0000¢\u0006\u0004\b\u0017\u0010\u0015J\u0017\u0010\u001c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0019H\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u001d\u0010!\u001a\u0004\u0018\u00010\u001e2\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u001dH\u0000¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010%\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u001eH\u0000¢\u0006\u0004\b#\u0010$J\u0011\u0010)\u001a\u0004\u0018\u00010&H\u0010¢\u0006\u0004\b'\u0010(J\u001d\u0010,\u001a\u00020\u00132\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000*H\u0016¢\u0006\u0004\b,\u0010-J\u001e\u0010/\u001a\u00020\u00132\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000*H\u0080\b¢\u0006\u0004\b.\u0010-J\u001a\u00103\u001a\u00020\u000f2\b\u00100\u001a\u0004\u0018\u00010&H\u0080\b¢\u0006\u0004\b1\u00102J\u001e\u00105\u001a\u00020\u00132\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000*H\u0080\b¢\u0006\u0004\b4\u0010-J\u001f\u0010;\u001a\u00020\u00132\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u00028\u0000H\u0000¢\u0006\u0004\b9\u0010:J\u000f\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b=\u0010>R\u0014\u0010\u0007\u001a\u00020\u00068\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010?R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010@R\u001e\u0010A\u001a\u0004\u0018\u00010&8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bA\u0010B\u0012\u0004\bC\u0010\u0015R\u0014\u0010D\u001a\u00020&8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\bD\u0010BR\u001a\u0010F\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00198BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bE\u0010\u001bR\u001c\u0010I\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bG\u0010HR\u001a\u0010L\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058PX\u0090\u0004¢\u0006\u0006\u001a\u0004\bJ\u0010KR\u0013\u0010N\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010&0M8\u0002X\u0082\u0004R\u000b\u00107\u001a\u0002068\u0016X\u0096\u0005¨\u0006O"}, d2 = {"Lkotlinx/coroutines/internal/DispatchedContinuation;", "T", "Lkotlinx/coroutines/DispatchedTask;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/i0;", "dispatcher", "continuation", "<init>", "(Lkotlinx/coroutines/i0;Lkotlin/coroutines/Continuation;)V", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "", "isReusable$kotlinx_coroutines_core", "()Z", "isReusable", "", "awaitReusability$kotlinx_coroutines_core", "()V", "awaitReusability", "release$kotlinx_coroutines_core", "release", "Lkotlinx/coroutines/CancellableContinuationImpl;", "claimReusableCancellableContinuation$kotlinx_coroutines_core", "()Lkotlinx/coroutines/CancellableContinuationImpl;", "claimReusableCancellableContinuation", "Lkotlinx/coroutines/n;", "", "tryReleaseClaimedContinuation$kotlinx_coroutines_core", "(Lkotlinx/coroutines/n;)Ljava/lang/Throwable;", "tryReleaseClaimedContinuation", "cause", "postponeCancellation$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)Z", "postponeCancellation", "", "takeState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "takeState", "Lkotlin/Result;", "result", "resumeWith", "(Ljava/lang/Object;)V", "resumeCancellableWith$kotlinx_coroutines_core", "resumeCancellableWith", "state", "resumeCancelled$kotlinx_coroutines_core", "(Ljava/lang/Object;)Z", "resumeCancelled", "resumeUndispatchedWith$kotlinx_coroutines_core", "resumeUndispatchedWith", "Lkotlin/coroutines/CoroutineContext;", "context", AppMeasurementSdk.ConditionalUserProperty.VALUE, "dispatchYield$kotlinx_coroutines_core", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "dispatchYield", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/i0;", "Lkotlin/coroutines/Continuation;", "_state", "Ljava/lang/Object;", "get_state$kotlinx_coroutines_core$annotations", "countOrElement", "getReusableCancellableContinuation", "reusableCancellableContinuation", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "delegate", "Lkotlinx/atomicfu/AtomicRef;", "_reusableCancellableContinuation", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DispatchedContinuation<T> extends DispatchedTask<T> implements CoroutineStackFrame, Continuation<T> {
    private static final /* synthetic */ AtomicReferenceFieldUpdater _reusableCancellableContinuation$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(DispatchedContinuation.class, Object.class, "_reusableCancellableContinuation$volatile");
    private volatile /* synthetic */ Object _reusableCancellableContinuation$volatile;

    @JvmField
    public Object _state;

    @JvmField
    public final Continuation<T> continuation;

    @JvmField
    public final Object countOrElement;

    @JvmField
    public final kotlinx.coroutines.i0 dispatcher;

    /* JADX WARN: Multi-variable type inference failed */
    public DispatchedContinuation(kotlinx.coroutines.i0 i0Var, Continuation<? super T> continuation) {
        super(-1);
        this.dispatcher = i0Var;
        this.continuation = continuation;
        this._state = g.f67853a;
        this.countOrElement = g0.g(getContext());
    }

    private final CancellableContinuationImpl<?> getReusableCancellableContinuation() {
        Object obj = _reusableCancellableContinuation$volatile$FU.get(this);
        if (obj instanceof CancellableContinuationImpl) {
            return (CancellableContinuationImpl) obj;
        }
        return null;
    }

    private final /* synthetic */ Object get_reusableCancellableContinuation$volatile() {
        return this._reusableCancellableContinuation$volatile;
    }

    public static /* synthetic */ void get_state$kotlinx_coroutines_core$annotations() {
    }

    private final /* synthetic */ void loop$atomicfu(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    private final /* synthetic */ void set_reusableCancellableContinuation$volatile(Object obj) {
        this._reusableCancellableContinuation$volatile = obj;
    }

    public final void awaitReusability$kotlinx_coroutines_core() {
        while (_reusableCancellableContinuation$volatile$FU.get(this) == g.f67854b) {
        }
    }

    public final CancellableContinuationImpl<T> claimReusableCancellableContinuation$kotlinx_coroutines_core() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _reusableCancellableContinuation$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                _reusableCancellableContinuation$volatile$FU.set(this, g.f67854b);
                return null;
            }
            if (obj instanceof CancellableContinuationImpl) {
                if (androidx.concurrent.futures.a.a(_reusableCancellableContinuation$volatile$FU, this, obj, g.f67854b)) {
                    return (CancellableContinuationImpl) obj;
                }
            } else if (obj != g.f67854b && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
    }

    public final void dispatchYield$kotlinx_coroutines_core(CoroutineContext context, T value) {
        this._state = value;
        this.resumeMode = 1;
        this.dispatcher.dispatchYield(context, this);
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.continuation;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return this.continuation.getContext();
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Continuation<T> getDelegate$kotlinx_coroutines_core() {
        return this;
    }

    public StackTraceElement getStackTraceElement() {
        return null;
    }

    public final boolean isReusable$kotlinx_coroutines_core() {
        return _reusableCancellableContinuation$volatile$FU.get(this) != null;
    }

    public final boolean postponeCancellation$kotlinx_coroutines_core(Throwable cause) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _reusableCancellableContinuation$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            z zVar = g.f67854b;
            if (Intrinsics.c(obj, zVar)) {
                if (androidx.concurrent.futures.a.a(_reusableCancellableContinuation$volatile$FU, this, zVar, cause)) {
                    return true;
                }
            } else {
                if (obj instanceof Throwable) {
                    return true;
                }
                if (androidx.concurrent.futures.a.a(_reusableCancellableContinuation$volatile$FU, this, obj, null)) {
                    return false;
                }
            }
        }
    }

    public final void release$kotlinx_coroutines_core() {
        awaitReusability$kotlinx_coroutines_core();
        CancellableContinuationImpl<?> reusableCancellableContinuation = getReusableCancellableContinuation();
        if (reusableCancellableContinuation != null) {
            reusableCancellableContinuation.detachChild$kotlinx_coroutines_core();
        }
    }

    public final void resumeCancellableWith$kotlinx_coroutines_core(Object result) {
        Object objB = kotlinx.coroutines.c0.b(result);
        if (this.dispatcher.isDispatchNeeded(getContext())) {
            this._state = objB;
            this.resumeMode = 1;
            this.dispatcher.dispatch(getContext(), this);
            return;
        }
        e1 e1VarB = o2.f67904a.b();
        if (e1VarB.isUnconfinedLoopActive()) {
            this._state = objB;
            this.resumeMode = 1;
            e1VarB.dispatchUnconfined(this);
            return;
        }
        e1VarB.incrementUseCount(true);
        try {
            t1 t1Var = (t1) getContext().get(t1.f67996l1);
            if (t1Var == null || t1Var.isActive()) {
                Continuation<T> continuation = this.continuation;
                Object obj = this.countOrElement;
                CoroutineContext context = continuation.getContext();
                Object objI = g0.i(context, obj);
                q2 q2VarM = objI != g0.f67855a ? kotlinx.coroutines.g0.m(continuation, context, objI) : null;
                try {
                    this.continuation.resumeWith(result);
                    Unit unit = Unit.f67061a;
                    InlineMarker.b(1);
                    if (q2VarM == null || q2VarM.X()) {
                        g0.f(context, objI);
                    }
                    InlineMarker.a(1);
                } finally {
                    InlineMarker.b(1);
                    if (q2VarM == null || q2VarM.X()) {
                        g0.f(context, objI);
                    }
                    InlineMarker.a(1);
                }
            } else {
                CancellationException cancellationException = t1Var.getCancellationException();
                cancelCompletedResult$kotlinx_coroutines_core(objB, cancellationException);
                Result.Companion companion = Result.INSTANCE;
                resumeWith(Result.m454constructorimpl(ResultKt.a(cancellationException)));
            }
            while (e1VarB.processUnconfinedEvent()) {
            }
            InlineMarker.b(1);
        } catch (Throwable th2) {
            try {
                handleFatalException$kotlinx_coroutines_core(th2);
                InlineMarker.b(1);
            } finally {
                InlineMarker.b(1);
                e1VarB.decrementUseCount(true);
                InlineMarker.a(1);
            }
        }
    }

    public final boolean resumeCancelled$kotlinx_coroutines_core(Object state) {
        t1 t1Var = (t1) getContext().get(t1.f67996l1);
        if (t1Var == null || t1Var.isActive()) {
            return false;
        }
        CancellationException cancellationException = t1Var.getCancellationException();
        cancelCompletedResult$kotlinx_coroutines_core(state, cancellationException);
        Result.Companion companion = Result.INSTANCE;
        resumeWith(Result.m454constructorimpl(ResultKt.a(cancellationException)));
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0029 A[DONT_GENERATE] */
    public final void resumeUndispatchedWith$kotlinx_coroutines_core(Object result) {
        Continuation<T> continuation = this.continuation;
        Object obj = this.countOrElement;
        CoroutineContext context = continuation.getContext();
        Object objI = g0.i(context, obj);
        q2 q2VarM = objI != g0.f67855a ? kotlinx.coroutines.g0.m(continuation, context, objI) : null;
        try {
            this.continuation.resumeWith(result);
            Unit unit = Unit.f67061a;
        } finally {
            InlineMarker.b(1);
            if (q2VarM == null || q2VarM.X()) {
                g0.f(context, objI);
            }
            InlineMarker.a(1);
        }
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object result) {
        Object objB = kotlinx.coroutines.c0.b(result);
        if (this.dispatcher.isDispatchNeeded(getContext())) {
            this._state = objB;
            this.resumeMode = 0;
            this.dispatcher.dispatch(getContext(), this);
            return;
        }
        e1 e1VarB = o2.f67904a.b();
        if (e1VarB.isUnconfinedLoopActive()) {
            this._state = objB;
            this.resumeMode = 0;
            e1VarB.dispatchUnconfined(this);
            return;
        }
        e1VarB.incrementUseCount(true);
        try {
            CoroutineContext context = getContext();
            Object objI = g0.i(context, this.countOrElement);
            try {
                this.continuation.resumeWith(result);
                Unit unit = Unit.f67061a;
                g0.f(context, objI);
                while (e1VarB.processUnconfinedEvent()) {
                }
            } catch (Throwable th2) {
                g0.f(context, objI);
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                handleFatalException$kotlinx_coroutines_core(th3);
            } finally {
                e1VarB.decrementUseCount(true);
            }
        }
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Object takeState$kotlinx_coroutines_core() {
        Object obj = this._state;
        this._state = g.f67853a;
        return obj;
    }

    public String toString() {
        return "DispatchedContinuation[" + this.dispatcher + ", " + p0.c(this.continuation) + ']';
    }

    public final Throwable tryReleaseClaimedContinuation$kotlinx_coroutines_core(kotlinx.coroutines.n continuation) {
        z zVar;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _reusableCancellableContinuation$volatile$FU;
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            zVar = g.f67854b;
            if (obj != zVar) {
                if (obj instanceof Throwable) {
                    if (androidx.concurrent.futures.a.a(_reusableCancellableContinuation$volatile$FU, this, obj, null)) {
                        return (Throwable) obj;
                    }
                    throw new IllegalArgumentException("Failed requirement.");
                }
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!androidx.concurrent.futures.a.a(_reusableCancellableContinuation$volatile$FU, this, zVar, continuation));
        return null;
    }
}
