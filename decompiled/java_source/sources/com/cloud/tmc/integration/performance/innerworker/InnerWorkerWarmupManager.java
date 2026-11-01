package com.cloud.tmc.integration.performance.innerworker;

import android.content.Context;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.invoke.extension.ExtensionPoint;
import com.cloud.tmc.integration.model.PrepareCallbackParam;
import com.cloud.tmc.integration.performance.WarmUpCallback;
import com.cloud.tmc.integration.point.WarmupPoint;
import com.cloud.tmc.integration.structure.WarmupNode;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber;
import com.cloud.tmc.kernel.worker.JSI;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ*\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¨\u0006\u0012"}, d2 = {"Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;", "", "()V", "preWarmup", "", "context", "Landroid/content/Context;", "warmupType", "", "warmup", EventConstants.ADDRESS_WORKER, "Lcom/cloud/tmc/kernel/worker/JSI;", "param", "Lcom/cloud/tmc/integration/model/PrepareCallbackParam;", "warmUpCallback", "Lcom/cloud/tmc/integration/performance/WarmUpCallback;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class InnerWorkerWarmupManager {

    /* JADX INFO: renamed from: com.cloud.tmc.integration.performance.innerworker.InnerWorkerWarmupManager$warmup$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.cloud.tmc.integration.performance.innerworker.InnerWorkerWarmupManager$warmup$1", f = "InnerWorkerWarmupManager.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ InnerWorkerListener $listener;
        final /* synthetic */ WarmUpCallback $warmUpCallback;
        final /* synthetic */ Node $warmupNode;
        final /* synthetic */ JSI $worker;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(JSI jsi, Node node, InnerWorkerListener innerWorkerListener, WarmUpCallback warmUpCallback, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$worker = jsi;
            this.$warmupNode = node;
            this.$listener = innerWorkerListener;
            this.$warmUpCallback = warmUpCallback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0(InnerWorkerListener innerWorkerListener, final Node node, final JSI jsi, final WarmUpCallback warmUpCallback) {
            if (innerWorkerListener != null) {
                innerWorkerListener.createWorkerSuccess();
            }
            final IEventCenterFactory iEventCenterFactory = (IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class);
            IEventCenter eventCenterInstance = iEventCenterFactory.getEventCenterInstance(node);
            if (eventCenterInstance != null) {
                eventCenterInstance.register(EventConstants.EVENT_WORKER_ON_MSG_READY, new IEventSubscriber() { // from class: com.cloud.tmc.integration.performance.innerworker.InnerWorkerWarmupManager$warmup$1$1$1
                    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
                    public boolean onEvent(IEvent event) {
                        jsi.workerOnMessageReady();
                        IEventCenter eventCenterInstance2 = iEventCenterFactory.getEventCenterInstance(node);
                        if (eventCenterInstance2 != null) {
                            eventCenterInstance2.unregister(EventConstants.EVENT_WORKER_ON_MSG_READY, this);
                        }
                        WarmupNode warmupNode = (WarmupNode) TmcProxy.get(WarmupNode.class);
                        String workerId = jsi.getWorkerId();
                        Intrinsics.g(workerId, "worker.workerId");
                        warmupNode.removeNode(workerId);
                        warmUpCallback.warmupResult(true);
                        return true;
                    }
                });
            }
            jsi.loadJS("100000", FrameworkConstants.FRAMEWORK_JS);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$worker, this.$warmupNode, this.$listener, this.$warmUpCallback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.$worker.setRenderReady();
            this.$worker.setAppId(FrameworkConstants.APP_MANAGER_APPID);
            this.$worker.setNode(this.$warmupNode);
            final JSI jsi = this.$worker;
            final InnerWorkerListener innerWorkerListener = this.$listener;
            final Node node = this.$warmupNode;
            final WarmUpCallback warmUpCallback = this.$warmUpCallback;
            jsi.registerWorkerReadyListener(new JSI.WorkerReadyListener() { // from class: com.cloud.tmc.integration.performance.innerworker.a
                @Override // com.cloud.tmc.kernel.worker.JSI.WorkerReadyListener
                public final void onWorkerReady() {
                    InnerWorkerWarmupManager.AnonymousClass1.invokeSuspend$lambda$0(innerWorkerListener, node, jsi, warmUpCallback);
                }
            });
            return Unit.f67061a;
        }
    }

    public final void preWarmup(Context context, int warmupType) {
        Intrinsics.h(context, "context");
        ((WarmupPoint) ExtensionPoint.as(WarmupPoint.class).create()).start(context, warmupType);
    }

    public final void warmup(JSI worker, PrepareCallbackParam param, WarmUpCallback warmUpCallback, InnerWorkerListener listener) {
        Intrinsics.h(worker, "worker");
        Intrinsics.h(warmUpCallback, "warmUpCallback");
        worker.setFrameworkVersion(param != null ? param.getFrameworkVersion() : null);
        WarmupNode warmupNode = (WarmupNode) TmcProxy.get(WarmupNode.class);
        String workerId = worker.getWorkerId();
        Intrinsics.g(workerId, "worker.workerId");
        k.d(o0.a(y0.b()), null, null, new AnonymousClass1(worker, warmupNode.getNode(workerId), listener, warmUpCallback, null), 3, null);
    }
}
