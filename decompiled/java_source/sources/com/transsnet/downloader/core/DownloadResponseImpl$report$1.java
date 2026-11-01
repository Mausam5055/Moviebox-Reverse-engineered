package com.transsnet.downloader.core;

import com.transsion.baselib.db.download.DownloadBean;
import kotlin.Metadata;
import kotlin.Result;
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
@DebugMetadata(c = "com.transsnet.downloader.core.DownloadResponseImpl$report$1", f = "DownloadResponseImpl.kt", l = {135}, m = "invokeSuspend")
final class DownloadResponseImpl$report$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ DownloadBean $downloadInfo;
    int label;
    final /* synthetic */ DownloadResponseImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadResponseImpl$report$1(DownloadBean downloadBean, DownloadResponseImpl downloadResponseImpl, Continuation<? super DownloadResponseImpl$report$1> continuation) {
        super(2, continuation);
        this.$downloadInfo = downloadBean;
        this.this$0 = downloadResponseImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadResponseImpl$report$1(this.$downloadInfo, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadResponseImpl$report$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                DownloadBean downloadBean = this.$downloadInfo;
                DownloadResponseImpl downloadResponseImpl = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                ry.e eVarA = ry.e.f74755c.a();
                oy.c cVar = downloadResponseImpl.f58568b;
                this.label = 1;
                if (eVarA.j(downloadBean, cVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        return Unit.f67061a;
    }
}
