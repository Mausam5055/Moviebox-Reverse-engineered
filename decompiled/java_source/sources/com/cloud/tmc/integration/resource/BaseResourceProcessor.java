package com.cloud.tmc.integration.resource;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import androidx.annotation.NonNull;
import com.alibaba.sdk.android.oss.common.OSSHeaders;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.resource.processor.FileResourceProcessor;
import com.cloud.tmc.integration.resource.processor.ImageResourceProcessor;
import com.cloud.tmc.integration.resource.processor.InjectJavaScriptResourceProcessor;
import com.cloud.tmc.integration.resource.processor.OfflineDownloadResourceProcessor;
import com.cloud.tmc.integration.resource.processor.PackageResourceProcessor;
import com.cloud.tmc.integration.resource.processor.ShellResourceProcessor;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.google.gson.reflect.TypeToken;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class BaseResourceProcessor implements IResourceProcessor {
    private static final String TAG = "BaseResourceProcessor";
    private static final List<IResourceProcessor> processors;
    private static String resourceResponseEncoding = "";

    static {
        ArrayList arrayList = new ArrayList();
        processors = arrayList;
        arrayList.add(new InjectJavaScriptResourceProcessor());
        arrayList.add(new ShellResourceProcessor());
        arrayList.add(new PackageResourceProcessor());
        arrayList.add(new FileResourceProcessor());
        arrayList.add(new OfflineDownloadResourceProcessor());
        arrayList.add(new ImageResourceProcessor());
    }

    @NonNull
    public static WebResourceResponse addCommonWebRespHeaders(@NonNull WebResourceResponse webResourceResponse) {
        try {
            Map<String, String> responseHeaders = webResourceResponse.getResponseHeaders();
            if (responseHeaders == null) {
                responseHeaders = new HashMap<>();
            }
            responseHeaders.put(OSSHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, "*");
            responseHeaders.put(OSSHeaders.ACCESS_CONTROL_ALLOW_HEADERS, "*");
            Map<? extends String, ? extends String> map = (Map) GsonUtils.fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_CORS_LIST, "{}"), new TypeToken<Map<String, String>>() { // from class: com.cloud.tmc.integration.resource.BaseResourceProcessor.1
            }.getType());
            if (map != null && map.size() > 0) {
                responseHeaders.putAll(map);
            }
            webResourceResponse.setResponseHeaders(responseHeaders);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
        }
        return webResourceResponse;
    }

    public static String getResourceResponseEncoding() {
        String safeCharset = "UTF-8";
        if (!TextUtils.isEmpty(resourceResponseEncoding)) {
            return resourceResponseEncoding;
        }
        try {
            safeCharset = FileUtil.getSafeCharset(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_RESOURCE_RESPONSE_ENCODING, "UTF-8"), "UTF-8");
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "encoding error:", th2);
        }
        resourceResponseEncoding = safeCharset;
        return safeCharset;
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public List<String> fuzzySearch(String str, String str2) {
        for (IResourceProcessor iResourceProcessor : processors) {
            if (iResourceProcessor != null && iResourceProcessor.shouldInterceptFuzzySearch(str2)) {
                List<String> listFuzzySearch = iResourceProcessor.fuzzySearch(str, str2);
                if (!listFuzzySearch.isEmpty()) {
                    return listFuzzySearch;
                }
            }
        }
        return null;
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public WebResourceResponse get(WebResourceRequest webResourceRequest, String str, Node node) {
        WebResourceResponse webResourceResponse;
        for (IResourceProcessor iResourceProcessor : processors) {
            if (iResourceProcessor != null && iResourceProcessor.shouldIntercept(webResourceRequest, str) && (webResourceResponse = iResourceProcessor.get(webResourceRequest, str, node)) != null) {
                return addCommonWebRespHeaders(webResourceResponse);
            }
        }
        String path = webResourceRequest.getUrl().getPath();
        TraceLog.d("TmcKernel", "realPath =" + path);
        if (!TextUtils.isEmpty(path) && new File(path).exists()) {
            try {
                if (path.endsWith(".css")) {
                    return addCommonWebRespHeaders(new WebResourceResponse("text/css", getResourceResponseEncoding(), new FileInputStream(path)));
                }
                if (path.endsWith(".js")) {
                    return addCommonWebRespHeaders(new WebResourceResponse("text/javascript", getResourceResponseEncoding(), new FileInputStream(path)));
                }
                return null;
            } catch (FileNotFoundException e11) {
                e11.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public WebResourceResponse get(WebResourceRequest webResourceRequest, String str, String str2, Node node) {
        WebResourceResponse webResourceResponse;
        for (IResourceProcessor iResourceProcessor : processors) {
            if (iResourceProcessor != null && iResourceProcessor.shouldIntercept(webResourceRequest, str) && (webResourceResponse = iResourceProcessor.get(webResourceRequest, str, str2, node)) != null) {
                return addCommonWebRespHeaders(webResourceResponse);
            }
        }
        String path = webResourceRequest.getUrl().getPath();
        TraceLog.d("TmcKernel", "realPath =" + path);
        if (!TextUtils.isEmpty(path) && new File(path).exists()) {
            try {
                if (path.endsWith(".css")) {
                    return addCommonWebRespHeaders(new WebResourceResponse("text/css", getResourceResponseEncoding(), new FileInputStream(path)));
                }
                if (path.endsWith(".js")) {
                    return addCommonWebRespHeaders(new WebResourceResponse("text/javascript", getResourceResponseEncoding(), new FileInputStream(path)));
                }
                return null;
            } catch (FileNotFoundException e11) {
                e11.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public File get(String str, String str2) {
        File file;
        for (IResourceProcessor iResourceProcessor : processors) {
            if (iResourceProcessor != null && iResourceProcessor.shouldIntercept(str, str2) && (file = iResourceProcessor.get(str, str2)) != null) {
                return file;
            }
        }
        return null;
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public File get(String str, String str2, String str3) {
        File file;
        for (IResourceProcessor iResourceProcessor : processors) {
            if (iResourceProcessor != null && iResourceProcessor.shouldIntercept(str, str2) && (file = iResourceProcessor.get(str, str2, str3)) != null) {
                return file;
            }
        }
        return null;
    }

    public void parse(String str) {
        Uri uri = Uri.parse(str);
        TmcLogger.d("解析url:appid:" + uri.getQueryParameter("appId"));
        TmcLogger.d("解析url:page:" + uri.getFragment());
        String strUrlDecode = UrlUtils.urlDecode(uri.getQueryParameter("query"));
        TmcLogger.d("解析query:decode:" + strUrlDecode);
        Uri uri2 = Uri.parse("https://xx.xx.com?" + strUrlDecode);
        Set<String> queryParameterNames = uri2.getQueryParameterNames();
        TmcLogger.d("解析 提取query参数:");
        for (String str2 : queryParameterNames) {
            TmcLogger.d("decode  " + str2 + ":   " + uri2.getQueryParameter(str2));
        }
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public boolean shouldIntercept(WebResourceRequest webResourceRequest, String str) {
        for (IResourceProcessor iResourceProcessor : processors) {
            if (iResourceProcessor != null && iResourceProcessor.shouldIntercept(webResourceRequest, str)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public boolean shouldIntercept(String str, String str2) {
        for (IResourceProcessor iResourceProcessor : processors) {
            if (iResourceProcessor != null && iResourceProcessor.shouldIntercept(str, str2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public boolean shouldInterceptFuzzySearch(String str) {
        for (IResourceProcessor iResourceProcessor : processors) {
            if (iResourceProcessor != null && iResourceProcessor.shouldInterceptFuzzySearch(str)) {
                return true;
            }
        }
        return false;
    }
}
