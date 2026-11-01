package com.cloud.tmc.integration.bridge;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.PixelCopy;
import android.view.View;
import android.view.Window;
import android.webkit.WebView;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.resource.IFileResourceManager;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.gson.JsonObject;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.FileOutputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0003JB\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\u001a\u0010\u0015\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00040\u0016H\u0002J\b\u0010\u0018\u001a\u00020\u0004H\u0016J\b\u0010\u0019\u001a\u00020\u0004H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J6\u0010\u001c\u001a\u00020\u00042\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\b\u0001\u0010\u0013\u001a\u00020\u00142\n\b\u0001\u0010\u001f\u001a\u0004\u0018\u00010 H\u0007¨\u0006!"}, d2 = {"Lcom/cloud/tmc/integration/bridge/ScreenShotBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "convertLayoutToBitmap", "", "window", "Landroid/view/Window;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/view/View;", "dest", "Landroid/graphics/Bitmap;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroid/view/PixelCopy$OnPixelCopyFinishedListener;", "getBitmapFromWebView", "Ljava/io/File;", "app", "Lcom/cloud/tmc/integration/structure/App;", "view2", "Landroid/webkit/WebView;", "quality", "", "callBack", "Lkotlin/Function2;", "", "onFinalized", "onInitialized", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "takeScreenshot", "page", "Lcom/cloud/tmc/integration/structure/Page;", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ScreenShotBridge implements BridgeExtension {
    private final void convertLayoutToBitmap(Window window, View view, Bitmap dest, PixelCopy.OnPixelCopyFinishedListener listener) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i11 = iArr[0];
        PixelCopy.request(window, new Rect(i11, iArr[1], view.getWidth() + i11, iArr[1] + view.getHeight()), dest, listener, new Handler(Looper.getMainLooper()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [T, android.graphics.Bitmap, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v5, types: [T, java.io.File] */
    private final File getBitmapFromWebView(final App app, WebView view2, final int quality, final Function2<? super File, ? super Boolean, Unit> callBack) {
        AppContext appContext;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (view2 != null) {
            Context context = null;
            if (Build.VERSION.SDK_INT >= 26) {
                final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                ?? CreateBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888, true);
                Intrinsics.g(CreateBitmap, "createBitmap(view2.width…p.Config.ARGB_8888, true)");
                objectRef2.element = CreateBitmap;
                if (app != null && (appContext = app.getAppContext()) != null) {
                    context = appContext.getContext();
                }
                Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
                Window window = ((Activity) context).getWindow();
                Intrinsics.g(window, "app?.appContext?.context as Activity).window");
                convertLayoutToBitmap(window, view2, (Bitmap) objectRef2.element, new PixelCopy.OnPixelCopyFinishedListener() { // from class: com.cloud.tmc.integration.bridge.m
                    @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                    public final void onPixelCopyFinished(int i11) {
                        ScreenShotBridge.getBitmapFromWebView$lambda$3(app, objectRef, objectRef2, quality, callBack, i11);
                    }
                });
            } else {
                view2.setDrawingCacheEnabled(true);
                Bitmap drawingCache = view2.getDrawingCache();
                Bitmap bitmapCreateBitmap = (drawingCache == null || drawingCache.isRecycled()) ? null : Bitmap.createBitmap(drawingCache);
                if (bitmapCreateBitmap != null) {
                    try {
                        String appBaseFilePath = ((PathProxy) TmcProxy.get(PathProxy.class)).getAppBaseFilePath(app.getAppId());
                        String str = File.separator;
                        String str2 = appBaseFilePath + str + TmcConstants.TEMP_DATA_PATH + str + "screenshot" + System.currentTimeMillis() + ".jpg";
                        objectRef.element = new File(str2);
                        FileUtils.createOrExistsFile(str2);
                        bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 95, new FileOutputStream((File) objectRef.element));
                        callBack.invoke(objectRef.element, Boolean.TRUE);
                    } catch (Throwable th2) {
                        TmcLogger.e("getBitmapFromWebView error", th2);
                        callBack.invoke(null, Boolean.FALSE);
                    }
                }
            }
        }
        return (File) objectRef.element;
    }

    static /* synthetic */ File getBitmapFromWebView$default(ScreenShotBridge screenShotBridge, App app, WebView webView, int i11, Function2 function2, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            i11 = 95;
        }
        return screenShotBridge.getBitmapFromWebView(app, webView, i11, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v5, types: [T, java.io.File] */
    public static final void getBitmapFromWebView$lambda$3(App app, Ref.ObjectRef fl2, Ref.ObjectRef bitmap, int i11, Function2 callBack, int i12) {
        Intrinsics.h(app, "$app");
        Intrinsics.h(fl2, "$fl");
        Intrinsics.h(bitmap, "$bitmap");
        Intrinsics.h(callBack, "$callBack");
        if (i12 != 0) {
            callBack.invoke(null, Boolean.FALSE);
            return;
        }
        try {
            String appBaseFilePath = ((PathProxy) TmcProxy.get(PathProxy.class)).getAppBaseFilePath(app.getAppId());
            String str = File.separator;
            String str2 = appBaseFilePath + str + TmcConstants.TEMP_DATA_PATH + str + "screenshot" + System.currentTimeMillis() + ".jpg";
            fl2.element = new File(str2);
            FileUtils.createOrExistsFile(str2);
            ((Bitmap) bitmap.element).compress(Bitmap.CompressFormat.JPEG, i11, new FileOutputStream((File) fl2.element));
            callBack.invoke(fl2.element, Boolean.TRUE);
        } catch (Throwable th2) {
            TmcLogger.e("getBitmapFromWebView error", th2);
            callBack.invoke(null, Boolean.FALSE);
        }
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void takeScreenshot(@BindingNode(App.class) final App app, @BindingNode(Page.class) Page page, @BindingParam(intDefault = 80, name = {"quality"}) int quality, @BindingCallback final BridgeCallback callback) {
        IRender render;
        try {
            if (quality < 0 || quality > 100) {
                if (callback != null) {
                    callback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Quality must be 0..100: TS10003").build());
                    return;
                }
                return;
            }
            View view = (page == null || (render = page.getRender()) == null) ? null : render.getView();
            WebView webView = view instanceof WebView ? (WebView) view : null;
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            if (webView == null || app == null || app.getAppId() == null) {
                return;
            }
            getBitmapFromWebView(app, webView, quality, new Function2<File, Boolean, Unit>() { // from class: com.cloud.tmc.integration.bridge.ScreenShotBridge$takeScreenshot$1$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((File) obj, ((Boolean) obj2).booleanValue());
                    return Unit.f67061a;
                }

                /* JADX WARN: Type inference failed for: r9v4, types: [T, java.lang.String] */
                public final void invoke(File file, boolean z10) {
                    if (!z10) {
                        BridgeCallback bridgeCallback = callback;
                        if (bridgeCallback != null) {
                            JsonObject jsonObject = new JsonObject();
                            jsonObject.addProperty("errMsg", "Failed, generate bitmap error: TS10002");
                            bridgeCallback.sendFailResponse(jsonObject);
                            return;
                        }
                        return;
                    }
                    if (file != null) {
                        objectRef.element = ((IFileResourceManager) TmcProxy.get(IFileResourceManager.class)).generateVUrl(file.getAbsolutePath(), app.getAppId(), file.getName(), TmcConstants.TEMP_DATA_PATH, false);
                    } else {
                        BridgeCallback bridgeCallback2 = callback;
                        if (bridgeCallback2 != null) {
                            bridgeCallback2.sendFailResponse();
                        }
                    }
                    BridgeCallback bridgeCallback3 = callback;
                    if (bridgeCallback3 != null) {
                        JsonObject jsonObject2 = new JsonObject();
                        jsonObject2.addProperty(NativeRequestBridge.KEY_FILE_PATH, objectRef.element);
                        bridgeCallback3.sendSuccessResponse(jsonObject2);
                    }
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e("takeScreenshot error", th2);
            if (callback != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("errMsg", "Failed, unknown error: TS10001");
                callback.sendFailResponse(jsonObject);
            }
        }
    }
}
