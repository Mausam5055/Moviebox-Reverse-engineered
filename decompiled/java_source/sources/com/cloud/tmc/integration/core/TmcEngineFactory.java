package com.cloud.tmc.integration.core;

import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.core.IEngineFactory;

/* JADX INFO: loaded from: classes3.dex */
public class TmcEngineFactory implements IEngineFactory {
    public static final String ENGINE_TYPE_DEFAULT = "default";

    @Override // com.cloud.tmc.kernel.proxy.core.IEngineFactory
    public IEngine createEngine(String str, Node node, String str2) {
        return new TmcEngineImpl(str2, node);
    }

    @Override // com.cloud.tmc.kernel.proxy.core.IEngineFactory
    public String getEngineType(String str) {
        return "default";
    }
}
