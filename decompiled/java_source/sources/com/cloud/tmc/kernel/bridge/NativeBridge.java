package com.cloud.tmc.kernel.bridge;

import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.engine.EngineRouter;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
public interface NativeBridge extends Proxiable {
    void bindEngineRouter(EngineRouter engineRouter);

    void release();

    boolean sendToNative(NativeCallContext nativeCallContext, @Nullable SendToNativeCallback sendToNativeCallback);

    boolean sendToNative(NativeCallContext nativeCallContext, @Nullable SendToNativeCallback sendToNativeCallback, boolean z10);
}
