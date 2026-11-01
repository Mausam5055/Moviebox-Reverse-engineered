package com.cloud.tmc.miniapp.defaultimpl;

import android.content.Context;
import com.cloud.tmc.integration.callback.ICheckMiniAppLifecycleCallback;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.integration.ui.p001native.NativeImgComponent;
import com.cloud.tmc.integration.ui.p001native.NativeTabComponent;
import com.cloud.tmc.kernel.minicover.NativeComponentProxy;
import com.cloud.tmc.kernel.minicover.base.BaseNativeComponent;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.render.IRender;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class NativeComponentProxyImp implements NativeComponentProxy {
    @Override // com.cloud.tmc.kernel.minicover.NativeComponentProxy
    public boolean checkResumedStatus(String str) {
        ICheckMiniAppLifecycleCallback appLifecycleCallback;
        try {
            App appFindApp = ((AppManager) TmcProxy.get(AppManager.class)).findApp(str);
            if (appFindApp == null || (appLifecycleCallback = appFindApp.getAppLifecycleCallback()) == null) {
                return true;
            }
            return appLifecycleCallback.checkIsForeground();
        } catch (Throwable unused) {
            return true;
        }
    }

    @Override // com.cloud.tmc.kernel.minicover.NativeComponentProxy
    public BaseNativeComponent getComponentNativeImgInstance(Context context, String renderId, String viewId, IRender render) {
        Intrinsics.h(context, "context");
        Intrinsics.h(renderId, "renderId");
        Intrinsics.h(viewId, "viewId");
        Intrinsics.h(render, "render");
        return new NativeImgComponent(context, renderId, viewId, render);
    }

    @Override // com.cloud.tmc.kernel.minicover.NativeComponentProxy
    public BaseNativeComponent getComponentNativeTabInstance(Context context, String renderId, String viewId, IRender render) {
        Intrinsics.h(context, "context");
        Intrinsics.h(renderId, "renderId");
        Intrinsics.h(viewId, "viewId");
        Intrinsics.h(render, "render");
        return new NativeTabComponent(context, renderId, viewId, render);
    }

    @Override // com.cloud.tmc.kernel.minicover.NativeComponentProxy
    public BaseNativeComponent getComponentNativeWebViewInstance(Context context, String renderId, String viewId, IRender render) {
        Intrinsics.h(context, "context");
        Intrinsics.h(renderId, "renderId");
        Intrinsics.h(viewId, "viewId");
        Intrinsics.h(render, "render");
        return com.cloud.tmc.miniapp.nativewebview.OooO0OO.OooO00o.OooO00o(context, renderId, viewId, render);
    }
}
