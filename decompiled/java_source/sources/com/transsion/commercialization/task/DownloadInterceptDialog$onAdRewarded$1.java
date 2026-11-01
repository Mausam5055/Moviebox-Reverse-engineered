package com.transsion.commercialization.task;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.commercialization.task.DownloadInterceptDialog$onAdRewarded$1", f = "DownloadInterceptDialog.kt", l = {}, m = "invokeSuspend")
final class DownloadInterceptDialog$onAdRewarded$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DownloadInterceptDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadInterceptDialog$onAdRewarded$1(DownloadInterceptDialog downloadInterceptDialog, Continuation<? super DownloadInterceptDialog$onAdRewarded$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadInterceptDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DownloadInterceptDialog$onAdRewarded$1 downloadInterceptDialog$onAdRewarded$1 = new DownloadInterceptDialog$onAdRewarded$1(this.this$0, continuation);
        downloadInterceptDialog$onAdRewarded$1.L$0 = obj;
        return downloadInterceptDialog$onAdRewarded$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadInterceptDialog$onAdRewarded$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        this.this$0.isRewarded = true;
        this.this$0.finishTaskType = 2;
        Function1 function1 = this.this$0.mCallback;
        if (function1 != null) {
        }
        if (!this.this$0.isAdded() || this.this$0.isDetached() || this.this$0.isRemoving()) {
            return Unit.f67061a;
        }
        DownloadInterceptDialog downloadInterceptDialog = this.this$0;
        try {
            Result.Companion companion = Result.INSTANCE;
            downloadInterceptDialog.dismissAllowingStateLoss();
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        this.this$0.C1();
        return Unit.f67061a;
    }
}
