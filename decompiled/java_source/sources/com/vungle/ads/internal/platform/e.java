package com.vungle.ads.internal.platform;

import android.content.Context;
import android.util.AndroidRuntimeException;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.util.o;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class e {
    public static final e INSTANCE = new e();
    private static final String TAG = "WebViewUtil";

    private e() {
    }

    public final void applyWebSettings(WebView webView, AdPayload.k kVar) {
        Boolean allowUniversalAccessFromFileUrls;
        Boolean allowFileAccessFromFileUrls;
        Intrinsics.h(webView, "webView");
        WebSettings settings = webView.getSettings();
        Intrinsics.g(settings, "webView.settings");
        settings.setBuiltInZoomControls(false);
        settings.setJavaScriptEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSaveFormData(true);
        settings.setUseWideViewPort(false);
        settings.setAllowFileAccess(true);
        settings.setAllowFileAccessFromFileURLs((kVar == null || (allowFileAccessFromFileUrls = kVar.getAllowFileAccessFromFileUrls()) == null) ? false : allowFileAccessFromFileUrls.booleanValue());
        settings.setAllowUniversalAccessFromFileURLs((kVar == null || (allowUniversalAccessFromFileUrls = kVar.getAllowUniversalAccessFromFileUrls()) == null) ? false : allowUniversalAccessFromFileUrls.booleanValue());
        webView.setVisibility(4);
        settings.setMediaPlaybackRequiresUserGesture(false);
    }

    public final void getUserAgent(Context context, androidx.core.util.a consumer) {
        Intrinsics.h(context, "context");
        Intrinsics.h(consumer, "consumer");
        try {
            consumer.accept(WebSettings.getDefaultUserAgent(context));
        } catch (Exception e11) {
            if (e11 instanceof AndroidRuntimeException) {
                o.Companion.e(TAG, "WebView could be missing here");
            }
            consumer.accept(null);
        }
    }
}
