package com.cloud.tmc.integration.resource.processor;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.resource.BaseResourceProcessor;
import com.cloud.tmc.integration.resource.ResourceAnalyseType;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.resource.IFileResourceManager;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.miniutils.util.FileUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FileResourceProcessor implements IResourceProcessor {
    private static final String TAG = "FileResourceProcessor";

    private String checkVUrl(String str) {
        return FileUtil.checkTempDataVUrl(FileUtil.checkLocalDataVUrl(str));
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public List<String> fuzzySearch(String str, String str2) {
        IFileResourceManager iFileResourceManager = (IFileResourceManager) TmcProxy.get(IFileResourceManager.class);
        return iFileResourceManager.fuzzySearchByVUrl(iFileResourceManager.getVhost(str), str2);
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    @Nullable
    public WebResourceResponse get(WebResourceRequest webResourceRequest, String str, Node node) {
        Uri url = webResourceRequest.getUrl();
        if (url == null) {
            return null;
        }
        String string = url.toString();
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        File file = get(string, str);
        if (file == null) {
            file = get(string, "100000");
        }
        String absolutePath = file != null ? file.getAbsolutePath() : "";
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(str, ResourceAnalyseType.INTERCEPT_RESOURCE, " " + absolutePath);
        if (!TextUtils.isEmpty(absolutePath)) {
            try {
                return BaseResourceProcessor.addCommonWebRespHeaders(new WebResourceResponse(UrlUtils.getContentTypeFromUrl(string), BaseResourceProcessor.getResourceResponseEncoding(), new FileInputStream(absolutePath)));
            } catch (FileNotFoundException e11) {
                e11.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public WebResourceResponse get(WebResourceRequest webResourceRequest, String str, String str2, Node node) {
        return get(webResourceRequest, str, node);
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public File get(String str, String str2) {
        String str3;
        String path;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            TmcLogger.d(TAG, "获取文件资源：appId: " + str2 + ", url=" + str);
            String vhost = FileUtil.getVhost(str2);
            try {
                Uri uri = Uri.parse(checkVUrl(str));
                if (uri == null || (path = uri.getPath()) == null) {
                    str3 = null;
                } else if (path.startsWith("/")) {
                    str3 = vhost + path;
                } else {
                    str3 = vhost + "/" + path;
                }
                if (TextUtils.isEmpty(str3)) {
                    return null;
                }
                String filePath = ((IFileResourceManager) TmcProxy.get(IFileResourceManager.class)).getFilePath(str2, str3);
                if (!TextUtils.isEmpty(filePath)) {
                    TmcLogger.d(TAG, String.format("获取文件资源成功：url=%s, vUrl=%s, filePath=%s", str, str3, filePath));
                }
                return FileUtils.getFileByPath(filePath);
            } catch (Exception e11) {
                TmcLogger.e(TAG, "Failed to get resource", e11);
            }
        }
        return null;
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public File get(String str, String str2, String str3) {
        return get(str, str2);
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public boolean shouldIntercept(WebResourceRequest webResourceRequest, String str) {
        Uri url = webResourceRequest.getUrl();
        if (url == null) {
            return false;
        }
        return !TextUtils.isEmpty(url.toString());
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public boolean shouldIntercept(String str, String str2) {
        return !TextUtils.isEmpty(str);
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public boolean shouldInterceptFuzzySearch(String str) {
        return !TextUtils.isEmpty(str);
    }
}
