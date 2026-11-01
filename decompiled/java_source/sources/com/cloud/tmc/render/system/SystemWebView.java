package com.cloud.tmc.render.system;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.net.Uri;
import android.os.Looper;
import android.util.AttributeSet;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebMessage;
import android.webkit.WebMessagePort;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.cloud.tmc.integration.ui.p001native.NativeImgComponent;
import com.cloud.tmc.kernel.bridge.RenderBridge;
import com.cloud.tmc.kernel.constants.MiniAppType;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.renderprocess.IOnRenderProcessGoneProxy;
import com.cloud.tmc.kernel.proxy.renderprocess.IRenderProcessListener;
import com.cloud.tmc.kernel.render.CustomViewVisiableCallback;
import com.cloud.tmc.kernel.render.IWebView;
import com.cloud.tmc.kernel.render.ScrollChangedCallback;
import com.cloud.tmc.kernel.render.WebviewPageCallback;
import com.cloud.tmc.kernel.render.WebviewPageEventCallback;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.HybridHelper;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.render.BuildConfig;
import com.cloud.tmc.render.IRenderWebivewStrategyCache;
import com.cloud.tmc.render.bridge.WebviewBridgeHelper;
import com.cloud.tmc.render.utils.ADJSI;
import com.cloud.tmc.render.utils.FullScreenJSI;
import com.cloud.tmc.render.utils.WebViewExtensionKt;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.al.ka.KaManager;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0019\u0018\u0000 d2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001dB\u001b\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0010\u00103\u001a\u00020\f2\u0006\u00104\u001a\u00020\fH\u0002J\b\u00105\u001a\u000206H\u0017J\b\u00107\u001a\u000206H\u0016J\b\u00108\u001a\u00020\u001dH\u0016J\b\u00109\u001a\u00020:H\u0016J\b\u0010;\u001a\u000206H\u0016J\r\u0010<\u001a\u00020\u0013H\u0016¢\u0006\u0002\u0010=J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010>\u001a\u0002062\u0006\u00104\u001a\u00020\fH\u0016J4\u0010>\u001a\u0002062\u0006\u00104\u001a\u00020\f2\"\u0010?\u001a\u001e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0@j\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f`AH\u0016J8\u0010B\u001a\u0002062\b\u00104\u001a\u0004\u0018\u00010\f2\u0006\u0010C\u001a\u00020\f2\b\u0010D\u001a\u0004\u0018\u00010\f2\b\u0010E\u001a\u0004\u0018\u00010\f2\b\u0010F\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010G\u001a\u00020\u0013H\u0016J\b\u0010H\u001a\u000206H\u0016J\u001c\u0010I\u001a\u0002062\b\u0010J\u001a\u0004\u0018\u00010\u00012\b\u0010K\u001a\u0004\u0018\u00010LH\u0016J\b\u0010M\u001a\u000206H\u0016J(\u0010N\u001a\u0002062\u0006\u0010O\u001a\u00020\u001d2\u0006\u0010P\u001a\u00020\u001d2\u0006\u0010Q\u001a\u00020\u001d2\u0006\u0010R\u001a\u00020\u001dH\u0014J\u0012\u0010S\u001a\u0002062\b\u0010T\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010U\u001a\u000206H\u0017J\u0012\u0010V\u001a\u0002062\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0012\u0010W\u001a\u0002062\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\b\u0010X\u001a\u000206H\u0016J\u0010\u0010Y\u001a\u0002062\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010Z\u001a\u0002062\u0006\u0010[\u001a\u00020\fH\u0016J\u0012\u0010\\\u001a\u0002062\b\u0010]\u001a\u0004\u0018\u00010\fH\u0016J\u0010\u0010^\u001a\u0002062\u0006\u0010_\u001a\u00020\u001dH\u0016J\u0010\u0010`\u001a\u0002062\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0012\u0010a\u001a\u0002062\b\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0010\u0010b\u001a\u0002062\u0006\u0010c\u001a\u00020\u0013H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u000e\u0010*\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010-\u001a\u00020.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102¨\u0006e"}, d2 = {"Lcom/cloud/tmc/render/system/SystemWebView;", "Landroid/webkit/WebView;", "Lcom/cloud/tmc/kernel/render/IWebView;", "Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;", "context", "Landroid/content/Context;", "attributeSet", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "adJSI", "Lcom/cloud/tmc/render/utils/ADJSI;", "appId", "", "bgColor", "customViewCallback", "Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;", "fullScreenJSI", "Lcom/cloud/tmc/render/utils/FullScreenJSI;", "isResume", "", "mWebChromeClient", "Lcom/cloud/tmc/render/system/DefaultWebChromeClient;", "getMWebChromeClient", "()Lcom/cloud/tmc/render/system/DefaultWebChromeClient;", "setMWebChromeClient", "(Lcom/cloud/tmc/render/system/DefaultWebChromeClient;)V", "mWebViewClient", "Lcom/cloud/tmc/render/system/DefaultWebViewClient;", "miniappType", "", "node", "Lcom/cloud/tmc/kernel/node/Node;", "pageCallback", "Lcom/cloud/tmc/kernel/render/WebviewPageCallback;", "pageEventCallback", "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;", "port0", "Landroid/webkit/WebMessagePort;", "getPort0", "()Landroid/webkit/WebMessagePort;", "setPort0", "(Landroid/webkit/WebMessagePort;)V", "receivedRenderProcessGone", "scrollChangedCallback", "Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;", "webviewBridgeHelper", "Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;", "getWebviewBridgeHelper", "()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;", "setWebviewBridgeHelper", "(Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;)V", "appendDarkThemeEnabledStatusParam", "url", "create", "", PushConstants.PROVIDER_FIELD_DESTROY, "getMiniAppType", "getRenderBridge", "Lcom/cloud/tmc/kernel/bridge/RenderBridge;", "goBack", "isRenderProcessGone", "()Ljava/lang/Boolean;", NativeImgComponent.EVENT_LOAD, "additionalHttpHeaders", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "loadData", "data", "mimeType", "encoding", "historyUrl", "onCheckIsTextEditor", "onPause", "onRenderProcessGone", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "detail", "Landroid/webkit/RenderProcessGoneDetail;", "onResume", "onScrollChanged", "l", "t", "oldl", "oldt", "registerCustomViewVisiableCallback", "customViewVisiableCallback", "registerMessageChannel", "registerPageCallback", "registerPageEventCallback", "reload", "setAppId", "setBgColor", TtmlNode.ATTR_TTS_COLOR, "setCommonresId", TmcConstants.KEY_MINI_COMMONRES_ID, "setMiniAppType", NativeComponentConstants.KEY_COMPONENT_TYPE, "setNode", "setScrollChangedCallback", "setSupportFullScreen", KaManager.NOTIFICATION_GROUP_FULLSCREEN, "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SystemWebView extends WebView implements IWebView, IRenderProcessListener {
    private static final String TAG = "SystemWebView";
    private final ADJSI adJSI;
    private String appId;
    private String bgColor;
    private CustomViewVisiableCallback customViewCallback;
    private final FullScreenJSI fullScreenJSI;
    private boolean isResume;
    private DefaultWebChromeClient mWebChromeClient;
    private DefaultWebViewClient mWebViewClient;
    private int miniappType;
    private Node node;
    private WebviewPageCallback pageCallback;
    private WebviewPageEventCallback pageEventCallback;
    private WebMessagePort port0;
    private boolean receivedRenderProcessGone;
    private ScrollChangedCallback scrollChangedCallback;
    private WebviewBridgeHelper webviewBridgeHelper;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public SystemWebView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SystemWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.miniappType = MiniAppType.NORMAL.getType();
        this.webviewBridgeHelper = new WebviewBridgeHelper(this);
        this.isResume = true;
        this.fullScreenJSI = new FullScreenJSI();
        this.adJSI = new ADJSI();
    }

    public /* synthetic */ SystemWebView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    private final String appendDarkThemeEnabledStatusParam(String url) {
        Context context = getContext();
        Intrinsics.g(context, "context");
        String strAddParam = UrlUtils.addParam(url, HybridHelper.Dark_THEME_ENABLE_STATUS_PARAM_KEY, String.valueOf(HybridHelper.getDarkThemeEnableStatusParamValue(context)));
        Intrinsics.g(strAddParam, "addParam(\n            ur…ext).toString()\n        )");
        return strAddParam;
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    @SuppressLint({"JavascriptInterface"})
    public void create() {
        String str;
        Node node;
        WebviewPageEventCallback webviewPageEventCallback = this.pageEventCallback;
        WebviewPageCallback webviewPageCallback = this.pageCallback;
        String str2 = this.appId;
        if (str2 == null) {
            Intrinsics.z("appId");
            str = null;
        } else {
            str = str2;
        }
        Node node2 = this.node;
        if (node2 == null) {
            Intrinsics.z("node");
            node = null;
        } else {
            node = node2;
        }
        DefaultWebViewClient defaultWebViewClient = new DefaultWebViewClient(webviewPageEventCallback, webviewPageCallback, str, node, this);
        this.mWebViewClient = defaultWebViewClient;
        setWebViewClient(defaultWebViewClient);
        Context context = getContext();
        Intrinsics.g(context, "context");
        SupportFullScreenWebChromeClient supportFullScreenWebChromeClient = new SupportFullScreenWebChromeClient(context, this.pageEventCallback, this.webviewBridgeHelper, this.customViewCallback);
        this.mWebChromeClient = supportFullScreenWebChromeClient;
        setWebChromeClient(supportFullScreenWebChromeClient);
        WebSettings settings = getSettings();
        settings.setAllowFileAccessFromFileURLs(true);
        settings.setDefaultTextEncodingName("UTF-8");
        settings.setLoadsImagesAutomatically(true);
        settings.setMixedContentMode(0);
        settings.setAllowContentAccess(true);
        settings.setJavaScriptEnabled(true);
        settings.setMediaPlaybackRequiresUserGesture(false);
        addJavascriptInterface("", "");
        WebViewExtensionKt.addJavaScriptInterfaceFullScreen(this, this.fullScreenJSI);
        WebViewExtensionKt.addJavaScriptInterfaceAD(this, this.adJSI);
    }

    @Override // android.webkit.WebView, com.cloud.tmc.kernel.render.IWebView
    public void destroy() {
        if (((IRenderWebivewStrategyCache) TmcProxy.get(IRenderWebivewStrategyCache.class)).getSystemWebviewCacheStrategy()) {
            clearCache(false);
        }
        clearHistory();
        DefaultWebViewClient defaultWebViewClient = this.mWebViewClient;
        if (defaultWebViewClient != null) {
            defaultWebViewClient.clear();
        }
        this.mWebViewClient = null;
        DefaultWebChromeClient defaultWebChromeClient = this.mWebChromeClient;
        if (defaultWebChromeClient != null) {
            defaultWebChromeClient.clear();
        }
        this.mWebChromeClient = null;
        this.pageCallback = null;
        this.pageEventCallback = null;
        this.scrollChangedCallback = null;
        this.customViewCallback = null;
        WebMessagePort webMessagePort = this.port0;
        if (webMessagePort != null) {
            webMessagePort.close();
        }
        try {
            if (((ConfigService) TmcProxy.get(ConfigService.class)).getConfigBoolean("enableSystemDestory", true)) {
                super.destroy();
                TmcLogger.d(TAG, "systemWebview Destory");
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, PushConstants.PROVIDER_FIELD_DESTROY, th2);
        }
    }

    public final DefaultWebChromeClient getMWebChromeClient() {
        return this.mWebChromeClient;
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    /* JADX INFO: renamed from: getMiniAppType, reason: from getter */
    public int getMiniappType() {
        return this.miniappType;
    }

    public final WebMessagePort getPort0() {
        return this.port0;
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public RenderBridge getRenderBridge() {
        return this.webviewBridgeHelper.getRenderBridge(this);
    }

    public final WebviewBridgeHelper getWebviewBridgeHelper() {
        return this.webviewBridgeHelper;
    }

    @Override // android.webkit.WebView, com.cloud.tmc.kernel.render.IWebView
    public void goBack() {
        super.goBack();
    }

    @Override // com.cloud.tmc.kernel.proxy.renderprocess.IRenderProcessListener
    public Boolean isRenderProcessGone() {
        return Boolean.valueOf(this.receivedRenderProcessGone);
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    /* JADX INFO: renamed from: isResume, reason: from getter */
    public boolean getIsResume() {
        return this.isResume;
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public void load(String url) {
        Intrinsics.h(url, "url");
        load(url, new HashMap<>());
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public void load(String url, HashMap<String, String> additionalHttpHeaders) {
        String strAddParam;
        Intrinsics.h(url, "url");
        Intrinsics.h(additionalHttpHeaders, "additionalHttpHeaders");
        try {
            String str = this.bgColor;
            if (str == null || str.length() == 0) {
                strAddParam = url;
            } else {
                strAddParam = UrlUtils.addParam(url, "bgColor", this.bgColor);
                Intrinsics.g(strAddParam, "addParam(url, \"bgColor\", bgColor)");
            }
            url = appendDarkThemeEnabledStatusParam(strAddParam);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "add bgColor parameter is fail!", th2);
        }
        TmcLogger.d(TAG, "[Render]:[load Url]: " + url);
        super.loadUrl(url, additionalHttpHeaders);
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public void loadData(String url, String data, String mimeType, String encoding, String historyUrl) {
        Intrinsics.h(data, "data");
        super.loadDataWithBaseURL(url, data, mimeType, encoding, historyUrl);
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onCheckIsTextEditor() {
        boolean zOnCheckIsTextEditor = false;
        try {
            if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
                zOnCheckIsTextEditor = super.onCheckIsTextEditor();
            } else {
                TmcLogger.e(TAG, "onCheckIsTextEditor() does not run in the main thread");
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Probable deadlock detected due to WebView API being called on incorrect thread while the UI thread is blocked.", th2);
        }
        return zOnCheckIsTextEditor;
    }

    @Override // android.webkit.WebView, com.cloud.tmc.kernel.render.IWebView
    public void onPause() {
        super.onPause();
        this.isResume = false;
    }

    @Override // com.cloud.tmc.kernel.proxy.renderprocess.IRenderProcessListener
    public void onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        this.receivedRenderProcessGone = true;
        ((IOnRenderProcessGoneProxy) TmcProxy.get(IOnRenderProcessGoneProxy.class)).received(view, detail);
    }

    @Override // android.webkit.WebView, com.cloud.tmc.kernel.render.IWebView
    public void onResume() {
        super.onResume();
        this.isResume = true;
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int l11, int t11, int oldl, int oldt) {
        super.onScrollChanged(l11, t11, oldl, oldt);
        ScrollChangedCallback scrollChangedCallback = this.scrollChangedCallback;
        if (scrollChangedCallback != null) {
            scrollChangedCallback.onScroll(l11 - oldl, t11 - oldt);
        }
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public void registerCustomViewVisiableCallback(CustomViewVisiableCallback customViewVisiableCallback) {
        this.customViewCallback = customViewVisiableCallback;
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public void registerMessageChannel() {
        final WeakReference weakReference = new WeakReference(this.pageEventCallback);
        WebMessagePort[] webMessagePortArrCreateWebMessageChannel = createWebMessageChannel();
        Intrinsics.g(webMessagePortArrCreateWebMessageChannel, "this.createWebMessageChannel()");
        WebMessagePort webMessagePort = webMessagePortArrCreateWebMessageChannel[0];
        this.port0 = webMessagePort;
        if (webMessagePort != null) {
            webMessagePort.setWebMessageCallback(new WebMessagePort.WebMessageCallback() { // from class: com.cloud.tmc.render.system.SystemWebView.registerMessageChannel.1
                @Override // android.webkit.WebMessagePort.WebMessageCallback
                public void onMessage(WebMessagePort port, WebMessage message) {
                    Intrinsics.h(port, "port");
                    Intrinsics.h(message, "message");
                    WebviewPageEventCallback webviewPageEventCallback = weakReference.get();
                    if (webviewPageEventCallback != null) {
                        webviewPageEventCallback.onConsoleMessage(message.getData());
                    }
                }
            });
        }
        postWebMessage(new WebMessage("mini_init", new WebMessagePort[]{webMessagePortArrCreateWebMessageChannel[1]}), Uri.EMPTY);
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public void registerPageCallback(WebviewPageCallback pageCallback) {
        this.pageCallback = pageCallback;
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public void registerPageEventCallback(WebviewPageEventCallback pageEventCallback) {
        this.pageEventCallback = pageEventCallback;
    }

    @Override // android.webkit.WebView, com.cloud.tmc.kernel.render.IWebView
    public void reload() {
        super.reload();
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public void setAppId(String appId) {
        Intrinsics.h(appId, "appId");
        this.appId = appId;
        DefaultWebViewClient defaultWebViewClient = this.mWebViewClient;
        if (!(defaultWebViewClient instanceof IChangeAppId)) {
            defaultWebViewClient = null;
        }
        if (defaultWebViewClient != null) {
            defaultWebViewClient.changeAppId(appId);
        }
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public void setBgColor(String color) {
        Intrinsics.h(color, "color");
        try {
            if (color.length() > 0) {
                setBackgroundColor(Color.parseColor(color));
                this.bgColor = color;
            }
        } catch (Exception e11) {
            TmcLogger.e(TAG, "set content background color error", e11);
        }
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public void setCommonresId(String commonresId) {
        if (commonresId != null) {
            try {
                DefaultWebViewClient defaultWebViewClient = this.mWebViewClient;
                if (defaultWebViewClient != null) {
                    defaultWebViewClient.setCommonresId(commonresId);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final void setMWebChromeClient(DefaultWebChromeClient defaultWebChromeClient) {
        this.mWebChromeClient = defaultWebChromeClient;
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public void setMiniAppType(int type) {
        this.miniappType = type;
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public void setNode(Node node) {
        Intrinsics.h(node, "node");
        this.node = node;
        DefaultWebViewClient defaultWebViewClient = this.mWebViewClient;
        if (!(defaultWebViewClient instanceof IChangeAppId)) {
            defaultWebViewClient = null;
        }
        if (defaultWebViewClient != null) {
            defaultWebViewClient.changeNode(node);
        }
        this.fullScreenJSI.setNode(node);
        this.adJSI.setNode(node);
    }

    public final void setPort0(WebMessagePort webMessagePort) {
        this.port0 = webMessagePort;
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public void setScrollChangedCallback(ScrollChangedCallback scrollChangedCallback) {
        this.scrollChangedCallback = scrollChangedCallback;
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public void setSupportFullScreen(boolean fullScreen) {
    }

    public final void setWebviewBridgeHelper(WebviewBridgeHelper webviewBridgeHelper) {
        Intrinsics.h(webviewBridgeHelper, "<set-?>");
        this.webviewBridgeHelper = webviewBridgeHelper;
    }
}
