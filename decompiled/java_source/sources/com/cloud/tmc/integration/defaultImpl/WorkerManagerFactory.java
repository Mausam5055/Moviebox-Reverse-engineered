package com.cloud.tmc.integration.defaultImpl;

import android.content.Context;
import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.chain.endState.CreateWorkerEndState;
import com.cloud.tmc.integration.chain.endState.LoadWorkerFrameworkEndState;
import com.cloud.tmc.integration.chain.startState.ChainMidStartState;
import com.cloud.tmc.integration.chain.startState.CreateWorkerStartState;
import com.cloud.tmc.integration.chain.startState.LoadWorkerFrameworkStartState;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.WorkerStore;
import com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool;
import com.cloud.tmc.integration.performance.innerworker.InnerWorkerListener;
import com.cloud.tmc.integration.performanceanalyse.screen.IScreenInspectProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.node.PageNode;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.kernel.engine.EngineRouterManager;
import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceImprovesProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.RenderAnalyseType;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.worker.JSI;
import com.cloud.tmc.worker.IWorkerManagerFactory;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016JX\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¨\u0006\u0016"}, d2 = {"Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;", "Lcom/cloud/tmc/worker/IWorkerManagerFactory;", "()V", "createWorker", "", "engine", "Lcom/cloud/tmc/kernel/engine/IEngine;", "context", "Landroid/content/Context;", "node", "Lcom/cloud/tmc/kernel/node/Node;", "userAgent", "", "workerId", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;", "getWorker", "createWorkerStartTime", "", "createWorkerEndTime", "loadWorkerFrameworkStartTime", "loadWorkerFrameworkEndTime", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WorkerManagerFactory implements IWorkerManagerFactory {

    /* JADX INFO: renamed from: com.cloud.tmc.integration.defaultImpl.WorkerManagerFactory$createWorker$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\u0003H\u0016¨\u0006\t"}, d2 = {"com/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1", "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;", "createWorkerSuccess", "", "loadWorkerFrameworkSuccess", "warmupFail", "step", "", "warmupSuccess", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class AnonymousClass1 implements InnerWorkerListener {
        final /* synthetic */ Context $context;
        final /* synthetic */ Ref.LongRef $createWorkerEndTime;
        final /* synthetic */ Ref.LongRef $createWorkerStartTime;
        final /* synthetic */ IEngine $engine;
        final /* synthetic */ IWorkerManagerFactory.IWorkerListener $listener;
        final /* synthetic */ Ref.LongRef $loadWorkerFrameworkEndTime;
        final /* synthetic */ Ref.LongRef $loadWorkerFrameworkStartTime;
        final /* synthetic */ Node $node;
        final /* synthetic */ String $userAgent;
        final /* synthetic */ String $workerId;
        final /* synthetic */ WorkerManagerFactory this$0;

        AnonymousClass1(Ref.LongRef longRef, Ref.LongRef longRef2, Ref.LongRef longRef3, WorkerManagerFactory workerManagerFactory, IEngine iEngine, Context context, Node node, String str, String str2, IWorkerManagerFactory.IWorkerListener iWorkerListener, Ref.LongRef longRef4) {
            this.$createWorkerEndTime = longRef;
            this.$loadWorkerFrameworkStartTime = longRef2;
            this.$loadWorkerFrameworkEndTime = longRef3;
            this.this$0 = workerManagerFactory;
            this.$engine = iEngine;
            this.$context = context;
            this.$node = node;
            this.$userAgent = str;
            this.$workerId = str2;
            this.$listener = iWorkerListener;
            this.$createWorkerStartTime = longRef4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void loadWorkerFrameworkSuccess$lambda$0(WorkerManagerFactory this$0, IEngine engine, Context context, Node node, String userAgent, String workerId, IWorkerManagerFactory.IWorkerListener listener, Ref.LongRef createWorkerStartTime, Ref.LongRef createWorkerEndTime, Ref.LongRef loadWorkerFrameworkStartTime, Ref.LongRef loadWorkerFrameworkEndTime) throws Throwable {
            Intrinsics.h(this$0, "this$0");
            Intrinsics.h(engine, "$engine");
            Intrinsics.h(context, "$context");
            Intrinsics.h(node, "$node");
            Intrinsics.h(userAgent, "$userAgent");
            Intrinsics.h(workerId, "$workerId");
            Intrinsics.h(listener, "$listener");
            Intrinsics.h(createWorkerStartTime, "$createWorkerStartTime");
            Intrinsics.h(createWorkerEndTime, "$createWorkerEndTime");
            Intrinsics.h(loadWorkerFrameworkStartTime, "$loadWorkerFrameworkStartTime");
            Intrinsics.h(loadWorkerFrameworkEndTime, "$loadWorkerFrameworkEndTime");
            this$0.getWorker(engine, context, node, userAgent, workerId, listener, createWorkerStartTime.element, createWorkerEndTime.element, loadWorkerFrameworkStartTime.element, loadWorkerFrameworkEndTime.element);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void warmupFail$lambda$2(WorkerManagerFactory this$0, IEngine engine, Context context, Node node, String userAgent, String workerId, IWorkerManagerFactory.IWorkerListener listener, Ref.LongRef createWorkerStartTime, Ref.LongRef createWorkerEndTime, Ref.LongRef loadWorkerFrameworkStartTime, Ref.LongRef loadWorkerFrameworkEndTime) throws Throwable {
            Intrinsics.h(this$0, "this$0");
            Intrinsics.h(engine, "$engine");
            Intrinsics.h(context, "$context");
            Intrinsics.h(node, "$node");
            Intrinsics.h(userAgent, "$userAgent");
            Intrinsics.h(workerId, "$workerId");
            Intrinsics.h(listener, "$listener");
            Intrinsics.h(createWorkerStartTime, "$createWorkerStartTime");
            Intrinsics.h(createWorkerEndTime, "$createWorkerEndTime");
            Intrinsics.h(loadWorkerFrameworkStartTime, "$loadWorkerFrameworkStartTime");
            Intrinsics.h(loadWorkerFrameworkEndTime, "$loadWorkerFrameworkEndTime");
            this$0.getWorker(engine, context, node, userAgent, workerId, listener, createWorkerStartTime.element, createWorkerEndTime.element, loadWorkerFrameworkStartTime.element, loadWorkerFrameworkEndTime.element);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void warmupSuccess$lambda$1(WorkerManagerFactory this$0, IEngine engine, Context context, Node node, String userAgent, String workerId, IWorkerManagerFactory.IWorkerListener listener, Ref.LongRef createWorkerStartTime, Ref.LongRef createWorkerEndTime, Ref.LongRef loadWorkerFrameworkStartTime, Ref.LongRef loadWorkerFrameworkEndTime) throws Throwable {
            Intrinsics.h(this$0, "this$0");
            Intrinsics.h(engine, "$engine");
            Intrinsics.h(context, "$context");
            Intrinsics.h(node, "$node");
            Intrinsics.h(userAgent, "$userAgent");
            Intrinsics.h(workerId, "$workerId");
            Intrinsics.h(listener, "$listener");
            Intrinsics.h(createWorkerStartTime, "$createWorkerStartTime");
            Intrinsics.h(createWorkerEndTime, "$createWorkerEndTime");
            Intrinsics.h(loadWorkerFrameworkStartTime, "$loadWorkerFrameworkStartTime");
            Intrinsics.h(loadWorkerFrameworkEndTime, "$loadWorkerFrameworkEndTime");
            this$0.getWorker(engine, context, node, userAgent, workerId, listener, createWorkerStartTime.element, createWorkerEndTime.element, loadWorkerFrameworkStartTime.element, loadWorkerFrameworkEndTime.element);
        }

        @Override // com.cloud.tmc.integration.performance.innerworker.InnerWorkerListener
        public void createWorkerSuccess() {
            TmcLogger.d("InnerWarmup", "listener callback => createWorkerSuccess");
            this.$createWorkerEndTime.element = System.currentTimeMillis();
            this.$loadWorkerFrameworkStartTime.element = System.currentTimeMillis();
        }

        @Override // com.cloud.tmc.integration.performance.innerworker.InnerWorkerListener
        public void loadWorkerFrameworkSuccess() {
            TmcLogger.d("InnerWarmup", "listener callback => loadWorkerFrameworkSuccess");
            this.$loadWorkerFrameworkEndTime.element = System.currentTimeMillis();
            final WorkerManagerFactory workerManagerFactory = this.this$0;
            final IEngine iEngine = this.$engine;
            final Context context = this.$context;
            final Node node = this.$node;
            final String str = this.$userAgent;
            final String str2 = this.$workerId;
            final IWorkerManagerFactory.IWorkerListener iWorkerListener = this.$listener;
            final Ref.LongRef longRef = this.$createWorkerStartTime;
            final Ref.LongRef longRef2 = this.$createWorkerEndTime;
            final Ref.LongRef longRef3 = this.$loadWorkerFrameworkStartTime;
            final Ref.LongRef longRef4 = this.$loadWorkerFrameworkEndTime;
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.defaultImpl.i
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    WorkerManagerFactory.AnonymousClass1.loadWorkerFrameworkSuccess$lambda$0(workerManagerFactory, iEngine, context, node, str, str2, iWorkerListener, longRef, longRef2, longRef3, longRef4);
                }
            });
        }

        @Override // com.cloud.tmc.integration.performance.innerworker.InnerWorkerListener
        public void warmupFail(int step) {
            TmcLogger.d("InnerWarmup", "listener callback => worker warmupFail:" + step);
            final Ref.LongRef longRef = this.$createWorkerStartTime;
            longRef.element = 0L;
            final Ref.LongRef longRef2 = this.$createWorkerEndTime;
            longRef2.element = 0L;
            final Ref.LongRef longRef3 = this.$loadWorkerFrameworkStartTime;
            longRef3.element = 0L;
            final Ref.LongRef longRef4 = this.$loadWorkerFrameworkEndTime;
            longRef4.element = 0L;
            final WorkerManagerFactory workerManagerFactory = this.this$0;
            final IEngine iEngine = this.$engine;
            final Context context = this.$context;
            final Node node = this.$node;
            final String str = this.$userAgent;
            final String str2 = this.$workerId;
            final IWorkerManagerFactory.IWorkerListener iWorkerListener = this.$listener;
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.defaultImpl.h
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    WorkerManagerFactory.AnonymousClass1.warmupFail$lambda$2(workerManagerFactory, iEngine, context, node, str, str2, iWorkerListener, longRef, longRef2, longRef3, longRef4);
                }
            });
        }

        @Override // com.cloud.tmc.integration.performance.innerworker.InnerWorkerListener
        public void warmupSuccess() {
            TmcLogger.d("InnerWarmup", "listener callback => worker warmupSuccess");
            this.$createWorkerStartTime.element = System.currentTimeMillis();
            this.$createWorkerEndTime.element = System.currentTimeMillis();
            this.$loadWorkerFrameworkStartTime.element = System.currentTimeMillis();
            this.$loadWorkerFrameworkEndTime.element = System.currentTimeMillis();
            final WorkerManagerFactory workerManagerFactory = this.this$0;
            final IEngine iEngine = this.$engine;
            final Context context = this.$context;
            final Node node = this.$node;
            final String str = this.$userAgent;
            final String str2 = this.$workerId;
            final IWorkerManagerFactory.IWorkerListener iWorkerListener = this.$listener;
            final Ref.LongRef longRef = this.$createWorkerStartTime;
            final Ref.LongRef longRef2 = this.$createWorkerEndTime;
            final Ref.LongRef longRef3 = this.$loadWorkerFrameworkStartTime;
            final Ref.LongRef longRef4 = this.$loadWorkerFrameworkEndTime;
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.defaultImpl.j
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    WorkerManagerFactory.AnonymousClass1.warmupSuccess$lambda$1(workerManagerFactory, iEngine, context, node, str, str2, iWorkerListener, longRef, longRef2, longRef3, longRef4);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getWorker(IEngine engine, Context context, Node node, String userAgent, String workerId, IWorkerManagerFactory.IWorkerListener listener, long createWorkerStartTime, long createWorkerEndTime, long loadWorkerFrameworkStartTime, long loadWorkerFrameworkEndTime) throws Throwable {
        App app;
        AppModel appModel;
        AppModel appModel2;
        boolean z10 = node instanceof Page;
        Page page = z10 ? (Page) node : null;
        if ((page != null ? page.getApp() : null) == null) {
            TmcLogger.d("InnerWarmup", "app已摧毁，不再继续执行Worker");
            return;
        }
        JSI worker = ((IInnerWorkerPool) TmcProxy.get(IInnerWorkerPool.class)).getWorker(((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getFrameworkVersion());
        if (worker == null) {
            worker = engine.createWorker(context, node, "");
        } else {
            engine.updateWorker(worker);
        }
        if (node != null) {
            app = (App) node.bubbleFindNode(App.class);
            if (app != null) {
                app.setData(WorkerStore.class, new WorkerStore(workerId));
            }
        } else {
            app = null;
        }
        PageNode pageNode = node instanceof PageNode ? (PageNode) node : null;
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        String appId = app != null ? app.getAppId() : null;
        RenderAnalyseType renderAnalyseType = RenderAnalyseType.CONSOLE;
        Boolean boolFromWarmup = worker != null ? worker.fromWarmup() : null;
        StringBuilder sb2 = new StringBuilder();
        PageNode pageNode2 = pageNode;
        sb2.append("worker fromWarmup : ");
        sb2.append(boolFromWarmup);
        performanceAnalyseProxy.record(appId, renderAnalyseType, sb2.toString());
        long startToken = app != null ? app.getStartToken() : -1L;
        if (worker != null) {
            worker.setWorkerId(workerId);
        }
        if (worker != null) {
            worker.setAppId("100000");
        }
        if (worker != null) {
            worker.setNode(app);
        }
        if (AppUtils.INSTANCE.checkUesCommonresApp((app == null || (appModel2 = app.getAppModel()) == null) ? null : appModel2.getMiniappSubtype()) && worker != null) {
            worker.setCommonresId((app == null || (appModel = app.getAppModel()) == null) ? null : appModel.getTemplateMiniappId());
        }
        ((EngineRouterManager) TmcProxy.get(EngineRouterManager.class)).get(startToken).registerWorker(workerId, worker);
        ((IScreenInspectProxy) TmcProxy.get(IScreenInspectProxy.class)).registerWorker(app, worker);
        if (createWorkerEndTime != 0 && createWorkerStartTime != 0) {
            ((PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class)).addPeroformanceImprove(app != null ? app.getAppId() : null, EventConstants.ADDRESS_WORKER);
            Bundle bundle = new Bundle();
            bundle.putLong(ChainPoint.TIME, createWorkerStartTime);
            String str = ChainPoint.PAGE_PATH;
            Page page2 = z10 ? (Page) node : null;
            bundle.putString(str, page2 != null ? page2.getPagePath() : null);
            String str2 = ChainPoint.PAGE_ID;
            Page page3 = z10 ? (Page) node : null;
            bundle.putString(str2, page3 != null ? page3.getPageId() : null);
            Bundle bundle2 = new Bundle();
            bundle2.putLong(ChainPoint.TIME, createWorkerEndTime);
            String str3 = ChainPoint.PAGE_PATH;
            Page page4 = z10 ? (Page) node : null;
            bundle2.putString(str3, page4 != null ? page4.getPagePath() : null);
            String str4 = ChainPoint.PAGE_ID;
            Page page5 = z10 ? (Page) node : null;
            bundle2.putString(str4, page5 != null ? page5.getPageId() : null);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app != null ? app.getAppId() : null, PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.PageCreateWorker, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app != null ? app.getAppId() : null, PointAnalyseType.POINT_PAGE_CHAIN_START, ChainPoint.PageCreateWorker, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app != null ? app.getAppId() : null, PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.PageCreateWorker, bundle2);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app != null ? app.getAppId() : null, PointAnalyseType.POINT_PAGE_CHAIN_END, ChainPoint.PageCreateWorker, bundle2);
            new CreateWorkerStartState(bundle).setChainContext(pageNode2 != null ? pageNode2.getPageChainContext() : null);
            new CreateWorkerEndState(bundle2).setChainContext(pageNode2 != null ? pageNode2.getPageChainContext() : null);
        }
        if (loadWorkerFrameworkEndTime != 0 && loadWorkerFrameworkStartTime != 0) {
            Bundle bundle3 = new Bundle();
            bundle3.putLong(ChainPoint.TIME, loadWorkerFrameworkStartTime);
            String str5 = ChainPoint.PAGE_PATH;
            Page page6 = z10 ? (Page) node : null;
            bundle3.putString(str5, page6 != null ? page6.getPagePath() : null);
            String str6 = ChainPoint.PAGE_ID;
            Page page7 = z10 ? (Page) node : null;
            bundle3.putString(str6, page7 != null ? page7.getPageId() : null);
            Bundle bundle4 = new Bundle();
            bundle4.putLong(ChainPoint.TIME, loadWorkerFrameworkEndTime);
            String str7 = ChainPoint.PAGE_PATH;
            Page page8 = z10 ? (Page) node : null;
            bundle4.putString(str7, page8 != null ? page8.getPagePath() : null);
            String str8 = ChainPoint.PAGE_ID;
            Page page9 = z10 ? (Page) node : null;
            bundle4.putString(str8, page9 != null ? page9.getPageId() : null);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app != null ? app.getAppId() : null, PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.PageLoadWorkerFramework, bundle3);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app != null ? app.getAppId() : null, PointAnalyseType.POINT_PAGE_CHAIN_START, ChainPoint.PageLoadWorkerFramework, bundle3);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app != null ? app.getAppId() : null, PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.PageLoadWorkerFramework, bundle4);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app != null ? app.getAppId() : null, PointAnalyseType.POINT_PAGE_CHAIN_END, ChainPoint.PageLoadWorkerFramework, bundle4);
            new LoadWorkerFrameworkStartState(bundle3).setChainContext(pageNode2 != null ? pageNode2.getPageChainContext() : null);
            new LoadWorkerFrameworkEndState(bundle4).setChainContext(pageNode2 != null ? pageNode2.getPageChainContext() : null);
            new ChainMidStartState(bundle4).setChainContext(pageNode2 != null ? pageNode2.getPageChainContext() : null);
        }
        listener.createSuccess(worker);
    }

    @Override // com.cloud.tmc.worker.IWorkerManagerFactory
    public void createWorker(IEngine engine, Context context, Node node, String userAgent, String workerId, IWorkerManagerFactory.IWorkerListener listener) {
        Intrinsics.h(engine, "engine");
        Intrinsics.h(context, "context");
        Intrinsics.h(node, "node");
        Intrinsics.h(userAgent, "userAgent");
        Intrinsics.h(workerId, "workerId");
        Intrinsics.h(listener, "listener");
        Ref.LongRef longRef = new Ref.LongRef();
        longRef.element = System.currentTimeMillis();
        Ref.LongRef longRef2 = new Ref.LongRef();
        longRef2.element = System.currentTimeMillis();
        Ref.LongRef longRef3 = new Ref.LongRef();
        longRef3.element = System.currentTimeMillis();
        Ref.LongRef longRef4 = new Ref.LongRef();
        longRef4.element = System.currentTimeMillis();
        ((IInnerWorkerPool) TmcProxy.get(IInnerWorkerPool.class)).registerListener(new AnonymousClass1(longRef2, longRef3, longRef4, this, engine, context, node, userAgent, workerId, listener, longRef), ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getFrameworkVersion());
    }
}
