package com.cloud.tmc.kernel.utils;

import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.node.NodeAware;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class NodeAwareUtils {
    public static final String TAG = "TmcKernel:ExtensionInvoker:Aware";

    public static void handleSetNode(Node node, Extension extension) {
        NodeAware nodeAware;
        Class nodeType;
        if (!(extension instanceof NodeAware) || (nodeType = (nodeAware = (NodeAware) extension).getNodeType()) == null) {
            return;
        }
        for (Node parentNode = node; parentNode != null; parentNode = parentNode.getParentNode()) {
            if (nodeType.isAssignableFrom(parentNode.getClass())) {
                nodeAware.setNode(new WeakReference(parentNode));
                return;
            }
        }
        TmcLogger.w("TmcKernel:ExtensionInvoker:Aware", "cannot find Wanted node type: " + nodeType + " with target node: " + node + " in extension " + extension);
    }
}
