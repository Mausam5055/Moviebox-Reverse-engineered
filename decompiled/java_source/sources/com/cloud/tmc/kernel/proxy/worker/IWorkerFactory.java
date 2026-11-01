package com.cloud.tmc.kernel.proxy.worker;

import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.kernel.worker.IWorker;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.defaultimpl.WorkerImp")
public interface IWorkerFactory extends Proxiable {
    IWorker createWorker(String str, Node node);

    int workerType();
}
