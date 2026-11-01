package com.cloud.tmc.kernel.engine;

import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.worker.JSI;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface EngineRouter extends Proxiable {

    public interface IRenderInitListener {
        void onIRenderInit(IRender iRender);
    }

    void destroy();

    @Nullable
    List<IRender> getRegisteredRender();

    @Nullable
    IRender getRenderById(String str);

    IRender getTopRender();

    @Nullable
    JSI getWorkerById(@Nullable String str);

    void registerRender(String str, IRender iRender);

    void registerRenderInitListener(String str, IRenderInitListener iRenderInitListener);

    void registerWorker(JSI jsi);

    void registerWorker(String str, JSI jsi);

    void resetRenderToTop(IRender iRender);

    void unRegisterRender(String str);

    void unRegisterWorker(String str);
}
