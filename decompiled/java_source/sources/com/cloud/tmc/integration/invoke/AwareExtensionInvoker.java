package com.cloud.tmc.integration.invoke;

import com.cloud.tmc.kernel.executor.IExecutorService;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.scheduler.Schedulable;
import com.cloud.tmc.kernel.utils.NodeAwareUtils;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public class AwareExtensionInvoker extends ExtensionInvoker {
    public static final String TAG = "TmcKernel:ExtensionInvoker:Aware";

    public AwareExtensionInvoker(Node node, ExtensionInvoker.InvokeCallback invokeCallback) {
        super(node, invokeCallback);
    }

    @Override // com.cloud.tmc.integration.invoke.ExtensionInvoker
    protected ExtensionInvoker.InvokeResult onInvoke(Object obj, Method method, Object[] objArr) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Extension extension = this.targetExtensions.get(0);
        NodeAwareUtils.handleSetNode(this.targetNode, extension);
        if (extension instanceof Schedulable) {
            ((Schedulable) extension).setExecutorFactory((IExecutorService) TmcProxy.get(IExecutorService.class));
        }
        TmcLogger.debug("TmcKernel:ExtensionInvoker:Aware", "extension " + extension.getClass() + " method " + method + " cost " + (System.currentTimeMillis() - jCurrentTimeMillis));
        return ExtensionInvoker.InvokeResult.proceed();
    }
}
