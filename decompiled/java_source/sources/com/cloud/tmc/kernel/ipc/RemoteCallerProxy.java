package com.cloud.tmc.kernel.ipc;

import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("")
public interface RemoteCallerProxy extends Proxiable {
    @Nullable
    <T> T getRemoteCaller(Class<T> cls);

    <T> void registerServiceBean(Class<T> cls, T t11);
}
