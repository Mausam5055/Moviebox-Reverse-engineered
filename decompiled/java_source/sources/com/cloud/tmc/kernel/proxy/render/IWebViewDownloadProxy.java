package com.cloud.tmc.kernel.proxy.render;

import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.defaultImpl.DefaultWebViewDownloadImpl")
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J@\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\fH&J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fH&¨\u0006\u0010"}, d2 = {"Lcom/cloud/tmc/kernel/proxy/render/IWebViewDownloadProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "dispatchDownloadEvent", "", "node", "Lcom/cloud/tmc/kernel/node/Node;", "url", "", "userAgent", "contentDisposition", "mimetype", "contentLength", "", "dispatchDownloadFailEvent", "data", "Lcom/google/gson/JsonObject;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IWebViewDownloadProxy extends Proxiable {
    void dispatchDownloadEvent(Node node, String url, String userAgent, String contentDisposition, String mimetype, long contentLength);

    void dispatchDownloadFailEvent(Node node, JsonObject data);
}
