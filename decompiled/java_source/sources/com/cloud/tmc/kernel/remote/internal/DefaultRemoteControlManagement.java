package com.cloud.tmc.kernel.remote.internal;

import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.remote.RemoteControlManagement;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultRemoteControlManagement implements RemoteControlManagement {
    private Map<Extension, Map<Method, Boolean>> mCache = new ConcurrentHashMap();

    protected boolean hasRemoteAnnotation(Extension extension, Method method) {
        return false;
    }

    @Override // com.cloud.tmc.kernel.remote.RemoteControlManagement
    public boolean isRemoteExtension(Extension extension, Method method) {
        if (ProcessUtils.isMainProcess()) {
            return false;
        }
        return hasRemoteAnnotation(extension, method);
    }
}
