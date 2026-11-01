package com.cloud.tmc.integration;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.chain.endState.ChainMidEndState;
import com.cloud.tmc.integration.chain.endState.DrawViewEndState;
import com.cloud.tmc.integration.chain.startState.DrawViewStartState;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.invoke.extension.ExtensionPoint;
import com.cloud.tmc.integration.performanceanalyse.screen.IScreenInspectProxy;
import com.cloud.tmc.integration.point.PermissionDialogPoint;
import com.cloud.tmc.integration.proxy.IUpdateLoadingStepProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.WarmupNode;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.integration.utils.JsonUtil;
import com.cloud.tmc.integration.utils.PrivacyUtils;
import com.cloud.tmc.integration.utils.TrackPointUtils;
import com.cloud.tmc.integration.utils.VersionUtils;
import com.cloud.tmc.kernel.bridge.IMsgDispatcher;
import com.cloud.tmc.kernel.bridge.NativeBridge;
import com.cloud.tmc.kernel.bridge.NativeCallContext;
import com.cloud.tmc.kernel.bridge.RenderCallContext;
import com.cloud.tmc.kernel.bridge.SendToNativeCallback;
import com.cloud.tmc.kernel.bridge.model.ProtocolData;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.coreimpl.eventcenter.DefaultEvent;
import com.cloud.tmc.kernel.engine.EngineRouter;
import com.cloud.tmc.kernel.engine.EngineRouterManager;
import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentEventCenter;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.utils.EngineUtils;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.kernel.worker.JSI;
import com.cloud.tmc.kernel.worker.SendToWorkerCallback;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.worker.WorkerCallContext;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.internal.LinkedTreeMap;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class MsgDispatcher implements IMsgDispatcher {
    private static final String TAG = "MsgDispatcher";

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkShowPermissionDialog(final App app, String str) {
        String interectCallbackId = app.getInterectCallbackId();
        if (interectCallbackId == null || !interectCallbackId.equals(str)) {
            return;
        }
        app.updateInterectCallbackId(null);
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.c
            @Override // java.lang.Runnable
            public final void run() {
                MsgDispatcher.lambda$checkShowPermissionDialog$0(app);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> void consumeTime(T t11, IRender iRender) {
        try {
            App app = (App) iRender.getPage().bubbleFindNode(App.class);
            ProtocolData.ConsumeTimeDataJson consumeTimeDataJson = ProtocolData.ConsumeTimeDataJson.parse((LinkedTreeMap) t11);
            IEventCenterFactory iEventCenterFactory = (IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class);
            IEvent iEventCreateEvent = iEventCenterFactory.createEvent(((Page) iRender.getPage()).getPageId() + "");
            HashMap map = new HashMap();
            map.put(IntegrationConstants.EVENT_DATA, consumeTimeDataJson.getDataJson().get(EventConstants.KEY_TIME));
            iEventCreateEvent.setData(map);
            IEventCenter eventCenterInstance = iEventCenterFactory.getEventCenterInstance(app);
            if (eventCenterInstance != null) {
                eventCenterInstance.postEvent(EventConstants.EVENT_CONSUME_TIME, iEventCreateEvent);
            }
        } catch (Exception unused) {
            TraceLog.i(OfflineConstantsKt.OFFLINE_TYPE_MINIAPP, "parse consumeTime from dataJson fail");
        }
    }

    @NonNull
    private String getActiveRenderId(@NonNull EngineRouter engineRouter) {
        App app;
        Page activePage;
        IRender topRender = engineRouter.getTopRender();
        return (topRender == null || (app = (App) topRender.getPage().bubbleFindNode(App.class)) == null || (activePage = app.getActivePage()) == null || activePage.getRender() == null) ? "" : activePage.getRender().getRenderId();
    }

    private boolean handleAsyncMsgFromWorker(final JSI jsi, JsonObject jsonObject) {
        Node node;
        NativeBridge bridge;
        TmcLogger.d(TAG, "handleJSMsgFroworker msg = " + jsonObject);
        if (jsi == null) {
            TmcLogger.e("handleAsyncMsgFromWorker error !!! (worker is null)");
            return false;
        }
        EngineRouter byWorkerId = ((EngineRouterManager) TmcProxy.get(EngineRouterManager.class)).getByWorkerId(jsi.getWorkerId());
        if (byWorkerId == null) {
            TmcLogger.e("handleAsyncMsgFromWorker error !!! (engineRouter is null)");
            return false;
        }
        ProtocolData protocolData = (ProtocolData) JsonUtil.INSTANCE.fromJson(jsonObject.toString(), ProtocolData.class);
        if (jsi.getWorkerId() != null && jsi.getWorkerId().startsWith(FrameworkConstants.TMP_WARMUP_WORKER_ID_PREFIX) && "DispatchEvent".equals(protocolData.getAbilityName()) && "native".equals(protocolData.getTarget())) {
            TmcLogger.e(TAG, "handleAsyncMsgFromWorker 预热模式");
            ProtocolData.DispatchEventDataJson dispatchEventDataJson = ProtocolData.DispatchEventDataJson.parse((LinkedTreeMap) protocolData.getDataJson());
            String eventName = dispatchEventDataJson.getEventName();
            IEventCenterFactory iEventCenterFactory = (IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class);
            IEvent iEventCreateEvent = iEventCenterFactory.createEvent(eventName);
            HashMap map = new HashMap();
            map.put(IntegrationConstants.EVENT_DATA, dispatchEventDataJson.getDataJson());
            iEventCreateEvent.setData(map);
            Node node2 = ((WarmupNode) TmcProxy.get(WarmupNode.class)).getNode(jsi.getWorkerId());
            if (node2 == null) {
                return false;
            }
            IEventCenter eventCenterInstance = iEventCenterFactory.getEventCenterInstance(node2);
            if (eventCenterInstance != null) {
                eventCenterInstance.postEvent(eventName, iEventCreateEvent);
            }
            return true;
        }
        IRender renderById = byWorkerId.getRenderById(!TextUtils.isEmpty(protocolData.getRenderId()) ? protocolData.getRenderId() : getActiveRenderId(byWorkerId));
        if (renderById == null) {
            TmcLogger.d(TAG, "handleMsgFromJs: 找不到 render，使用 worker 兜底分发");
            App app = jsi.getNode() instanceof App ? (App) jsi.getNode() : null;
            if (app == null) {
                TmcLogger.d(TAG, "handleMsgFromJs: render is null, app is null, jsapi 无法调用");
                return false;
            }
            if (!WorkerCallContext.ABILITY_API.equals(protocolData.getAbilityName())) {
                return false;
            }
            ProtocolData.ApiDataJson apiDataJson = ProtocolData.ApiDataJson.parse((LinkedTreeMap) protocolData.getDataJson());
            final String methodName = apiDataJson.getMethodName();
            String args = apiDataJson.getArgs();
            JsonObject asJsonObject = !TextUtils.isEmpty(args) ? JsonParser.parseString(args).getAsJsonObject() : null;
            final String callbackId = protocolData.getCallbackId();
            NativeCallContext nativeCallContextBuild = new NativeCallContext.Builder().name(methodName).params(asJsonObject).node(app).callbackId(callbackId).id("" + System.currentTimeMillis()).build();
            IEngine engineProxy = app.getEngineProxy();
            if (engineProxy == null || (bridge = engineProxy.getBridge()) == null) {
                return false;
            }
            final App app2 = app;
            bridge.sendToNative(nativeCallContextBuild, new SendToNativeCallback() { // from class: com.cloud.tmc.integration.MsgDispatcher.5
                @Override // com.cloud.tmc.kernel.bridge.SendToNativeCallback
                public void onCallback(JsonObject jsonObject2, boolean z10, boolean z11) {
                    TmcLogger.d(MsgDispatcher.TAG, "handleMsgFromJs: " + methodName + ", return " + jsonObject2);
                    HashMap<String, Object> map2 = new HashMap<>();
                    JsonObject jsonObject3 = new JsonObject();
                    map2.put("abilityName", "callback");
                    jsonObject3.addProperty("abilityName", "callback");
                    JsonObject jsonObject4 = new JsonObject();
                    HashMap map3 = new HashMap();
                    if (z10) {
                        map2.put(EventConstants.KEY_ACTION, "keepalive_active");
                        jsonObject3.addProperty(EventConstants.KEY_ACTION, "keepalive_active");
                    } else if (z11) {
                        map2.put(EventConstants.KEY_ACTION, "keepalive_close");
                        jsonObject3.addProperty(EventConstants.KEY_ACTION, "keepalive_close");
                    }
                    map2.put("callbackId", callbackId);
                    jsonObject3.addProperty("callbackId", callbackId);
                    map2.put("dataJson", map3);
                    jsonObject3.add("dataJson", jsonObject4);
                    map3.put("dataJson", String.valueOf(jsonObject2));
                    jsonObject4.addProperty("dataJson", String.valueOf(jsonObject2));
                    map3.put("callbackId", callbackId);
                    jsonObject4.addProperty("callbackId", callbackId);
                    if (jsi.workerType() == 1) {
                        jsi.sendJsonToWorker(map2, (SendToWorkerCallback) null);
                    } else if (jsi.workerType() == 3) {
                        jsi.sendJsonToWorker(jsonObject3, (SendToWorkerCallback) null);
                    }
                    MsgDispatcher.checkShowPermissionDialog(app2, callbackId);
                }

                @Override // com.cloud.tmc.kernel.bridge.SendToNativeCallback
                public void onCallback(HashMap<String, Object> map2, boolean z10, boolean z11) {
                    TmcLogger.d(MsgDispatcher.TAG, "handleMsgFromJs: " + methodName + ", return " + map2);
                    HashMap<String, Object> map3 = new HashMap<>();
                    JsonObject jsonObject2 = new JsonObject();
                    map3.put("abilityName", "callback");
                    jsonObject2.addProperty("abilityName", "callback");
                    JsonObject jsonObject3 = new JsonObject();
                    HashMap map4 = new HashMap();
                    if (z10) {
                        map3.put(EventConstants.KEY_ACTION, "keepalive_active");
                        jsonObject2.addProperty(EventConstants.KEY_ACTION, "keepalive_active");
                    } else if (z11) {
                        map3.put(EventConstants.KEY_ACTION, "keepalive_close");
                        jsonObject2.addProperty(EventConstants.KEY_ACTION, "keepalive_close");
                    }
                    map3.put("callbackId", callbackId);
                    jsonObject2.addProperty("callbackId", callbackId);
                    map3.put("dataJson", map4);
                    jsonObject2.add("dataJson", jsonObject3);
                    map4.put("dataJson", map2);
                    jsonObject3.addProperty("dataJson", String.valueOf(map2));
                    map4.put("callbackId", callbackId);
                    jsonObject3.addProperty("callbackId", callbackId);
                    if (jsi.workerType() == 1) {
                        jsi.sendJsonToWorker(map3, (SendToWorkerCallback) null);
                    } else if (jsi.workerType() == 3) {
                        jsi.sendJsonToWorker(jsonObject2, (SendToWorkerCallback) null);
                    }
                    MsgDispatcher.checkShowPermissionDialog(app2, callbackId);
                }
            });
            return true;
        }
        final App app3 = (App) renderById.getPage().bubbleFindNode(App.class);
        consumeTime(protocolData.getDataJson(), renderById);
        if (WorkerCallContext.ABILITY_API.equals(protocolData.getAbilityName())) {
            ProtocolData.ApiDataJson apiDataJson2 = ProtocolData.ApiDataJson.parse((LinkedTreeMap) protocolData.getDataJson());
            final String methodName2 = apiDataJson2.getMethodName();
            String args2 = apiDataJson2.getArgs();
            JsonObject asJsonObject2 = !TextUtils.isEmpty(args2) ? JsonParser.parseString(args2).getAsJsonObject() : null;
            final String callbackId2 = protocolData.getCallbackId();
            renderById.getEngineProxy().getBridge().sendToNative(new NativeCallContext.Builder().name(methodName2).params(asJsonObject2).node(renderById.getPage()).render(renderById).callbackId(callbackId2).id("" + System.currentTimeMillis()).build(), new SendToNativeCallback() { // from class: com.cloud.tmc.integration.MsgDispatcher.6
                @Override // com.cloud.tmc.kernel.bridge.SendToNativeCallback
                public void onCallback(JsonObject jsonObject2, boolean z10, boolean z11) {
                    TmcLogger.d(MsgDispatcher.TAG, "handleMsgFromJs: " + methodName2 + ", return " + jsonObject2);
                    HashMap<String, Object> map2 = new HashMap<>();
                    JsonObject jsonObject3 = new JsonObject();
                    map2.put("abilityName", "callback");
                    jsonObject3.addProperty("abilityName", "callback");
                    JsonObject jsonObject4 = new JsonObject();
                    HashMap map3 = new HashMap();
                    if (z10) {
                        map2.put(EventConstants.KEY_ACTION, "keepalive_active");
                        jsonObject3.addProperty(EventConstants.KEY_ACTION, "keepalive_active");
                    } else if (z11) {
                        map2.put(EventConstants.KEY_ACTION, "keepalive_close");
                        jsonObject3.addProperty(EventConstants.KEY_ACTION, "keepalive_close");
                    }
                    map2.put("callbackId", callbackId2);
                    jsonObject3.addProperty("callbackId", callbackId2);
                    map2.put("dataJson", map3);
                    jsonObject3.add("dataJson", jsonObject4);
                    map3.put("dataJson", String.valueOf(jsonObject2));
                    jsonObject4.addProperty("dataJson", String.valueOf(jsonObject2));
                    map3.put("callbackId", callbackId2);
                    jsonObject4.addProperty("callbackId", callbackId2);
                    if (jsi.workerType() == 1) {
                        jsi.sendJsonToWorker(map2, (SendToWorkerCallback) null);
                    } else if (jsi.workerType() == 3) {
                        jsi.sendJsonToWorker(jsonObject3, (SendToWorkerCallback) null);
                    }
                    MsgDispatcher.checkShowPermissionDialog(app3, callbackId2);
                }

                @Override // com.cloud.tmc.kernel.bridge.SendToNativeCallback
                public void onCallback(HashMap<String, Object> map2, boolean z10, boolean z11) {
                    TmcLogger.d(MsgDispatcher.TAG, "handleMsgFromJs: " + methodName2 + ", return " + map2);
                    HashMap<String, Object> map3 = new HashMap<>();
                    JsonObject jsonObject2 = new JsonObject();
                    map3.put("abilityName", "callback");
                    jsonObject2.addProperty("abilityName", "callback");
                    JsonObject jsonObject3 = new JsonObject();
                    HashMap map4 = new HashMap();
                    if (z10) {
                        map3.put(EventConstants.KEY_ACTION, "keepalive_active");
                        jsonObject2.addProperty(EventConstants.KEY_ACTION, "keepalive_active");
                    } else if (z11) {
                        map3.put(EventConstants.KEY_ACTION, "keepalive_close");
                        jsonObject2.addProperty(EventConstants.KEY_ACTION, "keepalive_close");
                    }
                    map3.put("callbackId", callbackId2);
                    jsonObject2.addProperty("callbackId", callbackId2);
                    map3.put("dataJson", map4);
                    jsonObject2.add("dataJson", jsonObject3);
                    map4.put("dataJson", map2);
                    jsonObject3.addProperty("dataJson", String.valueOf(map2));
                    map4.put("callbackId", callbackId2);
                    jsonObject3.addProperty("callbackId", callbackId2);
                    if (jsi.workerType() == 1) {
                        jsi.sendJsonToWorker(map3, (SendToWorkerCallback) null);
                    } else if (jsi.workerType() == 3) {
                        jsi.sendJsonToWorker(jsonObject2, (SendToWorkerCallback) null);
                    }
                    MsgDispatcher.checkShowPermissionDialog(app3, callbackId2);
                }
            });
            return true;
        }
        if ("DispatchEvent".equals(protocolData.getAbilityName()) && "native".equals(protocolData.getTarget())) {
            ProtocolData.DispatchEventDataJson dispatchEventDataJson2 = ProtocolData.DispatchEventDataJson.parse((LinkedTreeMap) protocolData.getDataJson());
            String eventName2 = dispatchEventDataJson2.getEventName();
            IEventCenterFactory iEventCenterFactory2 = (IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class);
            IEvent iEventCreateEvent2 = iEventCenterFactory2.createEvent(eventName2);
            HashMap map2 = new HashMap();
            map2.put(IntegrationConstants.EVENT_DATA, dispatchEventDataJson2.getDataJson());
            iEventCreateEvent2.setData(map2);
            if (jsi.getNode() instanceof AppManager) {
                node = app3;
                node = jsi.getNode();
            }
            node = app3;
            IEventCenter eventCenterInstance2 = iEventCenterFactory2.getEventCenterInstance(node);
            if (eventCenterInstance2 != null) {
                eventCenterInstance2.postEvent(eventName2, iEventCreateEvent2);
            }
        } else if (EventConstants.ADDRESS_RENDER.equals(protocolData.getTarget())) {
            if (EventConstants.EVENT_NAME_ON_PAGE_READY.equals(ProtocolData.DispatchEventDataJson.parse((LinkedTreeMap) protocolData.getDataJson()).getEventName())) {
                ((IScreenInspectProxy) TmcProxy.get(IScreenInspectProxy.class)).checkNow(app3, ((Page) renderById.getPage()).getPagePath());
                if (app3 != null) {
                    app3.setMiniAppLoadStatus(true);
                    if (app3.getAppContext() != null && app3.getAppContext().getContext() != null) {
                        PrivacyUtils.INSTANCE.updateNewUserStatus(app3.getAppContext().getContext(), app3.getAppId());
                    }
                }
                IEventCenter eventCenterInstance3 = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance((Page) renderById.getPage());
                if (eventCenterInstance3 != null) {
                    eventCenterInstance3.postEvent(EventConstants.EVENT_NAME_ON_PAGE_READY, new DefaultEvent(EventConstants.EVENT_NAME_ON_PAGE_READY));
                }
                Bundle bundle = new Bundle();
                bundle.putString("workerFromWarmup", jsi.fromWarmup() + "");
                bundle.putString("workerFromWarmupChannel", jsi.getWarmupChannel() + "");
                bundle.putString("renderFromWarmup", renderById.getFromWarmup() + "");
                bundle.putString("renderFromWarmupChannel", renderById.getWarmupChannel() + "");
                bundle.putString(TmcConstants.KEY_PAGE_RANDOM_ID, ((Page) renderById.getPage()).getPageRandomIdByGAId());
                Bundle bundle2 = new Bundle();
                bundle2.putString(ChainPoint.TYPE, "page");
                bundle2.putString(ChainPoint.CHAIN_ID, ((Page) renderById.getPage()).getApp().getStartParams().getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE));
                bundle2.putString(ChainPoint.PAGE_PATH, ((Page) renderById.getPage()).getPagePath());
                bundle2.putAll(bundle);
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app3 == null ? null : app3.getAppId(), PointAnalyseType.POINT_RENDER_T1, "页面打开", bundle);
                PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                String appId = app3 == null ? null : app3.getAppId();
                PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_CHAIN_END;
                performanceAnalyseProxy.record(appId, pointAnalyseType, ChainPoint.DrawView, bundle2);
                ((IUpdateLoadingStepProxy) TmcProxy.get(IUpdateLoadingStepProxy.class)).notifyUpdateLoadingStep(((Page) renderById.getPage()).getApp().getAppId(), LoadStepAction.STEP_FINISH_MINIAPP_LOAD);
                TrackPointUtils.pageRouteTrackEnd((Page) renderById.getPage());
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app3 == null ? null : app3.getAppId(), pointAnalyseType, ChainPoint.page, bundle2);
                Bundle bundle3 = new Bundle();
                bundle3.putString(ChainPoint.TYPE, "app");
                bundle3.putString(ChainPoint.CHAIN_ID, ((Page) renderById.getPage()).getApp().getStartParams().getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE));
                bundle3.putString(ChainPoint.PAGE_PATH, ((Page) renderById.getPage()).getPagePath());
                bundle3.putAll(bundle);
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app3 == null ? null : app3.getAppId(), pointAnalyseType, ChainPoint.app, bundle3);
                Bundle bundle4 = new Bundle();
                bundle4.putString("workerFromWarmup", jsi.fromWarmup() + "");
                bundle4.putString("workerFromWarmupChannel", jsi.getWarmupChannel() + "");
                bundle4.putString("renderFromWarmup", renderById.getFromWarmup() + "");
                bundle4.putString("renderFromWarmupChannel", renderById.getWarmupChannel() + "");
                bundle4.putString(ChainPoint.PAGE_PATH, ((Page) renderById.getPage()).getPagePath());
                bundle4.putString(ChainPoint.PAGE_ID, ((Page) renderById.getPage()).getPageId());
                bundle4.putString(ChainPoint.CHAIN_DRAW_END_TYPE, "1");
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app3 == null ? null : app3.getAppId(), PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.PageDrawView, bundle4);
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app3 == null ? null : app3.getAppId(), PointAnalyseType.POINT_PAGE_CHAIN_END, ChainPoint.PageDrawView, bundle4);
                if (renderById.getPage() != null && (renderById.getPage() instanceof Page)) {
                    bundle4.putString(TmcConstants.KEY_PAGE_RANDOM_ID, ((Page) renderById.getPage()).getPageRandomIdByGAId());
                    bundle4.putString(TmcConstants.KEY_PAGE_UNIQUE_ID, DeviceUtil.getGAId() + "_" + ((Page) renderById.getPage()).getPageId());
                    new DrawViewEndState(bundle4).setChainContext(((Page) renderById.getPage()).getPageChainContext());
                }
            } else {
                protocolData = protocolData;
            }
            if (TextUtils.isEmpty(protocolData.getRenderId())) {
                return false;
            }
            RenderCallContext.Builder builderParam = RenderCallContext.newBuilder(renderById).action("message").type("call").param(jsonObject);
            if (renderById.getRenderBridge() != null) {
                renderById.getRenderBridge().sendToRender(builderParam.build(), null);
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkShowPermissionDialog$0(App app) {
        ((PermissionDialogPoint) ExtensionPoint.as(PermissionDialogPoint.class).create()).privacyDialogDismiss(app.getAppId(), app.getStartToken());
    }

    @Override // com.cloud.tmc.kernel.bridge.IMsgDispatcher
    public boolean handleMsgFromRender(EngineRouter engineRouter, String str, String str2, String str3) {
        IEventCenter eventCenterInstance;
        final JsonObject asJsonObject = JsonParser.parseString(str3).getAsJsonObject();
        ProtocolData protocolData = (ProtocolData) JsonUtil.INSTANCE.fromJson(str3, ProtocolData.class);
        String abilityName = protocolData.getAbilityName();
        final JSI workerById = engineRouter.getWorkerById(str);
        final IRender renderById = engineRouter.getRenderById(!TextUtils.isEmpty(protocolData.getRenderId()) ? protocolData.getRenderId() : getActiveRenderId(engineRouter));
        consumeTime(protocolData.getDataJson(), renderById);
        Node nodeBubbleFindNode = null;
        if (WorkerCallContext.ABILITY_API.equals(protocolData.getAbilityName())) {
            ProtocolData.ApiDataJson apiDataJson = ProtocolData.ApiDataJson.parse((LinkedTreeMap) protocolData.getDataJson());
            final String methodName = apiDataJson.getMethodName();
            String args = apiDataJson.getArgs();
            JsonObject asJsonObject2 = TextUtils.isEmpty(args) ? null : JsonParser.parseString(args).getAsJsonObject();
            final String callbackId = protocolData.getCallbackId();
            renderById.getEngineProxy().getBridge().sendToNative(new NativeCallContext.Builder().name(methodName).params(asJsonObject2).node(renderById.getPage()).render(renderById).callbackId(callbackId).id("" + System.currentTimeMillis()).build(), new SendToNativeCallback() { // from class: com.cloud.tmc.integration.MsgDispatcher.1
                @Override // com.cloud.tmc.kernel.bridge.SendToNativeCallback
                public void onCallback(JsonObject jsonObject, boolean z10, boolean z11) {
                    TmcLogger.d(MsgDispatcher.TAG, "handleMsgFromJs: " + methodName + ", return " + jsonObject);
                    JsonObject jsonObject2 = new JsonObject();
                    jsonObject2.addProperty("abilityName", "callback");
                    JsonObject jsonObject3 = new JsonObject();
                    jsonObject2.addProperty("callbackId", callbackId);
                    jsonObject2.add("dataJson", jsonObject3);
                    jsonObject3.addProperty("dataJson", String.valueOf(jsonObject));
                    jsonObject3.addProperty("callbackId", callbackId);
                    IRender iRender = renderById;
                    if (iRender != null) {
                        RenderCallContext.Builder builderParam = RenderCallContext.newBuilder(iRender).action("message").type("call").param(jsonObject3);
                        if (renderById.getRenderBridge() != null) {
                            renderById.getRenderBridge().sendToRender(builderParam.build(), null);
                        }
                    }
                }

                @Override // com.cloud.tmc.kernel.bridge.SendToNativeCallback
                public void onCallback(HashMap<String, Object> map, boolean z10, boolean z11) {
                    TmcLogger.d(MsgDispatcher.TAG, "handleMsgFromJs: " + methodName + ", return " + map);
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty("abilityName", "callback");
                    JsonObject jsonObject2 = new JsonObject();
                    jsonObject.addProperty("callbackId", callbackId);
                    jsonObject.add("dataJson", jsonObject2);
                    jsonObject2.addProperty("dataJson", String.valueOf(map));
                    jsonObject2.addProperty("callbackId", callbackId);
                    IRender iRender = renderById;
                    if (iRender != null) {
                        RenderCallContext.Builder builderParam = RenderCallContext.newBuilder(iRender).action("message").type("call").param(jsonObject2);
                        if (renderById.getRenderBridge() != null) {
                            renderById.getRenderBridge().sendToRender(builderParam.build(), null);
                        }
                    }
                }
            });
            return false;
        }
        if (!"DispatchEvent".equals(abilityName)) {
            if (WorkerCallContext.ABILITY_LIFECYCLE.equals(abilityName)) {
                EngineUtils.postOnWorker(workerById, new Runnable() { // from class: com.cloud.tmc.integration.MsgDispatcher.3
                    @Override // java.lang.Runnable
                    public void run() {
                        workerById.sendJsonToWorker(asJsonObject, (SendToWorkerCallback) null);
                    }
                });
                return true;
            }
            if ("setData".equals(abilityName)) {
                EngineUtils.postOnWorker(workerById, new Runnable() { // from class: com.cloud.tmc.integration.MsgDispatcher.4
                    @Override // java.lang.Runnable
                    public void run() {
                        workerById.sendJsonToWorker(asJsonObject, (SendToWorkerCallback) null);
                    }
                });
                return false;
            }
            if (NativeComponentConstants.NATIVE_DISPATCH_COMPONENT.equals(abilityName)) {
                if (!"native".equals(protocolData.getTarget())) {
                    return false;
                }
                NativeComponentEventCenter.INSTANCE.dispatchToComponentCenter(renderById, ProtocolData.NativeComponentDataJson.parse((LinkedTreeMap) protocolData.getDataJson()));
                return false;
            }
            if (!NativeComponentConstants.NATIVE_DISPATCH_EVENT.equals(abilityName) || !"native".equals(protocolData.getTarget())) {
                return false;
            }
            NativeComponentEventCenter.INSTANCE.dispatchToEventCenter(renderById, ProtocolData.NativeComponentDataJson.parse((LinkedTreeMap) protocolData.getDataJson()));
            return false;
        }
        if ("native".equals(protocolData.getTarget())) {
            ProtocolData.DispatchEventDataJson dispatchEventDataJson = ProtocolData.DispatchEventDataJson.parse((LinkedTreeMap) protocolData.getDataJson());
            String eventName = dispatchEventDataJson.getEventName();
            IEventCenterFactory iEventCenterFactory = (IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class);
            IEvent iEventCreateEvent = iEventCenterFactory.createEvent(eventName);
            HashMap map = new HashMap();
            map.put(IntegrationConstants.EVENT_DATA, dispatchEventDataJson.getDataJson());
            iEventCreateEvent.setData(map);
            iEventCreateEvent.setRenderId(str2);
            if (!TextUtils.isEmpty(str2) && str2.startsWith(FrameworkConstants.TMP_WARMUP_RENDER_ID_PREFIX)) {
                nodeBubbleFindNode = ((WarmupNode) TmcProxy.get(WarmupNode.class)).getNode(str2);
            } else if (renderById != null) {
                nodeBubbleFindNode = renderById.getPage().bubbleFindNode(App.class);
            }
            if (nodeBubbleFindNode != null && (eventCenterInstance = iEventCenterFactory.getEventCenterInstance(nodeBubbleFindNode)) != null) {
                eventCenterInstance.postEvent(eventName, iEventCreateEvent);
            }
        } else {
            try {
                if (EventConstants.ADDRESS_RENDER.equals(protocolData.getTarget()) && renderById != null) {
                    String eventName2 = ProtocolData.DispatchEventDataJson.parse((LinkedTreeMap) protocolData.getDataJson()).getEventName();
                    if (EventConstants.EVENT_NAME_SLAVE_LOADED.equals(eventName2) || EventConstants.EVENT_NAME_SLAVE_ATTACHED.equals(eventName2)) {
                        IEventCenterFactory iEventCenterFactory2 = (IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class);
                        IEvent iEventCreateEvent2 = iEventCenterFactory2.createEvent(eventName2);
                        IEventCenter eventCenterInstance2 = iEventCenterFactory2.getEventCenterInstance(renderById.getPage());
                        if (eventCenterInstance2 != null) {
                            eventCenterInstance2.postEvent(eventName2, iEventCreateEvent2);
                        }
                    }
                    if (EventConstants.EVENT_NAME_SLAVE_LOADED.equals(eventName2) && renderById.getPage() != null && (renderById.getPage() instanceof Page)) {
                        Bundle bundle = new Bundle();
                        bundle.putString("workerFromWarmup", workerById.fromWarmup() + "");
                        bundle.putString("workerFromWarmupChannel", workerById.getWarmupChannel() + "");
                        bundle.putString("renderFromWarmup", renderById.getFromWarmup() + "");
                        bundle.putString("renderFromWarmupChannel", renderById.getWarmupChannel() + "");
                        bundle.putString(ChainPoint.PAGE_PATH, ((Page) renderById.getPage()).getPagePath());
                        bundle.putString(ChainPoint.PAGE_ID, ((Page) renderById.getPage()).getPageId());
                        bundle.putString(TmcConstants.KEY_PAGE_RANDOM_ID, ((Page) renderById.getPage()).getPageRandomIdByGAId());
                        bundle.putString(TmcConstants.KEY_PAGE_UNIQUE_ID, DeviceUtil.getGAId() + "_" + ((Page) renderById.getPage()).getPageId());
                        new ChainMidEndState(bundle).setChainContext(((Page) renderById.getPage()).getPageChainContext());
                        new DrawViewStartState(bundle).setChainContext(((Page) renderById.getPage()).getPageChainContext());
                    }
                    if (EventConstants.EVENT_NAME_SLAVE_ATTACHED.equals(eventName2)) {
                        boolean zIsSupportH5PageStack = VersionUtils.INSTANCE.isSupportH5PageStack(VersionUtils.LAST_SUPPORT_H5_PAGE_STACK_FRAMEWORK_VERSION, ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getFrameworkVersion());
                        TmcLogger.d("pom", "ret:" + Boolean.valueOf(zIsSupportH5PageStack));
                        if (zIsSupportH5PageStack && renderById.getPage() != null && (renderById.getPage() instanceof Page) && ((Page) renderById.getPage()).getApp() != null) {
                            IEventCenterFactory iEventCenterFactory3 = (IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class);
                            IEvent iEventCreateEvent3 = iEventCenterFactory3.createEvent(EventConstants.EVENT_NAME_RESEND_H5_PAGE_STACK);
                            IEventCenter eventCenterInstance3 = iEventCenterFactory3.getEventCenterInstance(((Page) renderById.getPage()).getApp());
                            if (eventCenterInstance3 != null) {
                                eventCenterInstance3.postEvent("resendH5PageStack_" + ((Page) renderById.getPage()).getApp().getAppId(), iEventCreateEvent3);
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "", th2);
            }
            EngineUtils.postOnWorker(workerById, new Runnable() { // from class: com.cloud.tmc.integration.MsgDispatcher.2
                @Override // java.lang.Runnable
                public void run() {
                    workerById.sendJsonToWorker(asJsonObject, (SendToWorkerCallback) null);
                }
            });
        }
        return true;
    }

    @Override // com.cloud.tmc.kernel.bridge.IMsgDispatcher
    public boolean handleMsgFromWorker(JSI jsi, JsonObject jsonObject) {
        TmcLogger.d(TAG, "handleMsgFroworker msg = " + jsonObject);
        if (jsonObject == null) {
            return false;
        }
        return handleAsyncMsgFromWorker(jsi, jsonObject);
    }
}
