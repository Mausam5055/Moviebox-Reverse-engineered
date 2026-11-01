package com.mbridge.msdk.mbsignalcommon.commonwebview;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.webview.ProgressBar;
import com.mbridge.msdk.mbsignalcommon.base.BaseWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import java.util.ArrayList;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
public class CommonWebView extends LinearLayout {
    public static int DEFAULT_JUMP_TIMEOUT = 10000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f36454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f36455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected ToolBar f36456c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected ToolBar f36457d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected ProgressBar f36458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RelativeLayout f36459f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private View.OnClickListener f36460g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.mbridge.msdk.mbsignalcommon.commonwebview.b f36461h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.mbridge.msdk.mbsignalcommon.commonwebview.a f36462i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected BaseWebView f36463j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View.OnClickListener f36464k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View.OnClickListener f36465l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View.OnClickListener f36466m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View.OnClickListener f36467n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Handler f36468o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f36469p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private WebViewClient f36470q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f36471r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private i f36472s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f36473t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Runnable f36474u;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.b("CommonWebView", "webview js!！超时上限：" + CommonWebView.this.f36469p + "ms");
            if (CommonWebView.this.f36472s != null) {
                CommonWebView.this.f36473t = false;
                CommonWebView.this.f36472s.a(CommonWebView.this.f36471r);
            }
        }
    }

    class b extends WebViewClient {
        b() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            o0.c("CommonWebView", "newProgress! 开始! = " + str);
            CommonWebView.this.f36458e.setVisible(true);
            CommonWebView.this.f36458e.setProgressState(5);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (webView != null) {
                try {
                    ViewGroup viewGroup = (ViewGroup) webView.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(webView);
                    }
                    if (webView instanceof WindVaneWebView) {
                        ((WindVaneWebView) webView).release();
                    } else {
                        webView.destroy();
                    }
                } catch (Throwable th2) {
                    o0.b("CommonWebView", th2.getMessage());
                }
            }
            return true;
        }
    }

    class c extends WebChromeClient {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                CommonWebView.this.f36458e.setVisible(false);
            }
        }

        c() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i11) {
            o0.c("CommonWebView", "newProgress! = " + i11);
            if (i11 == 100) {
                CommonWebView.this.f36458e.setProgressState(7);
                new Handler().postDelayed(new a(), 200L);
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseWebView baseWebView = CommonWebView.this.f36463j;
            if (baseWebView != null) {
                baseWebView.stopLoading();
                String str = (String) view.getTag();
                if (TextUtils.equals(str, ToolBar.BACKWARD)) {
                    CommonWebView.this.f36457d.getItem(ToolBar.FORWARD).setEnabled(true);
                    if (CommonWebView.this.f36463j.canGoBack()) {
                        CommonWebView.this.f36463j.goBack();
                    }
                    CommonWebView.this.f36457d.getItem(ToolBar.BACKWARD).setEnabled(CommonWebView.this.f36463j.canGoBack());
                    if (CommonWebView.this.f36464k != null) {
                        CommonWebView.this.f36464k.onClick(view);
                        return;
                    }
                    return;
                }
                if (TextUtils.equals(str, ToolBar.FORWARD)) {
                    CommonWebView.this.f36457d.getItem(ToolBar.BACKWARD).setEnabled(true);
                    if (CommonWebView.this.f36463j.canGoForward()) {
                        CommonWebView.this.f36463j.goForward();
                    }
                    CommonWebView.this.f36457d.getItem(ToolBar.FORWARD).setEnabled(CommonWebView.this.f36463j.canGoForward());
                    if (CommonWebView.this.f36465l != null) {
                        CommonWebView.this.f36465l.onClick(view);
                        return;
                    }
                    return;
                }
                if (TextUtils.equals(str, ToolBar.REFRESH)) {
                    CommonWebView.this.f36457d.getItem(ToolBar.BACKWARD).setEnabled(CommonWebView.this.f36463j.canGoBack());
                    CommonWebView.this.f36457d.getItem(ToolBar.FORWARD).setEnabled(CommonWebView.this.f36463j.canGoForward());
                    CommonWebView.this.f36463j.reload();
                    if (CommonWebView.this.f36466m != null) {
                        CommonWebView.this.f36466m.onClick(view);
                        return;
                    }
                    return;
                }
                if (TextUtils.equals(str, ToolBar.EXITS)) {
                    if (CommonWebView.this.f36460g != null) {
                        CommonWebView.this.f36460g.onClick(view);
                    }
                } else if (TextUtils.equals(str, ToolBar.OPEN_BY_BROWSER)) {
                    if (CommonWebView.this.f36467n != null) {
                        CommonWebView.this.f36467n.onClick(view);
                    }
                    com.mbridge.msdk.click.c.c(CommonWebView.this.getContext(), CommonWebView.this.f36463j.getUrl());
                }
            }
        }
    }

    class e extends WebViewClient {
        e() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            CommonWebView.this.f36457d.getItem(ToolBar.BACKWARD).setEnabled(true);
            CommonWebView.this.f36457d.getItem(ToolBar.FORWARD).setEnabled(false);
            return false;
        }
    }

    class f extends WebViewClient {
        f() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (s0.a.b(str)) {
                s0.a.a(CommonWebView.this.getContext(), str, null);
            }
            return CommonWebView.this.a(webView, str);
        }
    }

    class g extends WebViewClient {
        g() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            CommonWebView.this.f36473t = false;
            CommonWebView.this.a();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            CommonWebView.this.f36471r = str;
            if (CommonWebView.this.f36473t) {
                return;
            }
            CommonWebView.this.f36473t = true;
            CommonWebView.this.c();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i11, String str, String str2) {
            CommonWebView.this.f36473t = false;
            CommonWebView.this.a();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            CommonWebView.this.f36471r = str;
            if (CommonWebView.this.f36473t) {
                CommonWebView.this.a();
            }
            CommonWebView.this.f36473t = true;
            CommonWebView.this.c();
            return false;
        }
    }

    public interface h {
        void a();
    }

    public interface i {
        void a(String str);
    }

    public CommonWebView(Context context) {
        super(context);
        this.f36474u = new a();
        init();
    }

    public CommonWebView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f36474u = new a();
        init();
    }

    public CommonWebView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f36474u = new a();
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f36468o.removeCallbacks(this.f36474u);
    }

    private void a(ArrayList<ToolBar.b> arrayList, boolean z10) {
        if (this.f36456c != null) {
            return;
        }
        ToolBar.a aVar = new ToolBar.a();
        aVar.a(40);
        aVar.b(80);
        ToolBar toolBar = new ToolBar(getContext(), aVar, arrayList);
        this.f36456c = toolBar;
        toolBar.setBackgroundColor(Color.argb(153, 255, 255, 255));
        if (!z10) {
            this.f36456c.setLayoutParams(new LinearLayout.LayoutParams(-1, this.f36454a));
            addView(this.f36456c, 0);
        } else {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f36454a);
            layoutParams.addRule(10);
            this.f36456c.setLayoutParams(layoutParams);
            this.f36459f.addView(this.f36456c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(WebView webView, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Uri uri = Uri.parse(str);
            if (!uri.getScheme().equals("http") && !uri.getScheme().equals("https")) {
                if (uri.getScheme().equals("intent")) {
                    Intent uri2 = Intent.parseUri(str, 1);
                    try {
                        String str2 = uri2.getPackage();
                        if (!TextUtils.isEmpty(str2) && getContext().getPackageManager().getLaunchIntentForPackage(str2) != null) {
                            uri2.setComponent(null);
                            uri2.setSelector(null);
                            uri2.setFlags(ASTNode.DEOP);
                            getContext().startActivity(uri2);
                            return true;
                        }
                        try {
                            String stringExtra = uri2.getStringExtra("browser_fallback_url");
                            if (!TextUtils.isEmpty(stringExtra)) {
                                Uri uri3 = Uri.parse(str);
                                if (!uri3.getScheme().equals("http") && !uri3.getScheme().equals("https")) {
                                    str = stringExtra;
                                }
                                webView.loadUrl(stringExtra);
                                return false;
                            }
                        } catch (Throwable th2) {
                            o0.b("CommonWebView", th2.getMessage());
                        }
                    } catch (Throwable th3) {
                        o0.b("CommonWebView", th3.getMessage());
                    }
                    o0.b("CommonWebView", th.getMessage());
                    return false;
                }
                if (com.mbridge.msdk.click.c.d(getContext(), str)) {
                    o0.b("CommonWebView", "openDeepLink");
                    return true;
                }
                if (!TextUtils.isEmpty(str)) {
                    return !(str.startsWith("http") || str.startsWith("https"));
                }
            }
            return false;
        } catch (Throwable th4) {
            o0.b("CommonWebView", th4.getMessage());
            return false;
        }
    }

    private void b() {
        if (this.f36457d != null) {
            return;
        }
        this.f36457d = new ToolBar(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, this.f36455b);
        layoutParams.bottomMargin = 0;
        this.f36457d.setLayoutParams(layoutParams);
        this.f36457d.setBackgroundColor(-1);
        this.f36457d.setOnItemClickListener(new d());
        addWebViewClient(new e());
        addView(this.f36457d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f36468o.postDelayed(this.f36474u, this.f36469p);
    }

    public void addWebChromeClient(WebChromeClient webChromeClient) {
        this.f36462i.a(webChromeClient);
    }

    public void addWebViewClient(WebViewClient webViewClient) {
        this.f36461h.a(webViewClient);
    }

    public View findToolBarButton(String str) {
        ToolBar toolBar;
        ToolBar toolBar2 = this.f36456c;
        View item = toolBar2 != null ? toolBar2.getItem(str) : null;
        return (item != null || (toolBar = this.f36457d) == null) ? item : toolBar.getItem(str);
    }

    public String getUrl() {
        BaseWebView baseWebView = this.f36463j;
        return baseWebView == null ? "" : baseWebView.getUrl();
    }

    public WebView getWebView() {
        return this.f36463j;
    }

    public void hideCustomizedToolBar() {
        ToolBar toolBar = this.f36456c;
        if (toolBar != null) {
            toolBar.setVisibility(8);
        }
    }

    public void hideDefaultToolBar() {
        ToolBar toolBar = this.f36457d;
        if (toolBar != null) {
            toolBar.setVisibility(8);
        }
    }

    public void hideToolBarButton(String str) {
        View viewFindToolBarButton = findToolBarButton(str);
        if (viewFindToolBarButton != null) {
            viewFindToolBarButton.setVisibility(8);
        }
    }

    public void hideToolBarTitle() {
        this.f36456c.hideTitle();
    }

    public void init() {
        setOrientation(1);
        setGravity(17);
        this.f36459f = new RelativeLayout(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        addView(this.f36459f, layoutParams);
        this.f36454a = t0.a(getContext(), 40.0f);
        this.f36455b = t0.a(getContext(), 40.0f);
        this.f36461h = new com.mbridge.msdk.mbsignalcommon.commonwebview.b();
        this.f36462i = new com.mbridge.msdk.mbsignalcommon.commonwebview.a();
        initWebview();
    }

    public void initWebview() {
        try {
            if (this.f36463j == null) {
                this.f36463j = new BaseWebView(getContext());
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(10);
            this.f36463j.setLayoutParams(layoutParams);
            BaseWebView baseWebView = this.f36463j;
            com.mbridge.msdk.mbsignalcommon.base.b bVar = baseWebView.mWebViewClient;
            baseWebView.setWebViewClient(this.f36461h);
            this.f36463j.setWebChromeClient(this.f36462i);
            addWebViewClient(bVar);
        } catch (Throwable th2) {
            o0.b("CommonWebView", "webview is error", th2);
        }
        this.f36459f.addView(this.f36463j);
    }

    public void loadUrl(String str) {
        this.f36463j.loadUrl(str);
        if (this.f36470q != null) {
            c();
        }
    }

    public void onBackwardClicked(View.OnClickListener onClickListener) {
        this.f36464k = onClickListener;
    }

    public void onForwardClicked(View.OnClickListener onClickListener) {
        this.f36465l = onClickListener;
    }

    public void onOpenByBrowserClicked(View.OnClickListener onClickListener) {
        this.f36467n = onClickListener;
    }

    public void onRefreshClicked(View.OnClickListener onClickListener) {
        this.f36466m = onClickListener;
    }

    public void removeWebChromeClient(WebChromeClient webChromeClient) {
        this.f36462i.b(webChromeClient);
    }

    public void removeWebViewClient(WebViewClient webViewClient) {
        this.f36461h.b(webViewClient);
    }

    public void setCustomizedToolBarFloating() {
        ((ViewGroup) this.f36456c.getParent()).removeView(this.f36456c);
        this.f36459f.addView(this.f36456c);
    }

    public void setCustomizedToolBarUnfloating() {
        ((ViewGroup) this.f36456c.getParent()).removeView(this.f36456c);
        addView(this.f36456c, 0);
    }

    public void setExitsClickListener(View.OnClickListener onClickListener) {
        this.f36460g = onClickListener;
    }

    public void setPageLoadTimtout(int i11) {
        this.f36469p = i11;
        if (this.f36468o == null) {
            this.f36468o = new Handler(Looper.getMainLooper());
        }
        if (this.f36470q == null) {
            g gVar = new g();
            this.f36470q = gVar;
            addWebViewClient(gVar);
        }
    }

    public void setPageLoadTimtoutListener(i iVar) {
        this.f36472s = iVar;
    }

    public void setToolBarTitle(String str) {
        this.f36456c.setTitle(str);
    }

    public void setToolBarTitle(String str, int i11) {
        this.f36456c.setTitle(str, i11);
    }

    public void setWebChromeClient(WebChromeClient webChromeClient) {
        addWebChromeClient(webChromeClient);
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        addWebViewClient(webViewClient);
    }

    public void showCustomizedToolBar() {
        ToolBar toolBar = this.f36456c;
        if (toolBar != null) {
            toolBar.setVisibility(0);
        }
    }

    public void showDefaultToolBar() {
        ToolBar toolBar = this.f36457d;
        if (toolBar != null) {
            toolBar.setVisibility(0);
        }
    }

    public void showToolBarButton(String str) {
        View viewFindToolBarButton = findToolBarButton(str);
        if (viewFindToolBarButton != null) {
            viewFindToolBarButton.setVisibility(0);
        }
    }

    public void showToolBarTitle() {
        this.f36456c.showTitle();
    }

    public void useCustomizedToolBar(ArrayList<ToolBar.b> arrayList) {
        a(arrayList, false);
    }

    public void useCustomizedToolBar(ArrayList<ToolBar.b> arrayList, boolean z10) {
        a(arrayList, z10);
    }

    public void useDeeplink() {
        addWebViewClient(new f());
    }

    public void useDefaultToolBar() {
        b();
    }

    public void useProgressBar() {
        ProgressBar progressBar = new ProgressBar(getContext());
        this.f36458e = progressBar;
        progressBar.setLayoutParams(new LinearLayout.LayoutParams(-1, 4));
        addWebViewClient(new b());
        addWebChromeClient(new c());
        addView(this.f36458e);
        this.f36458e.initResource(true);
    }
}
