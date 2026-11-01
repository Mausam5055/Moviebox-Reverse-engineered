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
import com.cloud.tmc.kernel.coreimpl.eventcenter.DefaultEvent;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.proxy.renderprocess.IOnRenderProcessGoneProxy;
import com.cloud.tmc.kernel.proxy.renderprocess.IRenderProcessListener;
import com.cloud.tmc.kernel.render.CustomViewVisiableCallback;
import com.cloud.tmc.kernel.render.IWebView;
import com.cloud.tmc.kernel.render.ScrollChangedCallback;
import com.cloud.tmc.kernel.render.WebviewPageCallback;
import com.cloud.tmc.kernel.render.WebviewPageEventCallback;
import com.cloud.tmc.kernel.render.c;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.render.BuildConfig;
import com.cloud.tmc.render.IPageChainCallback;
import com.cloud.tmc.render.bridge.WebviewBridgeHelper;
import com.cloud.tmc.render.method.ByteH5BridgeJsInterface;
import com.cloud.tmc.render.method.LocalChannelInterface;
import com.cloud.tmc.render.method.MonitorLoadingInterface;
import com.cloud.tmc.render.method.ShellGameJsInterface;
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
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0019\u0018\u0000 r2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001rB\u001b\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\b\u0010?\u001a\u00020@H\u0017J\b\u0010A\u001a\u00020@H\u0016J\b\u0010B\u001a\u00020)H\u0016J\b\u0010C\u001a\u00020DH\u0016J\b\u0010E\u001a\u00020@H\u0016J\r\u0010F\u001a\u00020\u0018H\u0016¢\u0006\u0002\u0010GJ\u0010\u0010H\u001a\u00020@2\u0006\u0010I\u001a\u00020\u000bH\u0016J4\u0010H\u001a\u00020@2\u0006\u0010I\u001a\u00020\u000b2\"\u0010J\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0Kj\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b`LH\u0016J8\u0010M\u001a\u00020@2\b\u0010I\u001a\u0004\u0018\u00010\u000b2\u0006\u0010N\u001a\u00020\u000b2\b\u0010O\u001a\u0004\u0018\u00010\u000b2\b\u0010P\u001a\u0004\u0018\u00010\u000b2\b\u0010Q\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010R\u001a\u00020\u0018H\u0016J\u0010\u0010S\u001a\u00020@2\u0006\u0010T\u001a\u00020\u000bH\u0016J\u0010\u0010U\u001a\u00020@2\u0006\u0010T\u001a\u00020\u000bH\u0016J\b\u0010V\u001a\u00020@H\u0016J\u001c\u0010W\u001a\u00020@2\b\u0010X\u001a\u0004\u0018\u00010\u00012\b\u0010Y\u001a\u0004\u0018\u00010ZH\u0016J\b\u0010[\u001a\u00020@H\u0016J(\u0010\\\u001a\u00020@2\u0006\u0010]\u001a\u00020)2\u0006\u0010^\u001a\u00020)2\u0006\u0010_\u001a\u00020)2\u0006\u0010`\u001a\u00020)H\u0014J\u0012\u0010a\u001a\u00020@2\b\u0010b\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010c\u001a\u00020@H\u0017J\u0012\u0010d\u001a\u00020@2\b\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0012\u0010e\u001a\u00020@2\b\u0010.\u001a\u0004\u0018\u00010/H\u0016J\b\u0010f\u001a\u00020@H\u0016J\u0010\u0010g\u001a\u00020@2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010h\u001a\u00020@2\u0006\u0010i\u001a\u00020\u000bH\u0016J\u0012\u0010j\u001a\u00020@2\b\u0010k\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010l\u001a\u00020@2\u0006\u0010m\u001a\u00020)H\u0016J\u0010\u0010n\u001a\u00020@2\u0006\u0010*\u001a\u00020+H\u0016J\u0012\u0010o\u001a\u00020@2\b\u00107\u001a\u0004\u0018\u000108H\u0016J\u0010\u0010p\u001a\u00020@2\u0006\u0010q\u001a\u00020\u0018H\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0019\"\u0004\b\u001d\u0010\u001bR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0010\u0010&\u001a\u0004\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u00100\u001a\u0004\u0018\u000101X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u000e\u00106\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u00109\u001a\u00020:X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>¨\u0006s"}, d2 = {"Lcom/cloud/tmc/render/system/ShellWebView;", "Landroid/webkit/WebView;", "Lcom/cloud/tmc/kernel/render/IWebView;", "Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;", "Lcom/cloud/tmc/render/IPageChainCallback;", "context", "Landroid/content/Context;", "attributeSet", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "appId", "", "bgColor", "byteH5BridgeJsInterface", "Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;", "getByteH5BridgeJsInterface", "()Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;", "setByteH5BridgeJsInterface", "(Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;)V", "customViewCallback", "Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;", "fullScreenJSI", "Lcom/cloud/tmc/render/utils/FullScreenJSI;", "isLoadDataWithBaseURL", "", "()Z", "setLoadDataWithBaseURL", "(Z)V", "isOffScreenRender", "setOffScreenRender", "localChannelInterface", "Lcom/cloud/tmc/render/method/LocalChannelInterface;", "mWebChromeClient", "Lcom/cloud/tmc/render/system/DefaultWebChromeClient;", "getMWebChromeClient", "()Lcom/cloud/tmc/render/system/DefaultWebChromeClient;", "setMWebChromeClient", "(Lcom/cloud/tmc/render/system/DefaultWebChromeClient;)V", "mWebViewClient", "Lcom/cloud/tmc/render/system/DefaultWebViewClient;", "miniappType", "", "node", "Lcom/cloud/tmc/kernel/node/Node;", "pageCallback", "Lcom/cloud/tmc/kernel/render/WebviewPageCallback;", "pageEventCallback", "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;", "port0", "Landroid/webkit/WebMessagePort;", "getPort0", "()Landroid/webkit/WebMessagePort;", "setPort0", "(Landroid/webkit/WebMessagePort;)V", "receivedRenderProcessGone", "scrollChangedCallback", "Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;", "webviewBridgeHelper", "Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;", "getWebviewBridgeHelper", "()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;", "setWebviewBridgeHelper", "(Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;)V", "create", "", PushConstants.PROVIDER_FIELD_DESTROY, "getMiniAppType", "getRenderBridge", "Lcom/cloud/tmc/kernel/bridge/RenderBridge;", "goBack", "isRenderProcessGone", "()Ljava/lang/Boolean;", NativeImgComponent.EVENT_LOAD, "url", "additionalHttpHeaders", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "loadData", "data", "mimeType", "encoding", "historyUrl", "onCheckIsTextEditor", "onConsoleMessage", "params", "onPageFinished", "onPause", "onRenderProcessGone", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "detail", "Landroid/webkit/RenderProcessGoneDetail;", "onResume", "onScrollChanged", "l", "t", "oldl", "oldt", "registerCustomViewVisiableCallback", "customViewVisiableCallback", "registerMessageChannel", "registerPageCallback", "registerPageEventCallback", "reload", "setAppId", "setBgColor", TtmlNode.ATTR_TTS_COLOR, "setCommonresId", TmcConstants.KEY_MINI_COMMONRES_ID, "setMiniAppType", NativeComponentConstants.KEY_COMPONENT_TYPE, "setNode", "setScrollChangedCallback", "setSupportFullScreen", KaManager.NOTIFICATION_GROUP_FULLSCREEN, "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShellWebView extends WebView implements IWebView, IRenderProcessListener, IPageChainCallback {
    private static final String TAG = "ShellWebView";
    private String appId;
    private String bgColor;
    private ByteH5BridgeJsInterface byteH5BridgeJsInterface;
    private CustomViewVisiableCallback customViewCallback;
    private FullScreenJSI fullScreenJSI;
    private boolean isLoadDataWithBaseURL;
    private boolean isOffScreenRender;
    private LocalChannelInterface localChannelInterface;
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
    public ShellWebView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ShellWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.miniappType = MiniAppType.SHELL.getType();
        this.webviewBridgeHelper = new WebviewBridgeHelper(this);
        this.byteH5BridgeJsInterface = new ByteH5BridgeJsInterface();
        this.fullScreenJSI = new FullScreenJSI();
        this.localChannelInterface = new LocalChannelInterface(this);
    }

    public /* synthetic */ ShellWebView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
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
        this.byteH5BridgeJsInterface.setWebviewPageEventCallback(this.pageEventCallback);
        addJavascriptInterface("", "");
        addJavascriptInterface(new ShellGameJsInterface(), "dltms");
        addJavascriptInterface(this.localChannelInterface, "dltLocalChannel");
        addJavascriptInterface(new MonitorLoadingInterface(), "dltMonitor");
        addJavascriptInterface(this.byteH5BridgeJsInterface, "dlth5bridge");
        WebViewExtensionKt.addJavaScriptInterfaceFullScreen(this, this.fullScreenJSI);
    }

    @Override // android.webkit.WebView, com.cloud.tmc.kernel.render.IWebView
    public void destroy() {
        clearHistory();
        this.localChannelInterface.clear();
        this.byteH5BridgeJsInterface.clear();
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
            if (((ConfigService) TmcProxy.get(ConfigService.class)).getConfigBoolean("enableShellDestory", false)) {
                super.destroy();
                TmcLogger.d(TAG, "shellWebView Destory");
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, PushConstants.PROVIDER_FIELD_DESTROY, th2);
        }
    }

    public final ByteH5BridgeJsInterface getByteH5BridgeJsInterface() {
        return this.byteH5BridgeJsInterface;
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

    /* JADX INFO: renamed from: isLoadDataWithBaseURL, reason: from getter */
    public final boolean getIsLoadDataWithBaseURL() {
        return this.isLoadDataWithBaseURL;
    }

    /* JADX INFO: renamed from: isOffScreenRender, reason: from getter */
    public final boolean getIsOffScreenRender() {
        return this.isOffScreenRender;
    }

    @Override // com.cloud.tmc.kernel.proxy.renderprocess.IRenderProcessListener
    public Boolean isRenderProcessGone() {
        return Boolean.valueOf(this.receivedRenderProcessGone);
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    /* JADX INFO: renamed from: isResume */
    public /* synthetic */ boolean getIsResume() {
        return c.a(this);
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public void load(String url) {
        Intrinsics.h(url, "url");
        load(url, new HashMap<>());
    }

    @Override // com.cloud.tmc.kernel.render.IWebView
    public void load(String url, HashMap<String, String> additionalHttpHeaders) {
        Intrinsics.h(url, "url");
        Intrinsics.h(additionalHttpHeaders, "additionalHttpHeaders");
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

    @Override // com.cloud.tmc.render.IPageChainCallback
    public void onConsoleMessage(String params) {
        Intrinsics.h(params, "params");
        WebviewPageEventCallback webviewPageEventCallback = this.pageEventCallback;
        if (webviewPageEventCallback != null) {
            webviewPageEventCallback.onConsoleMessage(params);
        }
    }

    @Override // com.cloud.tmc.render.IPageChainCallback
    public void onPageFinished(String params) {
        Intrinsics.h(params, "params");
        try {
            if (this.node == null) {
                Intrinsics.z("node");
            }
            IEventCenterFactory iEventCenterFactory = (IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class);
            Node node = this.node;
            if (node == null) {
                Intrinsics.z("node");
                node = null;
            }
            IEventCenter eventCenterInstance = iEventCenterFactory.getEventCenterInstance(node);
            if (eventCenterInstance != null) {
                DefaultEvent defaultEvent = new DefaultEvent(TmcConstants.EVENT_H5_ONPAGEFINISHED);
                defaultEvent.setData(MapsKt.f(TuplesKt.a("params", params)));
                Unit unit = Unit.f67061a;
                eventCenterInstance.postEvent(TmcConstants.EVENT_H5_ONPAGEFINISHED, defaultEvent);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.webkit.WebView, com.cloud.tmc.kernel.render.IWebView
    public void onPause() {
        super.onPause();
    }

    @Override // com.cloud.tmc.kernel.proxy.renderprocess.IRenderProcessListener
    public void onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        this.receivedRenderProcessGone = true;
        ((IOnRenderProcessGoneProxy) TmcProxy.get(IOnRenderProcessGoneProxy.class)).received(view, detail);
    }

    @Override // android.webkit.WebView, com.cloud.tmc.kernel.render.IWebView
    public void onResume() {
        super.onResume();
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
            webMessagePort.setWebMessageCallback(new WebMessagePort.WebMessageCallback() { // from class: com.cloud.tmc.render.system.ShellWebView.registerMessageChannel.1
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
        this.localChannelInterface.setAppId(appId);
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

    public final void setByteH5BridgeJsInterface(ByteH5BridgeJsInterface byteH5BridgeJsInterface) {
        Intrinsics.h(byteH5BridgeJsInterface, "<set-?>");
        this.byteH5BridgeJsInterface = byteH5BridgeJsInterface;
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

    public final void setLoadDataWithBaseURL(boolean z10) {
        this.isLoadDataWithBaseURL = z10;
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
    }

    public final void setOffScreenRender(boolean z10) {
        this.isOffScreenRender = z10;
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
        if (fullScreen) {
            return;
        }
        Context context = getContext();
        Intrinsics.g(context, "context");
        DefaultWebChromeClient defaultWebChromeClient = new DefaultWebChromeClient(context, this.pageEventCallback, this.webviewBridgeHelper);
        this.mWebChromeClient = defaultWebChromeClient;
        setWebChromeClient(defaultWebChromeClient);
    }

    public final void setWebviewBridgeHelper(WebviewBridgeHelper webviewBridgeHelper) {
        Intrinsics.h(webviewBridgeHelper, "<set-?>");
        this.webviewBridgeHelper = webviewBridgeHelper;
    }
}
