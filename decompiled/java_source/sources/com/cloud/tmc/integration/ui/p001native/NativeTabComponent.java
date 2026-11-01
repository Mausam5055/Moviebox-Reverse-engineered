package com.cloud.tmc.integration.ui.p001native;

import android.content.Context;
import android.view.View;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.ui.data.NativeTabBean;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.minicover.base.BaseNativeComponent;
import com.cloud.tmc.kernel.minicover.callback.OnEventCallback;
import com.cloud.tmc.kernel.minicover.callback.OnViewChangeCallback;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u0000 12\u00020\u0001:\u000212B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u0019\u001a\u00020\u0005H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u001a\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020\u001dH\u0016J \u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020'H\u0016J\b\u0010(\u001a\u00020)H\u0016J\b\u0010*\u001a\u00020\u001dH\u0016J\b\u0010+\u001a\u00020\u001dH\u0016J\b\u0010,\u001a\u00020\u001dH\u0016J\b\u0010-\u001a\u00020\u001dH\u0016J\u001a\u0010.\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u000e\u0010/\u001a\u00020\u001d2\u0006\u00100\u001a\u00020\u001fR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0015\u0010\u000e\u001a\u00060\u000fR\u00020\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u00063"}, d2 = {"Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;", "Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;", "context", "Landroid/content/Context;", "renderId", "", NativeComponentConstants.KEY_COMPONENT_VIEW_ID, EventConstants.ADDRESS_RENDER, "Lcom/cloud/tmc/kernel/render/IRender;", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V", "frameLayout", "Lcom/cloud/tmc/integration/ui/native/NativeTabView;", "getFrameLayout", "()Lcom/cloud/tmc/integration/ui/native/NativeTabView;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;", "getListener", "()Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;", "mId", "nativeTabBean", "Lcom/cloud/tmc/integration/ui/data/NativeTabBean;", "getNativeTabBean", "()Lcom/cloud/tmc/integration/ui/data/NativeTabBean;", "setNativeTabBean", "(Lcom/cloud/tmc/integration/ui/data/NativeTabBean;)V", "getComponentName", "getComponentView", "Landroid/view/View;", "onAddView", "", "customObject", "Lcom/google/gson/JsonObject;", "onViewChangeCallback", "Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;", "onDestory", "onEventMessage", "methodName", NativeComponentConstants.KEY_COMPONENT_EVENT_ARGS, "callback", "Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;", "onInterceptBackPressed", "", "onPause", "onRemove", "onResume", "onStop", "onUpdateView", "parseCustomJson", "json", "Companion", "MiniNativeTabListener", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class NativeTabComponent extends BaseNativeComponent {
    public static final String TAG = "NativeTabComponent";
    private final NativeTabView frameLayout;
    private final MiniNativeTabListener listener;
    private String mId;
    private NativeTabBean nativeTabBean;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;", "Lcom/cloud/tmc/integration/ui/native/INativeTabListener;", "(Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;)V", "onTabEvent", "", EventConstants.KEY_EVENT_NAME, "", "json", "Lcom/google/gson/JsonObject;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public final class MiniNativeTabListener implements INativeTabListener {
        public MiniNativeTabListener() {
        }

        @Override // com.cloud.tmc.integration.ui.p001native.INativeTabListener
        public void onTabEvent(String eventName, JsonObject json) {
            Intrinsics.h(eventName, "eventName");
            Intrinsics.h(json, "json");
            TmcLogger.e(NativeTabComponent.TAG, "onTabEvent id=" + NativeTabComponent.this.mId + " eventName=" + eventName + " $ json = " + json);
            NativeTabComponent.this.postEventMessage(eventName, json);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeTabComponent(Context context, String renderId, String viewId, IRender render) {
        super(context, renderId, viewId, render);
        Intrinsics.h(context, "context");
        Intrinsics.h(renderId, "renderId");
        Intrinsics.h(viewId, "viewId");
        Intrinsics.h(render, "render");
        this.mId = viewId;
        this.frameLayout = new NativeTabView(context, null);
        this.listener = new MiniNativeTabListener();
        this.nativeTabBean = new NativeTabBean();
    }

    @Override // com.cloud.tmc.kernel.minicover.base.BaseNativeComponent
    public String getComponentName() {
        return "native-tab";
    }

    @Override // com.cloud.tmc.kernel.minicover.base.BaseNativeComponent
    public View getComponentView() {
        return this.frameLayout;
    }

    public final NativeTabView getFrameLayout() {
        return this.frameLayout;
    }

    public final MiniNativeTabListener getListener() {
        return this.listener;
    }

    public final NativeTabBean getNativeTabBean() {
        return this.nativeTabBean;
    }

    @Override // com.cloud.tmc.kernel.minicover.lifecycle.BaseComponentLifecycle
    public void onAddView(JsonObject customObject, OnViewChangeCallback onViewChangeCallback) {
        Intrinsics.h(onViewChangeCallback, "onViewChangeCallback");
        this.frameLayout.addNativeTabListener(this.listener);
        if (customObject != null) {
            parseCustomJson(customObject);
        }
        onViewChangeCallback.onSuccess();
    }

    @Override // com.cloud.tmc.kernel.minicover.lifecycle.BaseComponentLifecycle
    public void onDestory() {
        this.frameLayout.removeNativeTabListener(this.listener);
    }

    @Override // com.cloud.tmc.kernel.minicover.base.BaseNativeComponent
    public void onEventMessage(String methodName, JsonObject args, OnEventCallback callback) {
        Intrinsics.h(methodName, "methodName");
        Intrinsics.h(args, "args");
        Intrinsics.h(callback, "callback");
        if (Intrinsics.c(methodName, "switchTab")) {
            this.frameLayout.switchTab(args.get("index").getAsInt());
        }
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

    public final void parseCustomJson(JsonObject json) {
        NativeTabBean nativeTabBean;
        Intrinsics.h(json, "json");
        try {
            try {
                String string = json.toString();
                Intrinsics.g(string, "json.toString()");
                Type type = new TypeToken<NativeTabBean>() { // from class: com.cloud.tmc.integration.ui.native.NativeTabComponent$parseCustomJson$tabBar$1
                }.getType();
                Intrinsics.g(type, "object :\n               …<NativeTabBean>() {}.type");
                nativeTabBean = (NativeTabBean) TmcGsonUtils.fromJson(string, type);
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "tabBarConfig json parse error", th2);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("errMsg", NativeTabView.ERROR_MSG_T10002);
                this.listener.onTabEvent("error", jsonObject);
                nativeTabBean = null;
            }
            if (Intrinsics.c(nativeTabBean, this.nativeTabBean) || nativeTabBean == null) {
                return;
            }
            this.nativeTabBean = nativeTabBean;
            this.frameLayout.setTabStyle(nativeTabBean);
        } catch (Throwable th3) {
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.addProperty("errMsg", NativeTabView.ERROR_MSG_T10001);
            this.listener.onTabEvent("error", jsonObject2);
            TmcLogger.e(TAG, th3);
        }
    }

    public final void setNativeTabBean(NativeTabBean nativeTabBean) {
        Intrinsics.h(nativeTabBean, "<set-?>");
        this.nativeTabBean = nativeTabBean;
    }
}
