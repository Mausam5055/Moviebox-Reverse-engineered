package com.cloud.tmc.integration.performance.innerwebview;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.view.View;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.model.InnerWebviewWarmup;
import com.cloud.tmc.integration.performance.WarmupUtils;
import com.cloud.tmc.integration.structure.WarmupNode;
import com.cloud.tmc.kernel.constants.MiniAppType;
import com.cloud.tmc.kernel.coreimpl.DefaultEngineRouter;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.renderprocess.IRenderProcessListener;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.render.SystemRender;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0010H\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0005\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0017\u001a\u00020\u0012H\u0002J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001a\u0010\u001b\u001a\u00020\u00122\b\u0010\u001c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001d\u001a\u00020\u0010H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\rj\b\u0012\u0004\u0012\u00020\u000b`\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;", "Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;", "()V", "TAG", "", "context", "Landroid/app/Application;", "creatingWebview", "Ljava/util/concurrent/atomic/AtomicBoolean;", "unUsedWebviewQueue", "Ljava/util/LinkedList;", "Lcom/cloud/tmc/kernel/render/IRender;", "usedWebviewList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "createWebview", "", PushConstants.PROVIDER_FIELD_DESTROY, "", "existWebview", "getWebview", "Landroid/app/Activity;", "init", "realCreateRender", "registerListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewListener;", "removeWebview", EventConstants.ADDRESS_RENDER, "needDestroy", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class InnerH5WebviewPool implements IInnerH5WebviewPool {
    private Application context;
    private final String TAG = "InnerH5WebviewPool";
    private final ArrayList<IRender> usedWebviewList = new ArrayList<>();
    private final LinkedList<IRender> unUsedWebviewQueue = new LinkedList<>();
    private AtomicBoolean creatingWebview = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createWebview$lambda$0(InnerH5WebviewPool this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.realCreateRender();
    }

    private final boolean existWebview() {
        if (this.unUsedWebviewQueue.size() <= 0) {
            return false;
        }
        IRender iRenderPeek = this.unUsedWebviewQueue.peek();
        View view = iRenderPeek != null ? iRenderPeek.getView() : null;
        IRenderProcessListener iRenderProcessListener = view instanceof IRenderProcessListener ? (IRenderProcessListener) view : null;
        if (!(iRenderProcessListener != null ? Intrinsics.c(iRenderProcessListener.isRenderProcessGone(), Boolean.TRUE) : false)) {
            return true;
        }
        IRender iRenderPoll = this.unUsedWebviewQueue.poll();
        if (iRenderPoll == null) {
            return false;
        }
        iRenderPoll.destroy();
        return false;
    }

    private final void realCreateRender() {
        TmcLogger.d(this.TAG, "H5WebviewPool => realCreateRender unUsedWebviewQueue = " + this.unUsedWebviewQueue.size());
        SystemRender systemRender = new SystemRender(new MutableContextWrapper(this.context), null, null, null, MiniAppType.SHELL.ordinal());
        systemRender.setWarmup(2);
        String str = "warmup_render_id__" + WarmupUtils.INSTANCE.getWarmupRenderId().addAndGet(1);
        Node node = ((WarmupNode) TmcProxy.get(WarmupNode.class)).getNode(str);
        systemRender.setWarmupEngineRouter(new DefaultEngineRouter());
        systemRender.setWarmupAppId(FrameworkConstants.APP_MANAGER_APPID);
        systemRender.setWarmupNode(node);
        systemRender.init(str);
        this.unUsedWebviewQueue.add(systemRender);
        this.creatingWebview.set(false);
        TmcLogger.d(this.TAG, "H5WebviewPool => realCreateRender finished unUsedWebviewQueue = " + this.unUsedWebviewQueue.size());
    }

    @Override // com.cloud.tmc.integration.performance.innerwebview.IInnerH5WebviewPool
    public boolean createWebview() {
        try {
            String configString = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_INNER_WEBVIEW_WARMUP_V3, MiniAppConfigHelper.DEFAULT_INNER_WEBVIEW_WARMUP_V3);
            InnerWebviewWarmup innerWebviewWarmup = (InnerWebviewWarmup) GsonUtils.fromJson(configString, InnerWebviewWarmup.class);
            String str = this.TAG;
            boolean z10 = innerWebviewWarmup.getInnerWarmUpWebviewEnable() && this.unUsedWebviewQueue.size() < innerWebviewWarmup.getWebviewMaxWarmupSize() && !this.creatingWebview.get();
            TmcLogger.d(str, "H5WebviewPool => createWebview ret:" + configString + ", canCreate:" + z10 + ", processName:" + ProcessUtils.getProcessName());
            if (innerWebviewWarmup.getInnerWarmUpWebviewEnable() && this.unUsedWebviewQueue.size() < innerWebviewWarmup.getWebviewMaxWarmupSize() && !this.creatingWebview.get()) {
                this.creatingWebview.set(true);
                ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.performance.innerwebview.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        InnerH5WebviewPool.createWebview$lambda$0(this.f23417a);
                    }
                });
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    @Override // com.cloud.tmc.integration.performance.innerwebview.IInnerH5WebviewPool
    public void destroy() {
    }

    @Override // com.cloud.tmc.integration.performance.innerwebview.IInnerH5WebviewPool
    public synchronized IRender getWebview(Activity context) {
        IRender iRender;
        View view;
        try {
            Intrinsics.h(context, "context");
            TmcLogger.d(this.TAG, "H5WebviewPool => getWebview unUsedWebviewQueue = " + this.unUsedWebviewQueue.size());
            iRender = null;
            iRender = null;
            if (this.unUsedWebviewQueue.size() > 0) {
                IRender iRenderPoll = this.unUsedWebviewQueue.poll();
                Object view2 = iRenderPoll != null ? iRenderPoll.getView() : null;
                IRenderProcessListener iRenderProcessListener = view2 instanceof IRenderProcessListener ? (IRenderProcessListener) view2 : null;
                if (iRenderProcessListener != null ? Intrinsics.c(iRenderProcessListener.isRenderProcessGone(), Boolean.TRUE) : false) {
                    iRenderPoll.destroy();
                } else {
                    Context context2 = (iRenderPoll == null || (view = iRenderPoll.getView()) == null) ? null : view.getContext();
                    MutableContextWrapper mutableContextWrapper = context2 instanceof MutableContextWrapper ? (MutableContextWrapper) context2 : null;
                    if (mutableContextWrapper != null) {
                        mutableContextWrapper.setBaseContext(context);
                    }
                    if (iRenderPoll != null) {
                        iRenderPoll.setActivity(context);
                    }
                    this.usedWebviewList.add(iRenderPoll);
                    iRender = iRenderPoll;
                }
            }
            TmcLogger.d(this.TAG, "H5WebviewPool => getWebview success:" + (iRender != null));
        } catch (Throwable th2) {
            throw th2;
        }
        return iRender;
    }

    @Override // com.cloud.tmc.integration.performance.innerwebview.IInnerH5WebviewPool
    public void init(Application context) {
        Intrinsics.h(context, "context");
        this.context = context;
    }

    @Override // com.cloud.tmc.integration.performance.innerwebview.IInnerH5WebviewPool
    public void registerListener(InnerH5WebviewListener listener) {
        Intrinsics.h(listener, "listener");
    }

    @Override // com.cloud.tmc.integration.performance.innerwebview.IInnerH5WebviewPool
    public void removeWebview(IRender render, boolean needDestroy) {
        View view;
        TmcLogger.d(this.TAG, "H5WebviewPool => removeWebview render.hasCode = " + (render != null ? Integer.valueOf(render.hashCode()) : null));
        IRender iRender = null;
        for (IRender iRender2 : this.usedWebviewList) {
            if (render != null && iRender2.hashCode() == render.hashCode()) {
                iRender = iRender2;
            }
        }
        if (iRender != null) {
            if (needDestroy) {
                TmcLogger.d(this.TAG, "H5WebviewPool => real destroy");
                Context context = (render == null || (view = render.getView()) == null) ? null : view.getContext();
                MutableContextWrapper mutableContextWrapper = context instanceof MutableContextWrapper ? (MutableContextWrapper) context : null;
                if (mutableContextWrapper != null) {
                    mutableContextWrapper.setBaseContext(this.context);
                }
                iRender.destroy();
            }
            this.usedWebviewList.remove(iRender);
        }
    }
}
