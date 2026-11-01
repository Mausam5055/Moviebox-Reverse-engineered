package com.cloud.tmc.integration.performance.innerworker;

import android.app.Application;
import com.cloud.tmc.integration.performance.WarmupType;
import com.cloud.tmc.integration.performance.WarmupUtils;
import com.cloud.tmc.kernel.engine.EngineRouterManager;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.worker.WorkerManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.cloud.tmc.integration.performance.innerworker.InnerWorkerPool$createWorker$1$1", f = "InnerWorkerPool.kt", l = {}, m = "invokeSuspend")
final class InnerWorkerPool$createWorker$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Application $it;
    int label;
    final /* synthetic */ InnerWorkerPool this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InnerWorkerPool$createWorker$1$1(InnerWorkerPool innerWorkerPool, Application application, Continuation<? super InnerWorkerPool$createWorker$1$1> continuation) {
        super(2, continuation);
        this.this$0 = innerWorkerPool;
        this.$it = application;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new InnerWorkerPool$createWorker$1$1(this.this$0, this.$it, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((InnerWorkerPool$createWorker$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        WorkerManager workerManager = new WorkerManager();
        workerManager.setWorkerId("warmup_worker_id__" + WarmupUtils.INSTANCE.getWarmupWorkerId().addAndGet(1));
        workerManager.setWarmup(2);
        ((EngineRouterManager) TmcProxy.get(EngineRouterManager.class)).get(-1L).registerWorker(workerManager.getWorkerId(), workerManager);
        this.this$0.unUsedWorkerQueue.add(workerManager);
        TmcLogger.d(this.this$0.TAG, "InnerWorkerPool => addWorker unUsedWorkerQueue = " + this.this$0.unUsedWorkerQueue.size());
        this.this$0.innerWorkerWarmupManager = new InnerWorkerWarmupManager();
        InnerWorkerWarmupManager innerWorkerWarmupManager = this.this$0.innerWorkerWarmupManager;
        if (innerWorkerWarmupManager != null) {
            innerWorkerWarmupManager.preWarmup(this.$it, WarmupType.INNER_WORKER.getType());
        }
        return Unit.f67061a;
    }
}
