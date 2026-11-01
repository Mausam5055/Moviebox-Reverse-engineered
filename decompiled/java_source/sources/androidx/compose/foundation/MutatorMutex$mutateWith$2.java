package androidx.compose.foundation;

import androidx.compose.animation.core.j0;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"T", "R", "Lkotlinx/coroutines/n0;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.MutatorMutex$mutateWith$2", f = "MutatorMutex.kt", l = {Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, 167}, m = "invokeSuspend")
@SourceDebugExtension
final class MutatorMutex$mutateWith$2 extends SuspendLambda implements Function2<n0, Continuation<Object>, Object> {
    final /* synthetic */ Function2<Object, Continuation<Object>, Object> $block;
    final /* synthetic */ MutatePriority $priority;
    final /* synthetic */ Object $receiver;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    final /* synthetic */ MutatorMutex this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    MutatorMutex$mutateWith$2(MutatePriority mutatePriority, MutatorMutex mutatorMutex, Function2<Object, ? super Continuation<Object>, ? extends Object> function2, Object obj, Continuation<? super MutatorMutex$mutateWith$2> continuation) {
        super(2, continuation);
        this.$priority = mutatePriority;
        this.this$0 = mutatorMutex;
        this.$block = function2;
        this.$receiver = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MutatorMutex$mutateWith$2 mutatorMutex$mutateWith$2 = new MutatorMutex$mutateWith$2(this.$priority, this.this$0, this.$block, this.$receiver, continuation);
        mutatorMutex$mutateWith$2.L$0 = obj;
        return mutatorMutex$mutateWith$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<Object> continuation) {
        return ((MutatorMutex$mutateWith$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [int, kotlinx.coroutines.sync.a] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlinx.coroutines.sync.a aVar;
        Function2<Object, Continuation<Object>, Object> function2;
        Object obj2;
        MutatorMutex.a aVar2;
        MutatorMutex mutatorMutex;
        MutatorMutex.a aVar3;
        Throwable th2;
        MutatorMutex mutatorMutex2;
        kotlinx.coroutines.sync.a aVar4;
        Object objF = IntrinsicsKt.f();
        ?? r11 = this.label;
        try {
            try {
                if (r11 == 0) {
                    ResultKt.b(obj);
                    n0 n0Var = (n0) this.L$0;
                    MutatePriority mutatePriority = this.$priority;
                    CoroutineContext.Element element = n0Var.getCoroutineContext().get(t1.f67996l1);
                    Intrinsics.e(element);
                    MutatorMutex.a aVar5 = new MutatorMutex.a(mutatePriority, (t1) element);
                    this.this$0.e(aVar5);
                    aVar = this.this$0.f2610b;
                    function2 = this.$block;
                    Object obj3 = this.$receiver;
                    MutatorMutex mutatorMutex3 = this.this$0;
                    this.L$0 = aVar5;
                    this.L$1 = aVar;
                    this.L$2 = function2;
                    this.L$3 = obj3;
                    this.L$4 = mutatorMutex3;
                    this.label = 1;
                    if (aVar.h(null, this) == objF) {
                        return objF;
                    }
                    obj2 = obj3;
                    aVar2 = aVar5;
                    mutatorMutex = mutatorMutex3;
                } else {
                    if (r11 != 1) {
                        if (r11 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        mutatorMutex2 = (MutatorMutex) this.L$2;
                        aVar4 = (kotlinx.coroutines.sync.a) this.L$1;
                        aVar3 = (MutatorMutex.a) this.L$0;
                        try {
                            ResultKt.b(obj);
                            j0.a(mutatorMutex2.f2609a, aVar3, null);
                            aVar4.unlock(null);
                            return obj;
                        } catch (Throwable th3) {
                            th2 = th3;
                            j0.a(mutatorMutex2.f2609a, aVar3, null);
                            throw th2;
                        }
                    }
                    mutatorMutex = (MutatorMutex) this.L$4;
                    obj2 = this.L$3;
                    function2 = (Function2) this.L$2;
                    kotlinx.coroutines.sync.a aVar6 = (kotlinx.coroutines.sync.a) this.L$1;
                    aVar2 = (MutatorMutex.a) this.L$0;
                    ResultKt.b(obj);
                    aVar = aVar6;
                }
                this.L$0 = aVar2;
                this.L$1 = aVar;
                this.L$2 = mutatorMutex;
                this.L$3 = null;
                this.L$4 = null;
                this.label = 2;
                Object objInvoke = function2.invoke(obj2, this);
                if (objInvoke == objF) {
                    return objF;
                }
                mutatorMutex2 = mutatorMutex;
                aVar4 = aVar;
                obj = objInvoke;
                aVar3 = aVar2;
                j0.a(mutatorMutex2.f2609a, aVar3, null);
                aVar4.unlock(null);
                return obj;
            } catch (Throwable th4) {
                aVar3 = aVar2;
                th2 = th4;
                mutatorMutex2 = mutatorMutex;
                j0.a(mutatorMutex2.f2609a, aVar3, null);
                throw th2;
            }
        } catch (Throwable th5) {
            r11.unlock(null);
            throw th5;
        }
    }
}
