package com.cloud.tmc.render;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import com.cloud.tmc.integration.ui.p001native.NativeImgComponent;
import com.cloud.tmc.kernel.bridge.RenderBridge;
import com.cloud.tmc.kernel.constants.MiniAppType;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.engine.EngineRouter;
import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.model.CreateParams;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.RenderAnalyseType;
import com.cloud.tmc.kernel.proxy.render.IWebViewFactory;
import com.cloud.tmc.kernel.render.CustomViewVisiableCallback;
import com.cloud.tmc.kernel.render.ExitCallback;
import com.cloud.tmc.kernel.render.GoBackCallback;
import com.cloud.tmc.kernel.render.ICustomViewVisiable;
import com.cloud.tmc.kernel.render.IPageCallback;
import com.cloud.tmc.kernel.render.IPageEventCallback;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.render.IWebView;
import com.cloud.tmc.kernel.render.LoadParams;
import com.cloud.tmc.kernel.render.ScrollChangedCallback;
import com.cloud.tmc.kernel.render.WebviewPageCallback;
import com.cloud.tmc.kernel.render.WebviewPageEventCallback;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.worker.dispatch.DefaultBridgeDispatch;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.meituan.android.walle.ChannelReader;
import com.transsion.al.ka.KaManager;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u0000 \u0080\u00012\u00020\u0001:\u0002\u0080\u0001B9\b\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u001f\u001a\u00020@H\u0016J\b\u0010(\u001a\u00020 H\u0016J\n\u0010\r\u001a\u0004\u0018\u00010AH\u0016J\n\u0010B\u001a\u0004\u0018\u00010\u0012H\u0016J\b\u0010C\u001a\u00020\u0012H\u0016J\n\u0010D\u001a\u0004\u0018\u00010\u0005H\u0016J\n\u0010E\u001a\u0004\u0018\u00010\u0012H\u0016J\n\u0010F\u001a\u0004\u0018\u00010\u0007H\u0016J\n\u0010G\u001a\u0004\u0018\u00010:H\u0016J\b\u0010H\u001a\u00020\u0012H\u0016J\b\u0010I\u001a\u00020\u000bH\u0016J\n\u0010J\u001a\u0004\u0018\u00010KH\u0016J\b\u0010L\u001a\u00020\u0012H\u0016J\n\u0010M\u001a\u0004\u0018\u00010NH\u0016J\b\u0010O\u001a\u00020\u000bH\u0016J\u0012\u0010P\u001a\u00020@2\b\u0010Q\u001a\u0004\u0018\u00010RH\u0016J\u0010\u0010S\u001a\u00020@2\u0006\u0010;\u001a\u00020\u0012H\u0016J\r\u0010)\u001a\u00020 H\u0016¢\u0006\u0002\u0010TJ\b\u0010U\u001a\u00020 H\u0016J\b\u0010V\u001a\u00020 H\u0016J\u0012\u0010W\u001a\u00020@2\b\u0010*\u001a\u0004\u0018\u00010+H\u0016J8\u0010X\u001a\u00020@2\b\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010Y\u001a\u00020\u00122\b\u0010Z\u001a\u0004\u0018\u00010\u00122\b\u0010[\u001a\u0004\u0018\u00010\u00122\b\u0010\\\u001a\u0004\u0018\u00010\u0012H\u0016J\b\u0010]\u001a\u00020@H\u0016J\b\u0010^\u001a\u00020@H\u0016J\b\u0010_\u001a\u00020@H\u0002J\u0012\u0010`\u001a\u00020@2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010a\u001a\u00020@2\b\u00104\u001a\u0004\u0018\u000105H\u0016J\u0012\u0010b\u001a\u00020@2\b\u00106\u001a\u0004\u0018\u000107H\u0016J\b\u0010c\u001a\u00020@H\u0016J\u0012\u0010d\u001a\u00020@2\b\u0010Q\u001a\u0004\u0018\u00010eH\u0016J\u0012\u0010\u000f\u001a\u00020@2\b\u0010\u0002\u001a\u0004\u0018\u00010AH\u0016J\u0010\u0010f\u001a\u00020@2\u0006\u0010g\u001a\u00020\u0012H\u0016J\u0010\u0010h\u001a\u00020@2\u0006\u0010)\u001a\u00020 H\u0016J\u0012\u0010i\u001a\u00020@2\b\u0010j\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010k\u001a\u00020@2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010l\u001a\u00020@2\u0006\u0010m\u001a\u00020\u000bH\u0016J\u0012\u0010n\u001a\u00020@2\b\u0010o\u001a\u0004\u0018\u00010pH\u0016J\u0010\u0010q\u001a\u00020@2\u0006\u0010r\u001a\u00020 H\u0016J\u0010\u0010s\u001a\u00020@2\u0006\u0010t\u001a\u00020\u000bH\u0016J\u0012\u0010u\u001a\u00020@2\b\u0010v\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010w\u001a\u00020@2\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010x\u001a\u00020@2\b\u0010y\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010z\u001a\u00020@2\b\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0012\u0010{\u001a\u00020@2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010|\u001a\u00020@2\u0006\u0010;\u001a\u00020\u0012H\u0016J\b\u0010}\u001a\u00020@H\u0016J\u0012\u0010~\u001a\u00020@2\b\u0010\u007f\u001a\u0004\u0018\u00010NH\u0016J\b\u0010=\u001a\u00020 H\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010'\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020 X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020 X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00106\u001a\u0004\u0018\u000107X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020 X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00109\u001a\u0004\u0018\u00010:X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020 X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010>\u001a\u0004\u0018\u00010?X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0081\u0001"}, d2 = {"Lcom/cloud/tmc/render/SystemRender;", "Lcom/cloud/tmc/kernel/render/IRender;", "activity", "Landroid/content/Context;", "engineProxy", "Lcom/cloud/tmc/kernel/engine/IEngine;", "node", "Lcom/cloud/tmc/kernel/node/Node;", "createParams", "Lcom/cloud/tmc/kernel/model/CreateParams;", "appinfoCategoryType", "", "(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;I)V", "getActivity", "()Landroid/content/Context;", "setActivity", "(Landroid/content/Context;)V", "appId", "", "getAppinfoCategoryType", "()I", "setAppinfoCategoryType", "(I)V", "getCreateParams", "()Lcom/cloud/tmc/kernel/model/CreateParams;", "setCreateParams", "(Lcom/cloud/tmc/kernel/model/CreateParams;)V", "customViewVisiable", "Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;", "customViewVisiableCallback", "Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;", PushConstants.PROVIDER_FIELD_DESTROY, "", "getEngineProxy", "()Lcom/cloud/tmc/kernel/engine/IEngine;", "setEngineProxy", "(Lcom/cloud/tmc/kernel/engine/IEngine;)V", "engineRouter", "Lcom/cloud/tmc/kernel/engine/EngineRouter;", "frameworkVersion", "fromWarmup", "isDarkTheme", "loadParams", "Lcom/cloud/tmc/kernel/render/LoadParams;", "mPageCallback", "Lcom/cloud/tmc/kernel/render/WebviewPageCallback;", "mPageEventCallback", "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;", "getNode", "()Lcom/cloud/tmc/kernel/node/Node;", "setNode", "(Lcom/cloud/tmc/kernel/node/Node;)V", "pageCallback", "Lcom/cloud/tmc/kernel/render/IPageCallback;", "pageEventCallback", "Lcom/cloud/tmc/kernel/render/IPageEventCallback;", "pendingCreateRenderFail", "renderBridge", "Lcom/cloud/tmc/kernel/bridge/RenderBridge;", "renderId", "warmupChannel", "warmupSuccess", "webView", "Lcom/cloud/tmc/kernel/render/IWebView;", "", "Landroid/app/Activity;", "getAppId", "getCurrentUri", "getEngine", "getFrameworkVersion", "getPage", "getRenderBridge", "getRenderId", "getScrollY", "getStartParams", "Landroid/os/Bundle;", "getUserAgent", "getView", "Landroid/view/View;", "getWarmupChannel", "goBack", "callback", "Lcom/cloud/tmc/kernel/render/GoBackCallback;", "init", "()Ljava/lang/Boolean;", "isDestroyed", "isResume", NativeImgComponent.EVENT_LOAD, "loadDataWithBaseURL", "data", "mimeType", "encoding", "historyUrl", "onPause", "onResume", "postCreateRenderFailEvent", "registerICustomViewVisiable", "registerPageCallback", "registerPageEventCallback", "reload", "runExit", "Lcom/cloud/tmc/kernel/render/ExitCallback;", "setBgColor", TtmlNode.ATTR_TTS_COLOR, "setDarkTheme", "setFrameworkVersion", "version", "setMiniAppId", "setMiniAppType", NativeComponentConstants.KEY_COMPONENT_TYPE, "setScrollChangedCallback", "scrollChangedCallback", "Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;", "setSupportFullScreen", KaManager.NOTIFICATION_GROUP_FULLSCREEN, "setWarmup", ChannelReader.CHANNEL_KEY, "setWarmupAppId", "frameAppId", "setWarmupCreateParams", "setWarmupEngine", "engine", "setWarmupEngineRouter", "setWarmupNode", "setWarmupRenderId", "setWarupSuccess", "showErrorView", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SystemRender implements IRender {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final AtomicInteger sPageIdCounter = new AtomicInteger(1);
    private Context activity;
    private String appId;
    private int appinfoCategoryType;
    private CreateParams createParams;
    private ICustomViewVisiable customViewVisiable;
    private CustomViewVisiableCallback customViewVisiableCallback;
    private boolean destroy;
    private IEngine engineProxy;
    private EngineRouter engineRouter;
    private String frameworkVersion;
    private boolean fromWarmup;
    private boolean isDarkTheme;
    private LoadParams loadParams;
    private WebviewPageCallback mPageCallback;
    private WebviewPageEventCallback mPageEventCallback;
    private Node node;
    private IPageCallback pageCallback;
    private IPageEventCallback pageEventCallback;
    private boolean pendingCreateRenderFail;
    private RenderBridge renderBridge;
    private String renderId;
    private int warmupChannel;
    private boolean warmupSuccess;
    private IWebView webView;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/render/SystemRender$Companion;", "", "()V", "sPageIdCounter", "Ljava/util/concurrent/atomic/AtomicInteger;", "getSPageIdCounter", "()Ljava/util/concurrent/atomic/AtomicInteger;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AtomicInteger getSPageIdCounter() {
            return SystemRender.sPageIdCounter;
        }
    }

    @JvmOverloads
    public SystemRender(Context context, IEngine iEngine, Node node, CreateParams createParams) {
        this(context, iEngine, node, createParams, 0, 16, null);
    }

    @JvmOverloads
    public SystemRender(Context context, IEngine iEngine, Node node, CreateParams createParams, int i11) {
        this.activity = context;
        this.engineProxy = iEngine;
        this.node = node;
        this.createParams = createParams;
        this.appinfoCategoryType = i11;
        this.renderId = "";
        this.appId = iEngine != null ? iEngine.getAppId() : null;
        IEngine iEngine2 = this.engineProxy;
        this.engineRouter = iEngine2 != null ? iEngine2.getEngineRouter() : null;
    }

    public /* synthetic */ SystemRender(Context context, IEngine iEngine, Node node, CreateParams createParams, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, iEngine, node, createParams, (i12 & 16) != 0 ? MiniAppType.NORMAL.ordinal() : i11);
    }

    private final void postCreateRenderFailEvent() {
        IEventCenterFactory iEventCenterFactory = (IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class);
        IEvent iEventCreateEvent = iEventCenterFactory.createEvent(String.valueOf(this.renderId));
        IEventCenter eventCenterInstance = iEventCenterFactory.getEventCenterInstance(this.node);
        if (eventCenterInstance != null) {
            eventCenterInstance.postEvent("create_miniapp_worker_fail", iEventCreateEvent);
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void destroy() {
        this.destroy = true;
        this.activity = null;
        this.engineRouter = null;
        this.mPageEventCallback = null;
        this.mPageCallback = null;
        this.loadParams = null;
        this.pageCallback = null;
        this.customViewVisiableCallback = null;
        this.customViewVisiable = null;
        this.pageEventCallback = null;
        ((IWebViewFactory) TmcProxy.get(IWebViewFactory.class)).clear();
        IWebView iWebView = this.webView;
        if (iWebView != null) {
            iWebView.destroy();
        }
        this.webView = null;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    /* JADX INFO: renamed from: fromWarmup, reason: from getter */
    public boolean getFromWarmup() {
        return this.fromWarmup;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public Activity getActivity() {
        Context context = this.activity;
        if (context instanceof Activity) {
            return (Activity) context;
        }
        return null;
    }

    public final Context getActivity() {
        return this.activity;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public String getAppId() {
        return this.appId;
    }

    public final int getAppinfoCategoryType() {
        return this.appinfoCategoryType;
    }

    public final CreateParams getCreateParams() {
        return this.createParams;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public String getCurrentUri() {
        LoadParams loadParams = this.loadParams;
        String str = loadParams != null ? loadParams.pagePath : null;
        return str == null ? "" : str;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    /* JADX INFO: renamed from: getEngine, reason: from getter */
    public IEngine getEngineProxy() {
        return this.engineProxy;
    }

    public final IEngine getEngineProxy() {
        return this.engineProxy;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public String getFrameworkVersion() {
        return this.frameworkVersion;
    }

    public final Node getNode() {
        return this.node;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public Node getPage() {
        return this.node;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public RenderBridge getRenderBridge() {
        return this.renderBridge;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public String getRenderId() {
        return this.renderId;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public int getScrollY() {
        Object obj = this.webView;
        View view = obj instanceof View ? (View) obj : null;
        if (view != null) {
            return view.getScrollY();
        }
        return 0;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public Bundle getStartParams() {
        CreateParams createParams = this.createParams;
        if (createParams != null) {
            return createParams.startParams;
        }
        return null;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public String getUserAgent() {
        return "userAgent";
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public View getView() {
        Object obj = this.webView;
        if (obj == null) {
            return null;
        }
        Intrinsics.f(obj, "null cannot be cast to non-null type android.view.View");
        return (View) obj;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public int getWarmupChannel() {
        return this.warmupChannel;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void goBack(GoBackCallback callback) {
        IWebView iWebView = this.webView;
        if (iWebView != null) {
            iWebView.goBack();
            Unit unit = Unit.f67061a;
        }
        if (callback != null) {
            callback.afterProcess(false);
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void init(String renderId) {
        Intrinsics.h(renderId, "renderId");
        if (this.activity == null) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, RenderAnalyseType.ERROR, "context不能为空!");
            return;
        }
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, RenderAnalyseType.INIT, null);
        this.renderId = renderId;
        IEngine engineProxy = getEngineProxy();
        String workerId = engineProxy != null ? engineProxy.getWorkerId() : null;
        String str = workerId == null ? "" : workerId;
        this.mPageCallback = new DefaultPageCallback(this.pageCallback);
        this.mPageEventCallback = new DefaultPageEventCallback(str, renderId, this.pageEventCallback, new DefaultBridgeDispatch(), this.engineRouter);
        this.customViewVisiableCallback = new DefaultCustomViewVisiableCallback(this.customViewVisiable);
        IWebView iWebViewCreateWebView = ((IWebViewFactory) TmcProxy.get(IWebViewFactory.class)).createWebView(this.activity, this.appinfoCategoryType);
        if (iWebViewCreateWebView != null) {
            iWebViewCreateWebView.registerPageCallback(this.mPageCallback);
            iWebViewCreateWebView.registerPageEventCallback(this.mPageEventCallback);
            iWebViewCreateWebView.registerCustomViewVisiableCallback(this.customViewVisiableCallback);
        } else {
            iWebViewCreateWebView = null;
        }
        this.webView = iWebViewCreateWebView;
        if (iWebViewCreateWebView != null) {
            if (iWebViewCreateWebView instanceof WebView) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, RenderAnalyseType.CREATE_START, null);
                iWebViewCreateWebView.setAppId(this.appId);
                iWebViewCreateWebView.setNode(this.node);
                iWebViewCreateWebView.create();
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, RenderAnalyseType.CREATE_END, null);
                this.renderBridge = iWebViewCreateWebView.getRenderBridge();
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, PointAnalyseType.POINT_RENDER_READY, "");
            } else {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, RenderAnalyseType.ERROR, iWebViewCreateWebView + " is not extends WebView; plz initialize WebView first");
                TraceLog.e(TmcConstants.RENDER_TAG, iWebViewCreateWebView + " is not extends WebView; plz initialize WebView first");
            }
        }
        if (this.webView == null) {
            if (StringsKt.W(renderId, FrameworkConstants.TMP_WARMUP_RENDER_ID_PREFIX, false, 2, null)) {
                this.pendingCreateRenderFail = true;
            } else {
                postCreateRenderFailEvent();
            }
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public Boolean isDarkTheme() {
        return Boolean.valueOf(this.isDarkTheme);
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    /* JADX INFO: renamed from: isDestroyed, reason: from getter */
    public boolean getDestroy() {
        return this.destroy;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public boolean isResume() {
        IWebView iWebView = this.webView;
        if (iWebView != null) {
            return iWebView.getIsResume();
        }
        return true;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void load(LoadParams loadParams) {
        this.loadParams = loadParams;
        String str = loadParams != null ? loadParams.url : null;
        if (str == null) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, RenderAnalyseType.ERROR, "url is null,cant not load");
            TraceLog.w(TmcConstants.RENDER_TAG, "url is null,cant not load");
        } else {
            IWebView iWebView = this.webView;
            if (iWebView != null) {
                iWebView.load(str);
            }
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void loadDataWithBaseURL(LoadParams loadParams, String data, String mimeType, String encoding, String historyUrl) {
        Intrinsics.h(data, "data");
        this.loadParams = loadParams;
        IWebView iWebView = this.webView;
        if (iWebView != null) {
            String str = loadParams != null ? loadParams.url : null;
            if (str == null) {
                str = "";
            }
            iWebView.loadData(str, data, mimeType, encoding, historyUrl);
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void onPause() {
        IWebView iWebView = this.webView;
        if (iWebView != null) {
            iWebView.onPause();
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void onResume() {
        IWebView iWebView = this.webView;
        if (iWebView != null) {
            iWebView.onResume();
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void registerICustomViewVisiable(ICustomViewVisiable customViewVisiable) {
        this.customViewVisiable = customViewVisiable;
        CustomViewVisiableCallback customViewVisiableCallback = this.customViewVisiableCallback;
        IRegisterCustomViewVisiable iRegisterCustomViewVisiable = customViewVisiableCallback instanceof IRegisterCustomViewVisiable ? (IRegisterCustomViewVisiable) customViewVisiableCallback : null;
        if (iRegisterCustomViewVisiable != null) {
            iRegisterCustomViewVisiable.register(customViewVisiable);
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void registerPageCallback(IPageCallback pageCallback) {
        this.pageCallback = pageCallback;
        WebviewPageCallback webviewPageCallback = this.mPageCallback;
        IRegisterPageCallback iRegisterPageCallback = webviewPageCallback instanceof IRegisterPageCallback ? (IRegisterPageCallback) webviewPageCallback : null;
        if (iRegisterPageCallback != null) {
            iRegisterPageCallback.registerPageCallback(pageCallback);
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void registerPageEventCallback(IPageEventCallback pageEventCallback) {
        this.pageEventCallback = pageEventCallback;
        WebviewPageEventCallback webviewPageEventCallback = this.mPageEventCallback;
        IRegisterPageEventCallback iRegisterPageEventCallback = webviewPageEventCallback instanceof IRegisterPageEventCallback ? (IRegisterPageEventCallback) webviewPageEventCallback : null;
        if (iRegisterPageEventCallback != null) {
            Object obj = this.webView;
            iRegisterPageEventCallback.registerPageEventCallback(obj instanceof WebView ? (WebView) obj : null, pageEventCallback);
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void reload() {
        IWebView iWebView = this.webView;
        if (iWebView != null) {
            iWebView.reload();
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void runExit(ExitCallback callback) {
        destroy();
        Unit unit = Unit.f67061a;
        if (callback != null) {
            callback.afterProcess(false);
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    public final void setActivity(Context context) {
        this.activity = context;
    }

    public final void setAppinfoCategoryType(int i11) {
        this.appinfoCategoryType = i11;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void setBgColor(String color) {
        Intrinsics.h(color, "color");
        IWebView iWebView = this.webView;
        if (iWebView != null) {
            iWebView.setBgColor(color);
        }
    }

    public final void setCreateParams(CreateParams createParams) {
        this.createParams = createParams;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void setDarkTheme(boolean isDarkTheme) {
        this.isDarkTheme = isDarkTheme;
    }

    public final void setEngineProxy(IEngine iEngine) {
        this.engineProxy = iEngine;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void setFrameworkVersion(String version) {
        this.frameworkVersion = version;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void setMiniAppId(String appId) {
        this.appId = appId;
        IWebView iWebView = this.webView;
        if (iWebView != null) {
            iWebView.setAppId(appId);
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void setMiniAppType(int type) {
        IWebView iWebView = this.webView;
        if (iWebView != null) {
            iWebView.setMiniAppType(type);
            this.renderBridge = iWebView.getRenderBridge();
        }
    }

    public final void setNode(Node node) {
        this.node = node;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void setScrollChangedCallback(ScrollChangedCallback scrollChangedCallback) {
        IWebView iWebView = this.webView;
        if (iWebView != null) {
            iWebView.setScrollChangedCallback(scrollChangedCallback);
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void setSupportFullScreen(boolean fullScreen) {
        IWebView iWebView = this.webView;
        if (iWebView != null) {
            iWebView.setSupportFullScreen(fullScreen);
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void setWarmup(int channel) {
        this.fromWarmup = true;
        this.warmupChannel = channel;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void setWarmupAppId(String frameAppId) {
        this.appId = frameAppId;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void setWarmupCreateParams(CreateParams createParams) {
        this.createParams = createParams;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void setWarmupEngine(IEngine engine) {
        this.engineProxy = engine;
        WebviewPageEventCallback webviewPageEventCallback = this.mPageEventCallback;
        IRegisterEngineRouter iRegisterEngineRouter = webviewPageEventCallback instanceof IRegisterEngineRouter ? (IRegisterEngineRouter) webviewPageEventCallback : null;
        if (iRegisterEngineRouter != null) {
            iRegisterEngineRouter.registerEnginerRouter(engine != null ? engine.getEngineRouter() : null);
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void setWarmupEngineRouter(EngineRouter engineRouter) {
        this.engineRouter = engineRouter;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void setWarmupNode(Node node) {
        this.node = node;
        IWebView iWebView = this.webView;
        if (iWebView != null) {
            iWebView.setNode(node);
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void setWarmupRenderId(String renderId) {
        String str;
        Intrinsics.h(renderId, "renderId");
        if (this.webView == null && (str = this.renderId) != null && str != null && StringsKt.W(str, FrameworkConstants.TMP_WARMUP_RENDER_ID_PREFIX, false, 2, null) && this.pendingCreateRenderFail) {
            this.pendingCreateRenderFail = false;
            postCreateRenderFailEvent();
        }
        this.renderId = renderId;
        WebviewPageEventCallback webviewPageEventCallback = this.mPageEventCallback;
        IRegisterRenderId iRegisterRenderId = webviewPageEventCallback instanceof IRegisterRenderId ? (IRegisterRenderId) webviewPageEventCallback : null;
        if (iRegisterRenderId != null) {
            iRegisterRenderId.registerRenderId(renderId);
        }
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void setWarupSuccess() {
        this.warmupSuccess = true;
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    public void showErrorView(View view) {
    }

    @Override // com.cloud.tmc.kernel.render.IRender
    /* JADX INFO: renamed from: warmupSuccess, reason: from getter */
    public boolean getWarmupSuccess() {
        return this.warmupSuccess;
    }
}
