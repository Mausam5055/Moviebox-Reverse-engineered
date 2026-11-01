package com.cloud.tmc.kernel.extension;

import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.extension.action.ActionMeta;
import com.cloud.tmc.kernel.extension.registry.ExtensionMetaInfo;
import com.cloud.tmc.kernel.node.Scope;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface ExtensionRegistry {
    ActionMeta findActionMeta(String str);

    @Nullable
    List<Class<? extends Extension>> findExtensions(String str);

    int getActionCount();

    Class<? extends Extension> getExtensionClass(String str);

    Class<? extends Scope> getScope(Class<? extends Extension> cls);

    Class<? extends Scope> getScope(String str);

    void register(ExtensionMetaInfo extensionMetaInfo);

    void register(Class<? extends Extension> cls);

    void register(Class<? extends Extension> cls, Class<? extends Scope> cls2);

    void unRegister(List<String> list);
}
