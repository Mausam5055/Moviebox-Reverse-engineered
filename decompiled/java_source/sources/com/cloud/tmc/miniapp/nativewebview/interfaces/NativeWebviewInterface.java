package com.cloud.tmc.miniapp.nativewebview.interfaces;

import android.webkit.JavascriptInterface;
import com.cloud.tmc.integration.minicover.NativeComponentManager;
import com.cloud.tmc.integration.proxy.IKeyboardProxy;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.minicover.base.BaseNativeComponent;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.miniapp.nativewebview.OooO0O0;
import com.cloud.tmc.miniapp.nativewebview.OooO0o;
import com.cloud.tmc.miniapp.nativewebview.listener.OooO00o;
import com.google.gson.JsonObject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class NativeWebviewInterface {
    @JavascriptInterface
    public final void onScrollChanged(String viewId) {
        OooO0o oooO0o;
        Intrinsics.h(viewId, "viewId");
        try {
            BaseNativeComponent componentView = NativeComponentManager.INSTANCE.getComponentView(viewId);
            OooO0O0 oooO0O0 = componentView instanceof OooO0O0 ? (OooO0O0) componentView : null;
            if (oooO0O0 == null || (oooO0o = oooO0O0.OooO0OO) == null) {
                return;
            }
            try {
                if (oooO0o.OooOOo) {
                    ((IKeyboardProxy) TmcProxy.get(IKeyboardProxy.class)).hideKeyboard(oooO0o);
                }
            } catch (Throwable th2) {
                TmcLogger.e(oooO0o.OooO0OO, th2);
            }
        } catch (Throwable th3) {
            TmcLogger.e("receiveUrlIcon", th3);
        }
    }

    @JavascriptInterface
    public final void receiveUrlIcon(String iconUrl, String viewId) {
        OooO0o oooO0o;
        Intrinsics.h(iconUrl, "icon");
        Intrinsics.h(viewId, "viewId");
        try {
            BaseNativeComponent componentView = NativeComponentManager.INSTANCE.getComponentView(viewId);
            OooO0O0 oooO0O0 = componentView instanceof OooO0O0 ? (OooO0O0) componentView : null;
            if (oooO0O0 == null || (oooO0o = oooO0O0.OooO0OO) == null) {
                return;
            }
            Intrinsics.h(iconUrl, "iconUrl");
            JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, "onReceivedIcon").addProperty("favicon", iconUrl).build();
            Intrinsics.g(jsonObjectBuild, "create().addProperty(KEY…FAVICON, iconUrl).build()");
            OooO00o oooO00o = oooO0o.OooO0o;
            if (oooO00o != null) {
                oooO00o.OooO00o("onReceivedIcon", jsonObjectBuild);
            }
        } catch (Throwable th2) {
            TmcLogger.e("receiveUrlIcon", th2);
        }
    }
}
