package com.cloud.tmc.kernel.minicover;

import android.graphics.Color;
import android.view.View;
import android.widget.AbsoluteLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.minicover.NativeComponentManager;
import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.minicover.base.BaseNativeComponent;
import com.cloud.tmc.miniutils.util.SizeUtils;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/kernel/minicover/NativeCSSParser;", "", "()V", "parseBaseCSStyle", "", "argsJo", "Lcom/google/gson/JsonObject;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NativeCSSParser {
    public static final NativeCSSParser INSTANCE = new NativeCSSParser();

    private NativeCSSParser() {
    }

    public final void parseBaseCSStyle(JsonObject argsJo) {
        View componentView;
        JsonElement jsonElement;
        JsonElement jsonElement2;
        JsonElement jsonElement3;
        JsonElement jsonElement4;
        JsonElement jsonElement5;
        Intrinsics.h(argsJo, "argsJo");
        String viewId = argsJo.get(NativeComponentConstants.KEY_COMPONENT_VIEW_ID).getAsString();
        JsonElement jsonElement6 = argsJo.get(TtmlNode.TAG_STYLE);
        String asString = null;
        JsonObject asJsonObject = jsonElement6 != null ? jsonElement6.getAsJsonObject() : null;
        JsonElement jsonElement7 = argsJo.get(RequestParameters.POSITION);
        JsonObject asJsonObject2 = jsonElement7 != null ? jsonElement7.getAsJsonObject() : null;
        if (asJsonObject != null && (jsonElement5 = asJsonObject.get("bgColor")) != null) {
            asString = jsonElement5.getAsString();
        }
        float asFloat = 0.0f;
        float asFloat2 = (asJsonObject2 == null || (jsonElement4 = asJsonObject2.get("width")) == null) ? 0.0f : jsonElement4.getAsFloat();
        float asFloat3 = (asJsonObject2 == null || (jsonElement3 = asJsonObject2.get("height")) == null) ? 0.0f : jsonElement3.getAsFloat();
        float asFloat4 = (asJsonObject2 == null || (jsonElement2 = asJsonObject2.get(TtmlNode.LEFT)) == null) ? 0.0f : jsonElement2.getAsFloat();
        if (asJsonObject2 != null && (jsonElement = asJsonObject2.get(IntegrationConstants.TAB_BAR_POSITION_TOP)) != null) {
            asFloat = jsonElement.getAsFloat();
        }
        NativeComponentManager nativeComponentManager = NativeComponentManager.INSTANCE;
        Intrinsics.g(viewId, "viewId");
        BaseNativeComponent componentView2 = nativeComponentManager.getComponentView(viewId);
        if (componentView2 == null || (componentView = componentView2.getComponentView()) == null) {
            return;
        }
        if (asString != null) {
            componentView.setBackgroundColor(Color.parseColor(asString));
        }
        componentView.setLayoutParams(new AbsoluteLayout.LayoutParams(SizeUtils.dp2px(asFloat2), SizeUtils.dp2px(asFloat3), SizeUtils.dp2px(asFloat4), SizeUtils.dp2px(asFloat)));
    }
}
