package com.cloud.tmc.kernel.extension;

import com.cloud.tmc.kernel.extension.action.ActionMeta;
import com.cloud.tmc.kernel.node.Node;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface ExtensionManager {
    void enterNode(Node node);

    void exitNode(Node node);

    ActionMeta findActionMeta(String str);

    BridgeExtension getBridgeExtensionByAction(Node node, String str) throws IllegalAccessException, InstantiationException;

    BridgeExtension getBridgeExtensionByAction(String str);

    Extension getExtensionByName(Node node, String str);

    List<Extension> getExtensionByPoint(Node node, Class<? extends Extension> cls);

    List<Extension> getExtensionByPoint(Class<? extends Extension> cls);

    ExtensionRegistry getExtensionRegistry();

    <T extends Extension> void registerExtensionByPoint(Node node, Class<T> cls, T t11);
}
