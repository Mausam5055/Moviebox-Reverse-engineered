package com.transsnet.downloader.fragment;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$1$2", f = "DownloadReDetectorGroupFragment.kt", l = {}, m = "invokeSuspend")
final class DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$1$2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Ref.IntRef $positionStart;
    final /* synthetic */ int $size;
    int label;
    final /* synthetic */ DownloadReDetectorGroupFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$1$2(DownloadReDetectorGroupFragment downloadReDetectorGroupFragment, Ref.IntRef intRef, int i11, Continuation<? super DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$1$2> continuation) {
        super(2, continuation);
        this.this$0 = downloadReDetectorGroupFragment;
        this.$positionStart = intRef;
        this.$size = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$1$2(this.this$0, this.$positionStart, this.$size, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$1$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        com.transsnet.downloader.adapter.g gVar = this.this$0.mAdapter;
        if (gVar == null) {
            return null;
        }
        int i11 = this.$positionStart.element;
        gVar.notifyItemRangeChanged(i11, this.$size - i11);
        return Unit.f67061a;
    }
}
