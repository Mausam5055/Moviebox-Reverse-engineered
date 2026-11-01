package com.cloud.tmc.kernel.point;

import com.cloud.tmc.kernel.bridge.NativeCallContext;
import com.cloud.tmc.kernel.extension.Extension;
import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public interface NativeCallResultPoint extends Extension {
    void onSendBack(NativeCallContext nativeCallContext, JsonObject jsonObject);
}
