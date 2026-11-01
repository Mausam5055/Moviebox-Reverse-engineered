package com.cloud.tmc.integration.invoke;

import com.cloud.tmc.kernel.security.AccessController;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultExtensionInvokerFactory implements ExtensionInvokerFactory {
    @Override // com.cloud.tmc.integration.invoke.ExtensionInvokerFactory
    public ExtensionInvoker createPermissionExtensionInvoker(AccessController accessController, ExtensionInvoker extensionInvoker) {
        return new SecurityExtensionInvoker(accessController, extensionInvoker);
    }

    @Override // com.cloud.tmc.integration.invoke.ExtensionInvokerFactory
    public ExtensionInvoker createScheduleExtensionInvoker(ExtensionInvoker extensionInvoker) {
        return new ScheduleExtensionInvoker(extensionInvoker);
    }
}
