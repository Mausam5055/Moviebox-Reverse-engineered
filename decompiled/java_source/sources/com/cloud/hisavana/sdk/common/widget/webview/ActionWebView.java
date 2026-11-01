package com.cloud.hisavana.sdk.common.widget.webview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 \f2\u00020\u0001:\u0001\rB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;", "Landroid/webkit/WebView;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", PushConstants.PROVIDER_FIELD_DESTROY, "()V", "Companion", "a", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class ActionWebView extends WebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22318a = "/web";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f22319b = " Web ";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f22320c = " UCBrowser/11.6.4.950 ";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f22321d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionWebView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"JavascriptInterface"})
    public ActionWebView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        WebView.setWebContentsDebuggingEnabled(f22321d);
        WebSettings settings = getSettings();
        Intrinsics.g(settings, "getSettings(...)");
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(false);
        settings.setSavePassword(false);
        if (NetStateManager.checkNetworkState(false)) {
            settings.setCacheMode(-1);
        } else {
            settings.setCacheMode(1);
        }
        settings.setMixedContentMode(0);
        setLayerType(2, null);
        settings.setTextZoom(100);
        settings.setDatabaseEnabled(true);
        settings.setCacheMode(-1);
        settings.setLoadsImagesAutomatically(true);
        settings.setSupportMultipleWindows(false);
        settings.setBlockNetworkImage(false);
        settings.setAllowFileAccess(true);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        settings.setDomStorageEnabled(true);
        settings.setNeedInitialFocus(true);
        settings.setDefaultTextEncodingName("utf-8");
        settings.setDefaultFontSize(16);
        settings.setMinimumFontSize(12);
        settings.setGeolocationEnabled(true);
        settings.setJavaScriptEnabled(true);
        settings.setMixedContentMode(0);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
        if (getParent() instanceof ViewGroup) {
            ViewParent parent = getParent();
            Intrinsics.f(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(this);
        }
        super.destroy();
    }
}
