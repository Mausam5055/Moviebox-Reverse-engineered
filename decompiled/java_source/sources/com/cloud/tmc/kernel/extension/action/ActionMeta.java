package com.cloud.tmc.kernel.extension.action;

import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.security.Guard;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public class ActionMeta {
    public Method actionMethod;
    public String actionName;
    public Class<? extends BridgeExtension> bridgeExtensionClazz;
    public Guard guard;
    public Class returnType;

    public String toString() {
        return "ActionMeta{actionName='" + this.actionName + "', bridgeExtensionClazz=" + this.bridgeExtensionClazz + '}';
    }
}
