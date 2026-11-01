package com.cloud.tmc.kernel.minicover.base;

import android.content.Context;
import android.view.View;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.bridge.RenderBridge;
import com.cloud.tmc.kernel.bridge.RenderCallContext;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.minicover.callback.OnEventCallback;
import com.cloud.tmc.kernel.minicover.lifecycle.BaseComponentLifecycle;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.utils.JsonObjectUtils;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u0006\u0010\u0011\u001a\u00020\u0005J\b\u0010\u0012\u001a\u00020\u0005H&J\b\u0010\u0013\u001a\u00020\u0014H&J\b\u0010\u0015\u001a\u0004\u0018\u00010\bJ\b\u0010\u0016\u001a\u00020\u0005H\u0002J\b\u0010\u0017\u001a\u00020\u0005H\u0002J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH&J\b\u0010\u001f\u001a\u00020\u000bH&J\u0016\u0010 \u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;", "Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle;", "context", "Landroid/content/Context;", "renderId", "", NativeComponentConstants.KEY_COMPONENT_VIEW_ID, EventConstants.ADDRESS_RENDER, "Lcom/cloud/tmc/kernel/render/IRender;", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V", "isFixed", "", "()Z", "setFixed", "(Z)V", "weakRender", "Ljava/lang/ref/WeakReference;", "getComponentId", "getComponentName", "getComponentView", "Landroid/view/View;", "getIRender", "getNativeRenderId", "getNativeViewId", "onEventMessage", "", "methodName", NativeComponentConstants.KEY_COMPONENT_EVENT_ARGS, "Lcom/google/gson/JsonObject;", "callback", "Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;", "onInterceptBackPressed", "postEventMessage", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseNativeComponent implements BaseComponentLifecycle {
    private final Context context;
    private boolean isFixed;
    private final String renderId;
    private final String viewId;
    private final WeakReference<IRender> weakRender;

    public BaseNativeComponent(Context context, String renderId, String viewId, IRender iRender) {
        Intrinsics.h(context, "context");
        Intrinsics.h(renderId, "renderId");
        Intrinsics.h(viewId, "viewId");
        this.context = context;
        this.renderId = renderId;
        this.viewId = viewId;
        this.weakRender = new WeakReference<>(iRender);
    }

    /* JADX INFO: renamed from: getNativeRenderId, reason: from getter */
    private final String getRenderId() {
        return this.renderId;
    }

    /* JADX INFO: renamed from: getNativeViewId, reason: from getter */
    private final String getViewId() {
        return this.viewId;
    }

    public final String getComponentId() {
        return getComponentName() + '_' + getViewId();
    }

    public abstract String getComponentName();

    public abstract View getComponentView();

    public final IRender getIRender() {
        return this.weakRender.get();
    }

    /* JADX INFO: renamed from: isFixed, reason: from getter */
    public final boolean getIsFixed() {
        return this.isFixed;
    }

    public abstract void onEventMessage(String methodName, JsonObject args, OnEventCallback callback);

    public abstract boolean onInterceptBackPressed();

    public final void postEventMessage(String methodName, JsonObject args) {
        RenderBridge renderBridge;
        Intrinsics.h(methodName, "methodName");
        Intrinsics.h(args, "args");
        JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty("abilityName", NativeComponentConstants.NATIVE_DISPATCH_EVENT).addProperty(NativeComponentConstants.KEY_COMPONENT_ID, getComponentId()).addProperty("renderId", getRenderId()).addProperty("methodName", methodName).addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, NativeComponentConstants.KEY_COMPONENT_TYPE_NATIVE_CALL).addProperty("callbackId", getComponentId()).add(NativeComponentConstants.KEY_COMPONENT_EVENT_ARGS, args).build();
        Intrinsics.g(jsonObjectBuild, "create()\n            .ad…rgs)\n            .build()");
        JsonObject jsonObjectBuild2 = JsonObjectUtils.create().addProperty("callbackId", getComponentId()).add("dataJson", jsonObjectBuild).build();
        Intrinsics.g(jsonObjectBuild2, "create()\n            .ad…son)\n            .build()");
        RenderCallContext.Builder builderParam = RenderCallContext.newBuilder(getIRender()).action("message").type("call").param(jsonObjectBuild2);
        IRender iRender = getIRender();
        if (iRender == null || (renderBridge = iRender.getRenderBridge()) == null) {
            return;
        }
        renderBridge.sendToRender(builderParam.build(), null);
    }

    public final void setFixed(boolean z10) {
        this.isFixed = z10;
    }
}
