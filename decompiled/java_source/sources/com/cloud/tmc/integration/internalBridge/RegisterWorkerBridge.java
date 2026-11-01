package com.cloud.tmc.integration.internalBridge;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.chain.endState.CreateWorkerEndState;
import com.cloud.tmc.integration.chain.endState.LoadWorkerFrameworkEndState;
import com.cloud.tmc.integration.chain.startState.ChainMidStartState;
import com.cloud.tmc.integration.chain.startState.CreateWorkerStartState;
import com.cloud.tmc.integration.chain.startState.LoadWorkerFrameworkStartState;
import com.cloud.tmc.integration.core.TmcEngineImpl;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.event.EventHelper;
import com.cloud.tmc.integration.invoke.extension.ExtensionPoint;
import com.cloud.tmc.integration.model.WorkerStore;
import com.cloud.tmc.integration.point.IIDEDispatcherPoint;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.debug.DebugConfig;
import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.extension.a;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.worker.JSI;
import com.cloud.tmc.worker.IWorkerManagerFactory;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public class RegisterWorkerBridge implements BridgeExtension {
    private static final String TAG = "RegisterWorkerBridge";

    /* JADX INFO: renamed from: com.cloud.tmc.integration.internalBridge.RegisterWorkerBridge$2, reason: invalid class name */
    class AnonymousClass2 implements IWorkerManagerFactory.IWorkerListener {
        final /* synthetic */ App val$app;
        final /* synthetic */ AppLoadResult val$appLoadResult;
        final /* synthetic */ BridgeCallback val$callback;
        final /* synthetic */ Page val$page;

        AnonymousClass2(App app, Page page, AppLoadResult appLoadResult, BridgeCallback bridgeCallback) {
            this.val$app = app;
            this.val$page = page;
            this.val$appLoadResult = appLoadResult;
            this.val$callback = bridgeCallback;
        }

        @Override // com.cloud.tmc.worker.IWorkerManagerFactory.IWorkerListener
        public void createSuccess(@Nullable final JSI jsi) {
            this.val$app.getEngineProxy().getEngineRouter().registerWorker(jsi);
            this.val$page.setData(WorkerStore.class, new WorkerStore(jsi.getWorkerId()));
            final JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty(FrameworkConstants.GLOBAL_DATA_KEY_HOMEPAGE_URL, this.val$page.getPagePath());
            String pageId = this.val$app.getPageByIndex(0).getPageId();
            int childCount = this.val$app.getChildCount();
            if (childCount > 0) {
                for (int i11 = 0; i11 < childCount; i11++) {
                    if (this.val$app.getPageByIndex(i11).getPagePath() != null) {
                        App app = this.val$app;
                        if (app.getPageType(app.getPageByIndex(i11).getPagePath()) == 1) {
                            pageId = this.val$app.getPageByIndex(i11).getPageId();
                            break;
                        }
                    }
                }
            }
            jsonObject.addProperty(FrameworkConstants.GLOBAL_DATA_KEY_HOMEPAGE_RENDER_ID, pageId);
            jsonObject.addProperty(FrameworkConstants.GLOBAL_DATA_KEY_APP_JSON, new Gson().toJson(this.val$appLoadResult.appConfigModel));
            try {
                jsonObject.addProperty(TmcConstants.KEY_MINI_APPID, this.val$app.getAppId());
                if (AppUtils.INSTANCE.checkUesCommonresApp(this.val$app.getAppModel().getMiniappSubtype())) {
                    jsonObject.addProperty(TmcConstants.KEY_MINI_COMMONRES_ID, this.val$app.getAppModel().getTemplateMiniappId());
                }
            } catch (Throwable th2) {
                TmcLogger.e(RegisterWorkerBridge.TAG, "", th2);
            }
            if (!jsi.fromWarmup().booleanValue()) {
                final Bundle bundle = new Bundle();
                bundle.putString(ChainPoint.TYPE, "page");
                bundle.putString(ChainPoint.CHAIN_ID, this.val$app.getStartParams().getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE));
                bundle.putString(ChainPoint.PAGE_PATH, this.val$page.getPagePath());
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.val$app.getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.CreateWorker, bundle);
                final Bundle bundle2 = new Bundle();
                bundle2.putString(ChainPoint.PAGE_PATH, this.val$page.getPagePath());
                bundle2.putString(ChainPoint.PAGE_ID, this.val$page.getPageId());
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.val$app.getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.PageCreateWorker, bundle2);
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.val$app.getAppId(), PointAnalyseType.POINT_PAGE_CHAIN_START, ChainPoint.PageCreateWorker, bundle2);
                CreateWorkerStartState createWorkerStartState = new CreateWorkerStartState(bundle2);
                Page page = this.val$page;
                createWorkerStartState.setChainContext(page == null ? null : page.getPageChainContext());
                jsi.registerWorkerReadyListener(new JSI.WorkerReadyListener() { // from class: com.cloud.tmc.integration.internalBridge.RegisterWorkerBridge.2.1
                    @Override // com.cloud.tmc.kernel.worker.JSI.WorkerReadyListener
                    public void onWorkerReady() {
                        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(AnonymousClass2.this.val$app.getAppId(), PointAnalyseType.POINT_CHAIN_END, ChainPoint.CreateWorker, bundle);
                        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(AnonymousClass2.this.val$app.getAppId(), PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.PageCreateWorker, bundle2);
                        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(AnonymousClass2.this.val$app.getAppId(), PointAnalyseType.POINT_PAGE_CHAIN_END, ChainPoint.PageCreateWorker, bundle2);
                        CreateWorkerEndState createWorkerEndState = new CreateWorkerEndState(bundle2);
                        Page page2 = AnonymousClass2.this.val$page;
                        createWorkerEndState.setChainContext(page2 == null ? null : page2.getPageChainContext());
                        final IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(AnonymousClass2.this.val$app);
                        if (eventCenterInstance != null) {
                            eventCenterInstance.register(EventConstants.EVENT_WORKER_ON_MSG_READY, new IEventSubscriber() { // from class: com.cloud.tmc.integration.internalBridge.RegisterWorkerBridge.2.1.1
                                @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
                                public boolean onEvent(IEvent iEvent) {
                                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(AnonymousClass2.this.val$app.getAppId(), PointAnalyseType.POINT_CHAIN_END, ChainPoint.LoadWorkerFramework, bundle);
                                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(AnonymousClass2.this.val$app.getAppId(), PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.PageLoadWorkerFramework, bundle2);
                                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(AnonymousClass2.this.val$app.getAppId(), PointAnalyseType.POINT_PAGE_CHAIN_END, ChainPoint.PageLoadWorkerFramework, bundle2);
                                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(AnonymousClass2.this.val$app.getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.PageDrawView, bundle2);
                                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(AnonymousClass2.this.val$app.getAppId(), PointAnalyseType.POINT_PAGE_CHAIN_START, ChainPoint.PageDrawView, bundle2);
                                    LoadWorkerFrameworkEndState loadWorkerFrameworkEndState = new LoadWorkerFrameworkEndState(bundle2);
                                    Page page3 = AnonymousClass2.this.val$page;
                                    loadWorkerFrameworkEndState.setChainContext(page3 == null ? null : page3.getPageChainContext());
                                    ChainMidStartState chainMidStartState = new ChainMidStartState(bundle2);
                                    Page page4 = AnonymousClass2.this.val$page;
                                    chainMidStartState.setChainContext(page4 != null ? page4.getPageChainContext() : null);
                                    jsi.workerOnMessageReady();
                                    if (AppPrepareUtils.INSTANCE.isShellType(AnonymousClass2.this.val$app.getAppModel()) || AnonymousClass2.this.val$app.getAppModel().getDevMode() != 2) {
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        EventHelper.dispatchEventToWorker(jsi, EventConstants.EVENT_NAME_WORKER_INIT, jsonObject);
                                        eventCenterInstance.unregister(EventConstants.EVENT_WORKER_ON_MSG_READY, this);
                                        return true;
                                    }
                                    IIDEDispatcherPoint iIDEDispatcherPoint = (IIDEDispatcherPoint) ExtensionPoint.as(IIDEDispatcherPoint.class).node(AnonymousClass2.this.val$app).create();
                                    if (iIDEDispatcherPoint != null) {
                                        iIDEDispatcherPoint.sendMsg("miniapp.workerInit", jsonObject);
                                    }
                                    eventCenterInstance.unregister(EventConstants.EVENT_WORKER_ON_MSG_READY, this);
                                    return true;
                                }
                            });
                        }
                        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(AnonymousClass2.this.val$app.getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.LoadWorkerFramework, bundle);
                        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(AnonymousClass2.this.val$app.getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.PageLoadWorkerFramework, bundle2);
                        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(AnonymousClass2.this.val$app.getAppId(), PointAnalyseType.POINT_PAGE_CHAIN_START, ChainPoint.PageLoadWorkerFramework, bundle2);
                        LoadWorkerFrameworkStartState loadWorkerFrameworkStartState = new LoadWorkerFrameworkStartState(bundle2);
                        Page page3 = AnonymousClass2.this.val$page;
                        loadWorkerFrameworkStartState.setChainContext(page3 != null ? page3.getPageChainContext() : null);
                        jsi.loadJS("100000", FrameworkConstants.FRAMEWORK_JS);
                        AnonymousClass2.this.val$callback.sendSuccessResponse(new JsonObject());
                        jsi.setRenderReady();
                    }
                });
                return;
            }
            Bundle bundle3 = new Bundle();
            bundle3.putString(ChainPoint.PAGE_PATH, this.val$page.getPagePath());
            bundle3.putString(ChainPoint.PAGE_ID, this.val$page.getPageId());
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.val$app.getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.PageDrawView, bundle3);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.val$app.getAppId(), PointAnalyseType.POINT_PAGE_CHAIN_START, ChainPoint.PageDrawView, bundle3);
            if (AppPrepareUtils.INSTANCE.isShellType(this.val$app.getAppModel()) || this.val$app.getAppModel().getDevMode() != 2) {
                EventHelper.dispatchEventToWorker(jsi, EventConstants.EVENT_NAME_WORKER_INIT, jsonObject);
                this.val$callback.sendSuccessResponse(new JsonObject());
                jsi.setRenderReady();
            } else {
                IIDEDispatcherPoint iIDEDispatcherPoint = (IIDEDispatcherPoint) ExtensionPoint.as(IIDEDispatcherPoint.class).node(this.val$app).create();
                if (iIDEDispatcherPoint != null) {
                    iIDEDispatcherPoint.sendMsg("miniapp.workerInit", jsonObject);
                }
            }
        }
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        a.a(this, bridgeCallback, str, bool);
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void registerWorker(@BindingCallback BridgeCallback bridgeCallback, @BindingNode(Page.class) Page page, @BindingNode(App.class) final App app) {
        Context context = app.getAppContext().getContext();
        if (context == null) {
            bridgeCallback.sendFailResponse();
            return;
        }
        AppLoadResult appLoadResult = (AppLoadResult) app.getData(AppLoadResult.class);
        if (appLoadResult == null) {
            TmcLogger.e(TAG, "loadJS failed, appLoadResult is null");
            bridgeCallback.sendFailResponse();
            return;
        }
        IEngine engineProxy = app.getEngineProxy();
        try {
            try {
                if (DebugConfig.DEBUG_REFRESH) {
                    DebugConfig.DEBUG_REFRESH = false;
                    final JSI workerById = app.getEngineProxy().getEngineRouter().getWorkerById(app.getEngineProxy().getWorkerId());
                    final JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty(FrameworkConstants.GLOBAL_DATA_KEY_HOMEPAGE_URL, page.getPagePath());
                    String pageId = app.getPageByIndex(0).getPageId();
                    int childCount = app.getChildCount();
                    if (childCount > 0) {
                        for (int i11 = 0; i11 < childCount; i11++) {
                            if (app.getPageByIndex(i11).getPagePath() != null && app.getPageType(app.getPageByIndex(i11).getPagePath()) == 1) {
                                pageId = app.getPageByIndex(i11).getPageId();
                                break;
                            }
                        }
                    }
                    jsonObject.addProperty(FrameworkConstants.GLOBAL_DATA_KEY_HOMEPAGE_RENDER_ID, pageId);
                    jsonObject.addProperty(FrameworkConstants.GLOBAL_DATA_KEY_APP_JSON, new Gson().toJson(appLoadResult.appConfigModel));
                    try {
                        jsonObject.addProperty(TmcConstants.KEY_MINI_APPID, app.getAppId());
                        if (AppUtils.INSTANCE.checkUesCommonresApp(app.getAppModel().getMiniappSubtype())) {
                            jsonObject.addProperty(TmcConstants.KEY_MINI_COMMONRES_ID, app.getAppModel().getTemplateMiniappId());
                        }
                    } catch (Throwable unused) {
                    }
                    final IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(app);
                    if (eventCenterInstance != null) {
                        eventCenterInstance.register(EventConstants.EVENT_WORKER_ON_MSG_READY, new IEventSubscriber() { // from class: com.cloud.tmc.integration.internalBridge.RegisterWorkerBridge.1
                            @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
                            public boolean onEvent(IEvent iEvent) {
                                workerById.workerOnMessageReady();
                                if (AppPrepareUtils.INSTANCE.isShellType(app.getAppModel()) || app.getAppModel().getDevMode() != 2) {
                                    EventHelper.dispatchEventToWorker(workerById, EventConstants.EVENT_NAME_WORKER_INIT, jsonObject);
                                    eventCenterInstance.unregister(EventConstants.EVENT_WORKER_ON_MSG_READY, this);
                                    return true;
                                }
                                IIDEDispatcherPoint iIDEDispatcherPoint = (IIDEDispatcherPoint) ExtensionPoint.as(IIDEDispatcherPoint.class).node(app).create();
                                if (iIDEDispatcherPoint != null) {
                                    iIDEDispatcherPoint.sendMsg("miniapp.workerInit", jsonObject);
                                }
                                eventCenterInstance.unregister(EventConstants.EVENT_WORKER_ON_MSG_READY, this);
                                return true;
                            }
                        });
                    }
                    workerById.loadJS("100000", FrameworkConstants.FRAMEWORK_JS);
                    bridgeCallback.sendSuccessResponse(new JsonObject());
                    workerById.setRenderReady();
                } else {
                    ((IWorkerManagerFactory) TmcProxy.get(IWorkerManagerFactory.class)).createWorker(engineProxy, context, page, "", TmcEngineImpl.generateWorkerId(), new AnonymousClass2(app, page, appLoadResult, bridgeCallback));
                }
            } catch (Throwable th2) {
                th = th2;
                th.printStackTrace();
                bridgeCallback.sendFailResponse();
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
