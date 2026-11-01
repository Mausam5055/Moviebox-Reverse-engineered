package com.transsion.usercenter.setting;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.activity.BaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fw.d1;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000  2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u0019\u0010\u000e\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006!"}, d2 = {"Lcom/transsion/usercenter/setting/WebViewActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lfw/d1;", "<init>", "()V", "", "initView", "initData", "m0", "l0", "k0", "h0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "onDestroy", "i0", "()Lfw/d1;", "Landroid/webkit/WebView;", "a", "Landroid/webkit/WebView;", "webView", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "url", "c", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WebViewActivity extends BaseActivity<d1> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private WebView webView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String url = "";

    public static final class b extends WebChromeClient {
        b() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView view, int i11) {
            Intrinsics.h(view, "view");
            super.onProgressChanged(view, i11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView view, String title) {
            AppCompatTextView appCompatTextView;
            Intrinsics.h(view, "view");
            Intrinsics.h(title, "title");
            super.onReceivedTitle(view, title);
            d1 d1Var = (d1) WebViewActivity.this.getMViewBinding();
            if (d1Var == null || (appCompatTextView = d1Var.f62616d) == null) {
                return;
            }
            appCompatTextView.setText(title);
        }
    }

    public static final class c extends WebViewClient {
        c() {
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
            Intrinsics.h(view, "view");
            Intrinsics.h(detail, "detail");
            if (WebViewActivity.this.webView == view) {
                WebViewActivity.this.webView = null;
            }
            lg.a.f68839a.i("WebViewActivity", "renderer gone, didCrash=" + detail.didCrash(), true);
            boolean zC = gm.n.f63887a.c(view, detail, "user_center");
            if (!WebViewActivity.this.isDestroyed() && !WebViewActivity.this.isFinishing()) {
                WebViewActivity.this.finish();
            }
            return zC;
        }
    }

    private final void h0() {
        Object objM454constructorimpl;
        WebView webView = this.webView;
        if (webView == null) {
            return;
        }
        this.webView = null;
        if (gm.n.f63887a.f(webView)) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            ViewParent parent = webView.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(webView);
            }
            webView.stopLoading();
            webView.getSettings().setJavaScriptEnabled(false);
            webView.clearHistory();
            webView.removeAllViews();
            webView.destroy();
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.f68839a.i("WebViewActivity", "destroy WebView failed: " + thM457exceptionOrNullimpl.getMessage(), true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initData() {
        String stringExtra = getIntent().getStringExtra("url");
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.url = stringExtra;
        WebView webView = new WebView(this);
        this.webView = webView;
        ((d1) getMViewBinding()).f62615c.addView(webView);
        WebSettings settings = webView.getSettings();
        Intrinsics.g(settings, "getSettings(...)");
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        WebSettings.LayoutAlgorithm layoutAlgorithm = WebSettings.LayoutAlgorithm.SINGLE_COLUMN;
        settings.setLayoutAlgorithm(layoutAlgorithm);
        settings.supportMultipleWindows();
        settings.setAllowFileAccess(true);
        settings.setNeedInitialFocus(true);
        settings.setLoadsImagesAutomatically(true);
        settings.setDefaultTextEncodingName("utf-8");
        settings.setLayoutAlgorithm(layoutAlgorithm);
        settings.setDomStorageEnabled(true);
        k0();
        l0();
        m0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        AppCompatImageButton appCompatImageButton;
        d1 d1Var = (d1) getMViewBinding();
        if (d1Var == null || (appCompatImageButton = d1Var.f62614b) == null) {
            return;
        }
        appCompatImageButton.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.setting.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebViewActivity.j0(this.f57380a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(WebViewActivity webViewActivity, View view) {
        webViewActivity.finish();
    }

    private final void k0() {
        WebView webView = this.webView;
        if (webView != null) {
            webView.setWebChromeClient(new b());
        }
    }

    private final void l0() {
        WebView webView = this.webView;
        if (webView != null) {
            webView.setWebViewClient(new c());
        }
    }

    private final void m0() {
        WebView webView;
        if (this.url.length() <= 0 || (webView = this.webView) == null) {
            return;
        }
        webView.loadUrl(this.url);
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public d1 getViewBinding() {
        d1 d1VarC = d1.c(getLayoutInflater());
        Intrinsics.g(d1VarC, "inflate(...)");
        return d1VarC;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
        initData();
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        h0();
        super.onDestroy();
    }
}
