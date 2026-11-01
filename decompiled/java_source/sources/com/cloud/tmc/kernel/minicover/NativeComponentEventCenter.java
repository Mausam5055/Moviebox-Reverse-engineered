package com.cloud.tmc.kernel.minicover;

import android.content.Context;
import android.graphics.Color;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.widget.AbsoluteLayout;
import android.widget.FrameLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.minicover.NativeComponentManager;
import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.bridge.RenderCallContext;
import com.cloud.tmc.kernel.bridge.model.ProtocolData;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.base.BaseNativeComponent;
import com.cloud.tmc.kernel.minicover.callback.OnEventCallback;
import com.cloud.tmc.kernel.minicover.callback.OnViewChangeCallback;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.utils.JsonObjectUtils;
import com.cloud.tmc.miniutils.util.SizeUtils;
import com.cloud.tmc.miniutils.util.ViewUtils;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nJ\u001a\u0010\f\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J2\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u0004H\u0002J<\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u00042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0018\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;", "", "()V", "TAG", "", "dispatchToComponentCenter", "", EventConstants.ADDRESS_RENDER, "Lcom/cloud/tmc/kernel/render/IRender;", "dataJson", "Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;", "dispatchToEventCenter", NativeComponentConstants.NATIVE_COMPONENT_INSERT, NativeComponentConstants.NATIVE_COMPONENT_REMOVE, "sendErrorMsgToRender", "callbackId", NativeComponentConstants.KEY_COMPONENT_ERRCODE, "errMsg", "abilityName", "sendSuccessMsgToRender", "methedName", NativeComponentConstants.KEY_COMPONENT_ID, "builder", "Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;", NativeComponentConstants.NATIVE_COMPONENT_UPDATE, BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NativeComponentEventCenter {
    public static final NativeComponentEventCenter INSTANCE = new NativeComponentEventCenter();
    private static final String TAG = "NativeComponentEventCenter";

    private NativeComponentEventCenter() {
    }

    private final void insertNativeCover(final IRender render, ProtocolData.NativeComponentDataJson dataJson) {
        JsonElement jsonElement;
        JsonElement jsonElement2;
        JsonElement jsonElement3;
        JsonElement jsonElement4;
        JsonElement jsonElement5;
        JsonElement jsonElement6;
        JsonElement jsonElement7;
        JsonElement jsonElement8;
        JsonElement jsonElement9;
        JsonElement jsonElement10;
        JsonElement jsonElement11;
        JsonElement jsonElement12;
        JsonElement jsonElement13;
        JsonObject asJsonObject = null;
        View view = render != null ? render.getView() : null;
        WebView webView = view instanceof WebView ? (WebView) view : null;
        Context context = webView != null ? webView.getContext() : null;
        if (context == null) {
            return;
        }
        String args = dataJson.getArgs();
        if (args == null) {
            args = "";
        }
        String callbackId = dataJson.getCallbackId();
        final String str = callbackId == null ? "" : callbackId;
        if (args.length() == 0) {
            sendErrorMsgToRender$default(this, render, str, "2", NativeComponentConstants.ERROR_MSG_NO_ARGS, null, 16, null);
            return;
        }
        try {
            JsonElement string = JsonParser.parseString(args);
            JsonObject asJsonObject2 = string != null ? string.getAsJsonObject() : null;
            String asString = (asJsonObject2 == null || (jsonElement13 = asJsonObject2.get("renderId")) == null) ? null : jsonElement13.getAsString();
            String asString2 = (asJsonObject2 == null || (jsonElement12 = asJsonObject2.get("name")) == null) ? null : jsonElement12.getAsString();
            String asString3 = (asJsonObject2 == null || (jsonElement11 = asJsonObject2.get(NativeComponentConstants.KEY_COMPONENT_VIEW_ID)) == null) ? null : jsonElement11.getAsString();
            TmcLogger.d(TAG, asString + ',' + asString2 + ',' + asString3);
            NativeComponentManager nativeComponentManager = NativeComponentManager.INSTANCE;
            if (asString3 == null) {
                asString3 = "";
            }
            final BaseNativeComponent baseNativeComponentAddNativeComponent = nativeComponentManager.addNativeComponent(context, asString3, asString == null ? "" : asString, asString2 == null ? "" : asString2, render);
            if (baseNativeComponentAddNativeComponent == null) {
                sendErrorMsgToRender$default(INSTANCE, render, str, "3", NativeComponentConstants.ERROR_MSG_COMPONENT_CREAT_FAILED, null, 16, null);
                return;
            }
            JsonObject asJsonObject3 = (asJsonObject2 == null || (jsonElement10 = asJsonObject2.get(TtmlNode.TAG_STYLE)) == null) ? null : jsonElement10.getAsJsonObject();
            JsonObject asJsonObject4 = (asJsonObject2 == null || (jsonElement9 = asJsonObject2.get(RequestParameters.POSITION)) == null) ? null : jsonElement9.getAsJsonObject();
            String asString4 = (asJsonObject3 == null || (jsonElement8 = asJsonObject3.get("bgColor")) == null) ? null : jsonElement8.getAsString();
            Float fValueOf = (asJsonObject4 == null || (jsonElement7 = asJsonObject4.get("width")) == null) ? null : Float.valueOf(jsonElement7.getAsFloat());
            Float fValueOf2 = (asJsonObject4 == null || (jsonElement6 = asJsonObject4.get("height")) == null) ? null : Float.valueOf(jsonElement6.getAsFloat());
            Float fValueOf3 = (asJsonObject4 == null || (jsonElement5 = asJsonObject4.get(TtmlNode.LEFT)) == null) ? null : Float.valueOf(jsonElement5.getAsFloat());
            Float fValueOf4 = (asJsonObject4 == null || (jsonElement4 = asJsonObject4.get(IntegrationConstants.TAB_BAR_POSITION_TOP)) == null) ? null : Float.valueOf(jsonElement4.getAsFloat());
            boolean asBoolean = false;
            int asInt = (asJsonObject3 == null || (jsonElement3 = asJsonObject3.get("zIndex")) == null) ? 0 : jsonElement3.getAsInt();
            if (asJsonObject2 != null && (jsonElement2 = asJsonObject2.get("customData")) != null) {
                asJsonObject = jsonElement2.getAsJsonObject();
            }
            if (asJsonObject3 != null && (jsonElement = asJsonObject3.get("fixed")) != null) {
                asBoolean = jsonElement.getAsBoolean();
            }
            View componentView = baseNativeComponentAddNativeComponent.getComponentView();
            if (asString4 != null) {
                componentView.setBackgroundColor(Color.parseColor(asString4));
            }
            int iDp2px = fValueOf != null ? SizeUtils.dp2px(fValueOf.floatValue()) : componentView.getLayoutParams().width;
            int iDp2px2 = fValueOf2 != null ? SizeUtils.dp2px(fValueOf2.floatValue()) : componentView.getLayoutParams().height;
            int iDp2px3 = fValueOf3 != null ? SizeUtils.dp2px(fValueOf3.floatValue()) : (int) componentView.getX();
            int iDp2px4 = fValueOf4 != null ? SizeUtils.dp2px(fValueOf4.floatValue()) : (int) componentView.getY();
            if (asInt > 0) {
                componentView.setZ(asInt);
            }
            if (asBoolean) {
                componentView.setLayoutParams(new FrameLayout.LayoutParams(iDp2px, iDp2px2));
                if (ViewUtils.isLayoutRtl()) {
                    componentView.setX(-iDp2px3);
                    componentView.setY(iDp2px4);
                } else {
                    componentView.setX(iDp2px3);
                    componentView.setY(iDp2px4);
                }
                render.getPage().addFixedView(componentView);
                baseNativeComponentAddNativeComponent.setFixed(asBoolean);
            } else {
                componentView.setLayoutParams(new AbsoluteLayout.LayoutParams(iDp2px, iDp2px2, iDp2px3, iDp2px4));
                webView.addView(componentView);
            }
            baseNativeComponentAddNativeComponent.onAddView(asJsonObject, new OnViewChangeCallback(render, str, baseNativeComponentAddNativeComponent) { // from class: com.cloud.tmc.kernel.minicover.NativeComponentEventCenter$insertNativeCover$1$2
                final /* synthetic */ BaseNativeComponent $component;
                private final String innerCallback;
                private final IRender innerRender;

                {
                    this.$component = baseNativeComponentAddNativeComponent;
                    this.innerRender = render;
                    this.innerCallback = str;
                }

                public final String getInnerCallback() {
                    return this.innerCallback;
                }

                public final IRender getInnerRender() {
                    return this.innerRender;
                }

                @Override // com.cloud.tmc.kernel.minicover.callback.OnViewChangeCallback
                public void onFailed(String errorCode, String errMsg) {
                    Intrinsics.h(errorCode, "errorCode");
                    Intrinsics.h(errMsg, "errMsg");
                    IRender iRender = this.innerRender;
                    if (iRender != null) {
                        NativeComponentEventCenter.sendErrorMsgToRender$default(NativeComponentEventCenter.INSTANCE, iRender, this.innerCallback, errorCode, errMsg, null, 16, null);
                    }
                }

                @Override // com.cloud.tmc.kernel.minicover.callback.OnViewChangeCallback
                public void onSuccess() {
                    IRender iRender = this.innerRender;
                    if (iRender != null) {
                        BaseNativeComponent baseNativeComponent = this.$component;
                        try {
                            baseNativeComponent.onResume();
                            if (!((NativeComponentProxy) TmcProxy.get(NativeComponentProxy.class)).checkResumedStatus(this.innerRender.getAppId())) {
                                TmcLogger.d("NativeComponentEventCenter", "insertNativeCover onPause");
                                baseNativeComponent.onPause();
                                baseNativeComponent.onStop();
                            }
                        } catch (Throwable th2) {
                            Log.e("NativeComponentEventCenter", "onSuccess: " + th2);
                        }
                        NativeComponentEventCenter.sendSuccessMsgToRender$default(NativeComponentEventCenter.INSTANCE, iRender, NativeComponentConstants.NATIVE_COMPONENT_INSERT, baseNativeComponent.getComponentId(), this.innerCallback, null, null, 48, null);
                    }
                }
            });
        } catch (Throwable th2) {
            sendErrorMsgToRender$default(this, render, str, "4", String.valueOf(th2.getMessage()), null, 16, null);
            TmcLogger.e(TAG, th2);
        }
    }

    private final void removeNativeCover(IRender render, ProtocolData.NativeComponentDataJson dataJson) {
        View view = render.getView();
        WebView webView = view instanceof WebView ? (WebView) view : null;
        String renderId = render.getRenderId();
        String args = dataJson.getArgs();
        String callbackId = dataJson.getCallbackId();
        if (args == null || args.length() == 0) {
            Intrinsics.g(callbackId, "callbackId");
            sendErrorMsgToRender$default(this, render, callbackId, "2", NativeComponentConstants.ERROR_MSG_NO_ARGS, null, 16, null);
            return;
        }
        String viewId = JsonParser.parseString(args).getAsJsonObject().get(NativeComponentConstants.KEY_COMPONENT_VIEW_ID).getAsString();
        NativeComponentManager nativeComponentManager = NativeComponentManager.INSTANCE;
        Intrinsics.g(viewId, "viewId");
        Intrinsics.g(renderId, "renderId");
        String strRemoveNativeComponent = nativeComponentManager.removeNativeComponent(webView, viewId, renderId);
        Intrinsics.g(callbackId, "callbackId");
        sendSuccessMsgToRender$default(this, render, NativeComponentConstants.NATIVE_COMPONENT_REMOVE, strRemoveNativeComponent, callbackId, null, null, 48, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendErrorMsgToRender(IRender render, String callbackId, String errCode, String errMsg, String abilityName) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("callbackId", callbackId);
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("abilityName", abilityName);
        jsonObject2.addProperty("callbackId", callbackId);
        JsonObject jsonObject3 = new JsonObject();
        jsonObject3.addProperty(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, Boolean.FALSE);
        jsonObject3.addProperty("errMsg", errMsg);
        jsonObject3.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, errCode);
        jsonObject2.addProperty("dataJson", jsonObject3.toString());
        jsonObject.add("dataJson", jsonObject2);
        RenderCallContext.Builder builderParam = RenderCallContext.newBuilder(render).action("message").type("call").param(jsonObject);
        if (render.getRenderBridge() != null) {
            render.getRenderBridge().sendToRender(builderParam.build(), null);
        }
    }

    static /* synthetic */ void sendErrorMsgToRender$default(NativeComponentEventCenter nativeComponentEventCenter, IRender iRender, String str, String str2, String str3, String str4, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            str4 = NativeComponentConstants.NATIVE_DISPATCH_COMPONENT;
        }
        nativeComponentEventCenter.sendErrorMsgToRender(iRender, str, str2, str3, str4);
    }

    public static /* synthetic */ void sendSuccessMsgToRender$default(NativeComponentEventCenter nativeComponentEventCenter, IRender iRender, String str, String str2, String str3, String str4, JsonObjectUtils.Builder builder, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            str4 = NativeComponentConstants.NATIVE_DISPATCH_COMPONENT;
        }
        String str5 = str4;
        if ((i11 & 32) != 0) {
            builder = null;
        }
        nativeComponentEventCenter.sendSuccessMsgToRender(iRender, str, str2, str3, str5, builder);
    }

    private final void updateNativeCover(final IRender render, ProtocolData.NativeComponentDataJson dataJson) {
        View componentView;
        JsonElement jsonElement;
        JsonElement jsonElement2;
        JsonElement jsonElement3;
        JsonElement jsonElement4;
        JsonElement jsonElement5;
        JsonElement jsonElement6;
        String args = dataJson.getArgs();
        final String callbackId = dataJson.getCallbackId();
        if (callbackId == null) {
            callbackId = "";
        }
        JsonObject asJsonObject = JsonParser.parseString(args).getAsJsonObject();
        String viewId = asJsonObject.get(NativeComponentConstants.KEY_COMPONENT_VIEW_ID).getAsString();
        JsonElement jsonElement7 = asJsonObject.get(TtmlNode.TAG_STYLE);
        JsonObject asJsonObject2 = jsonElement7 != null ? jsonElement7.getAsJsonObject() : null;
        JsonElement jsonElement8 = asJsonObject.get(RequestParameters.POSITION);
        JsonObject asJsonObject3 = jsonElement8 != null ? jsonElement8.getAsJsonObject() : null;
        String asString = (asJsonObject2 == null || (jsonElement6 = asJsonObject2.get("bgColor")) == null) ? null : jsonElement6.getAsString();
        Float fValueOf = (asJsonObject3 == null || (jsonElement5 = asJsonObject3.get("width")) == null) ? null : Float.valueOf(jsonElement5.getAsFloat());
        Float fValueOf2 = (asJsonObject3 == null || (jsonElement4 = asJsonObject3.get("height")) == null) ? null : Float.valueOf(jsonElement4.getAsFloat());
        Float fValueOf3 = (asJsonObject3 == null || (jsonElement3 = asJsonObject3.get(TtmlNode.LEFT)) == null) ? null : Float.valueOf(jsonElement3.getAsFloat());
        Float fValueOf4 = (asJsonObject3 == null || (jsonElement2 = asJsonObject3.get(IntegrationConstants.TAB_BAR_POSITION_TOP)) == null) ? null : Float.valueOf(jsonElement2.getAsFloat());
        int asInt = (asJsonObject2 == null || (jsonElement = asJsonObject2.get("zIndex")) == null) ? 0 : jsonElement.getAsInt();
        JsonElement jsonElement9 = asJsonObject.get("customData");
        JsonObject asJsonObject4 = jsonElement9 != null ? jsonElement9.getAsJsonObject() : null;
        NativeComponentManager nativeComponentManager = NativeComponentManager.INSTANCE;
        Intrinsics.g(viewId, "viewId");
        final BaseNativeComponent componentView2 = nativeComponentManager.getComponentView(viewId);
        if (componentView2 == null || (componentView = componentView2.getComponentView()) == null) {
            return;
        }
        if (asString != null) {
            componentView.setBackgroundColor(Color.parseColor(asString));
        }
        int iDp2px = fValueOf != null ? SizeUtils.dp2px(fValueOf.floatValue()) : componentView.getLayoutParams().width;
        int iDp2px2 = fValueOf2 != null ? SizeUtils.dp2px(fValueOf2.floatValue()) : componentView.getLayoutParams().height;
        int iDp2px3 = fValueOf3 != null ? SizeUtils.dp2px(fValueOf3.floatValue()) : (int) componentView.getX();
        int iDp2px4 = fValueOf4 != null ? SizeUtils.dp2px(fValueOf4.floatValue()) : (int) componentView.getY();
        if (asInt > 0) {
            componentView.setZ(asInt);
        }
        if (componentView2.getIsFixed()) {
            componentView.setLayoutParams(new FrameLayout.LayoutParams(iDp2px, iDp2px2));
            if (ViewUtils.isLayoutRtl()) {
                componentView.setX(-iDp2px3);
                componentView.setY(iDp2px4);
            } else {
                componentView.setX(iDp2px3);
                componentView.setY(iDp2px4);
            }
        } else {
            componentView.setLayoutParams(new AbsoluteLayout.LayoutParams(iDp2px, iDp2px2, iDp2px3, iDp2px4));
        }
        componentView2.onUpdateView(asJsonObject4, new OnViewChangeCallback(render, callbackId, componentView2) { // from class: com.cloud.tmc.kernel.minicover.NativeComponentEventCenter$updateNativeCover$1$2
            final /* synthetic */ BaseNativeComponent $component;
            private final String innerCallbackId;
            private final IRender innerRender;

            {
                this.$component = componentView2;
                this.innerRender = render;
                this.innerCallbackId = callbackId;
            }

            public final String getInnerCallbackId() {
                return this.innerCallbackId;
            }

            public final IRender getInnerRender() {
                return this.innerRender;
            }

            @Override // com.cloud.tmc.kernel.minicover.callback.OnViewChangeCallback
            public void onFailed(String errorCode, String errMsg) {
                Intrinsics.h(errorCode, "errorCode");
                Intrinsics.h(errMsg, "errMsg");
                NativeComponentEventCenter.sendErrorMsgToRender$default(NativeComponentEventCenter.INSTANCE, this.innerRender, this.innerCallbackId, errorCode, errMsg, null, 16, null);
            }

            @Override // com.cloud.tmc.kernel.minicover.callback.OnViewChangeCallback
            public void onSuccess() {
                NativeComponentEventCenter nativeComponentEventCenter = NativeComponentEventCenter.INSTANCE;
                IRender iRender = this.innerRender;
                String componentId = this.$component.getComponentId();
                if (componentId == null) {
                    componentId = "";
                }
                NativeComponentEventCenter.sendSuccessMsgToRender$default(nativeComponentEventCenter, iRender, NativeComponentConstants.NATIVE_COMPONENT_UPDATE, componentId, this.innerCallbackId, null, null, 48, null);
            }
        });
    }

    public final void dispatchToComponentCenter(IRender render, ProtocolData.NativeComponentDataJson dataJson) {
        Intrinsics.h(dataJson, "dataJson");
        if (render == null) {
            TmcLogger.d(TAG, "render is null ");
            return;
        }
        String methodName = dataJson.getMethodName();
        if (methodName != null) {
            int iHashCode = methodName.hashCode();
            if (iHashCode != -545227076) {
                if (iHashCode != -109072025) {
                    if (iHashCode == 585421143 && methodName.equals(NativeComponentConstants.NATIVE_COMPONENT_UPDATE)) {
                        updateNativeCover(render, dataJson);
                        return;
                    }
                } else if (methodName.equals(NativeComponentConstants.NATIVE_COMPONENT_INSERT)) {
                    insertNativeCover(render, dataJson);
                    return;
                }
            } else if (methodName.equals(NativeComponentConstants.NATIVE_COMPONENT_REMOVE)) {
                removeNativeCover(render, dataJson);
                return;
            }
        }
        String callbackId = dataJson.getCallbackId();
        Intrinsics.g(callbackId, "dataJson.callbackId");
        sendErrorMsgToRender$default(this, render, callbackId, "1", NativeComponentConstants.ERROR_MSG_NO_METHOD, null, 16, null);
    }

    public final void dispatchToEventCenter(final IRender render, ProtocolData.NativeComponentDataJson dataJson) {
        final BaseNativeComponent componentView;
        JsonElement jsonElement;
        Intrinsics.h(dataJson, "dataJson");
        if (render == null) {
            TmcLogger.d(TAG, "render is null ");
            return;
        }
        final String callbackId = dataJson.getCallbackId();
        if (callbackId == null) {
            callbackId = "";
        }
        final String methodName = dataJson.getMethodName();
        if (methodName == null) {
            methodName = "";
        }
        String args = dataJson.getArgs();
        JsonElement string = JsonParser.parseString(args != null ? args : "");
        String asString = null;
        JsonObject asJsonObject = string != null ? string.getAsJsonObject() : null;
        if (asJsonObject != null && (jsonElement = asJsonObject.get(NativeComponentConstants.KEY_COMPONENT_VIEW_ID)) != null) {
            asString = jsonElement.getAsString();
        }
        if (asString == null || asString.length() == 0 || (componentView = NativeComponentManager.INSTANCE.getComponentView(asString)) == null) {
            return;
        }
        componentView.onEventMessage(methodName, asJsonObject, new OnEventCallback(render, callbackId, methodName, componentView) { // from class: com.cloud.tmc.kernel.minicover.NativeComponentEventCenter$dispatchToEventCenter$1$1
            final /* synthetic */ BaseNativeComponent $it;
            final /* synthetic */ String $methodName;
            private final String innerCallBackId;
            private final IRender innerRender;

            {
                this.$methodName = methodName;
                this.$it = componentView;
                this.innerRender = render;
                this.innerCallBackId = callbackId;
            }

            public final String getInnerCallBackId() {
                return this.innerCallBackId;
            }

            public final IRender getInnerRender() {
                return this.innerRender;
            }

            @Override // com.cloud.tmc.kernel.minicover.callback.OnEventCallback
            public void onFailed(String errorCode, String errMsg) {
                Intrinsics.h(errorCode, "errorCode");
                Intrinsics.h(errMsg, "errMsg");
                IRender iRender = this.innerRender;
                if (iRender != null) {
                    NativeComponentEventCenter.INSTANCE.sendErrorMsgToRender(iRender, this.innerCallBackId, errorCode, errMsg, NativeComponentConstants.NATIVE_DISPATCH_EVENT);
                }
            }

            @Override // com.cloud.tmc.kernel.minicover.callback.OnEventCallback
            public void onSuccess(JsonObjectUtils.Builder jsonObjectBuilder) {
                IRender iRender = this.innerRender;
                if (iRender != null) {
                    NativeComponentEventCenter.INSTANCE.sendSuccessMsgToRender(iRender, this.$methodName, this.$it.getComponentId(), this.innerCallBackId, NativeComponentConstants.NATIVE_DISPATCH_EVENT, jsonObjectBuilder);
                }
            }
        });
    }

    public final void sendSuccessMsgToRender(IRender render, String methedName, String componentId, String callbackId, String abilityName, JsonObjectUtils.Builder builder) {
        JsonObject jsonObjectBuild;
        JsonObjectUtils.Builder builderAddProperty;
        Intrinsics.h(render, "render");
        Intrinsics.h(methedName, "methedName");
        Intrinsics.h(componentId, "componentId");
        Intrinsics.h(callbackId, "callbackId");
        Intrinsics.h(abilityName, "abilityName");
        if (builder == null || (builderAddProperty = builder.addProperty(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, Boolean.TRUE)) == null || (jsonObjectBuild = builderAddProperty.build()) == null) {
            jsonObjectBuild = JsonObjectUtils.create().addProperty(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, Boolean.TRUE).build();
        }
        Intrinsics.g(jsonObjectBuild, "builder?.addProperty(KEY…LT_SUCCESS, true).build()");
        JsonObject jsonObjectBuild2 = JsonObjectUtils.create().addProperty("abilityName", abilityName).addProperty(NativeComponentConstants.KEY_COMPONENT_ID, componentId).addProperty("renderId", render.getRenderId()).addProperty("methodName", methedName).addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, NativeComponentConstants.KEY_COMPONENT_TYPE_NATIVE_CALL).addProperty("callbackId", callbackId).add("dataJson", jsonObjectBuild).build();
        Intrinsics.g(jsonObjectBuild2, "create()\n            .ad…son)\n            .build()");
        JsonObject jsonObjectBuild3 = JsonObjectUtils.create().addProperty("callbackId", callbackId).add("dataJson", jsonObjectBuild2).build();
        Intrinsics.g(jsonObjectBuild3, "create()\n            .ad…son)\n            .build()");
        RenderCallContext.Builder builderParam = RenderCallContext.newBuilder(render).action("message").type("call").param(jsonObjectBuild3);
        if (render.getRenderBridge() != null) {
            render.getRenderBridge().sendToRender(builderParam.build(), null);
        }
    }
}
