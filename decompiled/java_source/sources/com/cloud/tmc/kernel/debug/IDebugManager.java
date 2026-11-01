package com.cloud.tmc.kernel.debug;

import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
public interface IDebugManager extends Proxiable {
    void addObserver(Object obj, DebugCallback debugCallback);

    void notifyObserver();

    void removeObserver(Object obj);
}
