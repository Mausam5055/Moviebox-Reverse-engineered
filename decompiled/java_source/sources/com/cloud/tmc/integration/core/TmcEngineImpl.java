package com.cloud.tmc.integration.core;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.HandlerThread;
import com.cloud.tmc.integration.model.WorkerStore;
import com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.coreimpl.BaseEngineImpl;
import com.cloud.tmc.kernel.engine.EngineInitCallback;
import com.cloud.tmc.kernel.engine.EngineRouterManager;
import com.cloud.tmc.kernel.engine.EngineSetupCallback;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.model.CreateParams;
import com.cloud.tmc.kernel.model.InitParams;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.perf.IPerformanceAndErrorTracker;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.worker.JSI;
import com.cloud.tmc.render.SystemRender;
import com.cloud.tmc.worker.WorkerManager;
import com.google.gson.JsonObject;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class TmcEngineImpl extends BaseEngineImpl {
    private static final String TAG = "TmcEngineImpl";
    private static final String UC_INIT_FAIL = "uc core init fail";
    private static final String UC_INIT_FAIL_CODE = "-9001";
    private static final String UC_INIT_SUCCESS = "uc init success";
    private static final AtomicInteger sWorkerIdCounter = new AtomicInteger(0);
    private HandlerThread mRenderChannelThread;
    private JSI mWorker;

    public TmcEngineImpl(String str, Node node) {
        super(str, node);
        this.mWorker = null;
        HandlerThread handlerThread = new HandlerThread("TmcRenderChannelThread");
        this.mRenderChannelThread = handlerThread;
        handlerThread.start();
    }

    private JSI createJSIWorker(App app, String str, String str2) {
        long startToken = app != null ? app.getStartToken() : -1L;
        WorkerManager workerManager = null;
        try {
            WorkerManager workerManager2 = new WorkerManager();
            try {
                workerManager2.setRenderReady();
                workerManager2.setWorkerId(str2);
                ((EngineRouterManager) TmcProxy.get(EngineRouterManager.class)).get(startToken).registerWorker(str2, workerManager2);
                return workerManager2;
            } catch (Exception e11) {
                e = e11;
                workerManager = workerManager2;
                TmcLogger.e(TAG, e);
                new HashMap().put("errorMessage", e.getMessage());
                return workerManager;
            }
        } catch (Exception e12) {
            e = e12;
        }
    }

    public static String generateWorkerId() {
        return sWorkerIdCounter.addAndGet(1) + "";
    }

    @Override // com.cloud.tmc.kernel.engine.IEngine
    public IRender createRender(Activity activity, Node node, CreateParams createParams) {
        ((IPerformanceAndErrorTracker) TmcProxy.get(IPerformanceAndErrorTracker.class)).sendPerfStageLog("Render", "Start create render");
        new JsonObject();
        return new SystemRender(activity, this, node, createParams);
    }

    @Override // com.cloud.tmc.kernel.engine.IEngine
    public JSI createWorker(Context context, Node node, String str) {
        App app;
        ((IPerformanceAndErrorTracker) TmcProxy.get(IPerformanceAndErrorTracker.class)).sendPerfStageLog("Worker", "register worker");
        new JsonObject();
        String strGenerateWorkerId = generateWorkerId();
        if (node != null) {
            app = (App) node.bubbleFindNode(App.class);
            app.setData(WorkerStore.class, new WorkerStore(strGenerateWorkerId));
        } else {
            app = null;
        }
        JSI jsiCreateJSIWorker = createJSIWorker(app, str, strGenerateWorkerId);
        this.mWorker = jsiCreateJSIWorker;
        return jsiCreateJSIWorker;
    }

    @Override // com.cloud.tmc.kernel.engine.IEngine
    public String getInstanceId() {
        return null;
    }

    @Override // com.cloud.tmc.kernel.coreimpl.BaseEngineImpl, com.cloud.tmc.kernel.engine.IEngine
    public IRender getTopRender() {
        return null;
    }

    @Override // com.cloud.tmc.kernel.engine.IEngine
    public String getWorkerId() {
        JSI jsi = this.mWorker;
        return jsi == null ? "" : jsi.getWorkerId();
    }

    @Override // com.cloud.tmc.kernel.coreimpl.BaseEngineImpl, com.cloud.tmc.kernel.engine.IEngine
    public void init(InitParams initParams, EngineInitCallback engineInitCallback) {
        super.init(initParams, engineInitCallback);
        new JsonObject();
        engineInitCallback.initResult(true, UC_INIT_SUCCESS);
    }

    @Override // com.cloud.tmc.kernel.engine.IEngine
    public boolean isReady() {
        return false;
    }

    @Override // com.cloud.tmc.kernel.coreimpl.BaseEngineImpl
    protected void onDestroy() {
        JSI jsi = this.mWorker;
        if (jsi != null) {
            if (jsi.fromWarmup().booleanValue()) {
                ((IInnerWorkerPool) TmcProxy.get(IInnerWorkerPool.class)).removeWorker(this.mWorker.getWorkerId());
            } else {
                this.mWorker.destroy();
            }
        }
        super.onDestroy();
        try {
            this.mRenderChannelThread.quitSafely();
        } catch (Throwable th2) {
            TmcLogger.e("mRenderChannelThread quit error", th2);
        }
    }

    @Override // com.cloud.tmc.kernel.engine.IEngine
    public void setup(Bundle bundle, Bundle bundle2, EngineSetupCallback engineSetupCallback) {
    }

    @Override // com.cloud.tmc.kernel.engine.IEngine
    public void updateWorker(JSI jsi) {
        this.mWorker = jsi;
    }
}
