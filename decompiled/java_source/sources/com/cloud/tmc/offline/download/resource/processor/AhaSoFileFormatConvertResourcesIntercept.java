package com.cloud.tmc.offline.download.resource.processor;

import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.cloud.tmc.offline.download.OfflineManager;
import com.cloud.tmc.offline.download.resource.IOfflineResourceManagerProxy;
import com.cloud.tmc.offline.download.resource.processor.intercept.IOfflineResourceIntercept;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0002¨\u0006\u000b"}, d2 = {"Lcom/cloud/tmc/offline/download/resource/processor/AhaSoFileFormatConvertResourcesIntercept;", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;", "()V", "intercept", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;", "chain", "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;", "searchSoFile", "manager", "Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;", "Companion", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AhaSoFileFormatConvertResourcesIntercept implements IOfflineResourceIntercept {
    public static final String SUFFIX_SPECIAL = "@===";
    private static final String TAG = "AhaSoFileFormatConvertR";

    private final IOfflineResourceIntercept.Result searchSoFile(IOfflineResourceIntercept.Chain chain, IOfflineResourceManagerProxy manager) {
        TmcLogger.d(TAG, "Searching for file at url: " + chain.getParams().getUrl());
        String url = chain.getParams().getUrl();
        if (url == null) {
            return chain.proceed(chain.getParams());
        }
        File zipFileByPath = FileUtils.getFileByPath(manager != null ? manager.getFilePath(StringsKt.O(url, ".so", "@===.zip", true)) : null);
        if (!FileUtils.isFileExists(zipFileByPath)) {
            return chain.proceed(chain.getParams());
        }
        String absolutePath = zipFileByPath.getAbsolutePath();
        Intrinsics.g(absolutePath, "zipFileByPath.absolutePath");
        String strO = StringsKt.O(absolutePath, "@===.zip", ".so", true);
        if (FileUtils.isFileExists(strO)) {
            return new IOfflineResourceIntercept.Result(FileUtils.getFileByPath(strO));
        }
        Intrinsics.g(zipFileByPath, "zipFileByPath");
        File fileU = FilesKt.u(zipFileByPath, new File(strO), true, 0, 4, null);
        IOfflineResourceIntercept.Result result = new IOfflineResourceIntercept.Result(null, 1, null);
        result.setBody(fileU);
        return result;
    }

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
        if (StringsKt.F(url, ".so", true) && OfflineManager.isEnableAhaSoFormatConvert$com_cloud_tmc_offline_download()) {
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
                try {
                    return searchSoFile(chain, iOfflineResourceManagerProxy);
                } catch (Throwable unused) {
                    return chain.proceed(chain.getParams());
                }
            }
            IOfflineResourceIntercept.Result result = new IOfflineResourceIntercept.Result(null, 1, null);
            result.setBody(fileByPath);
            return result;
        }
        return chain.proceed(params);
    }
}
