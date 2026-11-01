package com.cloud.tmc.integration.defaultImpl;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.chain.endState.CreateRenderEndState;
import com.cloud.tmc.integration.chain.endState.LoadRenderFrameworkEndState;
import com.cloud.tmc.integration.chain.startState.LoadRenderFrameworkStartState;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.ExtendModel;
import com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool;
import com.cloud.tmc.integration.performance.innerrender.InnerRenderListener;
import com.cloud.tmc.integration.performance.innerwebview.IInnerH5WebviewPool;
import com.cloud.tmc.integration.performance.offscreen.webview.OffScreenWebviewPool;
import com.cloud.tmc.integration.performanceanalyse.screen.IScreenInspectProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.node.PageNode;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.kernel.constants.MiniAppType;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.model.CreateParams;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceImprovesProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.RenderAnalyseType;
import com.cloud.tmc.kernel.render.IPageEventCallback;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.utils.BundleUtils;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.KUrlUtils;
import com.cloud.tmc.render.IRenderFactory;
import com.cloud.tmc.render.SystemRender;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J0\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002JX\u0010\u0011\u001a\u00020\u00122\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016Jp\u0010\u001c\u001a\u00020\u00122\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\""}, d2 = {"Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;", "Lcom/cloud/tmc/render/IRenderFactory;", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "createRender", "Lcom/cloud/tmc/kernel/render/IRender;", "activity", "Landroid/app/Activity;", "engineProxy", "Lcom/cloud/tmc/kernel/engine/IEngine;", "node", "Lcom/cloud/tmc/kernel/node/Node;", "createParams", "Lcom/cloud/tmc/kernel/model/CreateParams;", "getRender", "", "pageId", "context", "", "data", "Landroid/os/Bundle;", "isFirstLaunch", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;", "initRenderEnv", "mRender", "createRenderEndTime", "", "loadRenderFrameworkStartTime", "loadRenderFrameworkEndTime", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RenderFactory implements IRenderFactory {
    private final String TAG = "RenderFactory";

    /* JADX INFO: renamed from: com.cloud.tmc.integration.defaultImpl.RenderFactory$getRender$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\u0003H\u0016¨\u0006\t"}, d2 = {"com/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3", "Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;", "createRenderSuccess", "", "loadRenderFrameworkSuccess", "warmupFail", "step", "", "warmupSuccess", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class AnonymousClass3 implements InnerRenderListener {
        final /* synthetic */ Activity $activity;
        final /* synthetic */ Object $context;
        final /* synthetic */ CreateParams $createParams;
        final /* synthetic */ Ref.LongRef $createRenderEndTime;
        final /* synthetic */ Bundle $data;
        final /* synthetic */ IEngine $engineProxy;
        final /* synthetic */ IRenderFactory.IRenderListener $listener;
        final /* synthetic */ Ref.LongRef $loadRenderFrameworkEndTime;
        final /* synthetic */ Ref.LongRef $loadRenderFrameworkStartTime;
        final /* synthetic */ Node $node;
        final /* synthetic */ String $pageId;
        final /* synthetic */ RenderFactory this$0;

        AnonymousClass3(Ref.LongRef longRef, Ref.LongRef longRef2, IEngine iEngine, Ref.LongRef longRef3, Node node, RenderFactory renderFactory, Activity activity, CreateParams createParams, String str, Object obj, IRenderFactory.IRenderListener iRenderListener, Bundle bundle) {
            this.$createRenderEndTime = longRef;
            this.$loadRenderFrameworkStartTime = longRef2;
            this.$engineProxy = iEngine;
            this.$loadRenderFrameworkEndTime = longRef3;
            this.$node = node;
            this.this$0 = renderFactory;
            this.$activity = activity;
            this.$createParams = createParams;
            this.$pageId = str;
            this.$context = obj;
            this.$listener = iRenderListener;
            this.$data = bundle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void loadRenderFrameworkSuccess$lambda$0(Node node, RenderFactory this$0, Activity activity, IEngine iEngine, CreateParams createParams, String pageId, Object context, IRenderFactory.IRenderListener listener, Ref.LongRef createRenderEndTime, Ref.LongRef loadRenderFrameworkStartTime, Ref.LongRef loadRenderFrameworkEndTime, Bundle data) {
            Intrinsics.h(this$0, "this$0");
            Intrinsics.h(pageId, "$pageId");
            Intrinsics.h(context, "$context");
            Intrinsics.h(listener, "$listener");
            Intrinsics.h(createRenderEndTime, "$createRenderEndTime");
            Intrinsics.h(loadRenderFrameworkStartTime, "$loadRenderFrameworkStartTime");
            Intrinsics.h(loadRenderFrameworkEndTime, "$loadRenderFrameworkEndTime");
            Intrinsics.h(data, "$data");
            PageNode pageNode = node instanceof PageNode ? (PageNode) node : null;
            if ((pageNode != null ? pageNode.getApp() : null) == null) {
                TmcLogger.d("InnerWarmup", "app已摧毁，不再继续执行Render");
            } else {
                this$0.initRenderEnv(activity, iEngine, node, createParams, pageId, context, this$0.createRender(activity, iEngine, node, createParams), listener, createRenderEndTime.element, loadRenderFrameworkStartTime.element, loadRenderFrameworkEndTime.element, data);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void warmupFail$lambda$2(Node node, RenderFactory this$0, Activity activity, IEngine iEngine, CreateParams createParams, String pageId, Object context, IRenderFactory.IRenderListener listener, Ref.LongRef createRenderEndTime, Ref.LongRef loadRenderFrameworkStartTime, Ref.LongRef loadRenderFrameworkEndTime, Bundle data) {
            Intrinsics.h(this$0, "this$0");
            Intrinsics.h(pageId, "$pageId");
            Intrinsics.h(context, "$context");
            Intrinsics.h(listener, "$listener");
            Intrinsics.h(createRenderEndTime, "$createRenderEndTime");
            Intrinsics.h(loadRenderFrameworkStartTime, "$loadRenderFrameworkStartTime");
            Intrinsics.h(loadRenderFrameworkEndTime, "$loadRenderFrameworkEndTime");
            Intrinsics.h(data, "$data");
            PageNode pageNode = node instanceof PageNode ? (PageNode) node : null;
            if ((pageNode != null ? pageNode.getApp() : null) == null) {
                TmcLogger.d("InnerWarmup", "app已摧毁，不再继续执行Render");
            } else {
                this$0.initRenderEnv(activity, iEngine, node, createParams, pageId, context, this$0.createRender(activity, iEngine, node, createParams), listener, createRenderEndTime.element, loadRenderFrameworkStartTime.element, loadRenderFrameworkEndTime.element, data);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void warmupSuccess$lambda$1(Node node, RenderFactory this$0, Activity activity, IEngine iEngine, CreateParams createParams, String pageId, Object context, IRenderFactory.IRenderListener listener, Ref.LongRef createRenderEndTime, Ref.LongRef loadRenderFrameworkStartTime, Ref.LongRef loadRenderFrameworkEndTime, Bundle data) {
            Intrinsics.h(this$0, "this$0");
            Intrinsics.h(pageId, "$pageId");
            Intrinsics.h(context, "$context");
            Intrinsics.h(listener, "$listener");
            Intrinsics.h(createRenderEndTime, "$createRenderEndTime");
            Intrinsics.h(loadRenderFrameworkStartTime, "$loadRenderFrameworkStartTime");
            Intrinsics.h(loadRenderFrameworkEndTime, "$loadRenderFrameworkEndTime");
            Intrinsics.h(data, "$data");
            PageNode pageNode = node instanceof PageNode ? (PageNode) node : null;
            if ((pageNode != null ? pageNode.getApp() : null) == null) {
                TmcLogger.d("InnerWarmup", "app已摧毁，不再继续执行Render");
            } else {
                this$0.initRenderEnv(activity, iEngine, node, createParams, pageId, context, this$0.createRender(activity, iEngine, node, createParams), listener, createRenderEndTime.element, loadRenderFrameworkStartTime.element, loadRenderFrameworkEndTime.element, data);
            }
        }

        @Override // com.cloud.tmc.integration.performance.innerrender.InnerRenderListener
        public void createRenderSuccess() {
            TmcLogger.d("InnerWarmup", "listener callback => createRenderSuccess");
            this.$createRenderEndTime.element = System.currentTimeMillis();
            this.$loadRenderFrameworkStartTime.element = System.currentTimeMillis();
        }

        @Override // com.cloud.tmc.integration.performance.innerrender.InnerRenderListener
        public void loadRenderFrameworkSuccess() {
            TmcLogger.d("InnerWarmup", "listener callback => loadRenderFrameworkSuccess");
            PerformanceImprovesProxy performanceImprovesProxy = (PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class);
            IEngine iEngine = this.$engineProxy;
            performanceImprovesProxy.addPeroformanceImprove(iEngine != null ? iEngine.getAppId() : null, EventConstants.ADDRESS_RENDER);
            this.$loadRenderFrameworkEndTime.element = System.currentTimeMillis();
            final Node node = this.$node;
            final RenderFactory renderFactory = this.this$0;
            final Activity activity = this.$activity;
            final IEngine iEngine2 = this.$engineProxy;
            final CreateParams createParams = this.$createParams;
            final String str = this.$pageId;
            final Object obj = this.$context;
            final IRenderFactory.IRenderListener iRenderListener = this.$listener;
            final Ref.LongRef longRef = this.$createRenderEndTime;
            final Ref.LongRef longRef2 = this.$loadRenderFrameworkStartTime;
            final Ref.LongRef longRef3 = this.$loadRenderFrameworkEndTime;
            final Bundle bundle = this.$data;
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.defaultImpl.f
                @Override // java.lang.Runnable
                public final void run() {
                    RenderFactory.AnonymousClass3.loadRenderFrameworkSuccess$lambda$0(node, renderFactory, activity, iEngine2, createParams, str, obj, iRenderListener, longRef, longRef2, longRef3, bundle);
                }
            });
        }

        @Override // com.cloud.tmc.integration.performance.innerrender.InnerRenderListener
        public void warmupFail(int step) {
            TmcLogger.d("InnerWarmup", "listener callback => render warmupFail:" + step);
            final Ref.LongRef longRef = this.$createRenderEndTime;
            longRef.element = 0L;
            final Ref.LongRef longRef2 = this.$loadRenderFrameworkStartTime;
            longRef2.element = 0L;
            final Ref.LongRef longRef3 = this.$loadRenderFrameworkEndTime;
            longRef3.element = 0L;
            final Node node = this.$node;
            final RenderFactory renderFactory = this.this$0;
            final Activity activity = this.$activity;
            final IEngine iEngine = this.$engineProxy;
            final CreateParams createParams = this.$createParams;
            final String str = this.$pageId;
            final Object obj = this.$context;
            final IRenderFactory.IRenderListener iRenderListener = this.$listener;
            final Bundle bundle = this.$data;
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.defaultImpl.e
                @Override // java.lang.Runnable
                public final void run() {
                    RenderFactory.AnonymousClass3.warmupFail$lambda$2(node, renderFactory, activity, iEngine, createParams, str, obj, iRenderListener, longRef, longRef2, longRef3, bundle);
                }
            });
        }

        @Override // com.cloud.tmc.integration.performance.innerrender.InnerRenderListener
        public void warmupSuccess() {
            TmcLogger.d("InnerWarmup", "listener callback => render warmupSuccess");
            PerformanceImprovesProxy performanceImprovesProxy = (PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class);
            IEngine iEngine = this.$engineProxy;
            performanceImprovesProxy.addPeroformanceImprove(iEngine != null ? iEngine.getAppId() : null, EventConstants.ADDRESS_RENDER);
            this.$createRenderEndTime.element = System.currentTimeMillis();
            this.$loadRenderFrameworkStartTime.element = System.currentTimeMillis();
            this.$loadRenderFrameworkEndTime.element = System.currentTimeMillis();
            final Node node = this.$node;
            final RenderFactory renderFactory = this.this$0;
            final Activity activity = this.$activity;
            final IEngine iEngine2 = this.$engineProxy;
            final CreateParams createParams = this.$createParams;
            final String str = this.$pageId;
            final Object obj = this.$context;
            final IRenderFactory.IRenderListener iRenderListener = this.$listener;
            final Ref.LongRef longRef = this.$createRenderEndTime;
            final Ref.LongRef longRef2 = this.$loadRenderFrameworkStartTime;
            final Ref.LongRef longRef3 = this.$loadRenderFrameworkEndTime;
            final Bundle bundle = this.$data;
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.defaultImpl.g
                @Override // java.lang.Runnable
                public final void run() {
                    RenderFactory.AnonymousClass3.warmupSuccess$lambda$1(node, renderFactory, activity, iEngine2, createParams, str, obj, iRenderListener, longRef, longRef2, longRef3, bundle);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IRender createRender(Activity activity, IEngine engineProxy, Node node, CreateParams createParams) {
        IRender render = activity != null ? ((IInnerRenderPool) TmcProxy.get(IInnerRenderPool.class)).getRender(activity, ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getFrameworkVersion()) : null;
        return render == null ? new SystemRender(activity, engineProxy, node, createParams, 0, 16, null) : render;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getRender$lambda$4(Node node, RenderFactory this$0, Activity activity, IEngine iEngine, CreateParams createParams, String pageId, Object context, Ref.ObjectRef mRender, IRenderFactory.IRenderListener listener, Ref.LongRef createRenderEndTime, Ref.LongRef loadRenderFrameworkStartTime, Ref.LongRef loadRenderFrameworkEndTime, Bundle data) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(pageId, "$pageId");
        Intrinsics.h(context, "$context");
        Intrinsics.h(mRender, "$mRender");
        Intrinsics.h(listener, "$listener");
        Intrinsics.h(createRenderEndTime, "$createRenderEndTime");
        Intrinsics.h(loadRenderFrameworkStartTime, "$loadRenderFrameworkStartTime");
        Intrinsics.h(loadRenderFrameworkEndTime, "$loadRenderFrameworkEndTime");
        Intrinsics.h(data, "$data");
        PageNode pageNode = node instanceof PageNode ? (PageNode) node : null;
        if ((pageNode != null ? pageNode.getApp() : null) == null) {
            TmcLogger.d("InnerWarmup", "app已摧毁，不再继续执行Render");
        } else {
            this$0.initRenderEnv(activity, iEngine, node, createParams, pageId, context, (IRender) mRender.element, listener, createRenderEndTime.element, loadRenderFrameworkStartTime.element, loadRenderFrameworkEndTime.element, data);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initRenderEnv(Activity activity, IEngine engineProxy, Node node, CreateParams createParams, String pageId, Object context, IRender mRender, IRenderFactory.IRenderListener listener, long createRenderEndTime, long loadRenderFrameworkStartTime, long loadRenderFrameworkEndTime, Bundle data) {
        App app;
        App app2;
        App app3;
        App app4;
        App app5;
        App app6;
        App app7;
        AppModel appModel;
        App app8;
        App app9;
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        boolean z10 = node instanceof Page;
        Page page = z10 ? (Page) node : null;
        String appId = (page == null || (app9 = page.getApp()) == null) ? null : app9.getAppId();
        performanceAnalyseProxy.record(appId, RenderAnalyseType.CONSOLE, "render fromWarmup : " + mRender.getFromWarmup());
        if (context instanceof IPageEventCallback) {
            mRender.registerPageEventCallback((IPageEventCallback) context);
        }
        if (mRender.getFromWarmup()) {
            mRender.setMiniAppId(engineProxy != null ? engineProxy.getAppId() : null);
            mRender.setWarmupRenderId(pageId);
            mRender.setWarmupEngine(engineProxy);
            mRender.setWarmupNode(node);
            mRender.setWarmupCreateParams(createParams);
        } else {
            mRender.setWarmupNode(node);
            mRender.init(pageId);
        }
        AppPrepareUtils appPrepareUtils = AppPrepareUtils.INSTANCE;
        Page page2 = z10 ? (Page) node : null;
        if (appPrepareUtils.isShellType((page2 == null || (app8 = page2.getApp()) == null) ? null : app8.getAppModel())) {
            Page page3 = z10 ? (Page) node : null;
            if (page3 != null && (app7 = page3.getApp()) != null && (appModel = app7.getAppModel()) != null) {
                mRender.setMiniAppType(appModel.getAppinfoCategoryType());
            }
        }
        ((IScreenInspectProxy) TmcProxy.get(IScreenInspectProxy.class)).registerRender(mRender);
        Bundle bundle = new Bundle();
        if (createRenderEndTime != 0) {
            bundle.putLong(ChainPoint.TIME, createRenderEndTime);
        } else {
            bundle.putLong(ChainPoint.TIME, System.currentTimeMillis());
        }
        if (data != null) {
            bundle.putAll(data);
        }
        if (node != null) {
        }
        PageNode pageNode = node instanceof PageNode ? (PageNode) node : null;
        PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        Page page4 = z10 ? (Page) node : null;
        String appId2 = (page4 == null || (app6 = page4.getApp()) == null) ? null : app6.getAppId();
        PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_APP_CHAIN_END;
        performanceAnalyseProxy2.record(appId2, pointAnalyseType, ChainPoint.PageCreateRender, bundle);
        PerformanceAnalyseProxy performanceAnalyseProxy3 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        Page page5 = z10 ? (Page) node : null;
        String appId3 = (page5 == null || (app5 = page5.getApp()) == null) ? null : app5.getAppId();
        PointAnalyseType pointAnalyseType2 = PointAnalyseType.POINT_PAGE_CHAIN_END;
        performanceAnalyseProxy3.record(appId3, pointAnalyseType2, ChainPoint.PageCreateRender, bundle);
        new CreateRenderEndState(bundle).setChainContext(pageNode != null ? pageNode.getPageChainContext() : null);
        if (loadRenderFrameworkStartTime != 0) {
            PageNode pageNode2 = pageNode;
            if (loadRenderFrameworkEndTime != 0) {
                Bundle bundle2 = new Bundle();
                bundle2.putLong(ChainPoint.TIME, loadRenderFrameworkStartTime);
                if (data != null) {
                    bundle2.putAll(data);
                }
                Bundle bundle3 = new Bundle();
                bundle3.putLong(ChainPoint.TIME, loadRenderFrameworkEndTime);
                if (data != null) {
                    bundle3.putAll(data);
                }
                PerformanceAnalyseProxy performanceAnalyseProxy4 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                Page page6 = z10 ? (Page) node : null;
                performanceAnalyseProxy4.record((page6 == null || (app4 = page6.getApp()) == null) ? null : app4.getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.PageLoadRenderFramework, bundle2);
                PerformanceAnalyseProxy performanceAnalyseProxy5 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                Page page7 = z10 ? (Page) node : null;
                performanceAnalyseProxy5.record((page7 == null || (app3 = page7.getApp()) == null) ? null : app3.getAppId(), PointAnalyseType.POINT_PAGE_CHAIN_START, ChainPoint.PageLoadRenderFramework, bundle2);
                PerformanceAnalyseProxy performanceAnalyseProxy6 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                Page page8 = z10 ? (Page) node : null;
                performanceAnalyseProxy6.record((page8 == null || (app2 = page8.getApp()) == null) ? null : app2.getAppId(), pointAnalyseType, ChainPoint.PageLoadRenderFramework, bundle3);
                PerformanceAnalyseProxy performanceAnalyseProxy7 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                Page page9 = z10 ? (Page) node : null;
                performanceAnalyseProxy7.record((page9 == null || (app = page9.getApp()) == null) ? null : app.getAppId(), pointAnalyseType2, ChainPoint.PageLoadRenderFramework, bundle3);
                new LoadRenderFrameworkStartState(bundle2).setChainContext(pageNode2 != null ? pageNode2.getPageChainContext() : null);
                new LoadRenderFrameworkEndState(bundle3).setChainContext(pageNode2 != null ? pageNode2.getPageChainContext() : null);
            }
        }
        listener.createSuccess(mRender);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [T, com.cloud.tmc.kernel.render.IRender] */
    /* JADX WARN: Type inference failed for: r0v70, types: [T, com.cloud.tmc.kernel.render.IRender] */
    /* JADX WARN: Type inference failed for: r5v4, types: [T, com.cloud.tmc.render.SystemRender] */
    /* JADX WARN: Type inference failed for: r9v3, types: [T, com.cloud.tmc.render.SystemRender] */
    @Override // com.cloud.tmc.render.IRenderFactory
    public void getRender(final Activity activity, final IEngine engineProxy, final Node node, final CreateParams createParams, final String pageId, final Object context, final Bundle data, boolean isFirstLaunch, final IRenderFactory.IRenderListener listener) {
        Object obj;
        App app;
        App app2;
        App app3;
        App app4;
        AppModel appModel;
        App app5;
        AppModel appModel2;
        App app6;
        App app7;
        AppModel appModel3;
        ExtendModel extend;
        App app8;
        Intrinsics.h(pageId, "pageId");
        Intrinsics.h(context, "context");
        Intrinsics.h(data, "data");
        Intrinsics.h(listener, "listener");
        final Ref.LongRef longRef = new Ref.LongRef();
        longRef.element = System.currentTimeMillis();
        final Ref.LongRef longRef2 = new Ref.LongRef();
        longRef2.element = System.currentTimeMillis();
        final Ref.LongRef longRef3 = new Ref.LongRef();
        longRef3.element = System.currentTimeMillis();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        AppPrepareUtils appPrepareUtils = AppPrepareUtils.INSTANCE;
        boolean z10 = node instanceof Page;
        Page page = z10 ? (Page) node : null;
        if (appPrepareUtils.isShellType((page == null || (app8 = page.getApp()) == null) ? null : app8.getAppModel())) {
            Page page2 = z10 ? (Page) node : null;
            String strValueOf = String.valueOf((page2 == null || (app7 = page2.getApp()) == null || (appModel3 = app7.getAppModel()) == null || (extend = appModel3.getExtend()) == null) ? null : extend.getH5Url());
            Page page3 = z10 ? (Page) node : null;
            Bundle startParams = (page3 == null || (app6 = page3.getApp()) == null) ? null : app6.getStartParams();
            if (activity != null && !TextUtils.isEmpty(strValueOf) && startParams != null) {
                Bundle bundleClone = BundleUtils.clone(startParams);
                if (bundleClone != null) {
                    if (TextUtils.isEmpty(bundleClone.getString("h5Path")) && !TextUtils.isEmpty(bundleClone.getString(TmcConstants.EXTRA_H5_PATH_COPY))) {
                        bundleClone.putString("h5Path", bundleClone.getString(TmcConstants.EXTRA_H5_PATH_COPY));
                    }
                    if (TextUtils.isEmpty(bundleClone.getString("query")) && !TextUtils.isEmpty(bundleClone.getString(TmcConstants.EXTRA_QUERY_COPY))) {
                        bundleClone.putString("query", bundleClone.getString(TmcConstants.EXTRA_QUERY_COPY));
                    }
                } else {
                    bundleClone = null;
                }
                objectRef.element = OffScreenWebviewPool.INSTANCE.getOffScreenRender(KUrlUtils.generateShellUrl(strValueOf, bundleClone));
            }
            if (objectRef.element == 0) {
                objectRef.element = activity != null ? ((IInnerH5WebviewPool) TmcProxy.get(IInnerH5WebviewPool.class)).getWebview(activity) : 0;
            }
            T t11 = objectRef.element;
            if (t11 == 0) {
                Page page4 = z10 ? (Page) node : null;
                objectRef.element = new SystemRender(activity, engineProxy, node, createParams, (page4 == null || (app5 = page4.getApp()) == null || (appModel2 = app5.getAppModel()) == null) ? MiniAppType.NORMAL.ordinal() : appModel2.getAppinfoCategoryType());
            } else {
                IRender iRender = (IRender) t11;
                Page page5 = z10 ? (Page) node : null;
                iRender.setMiniAppType((page5 == null || (app4 = page5.getApp()) == null || (appModel = app4.getAppModel()) == null) ? MiniAppType.NORMAL.ordinal() : appModel.getAppinfoCategoryType());
            }
        } else {
            Page page6 = z10 ? (Page) node : null;
            Integer numValueOf = (page6 == null || (app3 = page6.getApp()) == null) ? null : Integer.valueOf(app3.getPageType(page6.getPagePath()));
            if (numValueOf != null && numValueOf.intValue() == 2) {
                Page page7 = z10 ? (Page) node : null;
                Bundle startParams2 = (page7 == null || (app2 = page7.getApp()) == null) ? null : app2.getStartParams();
                Page page8 = z10 ? (Page) node : null;
                Bundle sceneParams = (page8 == null || (app = page8.getApp()) == null) ? null : app.getSceneParams();
                String string = startParams2 != null ? startParams2.getString(TmcConstants.EXTRA_PAGE_COPY) : null;
                if (TextUtils.isEmpty(string) || string == null) {
                    obj = null;
                } else {
                    obj = null;
                    if (StringsKt.W(string, "http", false, 2, null) && AppUtils.isLegalPath(sceneParams, string)) {
                        objectRef.element = OffScreenWebviewPool.INSTANCE.getOffScreenRender(string);
                    }
                }
                if (objectRef.element == 0) {
                    objectRef.element = activity != null ? ((IInnerH5WebviewPool) TmcProxy.get(IInnerH5WebviewPool.class)).getWebview(activity) : obj;
                }
                T t12 = objectRef.element;
                if (t12 == 0) {
                    objectRef.element = new SystemRender(activity, engineProxy, node, createParams, MiniAppType.SHELL.ordinal());
                } else {
                    ((IRender) t12).setMiniAppType(MiniAppType.SHELL.ordinal());
                }
            }
        }
        boolean z11 = node instanceof PageNode;
        if (objectRef.element == 0) {
            ((IInnerRenderPool) TmcProxy.get(IInnerRenderPool.class)).registerListener(new AnonymousClass3(longRef, longRef2, engineProxy, longRef3, node, this, activity, createParams, pageId, context, listener, data), isFirstLaunch, ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getFrameworkVersion());
        } else {
            longRef.element = 0L;
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.defaultImpl.d
                @Override // java.lang.Runnable
                public final void run() {
                    RenderFactory.getRender$lambda$4(node, this, activity, engineProxy, createParams, pageId, context, objectRef, listener, longRef, longRef2, longRef3, data);
                }
            });
        }
    }

    public final String getTAG() {
        return this.TAG;
    }
}
