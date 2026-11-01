package com.cloud.tmc.kernel.utils;

import android.os.Looper;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.bridge.RenderBridge;
import com.cloud.tmc.kernel.bridge.RenderCallContext;
import com.cloud.tmc.kernel.bridge.SendToRenderCallback;
import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.worker.JSI;
import com.cloud.tmc.kernel.worker.SendToWorkerCallback;
import com.google.gson.JsonObject;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class EngineUtils {
    private static final Set<String> RENDER_CALLBACK_LIST;
    private static final String TAG = "TmcEngine:EngineUtils";
    private static final Set<String> WORKER_BLACK_LIST;

    static {
        HashSet hashSet = new HashSet();
        WORKER_BLACK_LIST = hashSet;
        HashSet hashSet2 = new HashSet();
        RENDER_CALLBACK_LIST = hashSet2;
        hashSet.add("postMessage");
        hashSet.add("message");
        hashSet2.add("firePullToRefresh");
        hashSet2.add("pullIntercept");
        hashSet2.add("onShare");
    }

    public static String getUserAgentSuffix() {
        return "Tmc/";
    }

    @Nullable
    public static JSI getWorker(IEngine iEngine) {
        if (iEngine.isDestroyed() || iEngine.getEngineRouter() == null) {
            return null;
        }
        return iEngine.getEngineRouter().getWorkerById(null);
    }

    public static String getWorkerId(IRender iRender) {
        return "";
    }

    public static void postOnWorker(JSI jsi, Runnable runnable) {
        if (Looper.myLooper() == jsi.getMainHandler().getLooper()) {
            runnable.run();
        } else {
            jsi.getMainHandler().post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendPushCallBack(String str, String str2, SendToWorkerCallback sendToWorkerCallback) {
        if (sendToWorkerCallback != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("appId", str);
            jsonObject.addProperty("result", "2");
            jsonObject.addProperty("messageId", str2);
            sendToWorkerCallback.onCallBack(jsonObject);
        }
    }

    public static void sendPushWorkMessage(final IRender iRender, final JSI jsi, String str, JsonObject jsonObject, final SendToWorkerCallback sendToWorkerCallback) {
        if (iRender == null || iRender.getPage() == null) {
            TmcLogger.e(TAG, "sendPushWorkMessage but render or render.getPage() == null");
            return;
        }
        final String str2 = System.currentTimeMillis() + "";
        if (jsi == null) {
            jsi = iRender.getEngineProxy().getEngineRouter().getWorkerById(getWorkerId(iRender));
        }
        if (jsi == null) {
            TmcLogger.w(TAG, "sendPushWorkerMessage but worker == null!");
            sendPushCallBack(null, str2, sendToWorkerCallback);
        } else {
            iRender.getCurrentUri();
            iRender.getRenderId();
            postOnWorker(jsi, new Runnable() { // from class: com.cloud.tmc.kernel.utils.EngineUtils.2
                @Override // java.lang.Runnable
                public void run() {
                    if (jsi.isDestroyed()) {
                        TmcLogger.w(EngineUtils.TAG, "sendPushWorkerMessage but worker destroyed!");
                        EngineUtils.sendPushCallBack(null, str2, sendToWorkerCallback);
                        return;
                    }
                    final JsonObject jsonObject2 = new JsonObject();
                    TmcLogger.d(EngineUtils.TAG, " workerReady: " + jsi.isWorkerReady());
                    if (jsi.isWorkerReady()) {
                        jsi.sendJsonToWorker(jsonObject2, sendToWorkerCallback);
                    } else {
                        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(iRender.getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.CreateWorker);
                        jsi.registerWorkerReadyListener(new JSI.WorkerReadyListener() { // from class: com.cloud.tmc.kernel.utils.EngineUtils.2.1
                            @Override // com.cloud.tmc.kernel.worker.JSI.WorkerReadyListener
                            public void onWorkerReady() {
                                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(iRender.getAppId(), PointAnalyseType.POINT_CHAIN_END, ChainPoint.CreateWorker);
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                jsi.sendJsonToWorker(jsonObject2, sendToWorkerCallback);
                            }
                        });
                    }
                }
            });
        }
    }

    public static void sendPushWorkMessage(IRender iRender, String str, JsonObject jsonObject, SendToWorkerCallback sendToWorkerCallback) {
        sendPushWorkMessage(iRender, null, str, jsonObject, sendToWorkerCallback);
    }

    public static void sendToRender(IRender iRender, JSI jsi, String str, @Nullable JsonObject jsonObject, @Nullable final SendToRenderCallback sendToRenderCallback) {
        final boolean z10;
        if (iRender == null) {
            TmcLogger.w(TAG, "sendToRender but render == null!!");
            return;
        }
        if (jsi == null) {
            jsi = iRender.getEngineProxy().getEngineRouter().getWorkerById(getWorkerId(iRender));
        }
        if (jsi == null || WORKER_BLACK_LIST.contains(str)) {
            z10 = false;
        } else {
            z10 = !RENDER_CALLBACK_LIST.contains(str);
            sendPushWorkMessage(iRender, jsi, str, jsonObject, new SendToWorkerCallback() { // from class: com.cloud.tmc.kernel.utils.EngineUtils.1
                @Override // com.cloud.tmc.kernel.worker.SendToWorkerCallback
                public void onCallBack(JsonObject jsonObject2) {
                    SendToRenderCallback sendToRenderCallback2 = sendToRenderCallback;
                    if (sendToRenderCallback2 == null || !z10) {
                        return;
                    }
                    sendToRenderCallback2.onCallBack(jsonObject2);
                }
            });
        }
        if (iRender.getRenderBridge() == null) {
            TmcLogger.w(TAG, "sendToRender but render.getRenderBridge == null!!");
            return;
        }
        RenderCallContext.Builder builderParam = RenderCallContext.newBuilder(iRender).type("call").action(str).param(jsonObject);
        RenderBridge renderBridge = iRender.getRenderBridge();
        RenderCallContext renderCallContextBuild = builderParam.build();
        if (z10) {
            sendToRenderCallback = null;
        }
        renderBridge.sendToRender(renderCallContextBuild, sendToRenderCallback);
    }

    public static void sendToRender(IRender iRender, String str, @Nullable JsonObject jsonObject, @Nullable SendToRenderCallback sendToRenderCallback) {
        sendToRender(iRender, null, str, jsonObject, sendToRenderCallback);
    }
}
