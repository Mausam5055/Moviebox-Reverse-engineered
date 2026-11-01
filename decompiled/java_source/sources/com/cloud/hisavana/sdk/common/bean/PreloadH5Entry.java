package com.cloud.hisavana.sdk.common.bean;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.CookieManager;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.widget.webview.ActionWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.k4;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.integration.ui.p001native.NativeImgComponent;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.core.utils.e;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0002\b\n\u0018\u0000 42\u00020\u0001:\u000245BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fJ\u0010\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\tH\u0002J\b\u0010.\u001a\u00020,H\u0002J\u0006\u0010/\u001a\u00020,J\u0006\u00100\u001a\u00020,J\u001a\u00101\u001a\u00020\u00192\b\u00102\u001a\u0004\u0018\u00010\u00072\u0006\u00103\u001a\u00020\u0019H\u0002R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u000e\u0010&\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u001b\"\u0004\b(\u0010\u001dR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*¨\u00066"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;", "", "webView", "Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;", "adsDTO", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "overrideUrl", "", "process", "", CampaignEx.JSON_KEY_TITLE, "spendEndTime", "", "callback", "Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;", "(Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ILjava/lang/String;JLcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;)V", "getAdsDTO", "()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "setAdsDTO", "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V", "getCallback", "()Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;", "setCallback", "(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;)V", "isStartLoad", "", "getOverrideUrl", "()Ljava/lang/String;", "setOverrideUrl", "(Ljava/lang/String;)V", "getProcess", "()I", "setProcess", "(I)V", "getSpendEndTime", "()J", "setSpendEndTime", "(J)V", "sslFailCount", "getTitle", "setTitle", "getWebView", "()Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;", "handlerLoadFailed", "", "errorCode", "initPAW", NativeImgComponent.EVENT_LOAD, "release", "shouldOverrideUrlLoad", "url", "hasGesture", "Companion", "PreloadCallback", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PreloadH5Entry {
    private static final String TAG = "PreloadEntry";
    private static Method sPawRegisterMethod;
    private AdsDTO adsDTO;
    private PreloadCallback callback;
    private boolean isStartLoad;
    private String overrideUrl;
    private int process;
    private long spendEndTime;
    private int sslFailCount;
    private String title;
    private final ActionWebView webView;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0005H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u001a\u0010\f\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH&¨\u0006\u0010"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;", "", "onPageFailed", "", "errorCode", "", "onPageStart", "onProgressChanged", "newProcess", "onReceivedTitle", CampaignEx.JSON_KEY_TITLE, "", "shouldOverrideUrlLoading", "url", "hasGesture", "", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface PreloadCallback {
        void onPageFailed(int errorCode);

        void onPageStart();

        void onProgressChanged(int newProcess);

        void onReceivedTitle(String title);

        void shouldOverrideUrlLoading(String url, boolean hasGesture);
    }

    public PreloadH5Entry(ActionWebView webView, AdsDTO adsDTO, String str, int i11, String str2, long j11, PreloadCallback preloadCallback) {
        Intrinsics.h(webView, "webView");
        this.webView = webView;
        this.adsDTO = adsDTO;
        this.overrideUrl = str;
        this.process = i11;
        this.title = str2;
        this.spendEndTime = j11;
        this.callback = preloadCallback;
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setDomStorageEnabled(true);
        webView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        webView.getSettings().setSupportZoom(true);
        webView.getSettings().setUseWideViewPort(true);
        webView.getSettings().setLoadWithOverviewMode(true);
        webView.getSettings().setDisplayZoomControls(true);
        webView.setWebViewClient(new WebViewClient() { // from class: com.cloud.hisavana.sdk.common.bean.PreloadH5Entry$1$1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                super.onPageFinished(view, url);
                if ((view != null ? view.getProgress() : 0) < 100 || this.this$0.sslFailCount <= 0) {
                    return;
                }
                AthenaTracker.d0(this.this$0.getAdsDTO(), this.this$0.sslFailCount);
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView view, String url, Bitmap favicon) {
                super.onPageStarted(view, url, favicon);
                if (this.this$0.isStartLoad) {
                    return;
                }
                this.this$0.isStartLoad = true;
                PreloadH5Entry.PreloadCallback callback = this.this$0.getCallback();
                if (callback != null) {
                    callback.onPageStart();
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
                if (request == null || !request.isForMainFrame()) {
                    return;
                }
                this.this$0.handlerLoadFailed(error != null ? error.getErrorCode() : -1);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
                if (request == null || !request.isForMainFrame()) {
                    return;
                }
                this.this$0.handlerLoadFailed(errorResponse != null ? errorResponse.getStatusCode() : -1);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
                this.this$0.sslFailCount++;
                if (handler != null) {
                    handler.cancel();
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
                k4 k4Var = k4.f22600a;
                AdsDTO adsDTO2 = this.this$0.getAdsDTO();
                k4Var.j(adsDTO2 != null ? adsDTO2.getUuid() : null);
                return true;
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
                if ((request != null ? request.getUrl() : null) == null) {
                    return super.shouldOverrideUrlLoading(view, request);
                }
                String string = request.getUrl().toString();
                Intrinsics.g(string, "toString(...)");
                return this.this$0.shouldOverrideUrlLoad(string, request.hasGesture());
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                return url != null ? this.this$0.shouldOverrideUrlLoad(url, false) : super.shouldOverrideUrlLoading(view, url);
            }
        });
        webView.setWebChromeClient(new WebChromeClient() { // from class: com.cloud.hisavana.sdk.common.bean.PreloadH5Entry$1$2
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView view, int newProgress) {
                super.onProgressChanged(view, newProgress);
                this.this$0.setProcess(newProgress);
                e4.b().d(PreloadH5Entry.TAG, "onProgressChanged " + this.this$0.getProcess());
                if (newProgress >= 100) {
                    this.this$0.setSpendEndTime(System.currentTimeMillis());
                }
                PreloadH5Entry.PreloadCallback callback = this.this$0.getCallback();
                if (callback != null) {
                    callback.onProgressChanged(newProgress);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onReceivedTitle(WebView view, String title) {
                String url;
                super.onReceivedTitle(view, title);
                e4.b().d(PreloadH5Entry.TAG, "onReceivedTitle " + title);
                if (title == null || title.length() == 0) {
                    return;
                }
                if (view == null || (url = view.getUrl()) == null || !StringsKt.c0(url, title, false, 2, null)) {
                    this.this$0.setTitle(title);
                    PreloadH5Entry.PreloadCallback callback = this.this$0.getCallback();
                    if (callback != null) {
                        callback.onReceivedTitle(title);
                    }
                }
            }
        });
        initPAW();
    }

    public /* synthetic */ PreloadH5Entry(ActionWebView actionWebView, AdsDTO adsDTO, String str, int i11, String str2, long j11, PreloadCallback preloadCallback, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(actionWebView, (i12 & 2) != 0 ? null : adsDTO, (i12 & 4) != 0 ? null : str, (i12 & 8) != 0 ? 0 : i11, (i12 & 16) != 0 ? "" : str2, (i12 & 32) != 0 ? 0L : j11, (i12 & 64) == 0 ? preloadCallback : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handlerLoadFailed(int errorCode) {
        AdsDTO adsDTO = this.adsDTO;
        final String uuid = adsDTO != null ? adsDTO.getUuid() : null;
        this.webView.post(new Runnable() { // from class: com.cloud.hisavana.sdk.common.bean.a
            @Override // java.lang.Runnable
            public final void run() {
                PreloadH5Entry.handlerLoadFailed$lambda$2(uuid);
            }
        });
        PreloadCallback preloadCallback = this.callback;
        if (preloadCallback != null) {
            preloadCallback.onPageFailed(errorCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handlerLoadFailed$lambda$2(String str) {
        k4.f22600a.j(str);
    }

    private final void initPAW() {
        try {
            CookieManager.getInstance().setAcceptThirdPartyCookies(this.webView, true);
            if (sPawRegisterMethod == null) {
                sPawRegisterMethod = Class.forName("com.google.android.gms.ads.MobileAds").getMethod("registerWebView", WebView.class);
            }
            Method method = sPawRegisterMethod;
            if (method != null) {
                method.invoke(null, this.webView);
            }
        } catch (Exception e11) {
            e4.b().e(TAG, "initPaw error: " + e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean shouldOverrideUrlLoad(String url, boolean hasGesture) {
        if (url != null) {
            if (!StringsKt.W(url, "http://", false, 2, null) && !StringsKt.W(url, "https://", false, 2, null)) {
                this.overrideUrl = url;
                PreloadCallback preloadCallback = this.callback;
                if (preloadCallback != null) {
                    preloadCallback.shouldOverrideUrlLoading(url, hasGesture);
                }
                return true;
            }
            if (StringsKt.c0(url, Constants.GP_DEEPLINK, false, 2, null)) {
                this.overrideUrl = url;
                PreloadCallback preloadCallback2 = this.callback;
                if (preloadCallback2 != null) {
                    preloadCallback2.shouldOverrideUrlLoading(url, hasGesture);
                }
                return true;
            }
        }
        return false;
    }

    public final AdsDTO getAdsDTO() {
        return this.adsDTO;
    }

    public final PreloadCallback getCallback() {
        return this.callback;
    }

    public final String getOverrideUrl() {
        return this.overrideUrl;
    }

    public final int getProcess() {
        return this.process;
    }

    public final long getSpendEndTime() {
        return this.spendEndTime;
    }

    public final String getTitle() {
        return this.title;
    }

    public final ActionWebView getWebView() {
        return this.webView;
    }

    public final void load() {
        String realLandUrl;
        AdsDTO adsDTO = this.adsDTO;
        if (adsDTO == null || (realLandUrl = adsDTO.getRealLandUrl()) == null) {
            return;
        }
        this.webView.layout(0, 0, e.f(), e.e());
        this.webView.loadUrl(realLandUrl);
    }

    public final void release() {
        try {
            this.webView.setWebViewClient(new WebViewClient());
            this.webView.setWebChromeClient(null);
            this.webView.stopLoading();
            this.webView.clearHistory();
            this.webView.onPause();
            this.webView.destroy();
        } catch (Exception e11) {
            e4.b().e(TAG, "reset error: " + e11.getMessage());
        }
        this.adsDTO = null;
        this.process = 0;
        this.title = "";
        this.overrideUrl = null;
        this.callback = null;
        this.sslFailCount = 0;
        this.isStartLoad = false;
        this.spendEndTime = 0L;
    }

    public final void setAdsDTO(AdsDTO adsDTO) {
        this.adsDTO = adsDTO;
    }

    public final void setCallback(PreloadCallback preloadCallback) {
        this.callback = preloadCallback;
    }

    public final void setOverrideUrl(String str) {
        this.overrideUrl = str;
    }

    public final void setProcess(int i11) {
        this.process = i11;
    }

    public final void setSpendEndTime(long j11) {
        this.spendEndTime = j11;
    }

    public final void setTitle(String str) {
        this.title = str;
    }
}
