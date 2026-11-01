package androidx.compose.foundation;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a1;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.FocusableInteractionNode$emitWithFallback$1", f = "Focusable.kt", l = {Sdk$SDKError.Reason.ASSET_FAILED_TO_DELETE_VALUE}, m = "invokeSuspend")
final class FocusableInteractionNode$emitWithFallback$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ a1 $handler;
    final /* synthetic */ p.f $interaction;
    final /* synthetic */ p.i $this_emitWithFallback;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FocusableInteractionNode$emitWithFallback$1(p.i iVar, p.f fVar, a1 a1Var, Continuation<? super FocusableInteractionNode$emitWithFallback$1> continuation) {
        super(2, continuation);
        this.$this_emitWithFallback = iVar;
        this.$interaction = fVar;
        this.$handler = a1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FocusableInteractionNode$emitWithFallback$1(this.$this_emitWithFallback, this.$interaction, this.$handler, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((FocusableInteractionNode$emitWithFallback$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            p.i iVar = this.$this_emitWithFallback;
            p.f fVar = this.$interaction;
            this.label = 1;
            if (iVar.c(fVar, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        a1 a1Var = this.$handler;
        if (a1Var != null) {
            a1Var.dispose();
        }
        return Unit.f67061a;
    }
}
