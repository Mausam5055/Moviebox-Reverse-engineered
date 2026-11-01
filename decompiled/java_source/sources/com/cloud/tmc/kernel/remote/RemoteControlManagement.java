package com.cloud.tmc.kernel.remote;

import com.cloud.tmc.kernel.extension.Extension;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public interface RemoteControlManagement {
    boolean isRemoteExtension(Extension extension, Method method);
}
