package com.cloud.tmc.kernel.render;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import com.cloud.tmc.kernel.bridge.RenderBridge;
import com.cloud.tmc.kernel.engine.EngineRouter;
import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.model.CreateParams;
import com.cloud.tmc.kernel.node.Node;

/* JADX INFO: loaded from: classes3.dex */
public interface IRender {
    void destroy();

    boolean fromWarmup();

    Activity getActivity();

    String getAppId();

    String getCurrentUri();

    IEngine getEngine();

    String getFrameworkVersion();

    Node getPage();

    RenderBridge getRenderBridge();

    String getRenderId();

    int getScrollY();

    Bundle getStartParams();

    String getUserAgent();

    View getView();

    int getWarmupChannel();

    void goBack(GoBackCallback goBackCallback);

    void init(String str);

    Boolean isDarkTheme();

    boolean isDestroyed();

    boolean isResume();

    void load(LoadParams loadParams);

    void loadDataWithBaseURL(LoadParams loadParams, @NonNull String str, String str2, String str3, String str4);

    void onPause();

    void onResume();

    void registerICustomViewVisiable(ICustomViewVisiable iCustomViewVisiable);

    void registerPageCallback(IPageCallback iPageCallback);

    void registerPageEventCallback(IPageEventCallback iPageEventCallback);

    void reload();

    void runExit(ExitCallback exitCallback);

    void setActivity(Activity activity);

    void setBgColor(String str);

    void setDarkTheme(boolean z10);

    void setFrameworkVersion(String str);

    void setMiniAppId(String str);

    void setMiniAppType(int i11);

    void setScrollChangedCallback(ScrollChangedCallback scrollChangedCallback);

    void setSupportFullScreen(boolean z10);

    void setWarmup(int i11);

    void setWarmupAppId(String str);

    void setWarmupCreateParams(CreateParams createParams);

    void setWarmupEngine(IEngine iEngine);

    void setWarmupEngineRouter(EngineRouter engineRouter);

    void setWarmupNode(Node node);

    void setWarmupRenderId(String str);

    void setWarupSuccess();

    void showErrorView(View view);

    boolean warmupSuccess();
}
