package com.cloud.tmc.offline.download.resource.processor;

import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.cloud.tmc.offline.download.resource.IOfflineResourceManagerProxy;
import com.cloud.tmc.offline.download.resource.processor.intercept.IOfflineResourceIntercept;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/offline/download/resource/processor/FileResourceIntercept;", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;", "()V", "intercept", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;", "chain", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FileResourceIntercept implements IOfflineResourceIntercept {
    @Override // com.cloud.tmc.offline.download.resource.processor.intercept.IOfflineResourceIntercept
    public IOfflineResourceIntercept.Result intercept(IOfflineResourceIntercept.Chain chain) {
        String str;
        Intrinsics.h(chain, "chain");
        IOfflineResourceIntercept.Params params = chain.getParams();
        String appId = params.getAppId();
        String url = params.getUrl();
        if (appId == null || appId.length() == 0 || url == null || url.length() == 0) {
            return new IOfflineResourceIntercept.Result(null, 1, null);
        }
        IOfflineResourceManagerProxy iOfflineResourceManagerProxy = (IOfflineResourceManagerProxy) TmcProxy.get(IOfflineResourceManagerProxy.class);
        String vhost = iOfflineResourceManagerProxy.getVhost(appId);
        if (!StringsKt.W(url, vhost, false, 2, null)) {
            if (StringsKt.W(url, "/", false, 2, null)) {
                str = vhost + url;
            } else {
                str = vhost + "/" + url;
            }
            url = str;
        }
        if (StringsKt.G(url, "/", false, 2, null)) {
            url = url.substring(0, url.length() - 1);
            Intrinsics.g(url, "this as java.lang.String…ing(startIndex, endIndex)");
        }
        File fileByPath = FileUtils.getFileByPath(iOfflineResourceManagerProxy.getFilePath(url));
        if (!FileUtils.isFileExists(fileByPath)) {
            return chain.proceed(params);
        }
        IOfflineResourceIntercept.Result result = new IOfflineResourceIntercept.Result(null, 1, null);
        result.setBody(fileByPath);
        return result;
    }
}
