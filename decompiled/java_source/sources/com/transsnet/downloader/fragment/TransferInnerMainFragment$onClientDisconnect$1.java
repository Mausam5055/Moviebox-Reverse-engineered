package com.transsnet.downloader.fragment;

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
@DebugMetadata(c = "com.transsnet.downloader.fragment.TransferInnerMainFragment$onClientDisconnect$1", f = "TransferInnerMainFragment.kt", l = {}, m = "invokeSuspend")
final class TransferInnerMainFragment$onClientDisconnect$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ TransferInnerMainFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TransferInnerMainFragment$onClientDisconnect$1(TransferInnerMainFragment transferInnerMainFragment, Continuation<? super TransferInnerMainFragment$onClientDisconnect$1> continuation) {
        super(2, continuation);
        this.this$0 = transferInnerMainFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TransferInnerMainFragment$onClientDisconnect$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TransferInnerMainFragment$onClientDisconnect$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        TransferBottomToolsView transferBottomToolsView3;
        TransferBottomToolsView transferBottomToolsView4;
        TransferBottomToolsView transferBottomToolsView5;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        com.transsion.transfer.impl.e eVar = this.this$0.transferClient;
        String strJ = eVar != null ? eVar.j() : null;
        if (strJ == null || strJ.length() == 0) {
            strJ = this.this$0.curServerInfo;
        }
        lg.a.C0828a.v(lg.a.f68839a, TransferBottomToolsView.TAG, this.this$0.logMsgTag + " TransferMainFragment 客户端 ,onSocketLost, 断开连接， serverInfo:" + strJ, false, 4, null);
        py.l0 l0Var = (py.l0) this.this$0.getMViewBinding();
        if (l0Var != null && (transferBottomToolsView5 = l0Var.f72831d) != null) {
            transferBottomToolsView5.changeStatus(TransferBottomToolsView.STATUS_DEFAULT);
        }
        py.l0 l0Var2 = (py.l0) this.this$0.getMViewBinding();
        if (l0Var2 != null && (transferBottomToolsView4 = l0Var2.f72831d) != null) {
            transferBottomToolsView4.setLeftIconStatus(TransferBottomToolsView.LEFT_STATUS_CLOSE);
        }
        py.l0 l0Var3 = (py.l0) this.this$0.getMViewBinding();
        if (l0Var3 != null && (transferBottomToolsView3 = l0Var3.f72831d) != null) {
            TransferBottomToolsView.setSendIconStatus$default(transferBottomToolsView3, TransferBottomToolsView.SEND_STATUS_NONE, 0, 2, null);
        }
        py.l0 l0Var4 = (py.l0) this.this$0.getMViewBinding();
        if (l0Var4 != null && (transferBottomToolsView2 = l0Var4.f72831d) != null) {
            transferBottomToolsView2.showConnectUI(true);
        }
        py.l0 l0Var5 = (py.l0) this.this$0.getMViewBinding();
        if (l0Var5 != null && (transferBottomToolsView = l0Var5.f72831d) != null) {
            transferBottomToolsView.showConnectContent(false, strJ);
        }
        return Unit.f67061a;
    }
}
