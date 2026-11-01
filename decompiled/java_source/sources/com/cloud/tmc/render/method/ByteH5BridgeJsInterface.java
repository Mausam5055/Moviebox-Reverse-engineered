package com.cloud.tmc.render.method;

import android.webkit.JavascriptInterface;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.render.WebviewPageEventCallback;
import com.cloud.tmc.render.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0007J\u0010\u0010\n\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;", "", "()V", "pageEventCallback", "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;", "clear", "", "h5SendToNative", "result", "", "setWebviewPageEventCallback", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ByteH5BridgeJsInterface {
    private WebviewPageEventCallback pageEventCallback;

    public final void clear() {
        this.pageEventCallback = null;
    }

    @JavascriptInterface
    public final void h5SendToNative(String result) {
        WebviewPageEventCallback webviewPageEventCallback;
        TmcLogger.d("juggist", "h5SendToNative:" + result);
        if (result == null || (webviewPageEventCallback = this.pageEventCallback) == null) {
            return;
        }
        webviewPageEventCallback.onConsoleMessage(result);
    }

    public final void setWebviewPageEventCallback(WebviewPageEventCallback pageEventCallback) {
        this.pageEventCallback = pageEventCallback;
    }
}
