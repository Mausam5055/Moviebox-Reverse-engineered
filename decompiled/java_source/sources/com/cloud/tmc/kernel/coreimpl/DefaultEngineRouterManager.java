package com.cloud.tmc.kernel.coreimpl;

import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.engine.EngineRouter;
import com.cloud.tmc.kernel.engine.EngineRouterManager;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultEngineRouterManager implements EngineRouterManager {
    Map<Long, EngineRouter> routerMap = new HashMap(16);

    @Override // com.cloud.tmc.kernel.engine.EngineRouterManager
    public EngineRouter get(long j11) {
        EngineRouter defaultEngineRouter = this.routerMap.containsKey(Long.valueOf(j11)) ? this.routerMap.get(Long.valueOf(j11)) : new DefaultEngineRouter();
        this.routerMap.put(Long.valueOf(j11), defaultEngineRouter);
        return defaultEngineRouter;
    }

    @Override // com.cloud.tmc.kernel.engine.EngineRouterManager
    @Nullable
    public EngineRouter getByWorkerId(String str) {
        for (Long l11 : this.routerMap.keySet()) {
            l11.longValue();
            EngineRouter engineRouter = this.routerMap.get(l11);
            if (engineRouter.getWorkerById(str) != null) {
                return engineRouter;
            }
        }
        return null;
    }

    @Override // com.cloud.tmc.kernel.engine.EngineRouterManager
    @Nullable
    public EngineRouter remove(EngineRouter engineRouter) {
        try {
            this.routerMap.remove(-1L);
        } catch (Throwable unused) {
        }
        for (Long l11 : this.routerMap.keySet()) {
            l11.longValue();
            if (engineRouter == this.routerMap.get(l11)) {
                return this.routerMap.remove(l11);
            }
        }
        return null;
    }
}
