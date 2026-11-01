package com.transsnet.downloader.fragment;

import com.transsion.transfer.impl.TaskState;
import com.transsnet.downloader.widget.TransferBottomToolsView;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.TransferInnerMainFragment$onTaskStateChange$2", f = "TransferInnerMainFragment.kt", l = {}, m = "invokeSuspend")
final class TransferInnerMainFragment$onTaskStateChange$2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ TaskState $state;
    int label;
    final /* synthetic */ TransferInnerMainFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TransferInnerMainFragment$onTaskStateChange$2(TransferInnerMainFragment transferInnerMainFragment, TaskState taskState, Continuation<? super TransferInnerMainFragment$onTaskStateChange$2> continuation) {
        super(2, continuation);
        this.this$0 = transferInnerMainFragment;
        this.$state = taskState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TransferInnerMainFragment$onTaskStateChange$2(this.this$0, this.$state, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TransferInnerMainFragment$onTaskStateChange$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        mv.b bVar = mv.b.f70015a;
        int size = bVar.h().size();
        int size2 = bVar.g().size();
        int size3 = bVar.f().size();
        int size4 = bVar.e().size();
        lg.a.C0828a.v(lg.a.f68839a, TransferBottomToolsView.TAG, this.this$0.logMsgTag + " onTaskStateChange 服务端 state:" + this.$state + ",waitingCount:" + size + ",transferCount:" + size2 + ", completeCount:" + size4, false, 4, null);
        this.this$0.g1(size + size2, size3);
        return Unit.f67061a;
    }
}
