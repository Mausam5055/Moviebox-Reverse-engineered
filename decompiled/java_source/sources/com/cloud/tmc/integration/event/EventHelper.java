package com.cloud.tmc.integration.event;

import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.bridge.RenderCallContext;
import com.cloud.tmc.kernel.bridge.model.ProtocolData;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.RenderAnalyseType;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.worker.JSI;
import com.cloud.tmc.kernel.worker.SendToWorkerCallback;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class EventHelper {
    private EventHelper() {
    }

    public static void dispatchApiCallbackToWorker(JSI jsi, String str, JsonObject jsonObject) {
        HashMap<String, Object> map = new HashMap<>();
        HashMap map2 = new HashMap();
        JsonObject jsonObject2 = new JsonObject();
        map2.put("dataJson", GsonUtils.toJson(jsonObject));
        jsonObject2.addProperty("dataJson", GsonUtils.toJson(jsonObject));
        map2.put("callbackId", str);
        jsonObject2.addProperty("callbackId", str);
        map.put("abilityName", "callback");
        map.put("target", EventConstants.ADDRESS_WORKER);
        map.put(EventConstants.KEY_SOURCE, "native");
        map.put(EventConstants.KEY_TIME, Long.valueOf(System.currentTimeMillis()));
        map.put("callbackId", str);
        map.put("dataJson", map2);
        ProtocolData protocolData = new ProtocolData("callback", EventConstants.ADDRESS_WORKER, "native", System.currentTimeMillis(), str, jsonObject2);
        if (jsonObject != null && jsonObject.has("renderId")) {
            map.put("renderId", jsonObject.get("renderId").getAsString());
            protocolData.setRenderId(jsonObject.get("renderId").getAsString());
        }
        JsonObject asJsonObject = JsonParser.parseString(new Gson().toJson(protocolData)).getAsJsonObject();
        if (jsonObject != null && jsonObject.has(EventConstants.KEY_ACTION)) {
            map.put(EventConstants.KEY_ACTION, jsonObject.get(EventConstants.KEY_ACTION).getAsString());
            asJsonObject.addProperty(EventConstants.KEY_ACTION, jsonObject.get(EventConstants.KEY_ACTION).getAsString());
        }
        if (jsi == null) {
            return;
        }
        if (jsi.workerType() == 1) {
            jsi.sendJsonToWorker(map, (SendToWorkerCallback) null);
        } else if (jsi.workerType() == 3) {
            jsi.sendJsonToWorker(asJsonObject, (SendToWorkerCallback) null);
        }
    }

    public static void dispatchEventToRender(IRender iRender, String str, JsonObject jsonObject) {
        TmcLogger.d("subPkg", "dispatchEventToRender recive");
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty(EventConstants.KEY_EVENT_NAME, str);
        jsonObject2.addProperty("dataJson", GsonUtils.toJson(jsonObject));
        JsonObject asJsonObject = JsonParser.parseString(new Gson().toJson(new ProtocolData("DispatchEvent", EventConstants.ADDRESS_RENDER, "native", System.currentTimeMillis(), "", jsonObject2))).getAsJsonObject();
        if (iRender == null) {
            TmcLogger.d("subPkg", "dispatchEventToRender recive render is null");
            return;
        }
        TmcLogger.d("subPkg", "dispatchEventToRender recive render un null");
        Node page = iRender.getPage();
        App app = page instanceof Page ? ((Page) page).getApp() : null;
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app == null ? null : app.getAppId(), RenderAnalyseType.LOAD_URL, GsonUtils.toJson(asJsonObject));
        RenderCallContext.Builder builderParam = RenderCallContext.newBuilder(iRender).action("message").type("call").param(asJsonObject);
        if (iRender.getRenderBridge() == null) {
            TmcLogger.d("subPkg", "dispatchEventToRender recive getRenderBridge is null");
        } else {
            TmcLogger.d("subPkg", "dispatchEventToRender recive getRenderBridge un null");
            iRender.getRenderBridge().sendToRender(builderParam.build(), null);
        }
    }

    public static void dispatchEventToWorker(JSI jsi, String str, JsonObject jsonObject) {
        HashMap<String, Object> map = new HashMap<>();
        HashMap map2 = new HashMap();
        JsonObject jsonObject2 = new JsonObject();
        map2.put(EventConstants.KEY_EVENT_NAME, str);
        jsonObject2.addProperty(EventConstants.KEY_EVENT_NAME, str);
        map2.put("dataJson", GsonUtils.toJson(jsonObject));
        jsonObject2.addProperty("dataJson", GsonUtils.toJson(jsonObject));
        map.put("abilityName", "DispatchEvent");
        map.put("target", EventConstants.ADDRESS_WORKER);
        map.put(EventConstants.KEY_SOURCE, "native");
        map.put(EventConstants.KEY_TIME, Long.valueOf(System.currentTimeMillis()));
        map.put("callbackId", "");
        map.put("dataJson", map2);
        ProtocolData protocolData = new ProtocolData("DispatchEvent", EventConstants.ADDRESS_WORKER, "native", System.currentTimeMillis(), "", jsonObject2);
        if (jsonObject != null && jsonObject.has("renderId")) {
            map.put("renderId", jsonObject.get("renderId").getAsString());
            protocolData.setRenderId(jsonObject.get("renderId").getAsString());
        }
        JsonObject asJsonObject = JsonParser.parseString(new Gson().toJson(protocolData)).getAsJsonObject();
        if (jsi == null) {
            return;
        }
        if (jsi.workerType() == 1) {
            jsi.sendJsonToWorker(map, (SendToWorkerCallback) null);
        } else if (jsi.workerType() == 3) {
            jsi.sendJsonToWorker(asJsonObject, (SendToWorkerCallback) null);
        }
    }

    public static void dispatchLifecycleToWorker(JSI jsi, String str, JsonObject jsonObject) {
        HashMap<String, Object> map = new HashMap<>();
        HashMap map2 = new HashMap();
        JsonObject jsonObject2 = new JsonObject();
        map2.put(EventConstants.KEY_EVENT_NAME, str);
        jsonObject2.addProperty(EventConstants.KEY_EVENT_NAME, str);
        map2.put("dataJson", GsonUtils.toJson(jsonObject));
        jsonObject2.addProperty("dataJson", GsonUtils.toJson(jsonObject));
        map.put("abilityName", EventConstants.ABILITY_NAME_LIFECYCLE);
        map.put("target", EventConstants.ADDRESS_WORKER);
        map.put(EventConstants.KEY_SOURCE, "native");
        map.put(EventConstants.KEY_TIME, Long.valueOf(System.currentTimeMillis()));
        map.put("callbackId", "");
        map.put("dataJson", map2);
        ProtocolData protocolData = new ProtocolData(EventConstants.ABILITY_NAME_LIFECYCLE, EventConstants.ADDRESS_WORKER, "native", System.currentTimeMillis(), "", jsonObject2);
        if (jsonObject != null && jsonObject.has("renderId")) {
            map.put("renderId", jsonObject.get("renderId").getAsString());
            protocolData.setRenderId(jsonObject.get("renderId").getAsString());
        }
        JsonObject asJsonObject = JsonParser.parseString(new Gson().toJson(protocolData)).getAsJsonObject();
        if (jsi == null) {
            return;
        }
        if (jsi.workerType() == 1) {
            jsi.sendJsonToWorker(map, (SendToWorkerCallback) null);
        } else if (jsi.workerType() == 3) {
            jsi.sendJsonToWorker(asJsonObject, (SendToWorkerCallback) null);
        }
    }
}
