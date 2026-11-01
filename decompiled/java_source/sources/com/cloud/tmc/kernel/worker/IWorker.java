package com.cloud.tmc.kernel.worker;

import com.google.gson.JsonObject;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public interface IWorker {
    void create();

    void destroy();

    void execute(JsonObject jsonObject);

    void execute(String str);

    void execute(HashMap<String, Object> map);

    int getActivityRuntimes();

    Object getData(String str);

    Boolean isDestroy();

    Boolean isLoad();

    void loadJS(String str);

    void loadScript(String str);

    void registerObject(String str, Map<String, String> map);

    void registerObjects(Map<String, Map<String, String>> map);

    void registerWorkLifeCycle(WorkerLifeCycle workerLifeCycle);

    void registerWorkerCallback(WorkerCallback workerCallback);

    void setData(String str, Object obj);

    int type();
}
