package com.mbridge.msdk.advanced.view;

import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.ValueCallback;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.alibaba.sdk.android.oss.common.OSSHeaders;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.advanced.middle.c;
import com.mbridge.msdk.foundation.same.directory.e;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.base.b;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.model.AdPayload;
import java.io.FileInputStream;
import java.net.URLDecoder;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class a extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f34259c = "NativeAdvancedWebViewClient";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f34260d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f34261e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f34262f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    com.mbridge.msdk.advanced.middle.a f34263g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private c f34264h;

    /* JADX INFO: renamed from: com.mbridge.msdk.advanced.view.a$a, reason: collision with other inner class name */
    class C0472a implements ValueCallback<String> {
        C0472a() {
        }

        @Override // android.webkit.ValueCallback
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(String str) {
        }
    }

    public a(String str, com.mbridge.msdk.advanced.middle.a aVar, c cVar) {
        com.mbridge.msdk.foundation.same.directory.c cVar2 = com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_VC;
        this.f34260d = e.b(cVar2) != null ? e.b(cVar2) : i0.a("YkRXhr5AWBPfNgzuH7JQ+2Ha");
        this.f34261e = i0.a("Y+xgWkl2");
        this.f34262f = str;
        this.f34263g = aVar;
        this.f34264h = cVar;
    }

    private WebResourceResponse a(WebView webView, String str) {
        if (!TextUtils.isEmpty(str) && this.f34264h != null) {
            try {
                String strA = "";
                if (str.startsWith(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE) && str.startsWith(this.f34260d)) {
                    strA = str.replace(AdPayload.FILE_SCHEME, "");
                }
                if (a(str)) {
                    strA = this.f34264h.a(URLDecoder.decode(Uri.parse(str).getQueryParameter("uri")));
                }
                if (!TextUtils.isEmpty(strA) && a(strA, this.f34260d)) {
                    o0.a("NativeAdvancedWebViewClient", "replace url : " + strA);
                    if (!strA.contains("127.0.0.1") && !strA.startsWith("http")) {
                        HashMap map = new HashMap();
                        map.put(OSSHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, "*");
                        WebResourceResponse webResourceResponse = new WebResourceResponse(MimeTypes.VIDEO_MP4, "utf-8", new FileInputStream(strA));
                        webResourceResponse.setResponseHeaders(map);
                        return webResourceResponse;
                    }
                    return null;
                }
            } catch (Throwable th2) {
                o0.b("NativeAdvancedWebViewClient", th2.getMessage());
            }
        }
        return null;
    }

    private boolean a(String str) {
        Uri uri;
        String scheme;
        if (TextUtils.isEmpty(str) || (uri = Uri.parse(str)) == null || (scheme = uri.getScheme()) == null || TextUtils.isEmpty(scheme)) {
            return false;
        }
        return scheme.equals(this.f34261e) || scheme.equals("mb-h5");
    }

    public void b() {
        if (this.f34264h != null) {
            this.f34264h = null;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        try {
            webView.evaluateJavascript("javascript:" + com.mbridge.msdk.setting.util.a.a().b(), new C0472a());
        } catch (Throwable th2) {
            o0.b("NativeAdvancedWebViewClient", "onPageStarted", th2);
        }
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        return a(webView, webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return a(webView, str);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.base.b, android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            try {
                WindVaneWebView windVaneWebView = (WindVaneWebView) webView;
                if (System.currentTimeMillis() - windVaneWebView.lastTouchTime > com.mbridge.msdk.click.utils.a.f34446c && com.mbridge.msdk.click.utils.a.a(((com.mbridge.msdk.advanced.signal.b) windVaneWebView.getObject()).a().get(0), windVaneWebView.getUrl(), com.mbridge.msdk.click.utils.a.f34445b)) {
                    return false;
                }
            } catch (Exception e11) {
                o0.b("NativeAdvancedWebViewClient", e11.getMessage());
            }
            o0.b("NativeAdvancedWebViewClient", "Use html to open url.");
            com.mbridge.msdk.advanced.middle.a aVar = this.f34263g;
            if (aVar == null) {
                return true;
            }
            aVar.a(false, str);
            return true;
        } catch (Throwable th2) {
            o0.b("NativeAdvancedWebViewClient", "shouldOverrideUrlLoading", th2);
            return false;
        }
    }
}
