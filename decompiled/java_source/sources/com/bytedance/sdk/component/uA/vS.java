package com.bytedance.sdk.component.uA;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Paint;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.DownloadListener;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import com.bytedance.sdk.component.utils.kF;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.model.AdPayload;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class vS extends FrameLayout {
    private static TKC Fm;
    private float Dq;
    private long Ei;
    private com.bytedance.sdk.component.uA.sP.Sj EjP;
    private AtomicBoolean FPG;
    private boolean Fmk;
    private String HiB;
    private AttributeSet JcM;
    private boolean Jcg;
    private sP LD;
    private float LqL;
    private AtomicBoolean Mts;
    private com.bytedance.sdk.component.uA.EjP RiZ;
    public int Sj;
    private long TEQ;
    public int TKC;
    private List<String> TzV;
    private Context WMZ;
    private AtomicBoolean Wjd;
    private int Yf;
    private long Ym;
    private View Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private long f20911aa;
    private com.bytedance.sdk.component.uA.Sj dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private boolean f20912dx;
    private kF fF;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private boolean f20913ib;

    /* JADX INFO: renamed from: jb, reason: collision with root package name */
    private long f20914jb;
    private boolean kF;
    private float ley;
    public int sP;
    private boolean sU;
    private volatile WebView sef;
    private float uA;
    private WebViewClient uP;
    private com.bytedance.sdk.component.uA.Sj.InterfaceC0227Sj uvD;
    private JSONObject vS;
    private float wE;
    private EjP xD;
    private boolean zR;

    public interface EjP {
    }

    public static class Sj extends WebViewClient {
        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(final WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (Build.VERSION.SDK_INT < 26) {
                return super.onRenderProcessGone(webView, renderProcessGoneDetail);
            }
            if (webView == null) {
                return true;
            }
            webView.post(new Runnable() { // from class: com.bytedance.sdk.component.uA.vS.Sj.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ViewGroup viewGroup = (ViewGroup) webView.getParent();
                        if (viewGroup != null) {
                            viewGroup.removeView(webView);
                        }
                        webView.destroy();
                    } catch (Exception unused) {
                    }
                }
            });
            return true;
        }
    }

    public interface TKC {
        WebView createWebView(Context context, AttributeSet attributeSet, int i11);
    }

    public interface sP {
    }

    public vS(Context context) {
        this(Sj(context), false);
    }

    public vS(Context context, boolean z10) {
        super(Sj(context));
        this.Dq = 0.0f;
        this.uA = 0.0f;
        this.TEQ = 0L;
        this.Ym = 0L;
        this.f20911aa = 0L;
        this.Fmk = false;
        this.wE = 20.0f;
        this.LqL = 50.0f;
        this.Mts = new AtomicBoolean();
        this.FPG = new AtomicBoolean();
        this.Wjd = new AtomicBoolean();
        this.WMZ = context;
        if (z10) {
            return;
        }
        try {
            this.sef = Sj((AttributeSet) null, 0);
            vS();
        } catch (Throwable unused) {
        }
        sP(Sj(context));
    }

    private void RiZ() {
        if (this.sef == null) {
            return;
        }
        try {
            this.sef.removeJavascriptInterface("searchBoxJavaBridge_");
            this.sef.removeJavascriptInterface("accessibility");
            this.sef.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable unused) {
        }
    }

    private static Context Sj(Context context) {
        return context;
    }

    private WebView Sj(AttributeSet attributeSet, int i11) {
        TKC tkc = Fm;
        if (tkc != null) {
            return tkc.createWebView(getContext(), attributeSet, i11);
        }
        return attributeSet == null ? new WebView(Sj(this.WMZ)) : new WebView(Sj(this.WMZ), attributeSet);
    }

    private void Sj(MotionEvent motionEvent) {
        if (!this.Jcg || this.EjP == null) {
            return;
        }
        if ((this.HiB == null && this.vS == null) || motionEvent == null) {
            return;
        }
        try {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.Dq = motionEvent.getRawX();
                this.uA = motionEvent.getRawY();
                this.TEQ = System.currentTimeMillis();
                this.vS = new JSONObject();
                if (this.sef != null) {
                    this.f20914jb = this.TEQ;
                    return;
                }
                return;
            }
            if (action == 1 || action == 3) {
                this.vS.put("start_x", String.valueOf(this.Dq));
                this.vS.put("start_y", String.valueOf(this.uA));
                this.vS.put("offset_x", String.valueOf(motionEvent.getRawX() - this.Dq));
                this.vS.put("offset_y", String.valueOf(motionEvent.getRawY() - this.uA));
                this.vS.put("url", String.valueOf(getUrl()));
                this.vS.put("tag", "");
                this.Ym = System.currentTimeMillis();
                if (this.sef != null) {
                    this.Ei = this.Ym;
                }
                this.vS.put("down_time", this.TEQ);
                this.vS.put("up_time", this.Ym);
                if (com.bytedance.sdk.component.uA.Sj.Sj.Sj().sP() != null) {
                    long j11 = this.f20911aa;
                    long j12 = this.TEQ;
                    if (j11 != j12) {
                        this.f20911aa = j12;
                        com.bytedance.sdk.component.uA.Sj.Sj.Sj().sP().Sj(this.EjP, this.HiB, "in_web_click", this.vS, this.Ym - this.TEQ);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    private static void TKC(Context context) {
    }

    private static boolean TKC(View view) {
        try {
            Class<?> clsLoadClass = view.getClass().getClassLoader().loadClass("android.support.v4.view.ScrollingView");
            if (clsLoadClass != null && clsLoadClass.isInstance(view)) {
                return true;
            }
        } catch (Throwable unused) {
        }
        try {
            Class<?> clsLoadClass2 = view.getClass().getClassLoader().loadClass("androidx.core.view.ScrollingView");
            return clsLoadClass2 != null && clsLoadClass2.isInstance(view);
        } catch (Throwable unused2) {
            return false;
        }
    }

    private void dx() {
        if (this.fF == null) {
            this.Wjd.set(false);
            this.fF = new kF(getContext());
        }
        new Object() { // from class: com.bytedance.sdk.component.uA.vS.1
        };
        this.Wjd.set(true);
    }

    private void sP(Context context) {
        TKC(context);
        sU();
        RiZ();
    }

    private static boolean sP(View view) {
        try {
            Class<?> clsLoadClass = view.getClass().getClassLoader().loadClass("android.support.v4.view.ViewPager");
            if (clsLoadClass != null && clsLoadClass.isInstance(view)) {
                return true;
            }
        } catch (Throwable unused) {
        }
        try {
            Class<?> clsLoadClass2 = view.getClass().getClassLoader().loadClass("androidx.viewpager.widget.ViewPager");
            return clsLoadClass2 != null && clsLoadClass2.isInstance(view);
        } catch (Throwable unused2) {
            return false;
        }
    }

    private void sU() {
        try {
            WebSettings settings = this.sef.getSettings();
            if (settings != null) {
                settings.setSavePassword(false);
            }
        } catch (Throwable unused) {
        }
    }

    public static void setDataDirectorySuffix(String str) {
        if (Build.VERSION.SDK_INT >= 28) {
            WebView.setDataDirectorySuffix(str);
        }
    }

    private void setJavaScriptEnabled(String str) {
        WebSettings settings;
        try {
            if (TextUtils.isEmpty(str) || (settings = this.sef.getSettings()) == null) {
                return;
            }
            if (Uri.parse(str).getScheme().equalsIgnoreCase(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE)) {
                settings.setJavaScriptEnabled(false);
            } else {
                settings.setJavaScriptEnabled(true);
            }
        } catch (Throwable unused) {
        }
    }

    public static void setWebViewProvider(TKC tkc) {
        Fm = tkc;
    }

    public void Dq() {
        try {
            this.sef.reload();
        } catch (Throwable unused) {
        }
    }

    public boolean EjP() {
        return this.f20913ib;
    }

    public void Fmk() {
        if (this.sef != null) {
            this.sef.onResume();
        }
    }

    public void HiB() {
        try {
            this.sef = Sj(this.JcM, 0);
            vS();
            sP(Sj(this.WMZ));
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    public void Jcg() {
        try {
            this.sef.stopLoading();
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected ViewParent Sj(View view) {
        ViewParent parent = view.getParent();
        if ((parent instanceof AbsListView) || (parent instanceof ScrollView) || (parent instanceof HorizontalScrollView) || !(parent instanceof View)) {
            return parent;
        }
        View view2 = (View) parent;
        return (sP(view2) || TKC(view2)) ? parent : Sj(view2);
    }

    public void Sj(int i11, long j11) {
        if (this.sef == null || !(this.sef instanceof HiB)) {
            return;
        }
        this.RiZ = new com.bytedance.sdk.component.uA.EjP(this.WMZ, this.dNu, i11, j11, this);
        if (!TextUtils.isEmpty(this.HiB)) {
            this.RiZ.Sj(this.HiB);
        }
        ((HiB) this.sef).setTouchListenerProxy(this.RiZ);
    }

    @SuppressLint({"JavascriptInterface"})
    public void Sj(Object obj, String str) {
        try {
            this.sef.addJavascriptInterface(obj, str);
        } catch (Throwable unused) {
        }
    }

    public void Sj(String str, String str2, String str3, String str4, String str5) {
        try {
            setJavaScriptEnabled(str);
            this.sef.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } catch (Throwable unused) {
        }
    }

    @TargetApi(19)
    public void Sj(String str, Map<String, String> map) {
        try {
            setJavaScriptEnabled(str);
            this.sef.loadUrl(str, map);
        } catch (Throwable unused) {
        }
    }

    public void Sj(boolean z10) {
        try {
            this.sef.clearCache(z10);
        } catch (Throwable unused) {
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void Sj(boolean z10, int i11, int i12, List<Integer> list, int i13, List<String> list2) {
        if (z10 && this.sef != null && (this.sef instanceof HiB)) {
            this.dNu = new com.bytedance.sdk.component.uA.Sj(this.WMZ, i11, i12, list, i13);
            this.TzV = list2;
            if (!TextUtils.isEmpty(this.HiB)) {
                this.dNu.Sj(this.HiB);
            }
            ((HiB) this.sef).setTouchListenerProxy(this.dNu);
            this.uvD = this.dNu.Sj();
        }
    }

    public void Sj(boolean z10, View view) {
        if (z10) {
            this.Zq = view;
            view.setVisibility(8);
            View view2 = this.Zq;
            if (view2 == null || view2.getParent() != null) {
                return;
            }
            addView(this.Zq, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    public void TEQ() {
        try {
            this.sef.goBack();
        } catch (Throwable unused) {
        }
    }

    public boolean TKC() {
        return this.zR;
    }

    public void TzV() {
        try {
            this.sef.pauseTimers();
        } catch (Throwable unused) {
        }
    }

    public boolean Ym() {
        if (this.sef == null) {
            return false;
        }
        try {
            return this.sef.canGoForward();
        } catch (Throwable unused) {
            return false;
        }
    }

    public void Zq() {
        if (this.sef == null) {
            return;
        }
        try {
            this.sef.onPause();
        } catch (Throwable unused) {
        }
    }

    public void a_(String str) {
        try {
            setJavaScriptEnabled(str);
            this.sef.loadUrl(str);
        } catch (Throwable unused) {
        }
    }

    public void aa() {
        try {
            this.sef.goForward();
        } catch (Throwable unused) {
        }
    }

    public void b_(String str) {
        try {
            this.sef.removeJavascriptInterface(str);
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.sef == null) {
            return;
        }
        try {
            this.sef.computeScroll();
        } catch (Throwable unused) {
        }
    }

    public void dNu() {
        try {
            this.sef.clearView();
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean f_() {
        return this.sU;
    }

    public View getArbitrageLoadingView() {
        return this.Zq;
    }

    public int getContentHeight() {
        if (this.sef == null) {
            return 0;
        }
        try {
            return this.sef.getContentHeight();
        } catch (Throwable unused) {
            return 1;
        }
    }

    public long getLandingPageClickBegin() {
        return this.f20914jb;
    }

    public long getLandingPageClickEnd() {
        return this.Ei;
    }

    public com.bytedance.sdk.component.uA.sP.Sj getMaterialMeta() {
        return this.EjP;
    }

    public String getOriginalUrl() {
        String url;
        if (this.sef == null) {
            return null;
        }
        try {
            String originalUrl = this.sef.getOriginalUrl();
            return (originalUrl == null || !originalUrl.startsWith("data:text/html") || (url = this.sef.getUrl()) == null || !url.startsWith(AdPayload.FILE_SCHEME)) ? originalUrl : url;
        } catch (Throwable unused) {
            return null;
        }
    }

    public int getProgress() {
        if (this.sef == null) {
            return 0;
        }
        try {
            return this.sef.getProgress();
        } catch (Throwable unused) {
            return 100;
        }
    }

    @Override // android.view.View
    public String getTag() {
        return this.HiB;
    }

    public String getUrl() {
        if (this.sef == null) {
            return null;
        }
        try {
            return this.sef.getUrl();
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getUserAgentString() {
        if (this.sef == null) {
            return "";
        }
        try {
            return this.sef.getSettings().getUserAgentString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public WebView getWebView() {
        return this.sef;
    }

    public WebViewClient getWebViewClient() {
        return this.uP;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.Mts.set(true);
        if (!this.FPG.get() || this.Wjd.get()) {
            return;
        }
        dx();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.Mts.set(false);
    }

    @Override // android.view.ViewGroup
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        ViewParent viewParentSj;
        try {
            Sj(motionEvent);
            boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
            if ((motionEvent.getActionMasked() == 2 || motionEvent.getActionMasked() == 0) && this.Fmk && (viewParentSj = Sj(this)) != null) {
                viewParentSj.requestDisallowInterceptTouchEvent(true);
            }
            return zOnInterceptTouchEvent;
        } catch (Throwable unused) {
            return super.onInterceptTouchEvent(motionEvent);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        try {
            this.sef.removeAllViews();
        } catch (Throwable unused) {
        }
    }

    public boolean sP() {
        return this.f20912dx;
    }

    public void sef() {
        try {
            this.sef.clearHistory();
        } catch (Throwable unused) {
        }
    }

    public void setAllowFileAccess(boolean z10) {
        try {
            this.sef.getSettings().setAllowFileAccess(z10);
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public void setAlpha(float f11) {
        try {
            super.setAlpha(f11);
            this.sef.setAlpha(f11);
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i11) {
        try {
            this.sef.setBackgroundColor(i11);
        } catch (Throwable unused) {
        }
    }

    public void setBuiltInZoomControls(boolean z10) {
        try {
            this.sef.getSettings().setBuiltInZoomControls(z10);
        } catch (Throwable unused) {
        }
    }

    public void setCacheMode(int i11) {
        try {
            this.sef.getSettings().setCacheMode(i11);
        } catch (Throwable unused) {
        }
    }

    public void setCalculationMethod(int i11) {
        this.Yf = i11;
    }

    public void setDatabaseEnabled(boolean z10) {
        try {
            this.sef.getSettings().setDatabaseEnabled(z10);
        } catch (Throwable unused) {
        }
    }

    public void setDeepShakeValue(float f11) {
        this.ley = f11;
    }

    public void setDefaultFontSize(int i11) {
        try {
            this.sef.getSettings().setDefaultFontSize(i11);
        } catch (Throwable unused) {
        }
    }

    public void setDefaultTextEncodingName(String str) {
        try {
            this.sef.getSettings().setDefaultTextEncodingName(str);
        } catch (Throwable unused) {
        }
    }

    public void setDisplayZoomControls(boolean z10) {
        try {
            this.sef.getSettings().setDisplayZoomControls(z10);
        } catch (Throwable unused) {
        }
    }

    public void setDomStorageEnabled(boolean z10) {
        try {
            this.sef.getSettings().setDomStorageEnabled(z10);
        } catch (Throwable unused) {
        }
    }

    public void setDownloadListener(DownloadListener downloadListener) {
        try {
            this.sef.setDownloadListener(downloadListener);
        } catch (Throwable unused) {
        }
    }

    public void setIsPreventTouchEvent(boolean z10) {
        this.Fmk = z10;
    }

    public void setJavaScriptCanOpenWindowsAutomatically(boolean z10) {
        try {
            this.sef.getSettings().setJavaScriptCanOpenWindowsAutomatically(z10);
        } catch (Throwable unused) {
        }
    }

    public void setJavaScriptEnabled(boolean z10) {
        try {
            this.sef.getSettings().setJavaScriptEnabled(z10);
        } catch (Throwable unused) {
        }
    }

    public void setLandingPage(boolean z10) {
        this.Jcg = z10;
    }

    public void setLandingPageClickBegin(long j11) {
        this.f20914jb = j11;
    }

    public void setLandingPageClickEnd(long j11) {
        this.Ei = j11;
    }

    @Override // android.view.View
    public void setLayerType(int i11, Paint paint) {
        try {
            this.sef.setLayerType(i11, paint);
        } catch (Throwable unused) {
        }
    }

    public void setLayoutAlgorithm(WebSettings.LayoutAlgorithm layoutAlgorithm) {
        try {
            this.sef.getSettings().setLayoutAlgorithm(layoutAlgorithm);
        } catch (Throwable unused) {
        }
    }

    public void setLoadWithOverviewMode(boolean z10) {
        try {
            this.sef.getSettings().setLoadWithOverviewMode(z10);
        } catch (Throwable unused) {
        }
    }

    public void setLpPreRender(boolean z10) {
        this.sU = z10;
    }

    public void setMaterialMeta(com.bytedance.sdk.component.uA.sP.Sj sj2) {
        this.EjP = sj2;
    }

    public void setMixedContentMode(int i11) {
        try {
            this.sef.getSettings().setMixedContentMode(i11);
        } catch (Throwable unused) {
        }
    }

    public void setNetworkAvailable(boolean z10) {
        try {
            this.sef.setNetworkAvailable(z10);
        } catch (Throwable unused) {
        }
    }

    public void setOnShakeListener(sP sPVar) {
        this.LD = sPVar;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i11) {
        try {
            this.sef.setOverScrollMode(i11);
            super.setOverScrollMode(i11);
        } catch (Throwable unused) {
        }
    }

    public void setPreError(boolean z10) {
        this.kF = z10;
    }

    public void setPreFinish(boolean z10) {
        this.zR = z10;
    }

    public void setPreProgressHundred(boolean z10) {
        this.f20913ib = z10;
    }

    public void setPreStart(boolean z10) {
        this.f20912dx = z10;
    }

    public void setRecycler(boolean z10) {
        if (this.sef == null || !(this.sef instanceof HiB)) {
            return;
        }
        ((HiB) this.sef).setRecycler(z10);
    }

    public void setShakeValue(float f11) {
        this.wE = f11;
    }

    public void setSupportZoom(boolean z10) {
        try {
            this.sef.getSettings().setSupportZoom(z10);
        } catch (Throwable unused) {
        }
    }

    public void setTag(String str) {
        this.HiB = str;
        com.bytedance.sdk.component.uA.Sj sj2 = this.dNu;
        if (sj2 != null) {
            sj2.Sj(str);
        }
        com.bytedance.sdk.component.uA.EjP ejP = this.RiZ;
        if (ejP != null) {
            ejP.Sj(str);
        }
    }

    public void setTouchStateListener(EjP ejP) {
        this.xD = ejP;
    }

    public void setUseWideViewPort(boolean z10) {
        try {
            this.sef.getSettings().setUseWideViewPort(z10);
        } catch (Throwable unused) {
        }
    }

    public void setUserAgentString(String str) {
        try {
            this.sef.getSettings().setUserAgentString(str);
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public void setVisibility(int i11) {
        try {
            super.setVisibility(i11);
            this.sef.setVisibility(i11);
        } catch (Throwable unused) {
        }
    }

    public void setWebChromeClient(WebChromeClient webChromeClient) {
        try {
            this.sef.setWebChromeClient(webChromeClient);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setWebViewClient(WebViewClient webViewClient) {
        try {
            if (webViewClient instanceof EjP) {
                setTouchStateListener((EjP) webViewClient);
            } else {
                setTouchStateListener(null);
            }
            if (webViewClient == 0) {
                webViewClient = new Sj();
            }
            this.uP = webViewClient;
            this.sef.setWebViewClient(new Jcg(this.uvD, webViewClient, this.TzV));
        } catch (Throwable unused) {
        }
    }

    public void setWriggleValue(float f11) {
        this.LqL = f11;
    }

    public boolean uA() {
        if (this.sef == null) {
            return false;
        }
        try {
            return this.sef.canGoBack();
        } catch (Throwable unused) {
            return false;
        }
    }

    public void uvD() {
        if (this.sef == null) {
            return;
        }
        try {
            this.sef.destroy();
        } catch (Throwable unused) {
        }
    }

    public void vS() {
        if (this.sef != null) {
            removeAllViews();
            setBackground(null);
            try {
                this.sef.setId(520093704);
            } catch (Throwable unused) {
            }
            addView(this.sef, new FrameLayout.LayoutParams(-1, -1));
        }
    }
}
