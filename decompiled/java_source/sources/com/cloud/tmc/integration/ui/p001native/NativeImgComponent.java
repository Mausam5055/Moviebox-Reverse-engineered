package com.cloud.tmc.integration.ui.p001native;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.widget.ImageView;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.minicover.base.BaseNativeComponent;
import com.cloud.tmc.kernel.minicover.callback.OnEventCallback;
import com.cloud.tmc.kernel.minicover.callback.OnViewChangeCallback;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoadListener;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.resource.IImageResourceManager;
import com.cloud.tmc.kernel.resource.IPackageResourceManager;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u0000 32\u00020\u0001:\u00013B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u0015\u001a\u00020\u0005H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0005H\u0002J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0005H\u0002J\b\u0010\u001d\u001a\u00020\u0019H\u0002J\u001a\u0010\u001e\u001a\u00020\u00192\b\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016J\b\u0010#\u001a\u00020\u0019H\u0016J \u0010$\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020 2\u0006\u0010'\u001a\u00020(H\u0016J\b\u0010)\u001a\u00020*H\u0016J\b\u0010+\u001a\u00020\u0019H\u0016J\b\u0010,\u001a\u00020\u0019H\u0016J\b\u0010-\u001a\u00020\u0019H\u0016J\b\u0010.\u001a\u00020\u0019H\u0016J\u001a\u0010/\u001a\u00020\u00192\b\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u00100\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u00101\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u0005H\u0002R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u00064"}, d2 = {"Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;", "Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;", "context", "Landroid/content/Context;", "renderId", "", NativeComponentConstants.KEY_COMPONENT_VIEW_ID, EventConstants.ADDRESS_RENDER, "Lcom/cloud/tmc/kernel/render/IRender;", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V", "frameLayout", "Landroid/widget/ImageView;", "getFrameLayout", "()Landroid/widget/ImageView;", "mContext", "mRender", "mSrc", "getMSrc", "()Ljava/lang/String;", "setMSrc", "(Ljava/lang/String;)V", "getComponentName", "getComponentView", "Landroid/view/View;", "loadImage", "", "imgUrl", "notifyError", NotificationCompat.CATEGORY_MESSAGE, "notifyLoad", "onAddView", "customObject", "Lcom/google/gson/JsonObject;", "onViewChangeCallback", "Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;", "onDestory", "onEventMessage", "methodName", NativeComponentConstants.KEY_COMPONENT_EVENT_ARGS, "callback", "Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;", "onInterceptBackPressed", "", "onPause", "onRemove", "onResume", "onStop", "onUpdateView", "parseCustomJson", "parseImageUrl", "url", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NativeImgComponent extends BaseNativeComponent {
    public static final String ERROR = "error";
    public static final String ERROR_MSG_I10001 = "Parameter invalid: I10001";
    public static final String ERROR_MSG_I10002 = "load image failed: I10002";
    public static final String EVENT_LOAD = "load";
    public static final String TAG = "NativeImgComponent";
    private final ImageView frameLayout;
    private final Context mContext;
    private final IRender mRender;
    private String mSrc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeImgComponent(Context context, String renderId, String viewId, IRender render) {
        super(context, renderId, viewId, render);
        Intrinsics.h(context, "context");
        Intrinsics.h(renderId, "renderId");
        Intrinsics.h(viewId, "viewId");
        Intrinsics.h(render, "render");
        ImageView imageView = new ImageView(context, null);
        this.frameLayout = imageView;
        this.mContext = context;
        this.mRender = render;
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [T, java.io.File] */
    /* JADX WARN: Type inference failed for: r7v4, types: [T, java.io.File] */
    private final void loadImage(String imgUrl) {
        if (!StringsKt.c0(imgUrl, ".gif", false, 2, null)) {
            ((ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class)).loadImgBitmapNoRound(this.mContext, imgUrl, new ImageLoadListener() { // from class: com.cloud.tmc.integration.ui.native.NativeImgComponent.loadImage.2
                @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoadListener
                public void onLoadFailed(String errMsg) {
                    NativeImgComponent.this.notifyError(NativeImgComponent.ERROR_MSG_I10002);
                }

                @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoadListener
                public void onLoadSuccess(Bitmap bitmap) {
                    NativeImgComponent.this.getFrameLayout().setImageDrawable(new BitmapDrawable(bitmap));
                    NativeImgComponent.this.notifyLoad();
                }
            });
            return;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (StringsKt.W(imgUrl, "http", false, 2, null)) {
            objectRef.element = ((ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class)).loadImgFile(this.mContext, imgUrl);
        } else {
            ?? file = new File(imgUrl);
            objectRef.element = file;
            if (!file.exists()) {
                notifyError(ERROR_MSG_I10002);
                return;
            }
        }
        if (objectRef.element != 0) {
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.ui.native.b
                @Override // java.lang.Runnable
                public final void run() {
                    NativeImgComponent.loadImage$lambda$4(this.f23441a, objectRef);
                }
            });
        } else {
            notifyError(ERROR_MSG_I10002);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void loadImage$lambda$4(final NativeImgComponent this$0, Ref.ObjectRef file) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(file, "$file");
        ((ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class)).loadImgGifPlay(this$0.mContext, (File) file.element, null, this$0.frameLayout, new ImageLoadListener() { // from class: com.cloud.tmc.integration.ui.native.NativeImgComponent$loadImage$1$1
            @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoadListener
            public void onLoadFailed(String errMsg) {
                this.this$0.notifyError(NativeImgComponent.ERROR_MSG_I10002);
            }

            @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoadListener
            public void onLoadSuccess(Bitmap bitmap) {
                this.this$0.notifyLoad();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyError(String msg) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("errMsg", msg);
        postEventMessage("error", jsonObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyLoad() {
        postEventMessage(EVENT_LOAD, new JsonObject());
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0064 A[Catch: all -> 0x000f, TryCatch #0 {all -> 0x000f, blocks: (B:3:0x0002, B:5:0x000a, B:10:0x0015, B:12:0x0019, B:14:0x0021, B:16:0x0027, B:32:0x0064, B:23:0x003b, B:26:0x0044, B:27:0x004c, B:29:0x0054, B:30:0x005c, B:33:0x006c, B:34:0x0073, B:36:0x007b), top: B:40:0x0002 }] */
    private final void parseCustomJson(JsonObject customObject) {
        String asString;
        try {
            JsonElement jsonElement = customObject.get("src");
            String asString2 = jsonElement != null ? jsonElement.getAsString() : null;
            if (asString2 == null) {
                notifyError(ERROR_MSG_I10001);
                return;
            }
            JsonElement jsonElement2 = customObject.get("scaleType");
            if (jsonElement2 != null && (asString = jsonElement2.getAsString()) != null) {
                int iHashCode = asString.hashCode();
                if (iHashCode != -1364013995) {
                    if (iHashCode != 3143043) {
                        if (iHashCode == 847783313 && asString.equals("fit-center")) {
                            this.frameLayout.setScaleType(ImageView.ScaleType.FIT_CENTER);
                        } else {
                            this.frameLayout.setScaleType(ImageView.ScaleType.FIT_XY);
                        }
                    } else if (asString.equals("fill")) {
                        this.frameLayout.setScaleType(ImageView.ScaleType.FIT_XY);
                    } else {
                        this.frameLayout.setScaleType(ImageView.ScaleType.FIT_XY);
                    }
                } else if (asString.equals(TtmlNode.CENTER)) {
                    this.frameLayout.setScaleType(ImageView.ScaleType.CENTER);
                } else {
                    this.frameLayout.setScaleType(ImageView.ScaleType.FIT_XY);
                }
            }
            if (Intrinsics.c(asString2, this.mSrc)) {
                return;
            }
            parseImageUrl(asString2);
        } catch (Throwable th2) {
            notifyError(ERROR_MSG_I10001);
            TmcLogger.e(TAG, th2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v8, types: [T, java.lang.String] */
    private final void parseImageUrl(String url) {
        T t11;
        if (url == 0 || url.length() == 0) {
            notifyError(ERROR_MSG_I10001);
            return;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (StringsKt.W(url, "http", false, 2, null)) {
            objectRef.element = url;
        } else {
            String vhost = ((IImageResourceManager) TmcProxy.get(IImageResourceManager.class)).getVhost(this.mRender.getAppId());
            Intrinsics.g(vhost, "get(IImageResourceManage…).getVhost(mRender.appId)");
            if (StringsKt.W(url, "/", false, 2, null)) {
                t11 = vhost + url;
            } else {
                t11 = vhost + "/" + url;
            }
            objectRef.element = t11;
        }
        if (new Regex(".miniapp.transsion.com").containsMatchIn((CharSequence) objectRef.element)) {
            objectRef.element = ((IPackageResourceManager) TmcProxy.get(IPackageResourceManager.class)).getFilePath(this.mRender.getAppId(), (String) objectRef.element);
        } else if (StringsKt.W((String) objectRef.element, "http", false, 2, null)) {
            objectRef.element = url;
        } else {
            objectRef.element = null;
        }
        CharSequence charSequence = (CharSequence) objectRef.element;
        if (charSequence == null || charSequence.length() == 0) {
            notifyError(ERROR_MSG_I10001);
        } else {
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.integration.ui.native.a
                @Override // java.lang.Runnable
                public final void run() {
                    NativeImgComponent.parseImageUrl$lambda$3(this.f23439a, objectRef);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void parseImageUrl$lambda$3(NativeImgComponent this$0, Ref.ObjectRef imageUrl) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(imageUrl, "$imageUrl");
        try {
            this$0.loadImage((String) imageUrl.element);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            this$0.notifyError(ERROR_MSG_I10001);
        }
    }

    @Override // com.cloud.tmc.kernel.minicover.base.BaseNativeComponent
    public String getComponentName() {
        return "native-image";
    }

    @Override // com.cloud.tmc.kernel.minicover.base.BaseNativeComponent
    public View getComponentView() {
        return this.frameLayout;
    }

    public final ImageView getFrameLayout() {
        return this.frameLayout;
    }

    public final String getMSrc() {
        return this.mSrc;
    }

    @Override // com.cloud.tmc.kernel.minicover.lifecycle.BaseComponentLifecycle
    public void onAddView(JsonObject customObject, OnViewChangeCallback onViewChangeCallback) {
        Intrinsics.h(onViewChangeCallback, "onViewChangeCallback");
        if (customObject != null) {
            parseCustomJson(customObject);
        }
        onViewChangeCallback.onSuccess();
    }

    @Override // com.cloud.tmc.kernel.minicover.lifecycle.BaseComponentLifecycle
    public void onDestory() {
    }

    @Override // com.cloud.tmc.kernel.minicover.base.BaseNativeComponent
    public void onEventMessage(String methodName, JsonObject args, OnEventCallback callback) {
        Intrinsics.h(methodName, "methodName");
        Intrinsics.h(args, "args");
        Intrinsics.h(callback, "callback");
    }

    @Override // com.cloud.tmc.kernel.minicover.base.BaseNativeComponent
    public boolean onInterceptBackPressed() {
        return false;
    }

    @Override // com.cloud.tmc.kernel.minicover.lifecycle.BaseComponentLifecycle
    public void onPause() {
    }

    @Override // com.cloud.tmc.kernel.minicover.lifecycle.BaseComponentLifecycle
    public void onRemove() {
    }

    @Override // com.cloud.tmc.kernel.minicover.lifecycle.BaseComponentLifecycle
    public void onResume() {
    }

    @Override // com.cloud.tmc.kernel.minicover.lifecycle.BaseComponentLifecycle
    public void onStop() {
    }

    @Override // com.cloud.tmc.kernel.minicover.lifecycle.BaseComponentLifecycle
    public void onUpdateView(JsonObject customObject, OnViewChangeCallback onViewChangeCallback) {
        Intrinsics.h(onViewChangeCallback, "onViewChangeCallback");
        if (customObject != null) {
            parseCustomJson(customObject);
        }
        onViewChangeCallback.onSuccess();
    }

    public final void setMSrc(String str) {
        this.mSrc = str;
    }
}
