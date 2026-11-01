package com.cloud.tmc.kernel.worker;

import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.node.Node;
import com.google.gson.JsonObject;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public interface JSI {

    public interface WorkerReadyListener {
        void onWorkerReady();
    }

    void debugRefresh();

    void destroy();

    void execJsCallback(JsonObject jsonObject, String str);

    Boolean firstGetPackageFileStatus();

    Boolean fromWarmup();

    void getFirstPackageFileSuccess(String str);

    String getFrameworkVersion();

    @Nullable
    Node getNode();

    int getWarmupChannel();

    Handler getWorkerHandler();

    String getWorkerId();

    boolean isDestroyed();

    Boolean isRenderProcessGone();

    boolean isWorkerReady();

    void loadJS(String str, String str2);

    @Deprecated
    void postMessage(String str, SendToWorkerCallback sendToWorkerCallback);

    void registerObject(String str, Map<String, String> map);

    void registerObjects(Map<String, Map<String, String>> map);

    void registerWorkerReadyListener(WorkerReadyListener workerReadyListener);

    void sendJsonToWorker(JsonObject jsonObject, SendToWorkerCallback sendToWorkerCallback);

    void sendJsonToWorker(String str, String str2, SendToWorkerCallback sendToWorkerCallback);

    void sendJsonToWorker(HashMap<String, Object> map, SendToWorkerCallback sendToWorkerCallback);

    @Deprecated
    void sendMessageToWorker(String str, String str2, String str3, SendToWorkerCallback sendToWorkerCallback);

    void setAppId(String str);

    void setCommonresId(@Nullable String str);

    void setFrameworkVersion(String str);

    void setNode(Node node);

    void setRenderReady();

    void setStartupParams(Bundle bundle);

    void setWarmup(int i11);

    void setWarmupSuccess();

    void setWorkerId(String str);

    Boolean warmupSuccess();

    void workerOnMessageReady();

    int workerType();
}
