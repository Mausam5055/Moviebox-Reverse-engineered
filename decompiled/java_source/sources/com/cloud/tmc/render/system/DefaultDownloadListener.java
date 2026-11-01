package com.cloud.tmc.render.system;

import android.webkit.DownloadListener;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.render.IWebViewDownloadProxy;
import com.cloud.tmc.render.BuildConfig;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ8\u0010\u000b\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0014"}, d2 = {"Lcom/cloud/tmc/render/system/DefaultDownloadListener;", "Landroid/webkit/DownloadListener;", "node", "Lcom/cloud/tmc/kernel/node/Node;", "(Lcom/cloud/tmc/kernel/node/Node;)V", "getNode", "()Lcom/cloud/tmc/kernel/node/Node;", "onDownloadFail", "", "data", "Lcom/google/gson/JsonObject;", "onDownloadStart", "url", "", "userAgent", "contentDisposition", "mimetype", "contentLength", "", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DefaultDownloadListener implements DownloadListener {
    private static final String TAG = "DefaultDownloadListener";
    private final Node node;

    public DefaultDownloadListener(Node node) {
        Intrinsics.h(node, "node");
        this.node = node;
    }

    public final Node getNode() {
        return this.node;
    }

    public final void onDownloadFail(JsonObject data) {
        Intrinsics.h(data, "data");
        try {
            ((IWebViewDownloadProxy) TmcProxy.get(IWebViewDownloadProxy.class)).dispatchDownloadFailEvent(this.node, data);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "", th2);
        }
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(String url, String userAgent, String contentDisposition, String mimetype, long contentLength) {
        try {
            ((IWebViewDownloadProxy) TmcProxy.get(IWebViewDownloadProxy.class)).dispatchDownloadEvent(this.node, url, userAgent, contentDisposition, mimetype, contentLength);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "", th2);
        }
    }
}
