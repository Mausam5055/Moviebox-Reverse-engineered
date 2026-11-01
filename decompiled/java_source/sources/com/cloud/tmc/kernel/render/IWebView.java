package com.cloud.tmc.kernel.render;

import androidx.annotation.NonNull;
import com.cloud.tmc.kernel.bridge.RenderBridge;
import com.cloud.tmc.kernel.node.Node;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public interface IWebView {
    void create();

    void destroy();

    int getMiniAppType();

    RenderBridge getRenderBridge();

    void goBack();

    boolean isResume();

    void load(String str);

    void load(String str, HashMap<String, String> map);

    void loadData(String str, @NonNull String str2, String str3, String str4, String str5);

    void onPause();

    void onResume();

    void registerCustomViewVisiableCallback(CustomViewVisiableCallback customViewVisiableCallback);

    void registerMessageChannel();

    void registerPageCallback(WebviewPageCallback webviewPageCallback);

    void registerPageEventCallback(WebviewPageEventCallback webviewPageEventCallback);

    void reload();

    void setAppId(String str);

    void setBgColor(String str);

    void setCommonresId(String str);

    void setMiniAppType(int i11);

    void setNode(Node node);

    void setScrollChangedCallback(ScrollChangedCallback scrollChangedCallback);

    void setSupportFullScreen(boolean z10);
}
