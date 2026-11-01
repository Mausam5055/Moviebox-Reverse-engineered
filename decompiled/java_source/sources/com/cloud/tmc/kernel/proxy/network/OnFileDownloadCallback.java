package com.cloud.tmc.kernel.proxy.network;

import com.cloud.tmc.kernel.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import okhttp3.Headers;
import okhttp3.MediaType;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, d2 = {"Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;", "Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;", "contentType", "", "contextType", "Lokhttp3/MediaType;", "responseHeader", "headers", "Lokhttp3/Headers;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface OnFileDownloadCallback extends PackageDownloadCallback {
    boolean contentType(MediaType contextType);

    boolean responseHeader(Headers headers);
}
