package androidx.work.impl;

import android.content.Context;
import androidx.work.impl.utils.WorkForegroundKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "Landroidx/work/s$a;", "kotlin.jvm.PlatformType", "<anonymous>", "(Lkotlinx/coroutines/n0;)Landroidx/work/s$a;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "androidx.work.impl.WorkerWrapper$runWorker$result$1", f = "WorkerWrapper.kt", l = {297, 308}, m = "invokeSuspend")
@SourceDebugExtension
final class WorkerWrapper$runWorker$result$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super androidx.work.s.a>, Object> {
    final /* synthetic */ androidx.work.j $foregroundUpdater;
    final /* synthetic */ androidx.work.s $worker;
    int label;
    final /* synthetic */ WorkerWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WorkerWrapper$runWorker$result$1(WorkerWrapper workerWrapper, androidx.work.s sVar, androidx.work.j jVar, Continuation<? super WorkerWrapper$runWorker$result$1> continuation) {
        super(2, continuation);
        this.this$0 = workerWrapper;
        this.$worker = sVar;
        this.$foregroundUpdater = jVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WorkerWrapper$runWorker$result$1(this.this$0, this.$worker, this.$foregroundUpdater, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super androidx.work.s.a> continuation) {
        return ((WorkerWrapper$runWorker$result$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
        }
        ResultKt.b(obj);
        Context context = this.this$0.f15514b;
        androidx.work.impl.model.j0 j0VarN = this.this$0.n();
        androidx.work.s sVar = this.$worker;
        androidx.work.j jVar = this.$foregroundUpdater;
        j4.c cVar = this.this$0.f15518f;
        this.label = 1;
        if (WorkForegroundKt.b(context, j0VarN, sVar, jVar, cVar, this) == objF) {
            return objF;
        }
        String str = r1.f15910a;
        WorkerWrapper workerWrapper = this.this$0;
        androidx.work.t.e().a(str, "Starting work for " + workerWrapper.n().f15766c);
        com.google.common.util.concurrent.r rVarL = this.$worker.l();
        Intrinsics.g(rVarL, "startWork(...)");
        androidx.work.s sVar2 = this.$worker;
        this.label = 2;
        obj = r1.d(rVarL, sVar2, this);
        return obj == objF ? objF : obj;
    }
}
