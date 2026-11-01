package com.cloud.tmc.kernel.remote.internal;

import android.os.RemoteException;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.remote.RemoteCallArgs;
import com.cloud.tmc.kernel.remote.RemoteCallResult;
import com.cloud.tmc.kernel.remote.RemoteControlManagement;
import com.cloud.tmc.kernel.remote.RemoteController;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultRemoteController implements RemoteController {
    private RemoteControlManagement mRemoteControlManagement;

    @Override // com.cloud.tmc.kernel.remote.RemoteController
    public void bindExtensionManager(ExtensionManager extensionManager) {
    }

    protected RemoteControlManagement createRemoteControlManagement() {
        return new DefaultRemoteControlManagement();
    }

    @Override // com.cloud.tmc.kernel.remote.RemoteController
    public synchronized RemoteControlManagement getRemoteControlManagement() {
        try {
            if (this.mRemoteControlManagement == null) {
                this.mRemoteControlManagement = createRemoteControlManagement();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.mRemoteControlManagement;
    }

    @Override // com.cloud.tmc.kernel.remote.RemoteController
    public boolean isRemoteCallExtension(Extension extension, Method method) {
        return getRemoteControlManagement().isRemoteExtension(extension, method);
    }

    @Override // com.cloud.tmc.kernel.remote.RemoteController
    public RemoteCallResult remoteCall(RemoteCallArgs remoteCallArgs) throws RemoteException {
        return null;
    }

    @Override // com.cloud.tmc.kernel.remote.RemoteController
    public synchronized void setRemoteControlManagement(RemoteControlManagement remoteControlManagement) {
        this.mRemoteControlManagement = remoteControlManagement;
    }
}
