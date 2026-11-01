package com.cloud.tmc.kernel.engine;

import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
public interface EngineRouterManager extends Proxiable {
    EngineRouter get(long j11);

    EngineRouter getByWorkerId(String str);

    EngineRouter remove(EngineRouter engineRouter);
}
