package androidx.compose.runtime;

import android.view.Choreographer;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
final class DefaultChoreographerFrameClock implements u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DefaultChoreographerFrameClock f3598a = new DefaultChoreographerFrameClock();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Choreographer f3599b = (Choreographer) kotlinx.coroutines.i.e(kotlinx.coroutines.y0.c().q(), new DefaultChoreographerFrameClock$choreographer$1(null));

    static final class a implements Choreographer.FrameCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.n f3600a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function1 f3601b;

        a(kotlinx.coroutines.n nVar, Function1 function1) {
            this.f3600a = nVar;
            this.f3601b = function1;
        }

        @Override // android.view.Choreographer.FrameCallback
        public final void doFrame(long j11) {
            Object objM454constructorimpl;
            kotlinx.coroutines.n nVar = this.f3600a;
            DefaultChoreographerFrameClock defaultChoreographerFrameClock = DefaultChoreographerFrameClock.f3598a;
            Function1 function1 = this.f3601b;
            try {
                Result.Companion companion = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(function1.invoke(Long.valueOf(j11)));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            nVar.resumeWith(objM454constructorimpl);
        }
    }

    private DefaultChoreographerFrameClock() {
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

    @Override // androidx.compose.runtime.u0
    public Object l(Function1 function1, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final a aVar = new a(cancellableContinuationImpl, function1);
        f3599b.postFrameCallback(aVar);
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.compose.runtime.DefaultChoreographerFrameClock$withFrameNanos$2$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f67061a;
            }

            public final void invoke(Throwable th2) {
                DefaultChoreographerFrameClock.f3599b.removeFrameCallback(aVar);
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result;
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
