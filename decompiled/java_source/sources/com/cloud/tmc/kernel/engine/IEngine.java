package com.cloud.tmc.kernel.engine;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.cloud.tmc.kernel.bridge.NativeBridge;
import com.cloud.tmc.kernel.model.CreateParams;
import com.cloud.tmc.kernel.model.InitParams;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.worker.JSI;

/* JADX INFO: loaded from: classes3.dex */
public interface IEngine extends Proxiable {
    IRender createRender(Activity activity, Node node, CreateParams createParams);

    JSI createWorker(Context context, Node node, String str) throws Throwable;

    void destroy();

    String getAppId();

    Context getApplication();

    NativeBridge getBridge();

    EngineRouter getEngineRouter();

    String getEngineType();

    String getInstanceId();

    Node getNode();

    Bundle getStartParams();

    IRender getTopRender();

    String getWorkerId();

    void init(InitParams initParams, EngineInitCallback engineInitCallback);

    boolean isDestroyed();

    boolean isReady();

    void setup(Bundle bundle, Bundle bundle2, EngineSetupCallback engineSetupCallback);

    void updateWorker(JSI jsi);
}
