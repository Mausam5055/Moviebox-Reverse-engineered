package com.cloud.tmc.kernel.model;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.bridge.NativeCallContext;
import com.cloud.tmc.kernel.bridge.SendToNativeCallback;
import com.cloud.tmc.kernel.bridge.SendToRenderCallback;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.resource.Resource;
import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public interface ApiContext {
    void callBridgeApi(NativeCallContext nativeCallContext, SendToNativeCallback sendToNativeCallback, boolean z10);

    @Nullable
    Activity getActivity();

    Context getAppContext();

    String getAppId();

    Resource getContent(String str);

    @Nullable
    View getInternalView();

    int getPageId();

    @Nullable
    String getPluginId();

    @Nullable
    IRender getRender();

    int getRenderId();

    String getSourceProcess();

    Bundle getStartParams();

    boolean isFromRemote();

    void sendEvent(String str, @Nullable JsonObject jsonObject, @Nullable SendToRenderCallback sendToRenderCallback);

    void startActivity(Intent intent);
}
