package com.transsnet.downloader.popup;

import com.transsnet.downloader.dialog.DownloadReDetectorSaveDialog;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.popup.PopupManager$handleTransferFile$1$4$1", f = "PopupManager.kt", l = {}, m = "invokeSuspend")
final class PopupManager$handleTransferFile$1$4$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ long $fileSize;
    final /* synthetic */ DownloadReDetectorSaveDialog $loadingDialog;
    final /* synthetic */ long $progress;
    int label;
    final /* synthetic */ PopupManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PopupManager$handleTransferFile$1$4$1(DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, long j11, PopupManager popupManager, long j12, Continuation<? super PopupManager$handleTransferFile$1$4$1> continuation) {
        super(2, continuation);
        this.$loadingDialog = downloadReDetectorSaveDialog;
        this.$progress = j11;
        this.this$0 = popupManager;
        this.$fileSize = j12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PopupManager$handleTransferFile$1$4$1(this.$loadingDialog, this.$progress, this.this$0, this.$fileSize, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PopupManager$handleTransferFile$1$4$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        DownloadReDetectorSaveDialog downloadReDetectorSaveDialog = this.$loadingDialog;
        float f11 = this.$progress * 100.0f;
        Long size = this.this$0.f59520b.getSize();
        downloadReDetectorSaveDialog.J0((int) (f11 / (size != null ? size.longValue() : this.$fileSize)));
        return Unit.f67061a;
    }
}
