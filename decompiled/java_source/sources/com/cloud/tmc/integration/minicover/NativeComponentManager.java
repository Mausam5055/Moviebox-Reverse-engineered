package com.cloud.tmc.integration.minicover;

import android.content.Context;
import android.util.Log;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentEventCenter;
import com.cloud.tmc.kernel.minicover.NativeComponentProxy;
import com.cloud.tmc.kernel.minicover.base.BaseNativeComponent;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.render.IRender;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J0\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0012\u001a\u00020\u0004J2\u0010\u0017\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u001a\u0010\u0019\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u001a\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u001b\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u001c\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u001d\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0004J\u001c\u0010\u001e\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004H\u0002J \u0010\u001f\u001a\u00020\u00042\b\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\"\u001a\u00020#2\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R \u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/cloud/tmc/integration/minicover/NativeComponentManager;", "", "()V", "TAG", "", "mAppComponentMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Ljava/util/concurrent/CopyOnWriteArrayList;", "mRenderComponentMap", "mViewComponentMap", "Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;", "addAppId", "", "appId", "renderId", "addNativeComponent", "context", "Landroid/content/Context;", NativeComponentConstants.KEY_COMPONENT_VIEW_ID, "componentName", "iRender", "Lcom/cloud/tmc/kernel/render/IRender;", "getComponentView", "getNativeComponent", "nativeComponentName", "onDestoryForRenderId", "onPauseForRenderId", "onResumeForRenderId", "onStopForRenderId", "removeForAppId", "removeForRenderId", "removeNativeComponent", "webview", "Landroid/webkit/WebView;", "shouldInterceptBackPressed", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class NativeComponentManager {
    public static final NativeComponentManager INSTANCE = new NativeComponentManager();
    private static final String TAG = "NativeComponentManager";
    private static final ConcurrentHashMap<String, CopyOnWriteArrayList<String>> mAppComponentMap = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, CopyOnWriteArrayList<String>> mRenderComponentMap = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, BaseNativeComponent> mViewComponentMap = new ConcurrentHashMap<>();

    private NativeComponentManager() {
    }

    private final BaseNativeComponent getNativeComponent(Context context, String nativeComponentName, String renderId, String viewId, IRender iRender) {
        int iHashCode = nativeComponentName.hashCode();
        if (iHashCode != -1616353213) {
            if (iHashCode != -1191927585) {
                if (iHashCode == 1304059941 && nativeComponentName.equals("native-image")) {
                    return ((NativeComponentProxy) TmcProxy.get(NativeComponentProxy.class)).getComponentNativeImgInstance(context, renderId, viewId, iRender);
                }
            } else if (nativeComponentName.equals("native-tab")) {
                return ((NativeComponentProxy) TmcProxy.get(NativeComponentProxy.class)).getComponentNativeTabInstance(context, renderId, viewId, iRender);
            }
        } else if (nativeComponentName.equals("native-webview")) {
            return ((NativeComponentProxy) TmcProxy.get(NativeComponentProxy.class)).getComponentNativeWebViewInstance(context, renderId, viewId, iRender);
        }
        return null;
    }

    private final void removeForRenderId(String appId, String renderId) {
        IRender iRender;
        if (renderId != null) {
            try {
                if (renderId.length() == 0) {
                    return;
                }
                CopyOnWriteArrayList<String> copyOnWriteArrayList = mRenderComponentMap.get(renderId);
                if (copyOnWriteArrayList != null) {
                    for (String str : copyOnWriteArrayList) {
                        ConcurrentHashMap<String, BaseNativeComponent> concurrentHashMap = mViewComponentMap;
                        BaseNativeComponent baseNativeComponent = concurrentHashMap.get(str);
                        if (baseNativeComponent != null && (iRender = baseNativeComponent.getIRender()) != null) {
                            ViewParent parent = baseNativeComponent.getComponentView().getParent();
                            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                            if (viewGroup != null) {
                                viewGroup.removeView(baseNativeComponent.getComponentView());
                            }
                            baseNativeComponent.onRemove();
                            baseNativeComponent.onDestory();
                            NativeComponentEventCenter.sendSuccessMsgToRender$default(NativeComponentEventCenter.INSTANCE, iRender, NativeComponentConstants.NATIVE_COMPONENT_REMOVE, baseNativeComponent.getComponentId(), baseNativeComponent.getComponentId(), null, null, 48, null);
                        }
                        concurrentHashMap.remove(str);
                    }
                }
                mRenderComponentMap.remove(renderId);
                CopyOnWriteArrayList<String> copyOnWriteArrayList2 = mAppComponentMap.get(appId);
                if (copyOnWriteArrayList2 != null) {
                    copyOnWriteArrayList2.remove(renderId);
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
            }
        }
    }

    public final void addAppId(String appId, String renderId) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(renderId, "renderId");
        try {
            ConcurrentHashMap<String, CopyOnWriteArrayList<String>> concurrentHashMap = mAppComponentMap;
            CopyOnWriteArrayList<String> copyOnWriteArrayList = concurrentHashMap.get(appId);
            if (copyOnWriteArrayList == null) {
                copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            }
            if (!copyOnWriteArrayList.contains(renderId)) {
                copyOnWriteArrayList.add(renderId);
            }
            concurrentHashMap.put(appId, copyOnWriteArrayList);
        } catch (Throwable th2) {
            Log.e(TAG, "addAppId: " + th2);
        }
    }

    public final BaseNativeComponent addNativeComponent(Context context, String viewId, String renderId, String componentName, IRender iRender) {
        Intrinsics.h(context, "context");
        Intrinsics.h(viewId, "viewId");
        Intrinsics.h(renderId, "renderId");
        Intrinsics.h(componentName, "componentName");
        Intrinsics.h(iRender, "iRender");
        ConcurrentHashMap<String, CopyOnWriteArrayList<String>> concurrentHashMap = mRenderComponentMap;
        CopyOnWriteArrayList<String> copyOnWriteArrayList = concurrentHashMap.get(renderId);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        }
        if (!copyOnWriteArrayList.contains(viewId)) {
            copyOnWriteArrayList.add(viewId);
        }
        concurrentHashMap.put(renderId, copyOnWriteArrayList);
        ConcurrentHashMap<String, BaseNativeComponent> concurrentHashMap2 = mViewComponentMap;
        if (concurrentHashMap2.get(viewId) != null) {
            TmcLogger.d(TAG, "nativeComponent not null " + viewId);
            return null;
        }
        BaseNativeComponent nativeComponent = getNativeComponent(context, componentName, renderId, viewId, iRender);
        if (nativeComponent != null) {
            concurrentHashMap2.put(viewId, nativeComponent);
            return nativeComponent;
        }
        TmcLogger.d(TAG, "component null " + viewId);
        return null;
    }

    public final BaseNativeComponent getComponentView(String viewId) {
        Intrinsics.h(viewId, "viewId");
        return mViewComponentMap.get(viewId);
    }

    public final void onDestoryForRenderId(String appId, String renderId) {
        removeForRenderId(appId, renderId);
    }

    public final void onPauseForRenderId(String renderId) {
        Intrinsics.h(renderId, "renderId");
        try {
            CopyOnWriteArrayList<String> copyOnWriteArrayList = mRenderComponentMap.get(renderId);
            if (copyOnWriteArrayList != null) {
                Iterator<T> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    BaseNativeComponent baseNativeComponent = mViewComponentMap.get((String) it.next());
                    if (baseNativeComponent != null) {
                        baseNativeComponent.onPause();
                    }
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "onPauseForRenderId", th2);
        }
    }

    public final void onResumeForRenderId(String renderId) {
        Intrinsics.h(renderId, "renderId");
        try {
            CopyOnWriteArrayList<String> copyOnWriteArrayList = mRenderComponentMap.get(renderId);
            if (copyOnWriteArrayList != null) {
                Iterator<T> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    BaseNativeComponent baseNativeComponent = mViewComponentMap.get((String) it.next());
                    if (baseNativeComponent != null) {
                        baseNativeComponent.onResume();
                    }
                }
            }
        } catch (Throwable th2) {
            Log.e(TAG, "onResumeForRenderId: " + th2);
        }
    }

    public final void onStopForRenderId(String renderId) {
        Intrinsics.h(renderId, "renderId");
        try {
            CopyOnWriteArrayList<String> copyOnWriteArrayList = mRenderComponentMap.get(renderId);
            if (copyOnWriteArrayList != null) {
                Iterator<T> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    BaseNativeComponent baseNativeComponent = mViewComponentMap.get((String) it.next());
                    if (baseNativeComponent != null) {
                        baseNativeComponent.onStop();
                    }
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "onStopForRenderId", th2);
        }
    }

    public final void removeForAppId(String appId) {
        Intrinsics.h(appId, "appId");
        try {
            CopyOnWriteArrayList<String> copyOnWriteArrayList = mAppComponentMap.get(appId);
            if (copyOnWriteArrayList != null) {
                Iterator<T> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    INSTANCE.removeForRenderId(appId, (String) it.next());
                }
            }
            mAppComponentMap.remove(appId);
        } catch (Throwable th2) {
            Log.e(TAG, "removeForAppId: " + th2);
        }
    }

    public final String removeNativeComponent(WebView webview, String viewId, String renderId) {
        Intrinsics.h(viewId, "viewId");
        Intrinsics.h(renderId, "renderId");
        String componentId = "";
        try {
            ConcurrentHashMap<String, BaseNativeComponent> concurrentHashMap = mViewComponentMap;
            BaseNativeComponent baseNativeComponent = concurrentHashMap.get(viewId);
            if (baseNativeComponent != null) {
                componentId = baseNativeComponent.getComponentId();
                ViewParent parent = baseNativeComponent.getComponentView().getParent();
                ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup != null) {
                    viewGroup.removeView(baseNativeComponent.getComponentView());
                }
                baseNativeComponent.onRemove();
                baseNativeComponent.onDestory();
            }
            CopyOnWriteArrayList<String> copyOnWriteArrayList = mRenderComponentMap.get(renderId);
            if (copyOnWriteArrayList != null) {
                copyOnWriteArrayList.remove(viewId);
            }
            concurrentHashMap.remove(viewId);
        } catch (Throwable th2) {
            Log.e(TAG, "removeNativeComponent: " + th2);
        }
        return componentId;
    }

    public final boolean shouldInterceptBackPressed(String renderId) {
        Intrinsics.h(renderId, "renderId");
        CopyOnWriteArrayList<String> copyOnWriteArrayList = mRenderComponentMap.get(renderId);
        boolean zBooleanValue = false;
        if (copyOnWriteArrayList != null) {
            Iterator<T> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                BaseNativeComponent baseNativeComponent = mViewComponentMap.get((String) it.next());
                Boolean boolValueOf = baseNativeComponent != null ? Boolean.valueOf(baseNativeComponent.onInterceptBackPressed()) : null;
                if (Intrinsics.c(boolValueOf, Boolean.TRUE)) {
                    zBooleanValue = boolValueOf.booleanValue();
                }
            }
        }
        return zBooleanValue;
    }
}
