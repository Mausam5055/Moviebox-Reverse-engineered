package com.cloud.tmc.kernel.proxy.core;

import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
public interface IEngineFactory extends Proxiable {
    IEngine createEngine(String str, Node node, String str2);

    String getEngineType(String str);
}
