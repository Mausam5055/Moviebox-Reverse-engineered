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
@DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$1", f = "DownloadMultiListFragment.kt", l = {}, m = "invokeSuspend")
final class DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Ref.IntRef $positionStart;
    int label;
    final /* synthetic */ DownloadMultiListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$1(DownloadMultiListFragment downloadMultiListFragment, Ref.IntRef intRef, Continuation<? super DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadMultiListFragment;
        this.$positionStart = intRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$1(this.this$0, this.$positionStart, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
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
        gVar.notifyItemRangeChanged(this.$positionStart.element, 30);
        return Unit.f67061a;
    }
}
