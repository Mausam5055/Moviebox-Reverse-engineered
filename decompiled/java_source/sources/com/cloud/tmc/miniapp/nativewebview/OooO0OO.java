package com.cloud.tmc.miniapp.nativewebview;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.minicover.NativeComponentManager;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.base.BaseNativeComponent;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0OO {
    public static final OooO0OO OooO00o = new OooO0OO();
    public static final ConcurrentHashMap<String, ConcurrentLinkedQueue<String>> OooO0O0 = new ConcurrentHashMap<>();

    public final BaseNativeComponent OooO00o(Context context, String renderId, String viewId, IRender render) {
        Intrinsics.h(context, "context");
        Intrinsics.h(renderId, "renderId");
        Intrinsics.h(viewId, "viewId");
        Intrinsics.h(render, "render");
        String appId = render.getAppId();
        ConcurrentHashMap<String, ConcurrentLinkedQueue<String>> concurrentHashMap = OooO0O0;
        ConcurrentLinkedQueue<String> concurrentLinkedQueue = concurrentHashMap.get(appId);
        if (concurrentLinkedQueue == null) {
            concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
        }
        if (concurrentLinkedQueue.size() >= MiniAppConfigHelper.INSTANCE.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_MINIAPP_MAX_NATIVE_WEBVIEW_NUM, 5)) {
            String removeViewId = concurrentLinkedQueue.poll();
            View view = render.getView();
            WebView webView = view instanceof WebView ? (WebView) view : null;
            TmcLogger.d("NativeWebviewManager", "webviewQueue size >= 5,remove " + removeViewId);
            NativeComponentManager nativeComponentManager = NativeComponentManager.INSTANCE;
            Intrinsics.g(removeViewId, "removeViewId");
            nativeComponentManager.removeNativeComponent(webView, removeViewId, renderId);
        }
        OooO0O0 oooO0O0 = new OooO0O0(context, renderId, viewId, render);
        concurrentLinkedQueue.add(viewId);
        Intrinsics.g(appId, "appId");
        concurrentHashMap.put(appId, concurrentLinkedQueue);
        return oooO0O0;
    }
}
