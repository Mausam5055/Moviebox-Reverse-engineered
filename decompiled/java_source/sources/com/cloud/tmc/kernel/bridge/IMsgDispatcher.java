package com.cloud.tmc.kernel.bridge;

import com.cloud.tmc.kernel.engine.EngineRouter;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.kernel.worker.JSI;
import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public interface IMsgDispatcher extends Proxiable {
    boolean handleMsgFromRender(EngineRouter engineRouter, String str, String str2, String str3);

    boolean handleMsgFromWorker(JSI jsi, JsonObject jsonObject);
}
