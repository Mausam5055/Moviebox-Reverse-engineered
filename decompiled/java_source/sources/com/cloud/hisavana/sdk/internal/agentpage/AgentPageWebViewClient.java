package com.cloud.hisavana.sdk.internal.agentpage;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.webkit.MimeTypeMap;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.impl.IDiskCache;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.sdk.common.util.p0;
import com.cloud.hisavana.sdk.e4;
import e7.j;
import java.io.File;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes3.dex */
public class AgentPageWebViewClient extends j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    OverrideListener f22544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f22545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f22546c = 4;

    public interface OverrideListener {
        boolean OnOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest);

        boolean OnOverrideUrlLoading(WebView webView, String str);

        void onError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError);

        void onPageFinished(WebView webView, String str);
    }

    public AgentPageWebViewClient(OverrideListener overrideListener) {
        this.f22544a = overrideListener;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        OverrideListener overrideListener = this.f22544a;
        if (overrideListener != null) {
            overrideListener.onPageFinished(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        OverrideListener overrideListener = this.f22544a;
        if (overrideListener != null) {
            overrideListener.onError(webView, webResourceRequest, webResourceError);
        }
    }

    public void setMainPageUrl(String str) {
        this.f22545b = str;
    }

    public void setSource(int i11) {
        this.f22546c = i11;
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        File file;
        try {
            e4.b().d("AgentPageWebViewClient", "shouldInterceptRequest URL== " + str);
            if (str.startsWith(AgentPageJsBridge.AGENT_PAGE_START_URL)) {
                String str2 = new String(Base64.decode(str.substring(21), 0));
                if (str2.startsWith("https://")) {
                    IDiskCache iDiskCacheG = this.f22546c == 4 ? DiskLruCacheUtil.g(4) : DiskLruCacheUtil.g(1);
                    file = iDiskCacheG != null ? iDiskCacheG.c(new ImageCacheURL(str2)) : null;
                } else {
                    file = new File(str2);
                }
                if (file != null && file.exists() && file.length() > 0) {
                    MimeTypeMap.getSingleton();
                    return new WebResourceResponse(MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str)), "UTF-8", new FileInputStream(file));
                }
                e4.b().e("AgentPageWebViewClient", "not found cache for Base64URL== " + str + ", decode url = " + str2);
            } else if (str.contains(AgentPageJsBridge.AGENT_PAGE_INFO) || (!TextUtils.isEmpty(this.f22545b) && str.equals(this.f22545b))) {
                IDiskCache iDiskCacheG2 = this.f22546c == 4 ? DiskLruCacheUtil.g(4) : DiskLruCacheUtil.g(1);
                if (iDiskCacheG2 != null) {
                    File fileC = str.contains(AgentPageJsBridge.HTML_FROM_LOCAL) ? iDiskCacheG2.c(new ImageCacheURL(p0.a(str))) : iDiskCacheG2.c(new ImageCacheURL(str));
                    if (fileC != null && fileC.exists() && fileC.length() > 0) {
                        MimeTypeMap.getSingleton();
                        return new WebResourceResponse(MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str)), "UTF-8", new FileInputStream(fileC));
                    }
                }
            }
            return super.shouldInterceptRequest(webView, str);
        } catch (Exception e11) {
            e4.b().e(Log.getStackTraceString(e11));
            return super.shouldInterceptRequest(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        OverrideListener overrideListener = this.f22544a;
        if (overrideListener == null) {
            return false;
        }
        return overrideListener.OnOverrideUrlLoading(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        e4.b().d("AgentPageWebViewClient", "shouldOverrideUrlLoading url=" + str);
        OverrideListener overrideListener = this.f22544a;
        if (overrideListener == null) {
            return false;
        }
        return overrideListener.OnOverrideUrlLoading(webView, str);
    }
}
