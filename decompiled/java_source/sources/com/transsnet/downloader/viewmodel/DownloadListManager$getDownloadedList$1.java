package com.transsnet.downloader.viewmodel;

import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.List;
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
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadListManager$getDownloadedList$1", f = "DownloadListManager.kt", l = {261, 262}, m = "invokeSuspend")
final class DownloadListManager$getDownloadedList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ DownloadListManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadListManager$getDownloadedList$1(DownloadListManager downloadListManager, Continuation<? super DownloadListManager$getDownloadedList$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadListManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadListManager$getDownloadedList$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadListManager$getDownloadedList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        androidx.p009lifecycle.b0 b0Var;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                b0Var = (androidx.p009lifecycle.b0) this.L$0;
                ResultKt.b(obj);
            }
            b0Var.n(obj);
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        this.label = 1;
        obj = DownloadEsHelper.B(downloadEsHelperA, false, this, 1, null);
        if (obj == objF) {
            return objF;
        }
        androidx.p009lifecycle.b0 b0VarF = this.this$0.F();
        DownloadListManager downloadListManager = this.this$0;
        this.L$0 = b0VarF;
        this.label = 2;
        obj = downloadListManager.v((List) obj, this);
        if (obj == objF) {
            return objF;
        }
        b0Var = b0VarF;
        b0Var.n(obj);
        return Unit.f67061a;
    }
}
