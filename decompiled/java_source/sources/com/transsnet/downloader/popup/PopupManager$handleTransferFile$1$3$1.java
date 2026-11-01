package com.transsnet.downloader.popup;

import com.transsnet.downloader.dialog.DownloadReDetectorSaveDialog;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.popup.PopupManager$handleTransferFile$1$3$1", f = "PopupManager.kt", l = {}, m = "invokeSuspend")
final class PopupManager$handleTransferFile$1$3$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $checkTransferFailed;
    final /* synthetic */ my.b $info;
    final /* synthetic */ DownloadReDetectorSaveDialog $loadingDialog;
    final /* synthetic */ Function2<Boolean, Integer, Unit> $resultCallback;
    int label;
    final /* synthetic */ PopupManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PopupManager$handleTransferFile$1$3$1(PopupManager popupManager, my.b bVar, Function2<? super Boolean, ? super Integer, Unit> function2, DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, boolean z10, Continuation<? super PopupManager$handleTransferFile$1$3$1> continuation) {
        super(2, continuation);
        this.this$0 = popupManager;
        this.$info = bVar;
        this.$resultCallback = function2;
        this.$loadingDialog = downloadReDetectorSaveDialog;
        this.$checkTransferFailed = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PopupManager$handleTransferFile$1$3$1(this.this$0, this.$info, this.$resultCallback, this.$loadingDialog, this.$checkTransferFailed, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PopupManager$handleTransferFile$1$3$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        this.this$0.f59520b.setRootPath(this.$info.b());
        this.this$0.f59520b.setRootPathType(this.$info.e());
        Function2<Boolean, Integer, Unit> function2 = this.$resultCallback;
        if (function2 != null) {
            function2.invoke(Boxing.a(true), Boxing.d(this.$info.e()));
        }
        if (this.$loadingDialog.isAdded()) {
            this.$loadingDialog.dismissAllowingStateLoss();
        }
        uh.b.f76753a.e(this.this$0.y(this.$checkTransferFailed));
        return Unit.f67061a;
    }
}
