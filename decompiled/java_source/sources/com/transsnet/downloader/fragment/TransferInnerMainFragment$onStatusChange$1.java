package com.transsnet.downloader.fragment;

import com.transsnet.downloader.widget.TransferBottomToolsView;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.TransferInnerMainFragment$onStatusChange$1", f = "TransferInnerMainFragment.kt", l = {}, m = "invokeSuspend")
final class TransferInnerMainFragment$onStatusChange$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $failCount;
    final /* synthetic */ int $transmittingCount;
    int label;
    final /* synthetic */ TransferInnerMainFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TransferInnerMainFragment$onStatusChange$1(TransferInnerMainFragment transferInnerMainFragment, int i11, int i12, Continuation<? super TransferInnerMainFragment$onStatusChange$1> continuation) {
        super(2, continuation);
        this.this$0 = transferInnerMainFragment;
        this.$transmittingCount = i11;
        this.$failCount = i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void d(TransferInnerMainFragment transferInnerMainFragment, int i11, int i12) {
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        py.l0 l0Var = (py.l0) transferInnerMainFragment.getMViewBinding();
        if (l0Var != null && (transferBottomToolsView2 = l0Var.f72831d) != null) {
            transferBottomToolsView2.changeStatus(TransferBottomToolsView.STATUS_SEND);
        }
        py.l0 l0Var2 = (py.l0) transferInnerMainFragment.getMViewBinding();
        if (l0Var2 != null && (transferBottomToolsView = l0Var2.f72831d) != null) {
            transferBottomToolsView.setLeftIconStatus(TransferBottomToolsView.LEFT_STATUS_SEND);
        }
        lg.a.C0828a.v(lg.a.f68839a, TransferBottomToolsView.TAG, transferInnerMainFragment.logMsgTag + " ====== onStatusChange ,连接成功onTaskStateChange, transmittingCount：" + i11 + ",failCount:" + i12 + " ", false, 4, null);
        transferInnerMainFragment.g1(i11, i12);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TransferInnerMainFragment$onStatusChange$1(this.this$0, this.$transmittingCount, this.$failCount, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TransferInnerMainFragment$onStatusChange$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        TransferBottomToolsView transferBottomToolsView;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        py.l0 l0Var = (py.l0) this.this$0.getMViewBinding();
        if (l0Var != null && (transferBottomToolsView = l0Var.f72831d) != null) {
            final TransferInnerMainFragment transferInnerMainFragment = this.this$0;
            final int i11 = this.$transmittingCount;
            final int i12 = this.$failCount;
            Boxing.a(transferBottomToolsView.post(new Runnable() { // from class: com.transsnet.downloader.fragment.j7
                @Override // java.lang.Runnable
                public final void run() {
                    TransferInnerMainFragment$onStatusChange$1.d(transferInnerMainFragment, i11, i12);
                }
            }));
        }
        return Unit.f67061a;
    }
}
