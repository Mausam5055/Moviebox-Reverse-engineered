package com.cloud.tmc.integration.resource.processor;

import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.resource.BaseResourceProcessor;
import com.cloud.tmc.integration.resource.ResourceAnalyseType;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.offline.IOfflineManagerProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.OfflineDownloadAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u0005H\u0016J)\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J3\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\r\u001a\u0004\u0018\u00010\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\u001f\u0010\u0007\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0096\u0002J)\u0010\u0007\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0096\u0002J\u001c\u0010\u0011\u001a\u00020\u00122\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u001c\u0010\u0011\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0013\u001a\u00020\u00122\b\u0010\u0003\u001a\u0004\u0018\u00010\u0005H\u0016J.\u0010\u0014\u001a\u00020\u00152\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002¨\u0006\u001b"}, d2 = {"Lcom/cloud/tmc/integration/resource/processor/OfflineDownloadResourceProcessor;", "Lcom/cloud/tmc/kernel/resource/IResourceProcessor;", "()V", "fuzzySearch", "", "", "appId", "get", "Landroid/webkit/WebResourceResponse;", "request", "Landroid/webkit/WebResourceRequest;", "node", "Lcom/cloud/tmc/kernel/node/Node;", "commonResId", "Ljava/io/File;", "url", TmcConstants.KEY_MINI_COMMONRES_ID, "shouldIntercept", "", "shouldInterceptFuzzySearch", "verifyServer", "", "app", "Lcom/cloud/tmc/integration/structure/App;", "page", "Lcom/cloud/tmc/integration/structure/Page;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OfflineDownloadResourceProcessor implements IResourceProcessor {
    private static final String TAG = "OfflineDownloadResource";

    private final void verifyServer(final String appId, final String url, final App app, final Page page) {
        boolean zEnableVerifyServerFile = ((IOfflineManagerProxy) TmcProxy.get(IOfflineManagerProxy.class)).enableVerifyServerFile(appId);
        TmcLogger.d(TAG, "enableVerifyServerFile: " + zEnableVerifyServerFile);
        if (zEnableVerifyServerFile) {
            ExecutorUtils.execute(ExecutorType.NETWORK, new Runnable() { // from class: com.cloud.tmc.integration.resource.processor.a
                @Override // java.lang.Runnable
                public final void run() {
                    OfflineDownloadResourceProcessor.verifyServer$lambda$1(appId, url, app, page);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void verifyServer$lambda$1(String str, String url, App app, Page page) {
        Intrinsics.h(url, "$url");
        if (str == null || str.length() == 0 || url.length() == 0) {
            TmcLogger.d(TAG, "appId or url is null or empty");
            return;
        }
        if (!NetworkUtils.isConnected()) {
            TmcLogger.d(TAG, "网络未连接，无法完成校验。" + url);
            return;
        }
        if (((IOfflineManagerProxy) TmcProxy.get(IOfflineManagerProxy.class)).verifyServerFile(str, url)) {
            TmcLogger.d(TAG, "文件校验通过，url: " + url);
            return;
        }
        TmcLogger.d(TAG, "文件失效，lastModified and eTag not valid, url: " + url + " ");
        if (app != null ? app.getBooleanValue(TmcConstants.KEY_DISABLE_OFFLINE_PROCESSOR) : false) {
            TmcLogger.d(TAG, "app refreshing...");
            return;
        }
        if (app != null) {
            app.putBooleanValue(TmcConstants.KEY_DISABLE_OFFLINE_PROCESSOR, true);
        }
        TmcLogger.d(TAG, "app start refresh...");
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        OfflineDownloadAnalyseType offlineDownloadAnalyseType = OfflineDownloadAnalyseType.OFFLINE_RESOURCE_URL_CHANGE;
        Bundle bundle = new Bundle();
        bundle.putString(OfflineConstantsKt.TRACK_KEY_OFFLINE_PKG_APPID, str);
        bundle.putString(OfflineConstantsKt.TRACK_KEY_OFFLINE_PKG_URL, url);
        Unit unit = Unit.f67061a;
        performanceAnalyseProxy.record(str, offlineDownloadAnalyseType, "", bundle);
        if (page != null) {
            page.refreshApp();
        }
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public List<String> fuzzySearch(String appId, String fuzzySearch) {
        return new ArrayList();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0038  */
    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public WebResourceResponse get(WebResourceRequest request, String appId, Node node) {
        App app;
        Uri url = request != null ? request.getUrl() : null;
        if (url == null) {
            return null;
        }
        String string = url.toString();
        Intrinsics.g(string, "uri.toString()");
        if (string.length() == 0) {
            return null;
        }
        if (node instanceof App) {
            app = (App) node;
        } else if (node instanceof Page) {
            Page page = node instanceof Page ? (Page) node : null;
            if (page != null) {
                app = page.getApp();
            } else {
                app = null;
            }
        } else {
            app = null;
        }
        Page page2 = node instanceof Page ? (Page) node : null;
        boolean zIsShellType = AppPrepareUtils.INSTANCE.isShellType(app != null ? app.getAppModel() : null);
        if (zIsShellType) {
            boolean booleanValue = app != null ? app.getBooleanValue(TmcConstants.KEY_DISABLE_OFFLINE_PROCESSOR) : false;
            TmcLogger.d(TAG, "是否关闭离线资源拦截器获取资源: " + booleanValue);
            if (booleanValue) {
                return null;
            }
        }
        File file = get(string, appId);
        if (file == null) {
            return null;
        }
        if (zIsShellType) {
            verifyServer(appId, string, app, page2);
        }
        try {
            return BaseResourceProcessor.addCommonWebRespHeaders(new WebResourceResponse(UrlUtils.getContentTypeFromUrl(string), BaseResourceProcessor.getResourceResponseEncoding(), new FileInputStream(file)));
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Failed to get resource", th2);
            return null;
        }
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public WebResourceResponse get(WebResourceRequest request, String appId, String commonResId, Node node) {
        return get(request, appId, node);
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public File get(String url, String appId) {
        String str;
        if (url != null && url.length() != 0 && appId != null && appId.length() != 0) {
            if (StringsKt.W(url, FileUtil.getVhost("100000"), false, 2, null)) {
                TmcLogger.d(TAG, "获取框架包离线资源：url=" + url);
                File offlineResources = ((IOfflineManagerProxy) TmcProxy.get(IOfflineManagerProxy.class)).getOfflineResources("100000", url);
                if (offlineResources != null) {
                    TmcLogger.d(TAG, "框架包离线资源命中：url=" + url + "，vUrl=" + url + "，filePath=" + offlineResources.getAbsolutePath());
                } else {
                    offlineResources = null;
                }
                if (offlineResources != null) {
                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(appId, ResourceAnalyseType.INTERCEPT_RESOURCE, offlineResources.getAbsolutePath());
                    return offlineResources;
                }
            }
            String vhost = FileUtil.getVhost(appId);
            try {
                String path = Uri.parse(url).getPath();
                if (path == null) {
                    return null;
                }
                if (StringsKt.W(path, "/", false, 2, null)) {
                    str = vhost + path;
                } else {
                    str = vhost + "/" + path;
                }
                TmcLogger.d(TAG, "获取离线资源：url=" + url);
                File offlineResources2 = ((IOfflineManagerProxy) TmcProxy.get(IOfflineManagerProxy.class)).getOfflineResources(appId, str);
                if (offlineResources2 == null) {
                    return null;
                }
                TmcLogger.d(TAG, "离线资源命中：url=" + url + "，vUrl=" + str + "，filePath=" + offlineResources2.getAbsolutePath());
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(appId, ResourceAnalyseType.INTERCEPT_RESOURCE, offlineResources2.getAbsolutePath());
                return offlineResources2;
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "Failed to get resource", th2);
            }
        }
        return null;
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public File get(String url, String appId, String commonresId) {
        return get(url, appId);
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public boolean shouldIntercept(WebResourceRequest request, String appId) {
        Uri url = request != null ? request.getUrl() : null;
        if (url == null) {
            return false;
        }
        String string = url.toString();
        Intrinsics.g(string, "uri.toString()");
        return string.length() > 0;
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public boolean shouldIntercept(String url, String appId) {
        return !(url == null || url.length() == 0);
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public boolean shouldInterceptFuzzySearch(String fuzzySearch) {
        return false;
    }
}
