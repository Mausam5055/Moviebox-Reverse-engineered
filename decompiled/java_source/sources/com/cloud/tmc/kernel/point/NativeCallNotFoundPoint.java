package com.cloud.tmc.kernel.point;

import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.NativeCallContext;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.helper.BridgeResponseHelper;

/* JADX INFO: loaded from: classes3.dex */
public interface NativeCallNotFoundPoint extends Extension {
    @ThreadType(ExecutorType.SYNC)
    boolean handleNotFound(NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper);
}
