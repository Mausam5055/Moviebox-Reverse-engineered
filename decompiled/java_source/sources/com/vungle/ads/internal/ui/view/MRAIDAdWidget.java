package com.vungle.ads.internal.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.platform.e;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.util.h;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.internal.util.w;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001a\u0018\u0000 @2\u00020\u0001:\u0005ABCDEB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\bJ\u0015\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\bJ\u0015\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$J\r\u0010%\u001a\u00020\u0006¢\u0006\u0004\b%\u0010\bJ\r\u0010&\u001a\u00020\u0006¢\u0006\u0004\b&\u0010\bJ\u0015\u0010)\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0006H\u0014¢\u0006\u0004\b+\u0010\bR\u0018\u0010-\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R*\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b\u000f\u0010/\u0012\u0004\b3\u0010\b\u001a\u0004\b0\u00101\"\u0004\b2\u0010\u0011R*\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b\u000b\u00104\u0012\u0004\b8\u0010\b\u001a\u0004\b5\u00106\"\u0004\b7\u0010\rR*\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b\u0013\u00109\u0012\u0004\b=\u0010\b\u001a\u0004\b:\u0010;\"\u0004\b<\u0010\u0015R\u0013\u0010\"\u001a\u0004\u0018\u00010!8F¢\u0006\u0006\u001a\u0004\b>\u0010?¨\u0006F"}, d2 = {"Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "Landroid/widget/RelativeLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "", "bindListeners", "()V", "prepare", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;", "closeDelegate", "setCloseDelegate", "(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;)V", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;", "onViewTouchListener", "setOnViewTouchListener", "(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;)V", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;", "orientationDelegate", "setOrientationDelegate", "(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;)V", "close", "", "requestedOrientation", "setOrientation", "(I)V", "Landroid/webkit/WebViewClient;", "vngWebViewClient", "Lcom/vungle/ads/internal/model/AdPayload$k;", "webViewSettings", "linkWebView", "(Landroid/webkit/WebViewClient;Lcom/vungle/ads/internal/model/AdPayload$k;)V", "", "url", "showWebsite", "(Ljava/lang/String;)V", "pauseWeb", "resumeWeb", "", "webViewDestroyDelay", "destroyWebView", "(J)V", "onAttachedToWindow", "Landroid/webkit/WebView;", "webView", "Landroid/webkit/WebView;", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;", "getOnViewTouchListener$vungle_ads_release", "()Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;", "setOnViewTouchListener$vungle_ads_release", "getOnViewTouchListener$vungle_ads_release$annotations", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;", "getCloseDelegate$vungle_ads_release", "()Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;", "setCloseDelegate$vungle_ads_release", "getCloseDelegate$vungle_ads_release$annotations", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;", "getOrientationDelegate$vungle_ads_release", "()Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;", "setOrientationDelegate$vungle_ads_release", "getOrientationDelegate$vungle_ads_release$annotations", "getUrl", "()Ljava/lang/String;", "Companion", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "DestroyRunnable", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MRAIDAdWidget extends RelativeLayout {
    private static final String TAG = "MRAIDAdWidget";
    private a closeDelegate;
    private c onViewTouchListener;
    private d orientationDelegate;
    private WebView webView;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$DestroyRunnable;", "Ljava/lang/Runnable;", "widget", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;)V", "run", "", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final class DestroyRunnable implements Runnable {
        private final MRAIDAdWidget widget;

        public DestroyRunnable(MRAIDAdWidget widget) {
            Intrinsics.h(widget, "widget");
            this.widget = widget;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.widget.removeAllViews();
                WebView webView = this.widget.webView;
                if (webView != null) {
                    webView.setWebChromeClient(null);
                    webView.stopLoading();
                    webView.clearHistory();
                    if (Build.VERSION.SDK_INT >= 29) {
                        webView.setWebViewRenderProcessClient(null);
                    }
                    webView.loadUrl(TmcConstants.LOAD_BASE_DATA_URL);
                    webView.removeAllViews();
                    ViewParent parent = webView.getParent();
                    ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                    if (viewGroup != null) {
                        viewGroup.removeView(webView);
                    }
                    webView.destroy();
                }
                this.widget.webView = null;
            } catch (Throwable unused) {
            }
        }
    }

    public interface a {
        void close();
    }

    public interface c {
        boolean onTouch(MotionEvent motionEvent);
    }

    public interface d {
        void setOrientation(int i11);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MRAIDAdWidget(Context context) throws InstantiationException {
        super(context);
        Intrinsics.h(context, "context");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        setLayoutParams(layoutParams);
        WebView webView = w.INSTANCE.getWebView(context);
        this.webView = webView;
        if (webView != null) {
            webView.setLayoutParams(layoutParams);
        }
        WebView webView2 = this.webView;
        if (webView2 != null) {
            webView2.setTag("VungleWebView");
        }
        addView(this.webView, layoutParams);
        bindListeners();
        prepare();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private final void bindListeners() {
        WebView webView = this.webView;
        if (webView != null) {
            webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.vungle.ads.internal.ui.view.a
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return MRAIDAdWidget.m445bindListeners$lambda0(this.f60677a, view, motionEvent);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: bindListeners$lambda-0, reason: not valid java name */
    public static final boolean m445bindListeners$lambda0(MRAIDAdWidget this$0, View view, MotionEvent motionEvent) {
        Intrinsics.h(this$0, "this$0");
        c cVar = this$0.onViewTouchListener;
        if (cVar != null) {
            return cVar.onTouch(motionEvent);
        }
        return false;
    }

    public static /* synthetic */ void getCloseDelegate$vungle_ads_release$annotations() {
    }

    public static /* synthetic */ void getOnViewTouchListener$vungle_ads_release$annotations() {
    }

    public static /* synthetic */ void getOrientationDelegate$vungle_ads_release$annotations() {
    }

    private final void prepare() {
        WebView webView = this.webView;
        if (webView != null) {
            webView.setLayerType(2, null);
            webView.setBackgroundColor(0);
            webView.setVisibility(8);
        }
    }

    public final void close() {
        a aVar = this.closeDelegate;
        if (aVar != null) {
            aVar.close();
        }
    }

    public final void destroyWebView(long webViewDestroyDelay) {
        if (webViewDestroyDelay <= 0) {
            new DestroyRunnable(this).run();
        } else {
            new h().schedule(new DestroyRunnable(this), webViewDestroyDelay);
        }
    }

    /* JADX INFO: renamed from: getCloseDelegate$vungle_ads_release, reason: from getter */
    public final a getCloseDelegate() {
        return this.closeDelegate;
    }

    /* JADX INFO: renamed from: getOnViewTouchListener$vungle_ads_release, reason: from getter */
    public final c getOnViewTouchListener() {
        return this.onViewTouchListener;
    }

    /* JADX INFO: renamed from: getOrientationDelegate$vungle_ads_release, reason: from getter */
    public final d getOrientationDelegate() {
        return this.orientationDelegate;
    }

    public final String getUrl() {
        WebView webView = this.webView;
        if (webView != null) {
            return webView.getUrl();
        }
        return null;
    }

    public final void linkWebView(WebViewClient vngWebViewClient, AdPayload.k webViewSettings) {
        Intrinsics.h(vngWebViewClient, "vngWebViewClient");
        WebView webView = this.webView;
        if (webView != null) {
            e.INSTANCE.applyWebSettings(webView, webViewSettings);
            webView.setWebViewClient(vngWebViewClient);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        ViewGroup.LayoutParams layoutParams;
        super.onAttachedToWindow();
        ViewGroup.LayoutParams layoutParams2 = getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.height = -1;
            layoutParams2.width = -1;
        }
        WebView webView = this.webView;
        if (webView == null || (layoutParams = webView.getLayoutParams()) == null) {
            return;
        }
        layoutParams.height = -1;
        layoutParams.width = -1;
    }

    public final void pauseWeb() {
        WebView webView = this.webView;
        if (webView != null) {
            webView.onPause();
        }
    }

    public final void resumeWeb() {
        WebView webView = this.webView;
        if (webView != null) {
            webView.onResume();
        }
    }

    public final void setCloseDelegate(a closeDelegate) {
        Intrinsics.h(closeDelegate, "closeDelegate");
        this.closeDelegate = closeDelegate;
    }

    public final void setCloseDelegate$vungle_ads_release(a aVar) {
        this.closeDelegate = aVar;
    }

    public final void setOnViewTouchListener(c onViewTouchListener) {
        this.onViewTouchListener = onViewTouchListener;
    }

    public final void setOnViewTouchListener$vungle_ads_release(c cVar) {
        this.onViewTouchListener = cVar;
    }

    public final void setOrientation(int requestedOrientation) {
        d dVar = this.orientationDelegate;
        if (dVar != null) {
            dVar.setOrientation(requestedOrientation);
        }
    }

    public final void setOrientationDelegate(d orientationDelegate) {
        this.orientationDelegate = orientationDelegate;
    }

    public final void setOrientationDelegate$vungle_ads_release(d dVar) {
        this.orientationDelegate = dVar;
    }

    public final void showWebsite(String url) {
        Intrinsics.h(url, "url");
        o.Companion.d(TAG, "loadUrl: " + url);
        WebView webView = this.webView;
        if (webView != null) {
            webView.setVisibility(0);
            webView.loadUrl(url);
        }
    }
}
