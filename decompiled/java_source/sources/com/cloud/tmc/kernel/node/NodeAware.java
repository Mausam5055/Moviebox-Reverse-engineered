package com.cloud.tmc.kernel.node;

import com.cloud.tmc.kernel.node.Node;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public interface NodeAware<T extends Node> {
    Class<T> getNodeType();

    void setNode(WeakReference<T> weakReference);
}
