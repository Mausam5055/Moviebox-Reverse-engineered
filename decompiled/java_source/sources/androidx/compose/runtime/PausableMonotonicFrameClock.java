package androidx.compose.runtime;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class PausableMonotonicFrameClock implements u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u0 f3617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Latch f3618b = new Latch();

    public PausableMonotonicFrameClock(u0 u0Var) {
        this.f3617a = u0Var;
    }

    public final void a() {
        this.f3618b.d();
    }

    public final void c() {
        this.f3618b.f();
    }

    @Override // kotlin.coroutines.CoroutineContext
    public Object fold(Object obj, Function2 function2) {
        return u0.a.a(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return u0.a.b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public /* synthetic */ CoroutineContext.Key getKey() {
        return t0.a(this);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.runtime.u0
    public Object l(Function1 function1, Continuation continuation) throws Throwable {
        PausableMonotonicFrameClock$withFrameNanos$1 pausableMonotonicFrameClock$withFrameNanos$1;
        PausableMonotonicFrameClock pausableMonotonicFrameClock;
        if (continuation instanceof PausableMonotonicFrameClock$withFrameNanos$1) {
            pausableMonotonicFrameClock$withFrameNanos$1 = (PausableMonotonicFrameClock$withFrameNanos$1) continuation;
            int i11 = pausableMonotonicFrameClock$withFrameNanos$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                pausableMonotonicFrameClock$withFrameNanos$1.label = i11 - Integer.MIN_VALUE;
            } else {
                pausableMonotonicFrameClock$withFrameNanos$1 = new PausableMonotonicFrameClock$withFrameNanos$1(this, continuation);
            }
        } else {
            pausableMonotonicFrameClock$withFrameNanos$1 = new PausableMonotonicFrameClock$withFrameNanos$1(this, continuation);
        }
        Object objL = pausableMonotonicFrameClock$withFrameNanos$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = pausableMonotonicFrameClock$withFrameNanos$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                function1 = (Function1) pausableMonotonicFrameClock$withFrameNanos$1.L$1;
                pausableMonotonicFrameClock = (PausableMonotonicFrameClock) pausableMonotonicFrameClock$withFrameNanos$1.L$0;
                ResultKt.b(objL);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objL);
            }
        }
        ResultKt.b(objL);
        Latch latch = this.f3618b;
        pausableMonotonicFrameClock$withFrameNanos$1.L$0 = this;
        pausableMonotonicFrameClock$withFrameNanos$1.L$1 = function1;
        pausableMonotonicFrameClock$withFrameNanos$1.label = 1;
        if (latch.c(pausableMonotonicFrameClock$withFrameNanos$1) == objF) {
            return objF;
        }
        pausableMonotonicFrameClock = this;
        u0 u0Var = pausableMonotonicFrameClock.f3617a;
        pausableMonotonicFrameClock$withFrameNanos$1.L$0 = null;
        pausableMonotonicFrameClock$withFrameNanos$1.L$1 = null;
        pausableMonotonicFrameClock$withFrameNanos$1.label = 2;
        objL = u0Var.l(function1, pausableMonotonicFrameClock$withFrameNanos$1);
        return objL == objF ? objF : objL;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return u0.a.c(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return u0.a.d(this, coroutineContext);
    }
}
