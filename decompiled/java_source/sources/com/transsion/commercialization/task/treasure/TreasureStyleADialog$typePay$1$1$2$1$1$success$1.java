package com.transsion.commercialization.task.treasure;

import com.therouter.TheRouter;
import com.transsion.commercializationapi.ITaskCenterApi;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.commercialization.task.treasure.TreasureStyleADialog$typePay$1$1$2$1$1$success$1", f = "TreasureStyleADialog.kt", l = {274}, m = "invokeSuspend")
final class TreasureStyleADialog$typePay$1$1$2$1$1$success$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $orderId;
    int label;
    final /* synthetic */ TreasureStyleADialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TreasureStyleADialog$typePay$1$1$2$1$1$success$1(String str, TreasureStyleADialog treasureStyleADialog, Continuation<? super TreasureStyleADialog$typePay$1$1$2$1$1$success$1> continuation) {
        super(2, continuation);
        this.$orderId = str;
        this.this$0 = treasureStyleADialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TreasureStyleADialog$typePay$1$1$2$1$1$success$1(this.$orderId, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TreasureStyleADialog$typePay$1$1$2$1$1$success$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            ITaskCenterApi iTaskCenterApi = (ITaskCenterApi) TheRouter.d(ITaskCenterApi.class, new Object[0]);
            if (iTaskCenterApi != null) {
                String str = this.$orderId;
                if (str == null) {
                    str = "";
                }
                this.label = 1;
                if (ITaskCenterApi.a.a(iTaskCenterApi, "", str, false, this, 4, null) == objF) {
                    return objF;
                }
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        this.this$0.dismissAllowingStateLoss();
        return Unit.f67061a;
    }
}
