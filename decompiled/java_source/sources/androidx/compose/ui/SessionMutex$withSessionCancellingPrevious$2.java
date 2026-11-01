package androidx.compose.ui;

import androidx.compose.animation.core.j0;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.v1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"R", "T", "Lkotlinx/coroutines/n0;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.ui.SessionMutex$withSessionCancellingPrevious$2", f = "SessionMutex.kt", l = {67, 69}, m = "invokeSuspend")
final class SessionMutex$withSessionCancellingPrevious$2 extends SuspendLambda implements Function2<n0, Continuation<Object>, Object> {
    final /* synthetic */ AtomicReference<SessionMutex.a> $arg0;
    final /* synthetic */ Function2<Object, Continuation<Object>, Object> $session;
    final /* synthetic */ Function1<n0, Object> $sessionInitializer;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SessionMutex$withSessionCancellingPrevious$2(Function1<? super n0, Object> function1, AtomicReference<SessionMutex.a> atomicReference, Function2<Object, ? super Continuation<Object>, ? extends Object> function2, Continuation<? super SessionMutex$withSessionCancellingPrevious$2> continuation) {
        super(2, continuation);
        this.$sessionInitializer = function1;
        this.$arg0 = atomicReference;
        this.$session = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SessionMutex$withSessionCancellingPrevious$2 sessionMutex$withSessionCancellingPrevious$2 = new SessionMutex$withSessionCancellingPrevious$2(this.$sessionInitializer, this.$arg0, this.$session, continuation);
        sessionMutex$withSessionCancellingPrevious$2.L$0 = obj;
        return sessionMutex$withSessionCancellingPrevious$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<Object> continuation) {
        return ((SessionMutex$withSessionCancellingPrevious$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        SessionMutex.a aVar;
        t1 t1VarA;
        SessionMutex.a aVar2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                n0 n0Var = (n0) this.L$0;
                aVar = new SessionMutex.a(v1.k(n0Var.getCoroutineContext()), this.$sessionInitializer.invoke(n0Var));
                SessionMutex.a andSet = this.$arg0.getAndSet(aVar);
                if (andSet != null && (t1VarA = andSet.a()) != null) {
                    this.L$0 = aVar;
                    this.label = 1;
                    if (v1.g(t1VarA, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 1) {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    aVar2 = (SessionMutex.a) this.L$0;
                    try {
                        ResultKt.b(obj);
                        j0.a(this.$arg0, aVar2, null);
                        return obj;
                    } catch (Throwable th2) {
                        th = th2;
                        j0.a(this.$arg0, aVar2, null);
                        throw th;
                    }
                }
                aVar = (SessionMutex.a) this.L$0;
                ResultKt.b(obj);
            }
            Function2<Object, Continuation<Object>, Object> function2 = this.$session;
            Object objB = aVar.b();
            this.L$0 = aVar;
            this.label = 2;
            obj = function2.invoke(objB, this);
            if (obj == objF) {
                return objF;
            }
            aVar2 = aVar;
            j0.a(this.$arg0, aVar2, null);
            return obj;
        } catch (Throwable th3) {
            th = th3;
            aVar2 = aVar;
            j0.a(this.$arg0, aVar2, null);
            throw th;
        }
    }
}
