package com.cloud.hisavana.sdk.common.activity;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.cloud.hisavana.sdk.N0;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.c1;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.SSPParamSplicedResult;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.widget.webview.ActionWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.ArrayList;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public class b extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected ProgressBar f21875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected LinearLayout f21876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected FrameLayout f21877c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected FrameLayout f21878d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected ImageView f21879e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected TextView f21880f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected WebView f21881g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected AdsDTO f21882h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected DownUpPointBean f21883i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected Bundle f21884j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected long f21886l;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected WebPageBean f21892r;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected boolean f21885k = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected boolean f21887m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f21888n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected boolean f21889o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f21890p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f21891q = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected boolean f21893s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f21894t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f21895u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ArrayList f21896v = new ArrayList();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private ArrayList f21897w = new ArrayList();

    class a extends WebChromeClient {
        a() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return super.onConsoleMessage(consoleMessage);
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i11) {
            ProgressBar progressBar = b.this.f21875a;
            if (progressBar == null) {
                return;
            }
            if (i11 == 100) {
                progressBar.setVisibility(8);
            } else if (8 == progressBar.getVisibility()) {
                b.this.f21875a.setVisibility(0);
            }
            b bVar = b.this;
            if (bVar.f21892r == null || bVar.f21891q) {
                return;
            }
            if (b.this.f21888n || i11 != 100) {
                if (b.this.f21890p || b.this.f21888n || i11 < 50 || i11 >= 100) {
                    return;
                }
                b.this.f21892r.setSpendEndTime(System.currentTimeMillis());
                b.this.f21890p = true;
                AthenaTracker.o0(b.this.f21892r.getWebId(), b.this.f21892r.getUrl(), b.this.f21892r.getTargetUrl(), 50, b.this.f21892r.getRedirectType(), b.this.f21892r.getSpendTime());
                return;
            }
            b.this.f21892r.setSpendEndTime(System.currentTimeMillis());
            b.this.f21888n = true;
            AthenaTracker.o0(b.this.f21892r.getWebId(), b.this.f21892r.getUrl(), b.this.f21892r.getTargetUrl(), 100, b.this.f21892r.getRedirectType(), b.this.f21892r.getSpendTime());
            String webId = b.this.f21892r.getWebId();
            String url = b.this.f21892r.getUrl();
            String targetUrl = b.this.f21892r.getTargetUrl();
            int redirectType = b.this.f21892r.getRedirectType();
            b bVar2 = b.this;
            boolean z10 = bVar2.f21887m;
            String str = z10 ? "fail" : NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS;
            String errorType = z10 ? bVar2.f21892r.getErrorType() : "succeed";
            b bVar3 = b.this;
            AthenaTracker.n0(webId, url, targetUrl, redirectType, str, errorType, bVar3.f21887m ? bVar3.f21892r.getErrorCode() : 8000, -1L);
            b.this.j(0);
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            e4.b().d("TBaseLandingActivity", "onReceivedTitle " + str);
            if (str == null || str.isEmpty() || webView.getUrl() == null || webView.getUrl().contains(str) || b.this.f21880f == null || TextUtils.isEmpty(str)) {
                return;
            }
            b.this.f21880f.setText(str);
        }
    }

    /* JADX INFO: renamed from: com.cloud.hisavana.sdk.common.activity.b$b, reason: collision with other inner class name */
    class ViewOnClickListenerC0300b implements View.OnClickListener {
        ViewOnClickListenerC0300b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.onBackPressed();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.isFinishing() || b.this.isDestroyed()) {
                return;
            }
            b.this.finish();
            e4.b().e("TBaseLandingActivity", "goToNext ,post finish");
        }
    }

    public static SSPParamSplicedResult a(DownUpPointBean downUpPointBean, AdsDTO adsDTO) {
        SSPParamSplicedResult sSPParamSplicedResult = new SSPParamSplicedResult();
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getClickUrl())) {
            e4.b().d("TBaseLandingActivity", "processServerClickUrl --> null == url || null == pointBean");
            sSPParamSplicedResult.setOriginalUrl("");
            sSPParamSplicedResult.setSplicedURL("");
            return sSPParamSplicedResult;
        }
        if (downUpPointBean == null || adsDTO.getDspType().intValue() == 2 || adsDTO.getSource() == 4) {
            sSPParamSplicedResult.setOriginalUrl(adsDTO.getClickUrl());
            sSPParamSplicedResult.setSplicedURL(adsDTO.getClickUrl());
            return sSPParamSplicedResult;
        }
        String strD = c1.d(downUpPointBean, adsDTO, true, Boolean.FALSE);
        if (TextUtils.isEmpty(strD)) {
            sSPParamSplicedResult.setOriginalUrl("");
            sSPParamSplicedResult.setSplicedURL("");
            return sSPParamSplicedResult;
        }
        if (strD.contains(UrlUtils.QUESTION_MARK)) {
            String str = strD + c1.e(adsDTO);
            sSPParamSplicedResult.setOriginalUrl(str);
            sSPParamSplicedResult.setSplicedURL(com.cloud.hisavana.sdk.common.util.r.f22193a.m(str));
        } else {
            sSPParamSplicedResult.setOriginalUrl(strD);
            sSPParamSplicedResult.setSplicedURL(strD);
        }
        return sSPParamSplicedResult;
    }

    private void b() {
        new Handler(getMainLooper()).postDelayed(new c(), 1000L);
    }

    private void c(int i11) {
        WebPageBean webPageBean;
        if (this.f21889o || (webPageBean = this.f21892r) == null) {
            return;
        }
        webPageBean.setRedirectType(i11);
        AthenaTracker.o0(this.f21892r.getWebId(), this.f21892r.getUrl(), this.f21892r.getTargetUrl(), 0, i11, this.f21892r.getLoadTime());
    }

    public static String i(DownUpPointBean downUpPointBean, AdsDTO adsDTO) {
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getClickUrl())) {
            e4.b().d("TBaseLandingActivity", "processServerClickUrl --> null == url || null == pointBean");
            return "";
        }
        if (downUpPointBean == null || adsDTO.getDspType().intValue() == 2 || adsDTO.getSource() == 4) {
            return adsDTO.getClickUrl();
        }
        String strD = c1.d(downUpPointBean, adsDTO, true, Boolean.FALSE);
        if (TextUtils.isEmpty(strD)) {
            return "";
        }
        if (!strD.contains(UrlUtils.QUESTION_MARK)) {
            return strD;
        }
        return strD + c1.e(adsDTO);
    }

    private void o(String str) {
        try {
            String stringExtra = Intent.parseUri(str, 1).getStringExtra("browser_fallback_url");
            if (TextUtils.isEmpty(stringExtra)) {
                return;
            }
            v(SSPTrackingHelper.f21953a.s(stringExtra));
            if (N0.I(this, stringExtra)) {
                u();
                finish();
            } else if (stringExtra.startsWith("https://") || stringExtra.startsWith("http://")) {
                q(stringExtra);
                this.f21881g.loadUrl(stringExtra);
            }
        } catch (Exception unused) {
        }
    }

    private boolean r() {
        if (getIntent() == null) {
            j(TaErrorCode.WEBVIEW_INTENT_NULL);
            e4.b().e("TBaseLandingActivity", "initWebView intent is null");
            finish();
            return false;
        }
        try {
            Parcelable parcelableExtra = getIntent().getParcelableExtra("tag_ad_bean");
            this.f21882h = parcelableExtra instanceof AdsDTO ? (AdsDTO) parcelableExtra : null;
            this.f21883i = (DownUpPointBean) getIntent().getParcelableExtra("pointBean");
            this.f21884j = (Bundle) getIntent().getParcelableExtra("ab_Test_Data");
        } catch (Exception unused) {
        }
        if (this.f21882h != null) {
            return true;
        }
        j(TaErrorCode.WEBVIEW_ADSDTO_NULL);
        e4.b().e("TBaseLandingActivity", "initWebView,adsDto is null");
        finish();
        return false;
    }

    private void t(String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setPackage("com.android.vending");
            intent.setFlags(ASTNode.DEOP);
            com.cloud.sdk.commonutil.util.e.a().startActivity(intent);
            finish();
            e4.b().d("TBaseLandingActivity", "open gp link " + str);
        } catch (Throwable th2) {
            e4.b().e("TBaseLandingActivity", "startGp " + Log.getStackTraceString(th2));
            finish();
        }
    }

    protected boolean f(String str) {
        if (!TextUtils.isEmpty(str) && !str.startsWith("http://") && !str.startsWith("https://")) {
            try {
                Intent intent = new Intent();
                intent.setData(Uri.parse(str));
                intent.setAction("android.intent.action.VIEW");
                intent.setFlags(ASTNode.DEOP);
                startActivity(intent);
                e4.b().d("TBaseLandingActivity", "open deeplink");
                return true;
            } catch (Exception e11) {
                e4.b().e("TBaseLandingActivity", "checkDeepLink finish," + Log.getStackTraceString(e11));
                finish();
            }
        }
        return false;
    }

    protected boolean g(String str, boolean z10) {
        WebPageBean webPageBean;
        this.f21894t = z10;
        e4.b().d("TBaseLandingActivity", "webview get redirect url is:" + str);
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!this.f21889o && (webPageBean = this.f21892r) != null) {
            webPageBean.setTargetUrl(str);
            this.f21892r.setLoadStartTime(System.currentTimeMillis());
        }
        v(SSPTrackingHelper.f21953a.s(str));
        if (str.startsWith("intent://")) {
            c(2);
            if (N0.S(this, str)) {
                u();
                if (!isFinishing() && !isDestroyed()) {
                    finish();
                }
            } else {
                o(str);
            }
            return true;
        }
        if ((str.contains(Constants.GP_DEEPLINK) || str.startsWith("market://")) && N0.J(this, str, "com.android.vending")) {
            AthenaTracker.q0(this.f21882h);
            q(str);
            u();
            c(1);
            if (!isFinishing() && !isDestroyed()) {
                finish();
            }
            return true;
        }
        if (N0.I(this, str)) {
            u();
            c(2);
            b();
            return true;
        }
        if (!str.startsWith("https://") && !str.startsWith("http://")) {
            return true;
        }
        this.f21892r.setRedirectType(0);
        AthenaTracker.q0(this.f21882h);
        q(str);
        return false;
    }

    protected WebViewClient h() {
        return new e7.j();
    }

    protected void j(int i11) {
        try {
            long jCurrentTimeMillis = 0;
            if (this.f21893s) {
                if (i11 == 8005) {
                    SSPTrackingHelper.f21953a.W(Integer.valueOf(i11), this.f21896v, this.f21897w, this.f21882h, this.f21892r, this.f21895u, true, Long.valueOf(this.f21886l != 0 ? System.currentTimeMillis() - this.f21886l : 0L), Boolean.valueOf(this.f21888n), this.f21884j);
                }
            } else {
                w();
                if (i11 == 8005 && this.f21886l != 0) {
                    jCurrentTimeMillis = System.currentTimeMillis() - this.f21886l;
                }
                SSPTrackingHelper.f21953a.W(Integer.valueOf(i11), this.f21896v, this.f21897w, this.f21882h, this.f21892r, this.f21895u, false, Long.valueOf(jCurrentTimeMillis), Boolean.valueOf(this.f21888n), this.f21884j);
            }
        } catch (Throwable unused) {
        }
    }

    protected boolean m(String str) {
        if (str == null) {
            return false;
        }
        if (str.contains("play.google.com/store/apps/")) {
            t(str.replaceAll("https://play.google.com/store/apps/", "market://").replaceAll("http://play.google.com/store/apps/", "market://"));
            return true;
        }
        if (!str.startsWith("market://")) {
            return false;
        }
        t(str);
        return true;
    }

    public WebPageBean n() {
        return this.f21892r;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        WebPageBean webPageBean;
        WebView webView;
        if (this.f21885k && (webView = this.f21881g) != null && webView.canGoBack()) {
            this.f21881g.goBack();
            return;
        }
        if (!this.f21888n && (webPageBean = this.f21892r) != null) {
            this.f21891q = true;
            webPageBean.setJumpTime(System.currentTimeMillis());
            AthenaTracker.n0(this.f21892r.getWebId(), this.f21892r.getUrl(), this.f21892r.getTargetUrl(), -1, "fail", "jump", 9000, this.f21892r.getWaitTime());
        }
        try {
            super.onBackPressed();
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        if (a7.c.n() == 1) {
            setRequestedOrientation(1);
        } else if (a7.c.n() == 0) {
            setRequestedOrientation(0);
        }
        super.onCreate(bundle);
        this.f21886l = System.currentTimeMillis();
        setContentView(R$layout.tad_exposure_activity);
        View childAt = ((ViewGroup) findViewById(R.id.content)).getChildAt(0);
        if (childAt != null) {
            childAt.setFitsSystemWindows(true);
        }
        this.f21892r = new WebPageBean();
        this.f21875a = (ProgressBar) findViewById(R$id.pb_progress);
        this.f21876b = (LinearLayout) findViewById(R$id.main_content);
        this.f21877c = (FrameLayout) findViewById(R$id.layout_title);
        this.f21878d = (FrameLayout) findViewById(R$id.layout_content);
        FrameLayout frameLayout = this.f21877c;
        if (frameLayout != null) {
            this.f21879e = (ImageView) frameLayout.findViewById(R$id.im_back);
            this.f21880f = (TextView) this.f21877c.findViewById(R$id.tv_title);
        }
        if (r()) {
            s();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            WebView webView = this.f21881g;
            if (webView != null) {
                ViewParent parent = webView.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(this.f21881g);
                }
                this.f21881g.stopLoading();
                this.f21881g.getSettings().setJavaScriptEnabled(false);
                this.f21881g.setWebChromeClient(null);
                this.f21881g.clearHistory();
                this.f21881g.removeAllViews();
                this.f21881g.destroy();
            }
            j(TaErrorCode.WEBVIEW_ON_DESTORY);
        } catch (Throwable th2) {
            e4.b().d("TBaseLandingActivity", Log.getStackTraceString(th2));
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i11, KeyEvent keyEvent) {
        WebView webView;
        if (i11 != 4 || (webView = this.f21881g) == null || !webView.canGoBack()) {
            return super.onKeyDown(i11, keyEvent);
        }
        this.f21881g.goBack();
        return true;
    }

    protected void q(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (this.f21877c != null) {
            if (str.contains("isNativeHeader=false")) {
                this.f21877c.setVisibility(8);
            } else {
                this.f21877c.setVisibility(0);
            }
        }
        if (str.contains("isBackPage=false")) {
            this.f21885k = false;
        }
        if (this.f21875a != null) {
            if (str.contains("isNativeLoading=false")) {
                this.f21875a.setVisibility(8);
            } else {
                this.f21875a.setVisibility(0);
            }
        }
        ImageView imageView = this.f21879e;
        if (imageView != null) {
            imageView.setOnClickListener(new ViewOnClickListenerC0300b());
        }
    }

    protected void s() {
        try {
            this.f21881g = new ActionWebView(this);
            ((FrameLayout) findViewById(R$id.fl_webview)).addView(this.f21881g);
            WebView webView = this.f21881g;
            if (webView != null) {
                webView.getSettings().setJavaScriptEnabled(true);
                this.f21881g.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
                this.f21881g.getSettings().setSupportZoom(true);
                this.f21881g.getSettings().setUseWideViewPort(true);
                this.f21881g.getSettings().setLoadWithOverviewMode(true);
                this.f21881g.getSettings().setDisplayZoomControls(true);
                this.f21881g.getSettings().setCacheMode(-1);
                this.f21881g.getSettings().setDomStorageEnabled(true);
                this.f21881g.setWebChromeClient(new a());
                this.f21881g.setWebViewClient(h());
            }
            if (a7.c.p()) {
                WebView.setWebContentsDebuggingEnabled(true);
            }
            WebPageBean webPageBean = this.f21892r;
            if (webPageBean != null) {
                webPageBean.setPageClickTime(this.f21886l);
            }
            WebPageBean webPageBean2 = this.f21892r;
            if (webPageBean2 != null) {
                webPageBean2.setInitEndTime(System.currentTimeMillis());
                AthenaTracker.o0(this.f21892r.getWebId(), this.f21892r.getUrl(), this.f21892r.getTargetUrl(), -1, -1, this.f21892r.getInitTime());
            }
        } catch (Throwable th2) {
            e4.b().e("TBaseLandingActivity", "create webview error: " + Log.getStackTraceString(th2));
            j(TaErrorCode.WEBVIEW_CREAT_ERROR);
            this.f21881g = null;
            finish();
        }
    }

    protected void u() {
        this.f21895u = true;
    }

    protected void v(String str) {
        if (this.f21894t) {
            this.f21897w.add(str);
        } else {
            this.f21896v.add(str);
        }
    }

    protected void w() {
        this.f21893s = true;
    }
}
