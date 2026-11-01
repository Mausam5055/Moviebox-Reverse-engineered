package com.cloud.tmc.integration.resource.processor;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.resource.BaseResourceProcessor;
import com.cloud.tmc.integration.resource.ResourceAnalyseType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.resource.IPackageResourceManager;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.miniutils.util.FileUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class PackageResourceProcessor implements IResourceProcessor {
    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public List<String> fuzzySearch(String str, String str2) {
        IPackageResourceManager iPackageResourceManager = (IPackageResourceManager) TmcProxy.get(IPackageResourceManager.class);
        return iPackageResourceManager.fuzzySearchByVUrl(iPackageResourceManager.getVhost(str), str2);
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    @Nullable
    public WebResourceResponse get(WebResourceRequest webResourceRequest, String str, Node node) {
        String filePath;
        Uri url = webResourceRequest.getUrl();
        if (url == null) {
            return null;
        }
        String string = url.toString();
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        if (string.contains(UrlUtils.QUESTION_MARK)) {
            string = string.substring(0, string.indexOf(UrlUtils.QUESTION_MARK));
        }
        IPackageResourceManager iPackageResourceManager = (IPackageResourceManager) TmcProxy.get(IPackageResourceManager.class);
        if (string.contains(".miniapp.transsion.com")) {
            filePath = iPackageResourceManager.getFilePath(str, string);
            if (TextUtils.isEmpty(filePath)) {
                String strReplace = string.replace("100000", str);
                if (strReplace.endsWith("/")) {
                    strReplace = strReplace.substring(0, strReplace.length() - 1);
                }
                filePath = iPackageResourceManager.getFilePath(str, strReplace);
            }
        } else {
            String str2 = "";
            String strReplace2 = string.replace("https://", "");
            String strSubstring = "https://100000.miniapp.transsion.com/" + strReplace2;
            if (strSubstring.endsWith("/")) {
                strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
            }
            filePath = iPackageResourceManager.getFilePath(str, strSubstring);
            if (TextUtils.isEmpty(filePath)) {
                String strSubstring2 = "https://" + str + ".miniapp.transsion.com/" + strReplace2;
                if (strSubstring2.endsWith("/")) {
                    strSubstring2 = strSubstring2.substring(0, strSubstring2.length() - 1);
                }
                str2 = strSubstring2;
                filePath = iPackageResourceManager.getFilePath(str, str2);
            }
            Log.e("xujiaddd", "url: " + string + "; realPath: " + filePath + "; appResUrl: " + str2 + ";frameResUrl: " + strSubstring);
        }
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(str, ResourceAnalyseType.INTERCEPT_RESOURCE, " " + filePath);
        TmcLogger.d("PackageResourceManager", filePath);
        if (TextUtils.isEmpty(filePath)) {
            return null;
        }
        try {
            return BaseResourceProcessor.addCommonWebRespHeaders(new WebResourceResponse(UrlUtils.getContentTypeFromUrl(string), BaseResourceProcessor.getResourceResponseEncoding(), new FileInputStream(new File(filePath))));
        } catch (FileNotFoundException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public WebResourceResponse get(WebResourceRequest webResourceRequest, String str, String str2, Node node) {
        Uri url = webResourceRequest.getUrl();
        if (url == null) {
            return null;
        }
        String string = url.toString();
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            if (string.contains(UrlUtils.QUESTION_MARK)) {
                string = string.substring(0, string.indexOf(UrlUtils.QUESTION_MARK));
            }
        } catch (Throwable unused) {
        }
        IPackageResourceManager iPackageResourceManager = (IPackageResourceManager) TmcProxy.get(IPackageResourceManager.class);
        String filePath = "";
        try {
            if (string.contains(".miniapp.transsion.com")) {
                filePath = iPackageResourceManager.getFilePath(str, string);
                if (TextUtils.isEmpty(filePath)) {
                    String strReplace = string.replace("100000", str);
                    if (strReplace.endsWith("/")) {
                        strReplace = strReplace.substring(0, strReplace.length() - 1);
                    }
                    filePath = iPackageResourceManager.getFilePath(str, strReplace);
                }
                if (TextUtils.isEmpty(filePath)) {
                    String strReplace2 = string.replace("100000", str2);
                    if (strReplace2.endsWith("/")) {
                        strReplace2 = strReplace2.substring(0, strReplace2.length() - 1);
                    }
                    filePath = iPackageResourceManager.getFilePath(str2, strReplace2);
                }
            } else {
                String strReplace3 = string.replace("https://", "");
                String strSubstring = "https://100000.miniapp.transsion.com/" + strReplace3;
                if (strSubstring.endsWith("/")) {
                    strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
                }
                String filePath2 = iPackageResourceManager.getFilePath(str, strSubstring);
                try {
                    if (TextUtils.isEmpty(filePath2)) {
                        filePath = "https://" + str + ".miniapp.transsion.com/" + strReplace3;
                        if (filePath.endsWith("/")) {
                            filePath = filePath.substring(0, filePath.length() - 1);
                        }
                        filePath2 = iPackageResourceManager.getFilePath(str, filePath);
                    }
                    String str3 = filePath2;
                    String str4 = filePath;
                    filePath = str3;
                    if (TextUtils.isEmpty(filePath)) {
                        String strSubstring2 = "https://" + str2 + ".miniapp.transsion.com/" + strReplace3;
                        if (strSubstring2.endsWith("/")) {
                            strSubstring2 = strSubstring2.substring(0, strSubstring2.length() - 1);
                        }
                        str4 = strSubstring2;
                        filePath = iPackageResourceManager.getFilePath(str2, str4);
                    }
                    Log.e("xujiaddd", "url: " + string + "; realPath: " + filePath + "; appResUrl: " + str4 + ";frameResUrl: " + strSubstring);
                } catch (Throwable unused2) {
                    filePath = filePath2;
                }
            }
        } catch (Throwable unused3) {
        }
        try {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(str, ResourceAnalyseType.INTERCEPT_RESOURCE, " " + filePath);
            TmcLogger.d("PackageResourceManager", filePath);
        } catch (Throwable unused4) {
        }
        if (TextUtils.isEmpty(filePath)) {
            return null;
        }
        try {
            return BaseResourceProcessor.addCommonWebRespHeaders(new WebResourceResponse(UrlUtils.getContentTypeFromUrl(string), BaseResourceProcessor.getResourceResponseEncoding(), new FileInputStream(new File(filePath))));
        } catch (FileNotFoundException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public File get(String str, String str2) {
        IPackageResourceManager iPackageResourceManager = (IPackageResourceManager) TmcProxy.get(IPackageResourceManager.class);
        String vhost = iPackageResourceManager.getVhost(str2);
        if (!str.startsWith(vhost)) {
            if (str.startsWith("/")) {
                str = vhost + str;
            } else {
                str = vhost + "/" + str;
            }
        }
        return FileUtils.getFileByPath(iPackageResourceManager.getFilePath(str2, str));
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public File get(String str, String str2, String str3) {
        IPackageResourceManager iPackageResourceManager = (IPackageResourceManager) TmcProxy.get(IPackageResourceManager.class);
        String vhost = iPackageResourceManager.getVhost(str2);
        if (!str.startsWith(vhost)) {
            if (str.startsWith("/")) {
                str = vhost + str;
            } else {
                str = vhost + "/" + str;
            }
        }
        String filePath = iPackageResourceManager.getFilePath(str2, str);
        if (filePath == null || filePath.isEmpty()) {
            filePath = iPackageResourceManager.getFilePath(str2, str.replace(str2, str3));
        }
        return FileUtils.getFileByPath(filePath);
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public boolean shouldIntercept(WebResourceRequest webResourceRequest, String str) {
        Uri url = webResourceRequest.getUrl();
        return (url == null || TextUtils.isEmpty(url.toString())) ? false : true;
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
