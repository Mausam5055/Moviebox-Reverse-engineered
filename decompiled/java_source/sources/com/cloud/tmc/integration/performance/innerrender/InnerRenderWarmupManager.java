package com.cloud.tmc.integration.performance.innerrender;

import android.content.Context;
import android.view.View;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.invoke.extension.ExtensionPoint;
import com.cloud.tmc.integration.model.PrepareCallbackParam;
import com.cloud.tmc.integration.performance.WarmUpCallback;
import com.cloud.tmc.integration.performance.WarmupUtils;
import com.cloud.tmc.integration.point.WarmupPoint;
import com.cloud.tmc.integration.structure.WarmupNode;
import com.cloud.tmc.kernel.coreimpl.DefaultEngineRouter;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.render.LoadParams;
import com.cloud.tmc.render.bridge.WebviewBridgeHelper;
import com.cloud.tmc.render.system.SystemWebView;
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
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ \u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0007\u001a\u00020\bJ \u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002¨\u0006\u0016"}, d2 = {"Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;", "", "()V", "bindWarmupListener", "", EventConstants.ADDRESS_RENDER, "Lcom/cloud/tmc/kernel/render/IRender;", "warmUpCallback", "Lcom/cloud/tmc/integration/performance/WarmUpCallback;", "warmupNode", "Lcom/cloud/tmc/kernel/node/Node;", "preWarmup", "context", "Landroid/content/Context;", "warmupType", "", "warmUp", "param", "Lcom/cloud/tmc/integration/model/PrepareCallbackParam;", "warmup", "warmupRenderId", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class InnerRenderWarmupManager {

    /* JADX INFO: renamed from: com.cloud.tmc.integration.performance.innerrender.InnerRenderWarmupManager$preWarmup$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.cloud.tmc.integration.performance.innerrender.InnerRenderWarmupManager$preWarmup$1", f = "InnerRenderWarmupManager.kt", l = {}, m = "invokeSuspend")
    static final class C10221 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        final /* synthetic */ int $warmupType;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10221(Context context, int i11, Continuation<? super C10221> continuation) {
            super(2, continuation);
            this.$context = context;
            this.$warmupType = i11;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10221(this.$context, this.$warmupType, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10221) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            ((WarmupPoint) ExtensionPoint.as(WarmupPoint.class).create()).start(this.$context, this.$warmupType);
            return Unit.f67061a;
        }
    }

    private final void bindWarmupListener(final IRender render, final WarmUpCallback warmUpCallback, Node warmupNode) {
        final IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(warmupNode);
        if (eventCenterInstance != null) {
            eventCenterInstance.register(EventConstants.EVENT_RENDER_ON_MSG_READY, new IEventSubscriber() { // from class: com.cloud.tmc.integration.performance.innerrender.InnerRenderWarmupManager.bindWarmupListener.1
                @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
                public boolean onEvent(IEvent event) {
                    WebviewBridgeHelper webviewBridgeHelper;
                    Intrinsics.h(event, "event");
                    IRender iRender = render;
                    View view = iRender != null ? iRender.getView() : null;
                    SystemWebView systemWebView = view instanceof SystemWebView ? (SystemWebView) view : null;
                    if (systemWebView != null && (webviewBridgeHelper = systemWebView.getWebviewBridgeHelper()) != null) {
                        webviewBridgeHelper.registerMessageChannel();
                    }
                    IEventCenter iEventCenter = eventCenterInstance;
                    if (iEventCenter != null) {
                        iEventCenter.unregister(EventConstants.EVENT_RENDER_ON_MSG_READY, this);
                    }
                    WarmupNode warmupNode2 = (WarmupNode) TmcProxy.get(WarmupNode.class);
                    String renderId = render.getRenderId();
                    Intrinsics.g(renderId, "render.renderId");
                    warmupNode2.removeNode(renderId);
                    warmUpCallback.warmupResult(true);
                    return true;
                }
            });
        }
    }

    private final void warmup(IRender render, Node warmupNode, String warmupRenderId) {
        render.setWarmupEngineRouter(new DefaultEngineRouter());
        render.setWarmupAppId(FrameworkConstants.APP_MANAGER_APPID);
        render.setWarmupNode(warmupNode);
        render.init(warmupRenderId);
        LoadParams loadParams = new LoadParams();
        loadParams.url = FrameworkConstants.TEMPLATE_URL;
        render.load(loadParams);
    }

    public final void preWarmup(Context context, int warmupType) {
        Intrinsics.h(context, "context");
        k.d(o0.a(y0.a()), null, null, new C10221(context, warmupType, null), 3, null);
    }

    public final void warmUp(IRender render, PrepareCallbackParam param, WarmUpCallback warmUpCallback) {
        Intrinsics.h(render, "render");
        Intrinsics.h(warmUpCallback, "warmUpCallback");
        render.setFrameworkVersion(param != null ? param.getFrameworkVersion() : null);
        String str = "warmup_render_id__" + WarmupUtils.INSTANCE.getWarmupRenderId().addAndGet(1);
        Node node = ((WarmupNode) TmcProxy.get(WarmupNode.class)).getNode(str);
        bindWarmupListener(render, warmUpCallback, node);
        warmup(render, node, str);
    }
}
