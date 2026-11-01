package com.cloud.tmc.integration.performanceanalyse.screen;

import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.worker.JSI;

/* JADX INFO: loaded from: classes3.dex */
public interface IScreenInspectProxy extends Proxiable {
    void appDestroy(App app);

    void checkNow(App app, String str);

    void destroy(App app, String str);

    void initConfig(float f11, Long l11, int[] iArr);

    void registerRender(IRender iRender);

    void registerWorker(App app, JSI jsi);

    void start(App app, String str);
}
