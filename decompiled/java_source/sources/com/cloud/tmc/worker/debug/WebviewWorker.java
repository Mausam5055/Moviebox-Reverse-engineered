package com.cloud.tmc.worker.debug;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.ValueCallback;
import android.webkit.WebMessage;
import android.webkit.WebMessagePort;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.bridge.NativeRequestBridge;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.BuildConfigProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.WorkerAnalyseType;
import com.cloud.tmc.kernel.proxy.renderprocess.IOnRenderProcessGoneProxy;
import com.cloud.tmc.kernel.proxy.renderprocess.IRenderProcessListener;
import com.cloud.tmc.kernel.proxy.worker.JSAheadParamsProxy;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.kernel.worker.IWorker;
import com.cloud.tmc.kernel.worker.WorkerCallback;
import com.cloud.tmc.kernel.worker.WorkerLifeCycle;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.worker.BuildConfig;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0001\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u000b\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001OB/\b\u0007\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\b\u0010&\u001a\u00020'H\u0017J\b\u0010(\u001a\u00020'H\u0016J\u0012\u0010)\u001a\u00020'2\b\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0012\u0010)\u001a\u00020'2\b\u0010,\u001a\u0004\u0018\u00010\u0005H\u0016J0\u0010)\u001a\u00020'2&\u0010-\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020/\u0018\u00010.j\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020/\u0018\u0001`0H\u0016J\u0012\u00101\u001a\u00020'2\b\u0010*\u001a\u0004\u0018\u00010+H\u0002J\b\u00102\u001a\u000203H\u0016J\u0012\u00104\u001a\u0004\u0018\u0001052\u0006\u00106\u001a\u00020\u0005H\u0016J\b\u00107\u001a\u0004\u0018\u00010\u0014J\r\u0010\u000f\u001a\u00020\u0010H\u0016¢\u0006\u0002\u00108J\r\u00109\u001a\u00020\u0010H\u0016¢\u0006\u0002\u00108J\r\u0010:\u001a\u00020\u0010H\u0016¢\u0006\u0002\u00108J\u0010\u0010;\u001a\u00020'2\u0006\u0010<\u001a\u00020\u0005H\u0016J\u0010\u0010=\u001a\u00020'2\u0006\u0010>\u001a\u00020\u0005H\u0016J\u001c\u0010?\u001a\u00020'2\b\u0010@\u001a\u0004\u0018\u00010\u00012\b\u0010A\u001a\u0004\u0018\u00010BH\u0016J&\u0010C\u001a\u00020'2\b\u00106\u001a\u0004\u0018\u00010\u00052\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050EH\u0016J(\u0010F\u001a\u00020'2\u001e\u0010G\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050E0EH\u0016J\u0010\u0010H\u001a\u00020'2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0012\u0010I\u001a\u00020'2\b\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0006\u0010J\u001a\u00020'J\u0018\u0010K\u001a\u00020'2\u0006\u00106\u001a\u00020\u00052\u0006\u0010L\u001a\u00020/H\u0016J\b\u0010M\u001a\u000203H\u0016J\b\u0010N\u001a\u00020\u0010H\u0002R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u000e\u0010!\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006P"}, d2 = {"Lcom/cloud/tmc/worker/debug/WebviewWorker;", "Landroid/webkit/WebView;", "Lcom/cloud/tmc/kernel/worker/IWorker;", "Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;", "appId", "", "node", "Lcom/cloud/tmc/kernel/node/Node;", "context", "Landroid/content/Context;", "attributeSet", "Landroid/util/AttributeSet;", "(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Landroid/content/Context;Landroid/util/AttributeSet;)V", "getAppId", "()Ljava/lang/String;", "isDestroy", "", "lifeCycle", "Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;", "mWebViewClient", "Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;", "mainHandler", "Landroid/os/Handler;", "getNode", "()Lcom/cloud/tmc/kernel/node/Node;", "setNode", "(Lcom/cloud/tmc/kernel/node/Node;)V", "port0", "Landroid/webkit/WebMessagePort;", "getPort0", "()Landroid/webkit/WebMessagePort;", "setPort0", "(Landroid/webkit/WebMessagePort;)V", "receivedRenderProcessGone", "threadPool", "Ljava/util/concurrent/ExecutorService;", "workerCallback", "Lcom/cloud/tmc/kernel/worker/WorkerCallback;", "create", "", PushConstants.PROVIDER_FIELD_DESTROY, "execute", "messageObj", "Lcom/google/gson/JsonObject;", "messageObjStr", "messageMap", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "executeJS", "getActivityRuntimes", "", "getData", "", "key", "getmWebViewClientInstance", "()Ljava/lang/Boolean;", "isLoad", "isRenderProcessGone", "loadJS", NativeRequestBridge.KEY_FILE_PATH, "loadScript", "script", "onRenderProcessGone", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "detail", "Landroid/webkit/RenderProcessGoneDetail;", "registerObject", "map", "", "registerObjects", "mapMap", "registerWorkLifeCycle", "registerWorkerCallback", "registerWorkerMessageChannel", "setData", AppMeasurementSdk.ConditionalUserProperty.VALUE, NativeComponentConstants.KEY_COMPONENT_TYPE, "useMessageChannel", "MyJavascriptInterface", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class WebviewWorker extends WebView implements IWorker, IRenderProcessListener {
    private final String appId;
    private boolean isDestroy;
    private WorkerLifeCycle lifeCycle;
    private DefaultWebViewClient mWebViewClient;
    private Handler mainHandler;
    private Node node;
    private WebMessagePort port0;
    private boolean receivedRenderProcessGone;
    private ExecutorService threadPool;
    private WorkerCallback workerCallback;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/worker/debug/WebviewWorker$MyJavascriptInterface;", "", "(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V", "workerSendToNative", "", "result", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public final class MyJavascriptInterface {
        public MyJavascriptInterface() {
        }

        @JavascriptInterface
        public final void workerSendToNative(String result) {
            Intrinsics.h(result, "result");
            TraceLog.i(OfflineConstantsKt.OFFLINE_TYPE_MINIAPP, "workerSendToNative DefaultChannel = " + result);
            JsonObject asJsonObject = JsonParser.parseString(result).getAsJsonObject();
            if (asJsonObject.has("abilityName") && Intrinsics.c(asJsonObject.get("abilityName").getAsString(), "debugRefresh")) {
                com.cloud.tmc.kernel.debug.a.b();
                return;
            }
            WorkerCallback workerCallback = WebviewWorker.this.workerCallback;
            if (workerCallback != null) {
                workerCallback.onCallBack(asJsonObject);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public WebviewWorker(String str, Node node, Context context) {
        this(str, node, context, null, 8, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public WebviewWorker(String str, Node node, Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.appId = str;
        this.node = node;
        Looper mainLooper = Looper.getMainLooper();
        Intrinsics.e(mainLooper);
        this.mainHandler = new Handler(mainLooper);
    }

    public /* synthetic */ WebviewWorker(String str, Node node, Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, node, context, (i11 & 8) != 0 ? null : attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void create$lambda$3(final WebviewWorker this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.mainHandler.post(new Runnable() { // from class: com.cloud.tmc.worker.debug.c
            @Override // java.lang.Runnable
            public final void run() {
                WebviewWorker.create$lambda$3$lambda$2(this.f23944a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void create$lambda$3$lambda$2(WebviewWorker this$0) {
        Intrinsics.h(this$0, "this$0");
        try {
            Boolean boolIsDebug = ((BuildConfigProxy) TmcProxy.get(BuildConfigProxy.class)).isDebug();
            Intrinsics.g(boolIsDebug, "get(BuildConfigProxy::class.java).isDebug");
            if (boolIsDebug.booleanValue()) {
                WebView.setWebContentsDebuggingEnabled(true);
            }
        } catch (Throwable unused) {
        }
        DefaultWebViewClient defaultWebViewClient = new DefaultWebViewClient(this$0.appId, this$0.node, this$0);
        this$0.mWebViewClient = defaultWebViewClient;
        this$0.setWebViewClient(defaultWebViewClient);
        this$0.setWebChromeClient(new DefaultWebChromeClient());
        WebSettings settings = this$0.getSettings();
        settings.setAllowFileAccessFromFileURLs(true);
        settings.setDefaultTextEncodingName("UTF-8");
        settings.setLoadsImagesAutomatically(true);
        settings.setAllowContentAccess(true);
        settings.setJavaScriptEnabled(true);
        this$0.addJavascriptInterface(this$0.new MyJavascriptInterface(), "debug");
        WorkerLifeCycle workerLifeCycle = this$0.lifeCycle;
        if (workerLifeCycle != null) {
            workerLifeCycle.onCreate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void execute$lambda$10(final WebviewWorker this$0, final JsonObject jsonObject) {
        Intrinsics.h(this$0, "this$0");
        this$0.mainHandler.post(new Runnable() { // from class: com.cloud.tmc.worker.debug.d
            @Override // java.lang.Runnable
            public final void run() {
                WebviewWorker.execute$lambda$10$lambda$9(jsonObject, this$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void execute$lambda$10$lambda$9(JsonObject jsonObject, WebviewWorker this$0) {
        Intrinsics.h(this$0, "this$0");
        if (jsonObject != null) {
            jsonObject.addProperty(EventConstants.KEY_TIME, Long.valueOf(System.currentTimeMillis()));
        }
        this$0.executeJS(jsonObject);
    }

    private final void executeJS(JsonObject messageObj) {
        if (!useMessageChannel()) {
            TraceLog.d(OfflineConstantsKt.OFFLINE_TYPE_MINIAPP, "nativeSendToWorker DefaultChannel= " + messageObj);
            evaluateJavascript("javascript:onMessage(" + messageObj + ')', new ValueCallback<String>() { // from class: com.cloud.tmc.worker.debug.WebviewWorker.executeJS.1
                @Override // android.webkit.ValueCallback
                public void onReceiveValue(String p11) {
                }
            });
            return;
        }
        TraceLog.d(OfflineConstantsKt.OFFLINE_TYPE_MINIAPP, "nativeSendToWorker MessageChannel= " + messageObj);
        try {
            WebMessagePort webMessagePort = this.port0;
            if (webMessagePort != null) {
                webMessagePort.postMessage(new WebMessage(String.valueOf(messageObj)));
            }
        } catch (Exception e11) {
            Log.e(OfflineConstantsKt.OFFLINE_TYPE_MINIAPP, "port post message: " + e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadJS$lambda$6(final WebviewWorker this$0, final String filePath) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(filePath, "$filePath");
        this$0.mainHandler.post(new Runnable() { // from class: com.cloud.tmc.worker.debug.f
            @Override // java.lang.Runnable
            public final void run() {
                WebviewWorker.loadJS$lambda$6$lambda$5(filePath, this$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadJS$lambda$6$lambda$5(String filePath, WebviewWorker this$0) {
        Intrinsics.h(filePath, "$filePath");
        Intrinsics.h(this$0, "this$0");
        try {
            if (!new File(filePath).exists()) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record("", WorkerAnalyseType.ERROR, "loadJS fail : js path : " + filePath + " is not exist");
                return;
            }
            int iV0 = StringsKt.v0(filePath, "/", 0, false, 6, null);
            StringBuilder sb2 = new StringBuilder();
            sb2.append('.');
            String strSubstring = filePath.substring(iV0, filePath.length());
            Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            sb2.append(strSubstring);
            String string = sb2.toString();
            StringBuffer stringBuffer = new StringBuffer();
            Map<String, String> parasm = ((JSAheadParamsProxy) TmcProxy.get(JSAheadParamsProxy.class)).getParasm();
            Intrinsics.g(parasm, "get(JSAheadParamsProxy::class.java).parasm");
            for (Map.Entry<String, String> entry : parasm.entrySet()) {
                stringBuffer.append("var " + entry.getKey() + " = \"" + entry.getValue() + "\";\n");
            }
            this$0.loadDataWithBaseURL(FrameworkConstants.BASE_HOST, "<!DOCTYPE html>\n<html>\n\t<head>\n\t\t<meta charset=\"utf-8\" />\n\t\t<title></title>\n\t</head>\n\t<script>\n\t" + ((Object) stringBuffer) + "\n\tvar global = window;\n\t\twindow.onload = function(){\n\u3000\u3000\u3000\u3000var script = document.createElement(\"script\");\n\u3000\u3000\u3000\u3000script.setAttribute(\"type\",\"text/javascript\");\n\u3000\u3000\u3000\u3000script.src = \"" + string + "\";\n\u3000\u3000\u3000\u3000document.getElementsByTagName(\"head\")[0].appendChild(script);  \n\u3000\u3000}\t</script></html>\n", "text/html", "utf-8", null);
        } catch (Exception e11) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record("", WorkerAnalyseType.ERROR, "loadJS fail : Exception = " + e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadScript$lambda$8(final WebviewWorker this$0, final String script) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(script, "$script");
        this$0.mainHandler.post(new Runnable() { // from class: com.cloud.tmc.worker.debug.a
            @Override // java.lang.Runnable
            public final void run() {
                WebviewWorker.loadScript$lambda$8$lambda$7(this.f23940a, script);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void loadScript$lambda$8$lambda$7(WebviewWorker this$0, String script) {
        String strValueOf;
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(script, "$script");
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record("", WorkerAnalyseType.LOAD_JS_START, null);
        boolean z10 = false;
        try {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record("", WorkerAnalyseType.LOAD_JS_END, null);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record("", PointAnalyseType.POINT_WORKER_READY, "");
            this$0.evaluateJavascript(script, new ValueCallback<String>() { // from class: com.cloud.tmc.worker.debug.WebviewWorker$loadScript$1$1$1
                @Override // android.webkit.ValueCallback
                public void onReceiveValue(String p11) {
                }
            });
            z10 = true;
            strValueOf = "";
        } catch (Error e11) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record("", WorkerAnalyseType.ERROR, "loadJS fail : Error = " + e11);
            strValueOf = String.valueOf(e11);
        } catch (Exception e12) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record("", WorkerAnalyseType.ERROR, "loadJS fail : Exception = " + e12);
            strValueOf = String.valueOf(e12);
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("abilityName", "callback");
        jsonObject.addProperty("callbackId", "");
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty(EventConstants.KEY_EVENT_NAME, "loadWorkerJS");
        JsonObject jsonObject3 = new JsonObject();
        jsonObject3.addProperty("result", String.valueOf(z10));
        jsonObject3.addProperty(NotificationCompat.CATEGORY_MESSAGE, strValueOf);
        jsonObject2.add("dataJson", jsonObject3);
        jsonObject.add("dataJson", jsonObject2);
        jsonObject.addProperty(EventConstants.KEY_SOURCE, EventConstants.ADDRESS_WORKER);
        jsonObject.addProperty("target", EventConstants.ADDRESS_RENDER);
        WorkerCallback workerCallback = this$0.workerCallback;
        if (workerCallback != null) {
            workerCallback.onCallBack(jsonObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerObject$lambda$12(final WebviewWorker this$0, final String str, final Map map) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(map, "$map");
        this$0.mainHandler.post(new Runnable() { // from class: com.cloud.tmc.worker.debug.j
            @Override // java.lang.Runnable
            public final void run() {
                WebviewWorker.registerObject$lambda$12$lambda$11(str, map, this$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerObject$lambda$12$lambda$11(String str, Map map, WebviewWorker this$0) {
        Intrinsics.h(map, "$map");
        Intrinsics.h(this$0, "this$0");
        this$0.evaluateJavascript("var " + str + " = " + map, new ValueCallback<String>() { // from class: com.cloud.tmc.worker.debug.WebviewWorker$registerObject$1$1$1
            @Override // android.webkit.ValueCallback
            public void onReceiveValue(String p11) {
            }
        });
    }

    private final boolean useMessageChannel() {
        try {
            String frameworkVersion = ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getFrameworkVersion();
            return !(Intrinsics.c(frameworkVersion, "1.0.0") || Intrinsics.c(frameworkVersion, "0.1.0"));
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.cloud.tmc.kernel.worker.IWorker
    @SuppressLint({"JavascriptInterface"})
    public void create() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        this.threadPool = executorServiceNewSingleThreadExecutor;
        if (executorServiceNewSingleThreadExecutor != null) {
            executorServiceNewSingleThreadExecutor.submit(new Runnable() { // from class: com.cloud.tmc.worker.debug.i
                @Override // java.lang.Runnable
                public final void run() {
                    WebviewWorker.create$lambda$3(this.f23956a);
                }
            });
        }
    }

    @Override // android.webkit.WebView, com.cloud.tmc.kernel.worker.IWorker
    public void destroy() {
        if (this.isDestroy) {
            return;
        }
        this.isDestroy = true;
        clearHistory();
        WorkerLifeCycle workerLifeCycle = this.lifeCycle;
        if (workerLifeCycle != null) {
            workerLifeCycle.onDestroy();
        }
        this.threadPool = null;
        super.destroy();
        this.node = null;
        this.mWebViewClient = null;
    }

    @Override // com.cloud.tmc.kernel.worker.IWorker
    public void execute(final JsonObject messageObj) {
        ExecutorService executorService = this.threadPool;
        if (executorService != null) {
            executorService.submit(new Runnable() { // from class: com.cloud.tmc.worker.debug.h
                @Override // java.lang.Runnable
                public final void run() {
                    WebviewWorker.execute$lambda$10(this.f23954a, messageObj);
                }
            });
        }
    }

    @Override // com.cloud.tmc.kernel.worker.IWorker
    public void execute(String messageObjStr) {
        execute(JsonParser.parseString(messageObjStr).getAsJsonObject());
    }

    @Override // com.cloud.tmc.kernel.worker.IWorker
    public void execute(HashMap<String, Object> messageMap) {
    }

    @Override // com.cloud.tmc.kernel.worker.IWorker
    public int getActivityRuntimes() {
        return 1;
    }

    public final String getAppId() {
        return this.appId;
    }

    @Override // com.cloud.tmc.kernel.worker.IWorker
    public Void getData(String key) {
        Intrinsics.h(key, "key");
        return null;
    }

    public final Node getNode() {
        return this.node;
    }

    public final WebMessagePort getPort0() {
        return this.port0;
    }

    /* JADX INFO: renamed from: getmWebViewClientInstance, reason: from getter */
    public final DefaultWebViewClient getMWebViewClient() {
        return this.mWebViewClient;
    }

    @Override // com.cloud.tmc.kernel.worker.IWorker
    public Boolean isDestroy() {
        return Boolean.valueOf(this.isDestroy);
    }

    @Override // com.cloud.tmc.kernel.worker.IWorker
    public Boolean isLoad() {
        return Boolean.valueOf(!this.isDestroy);
    }

    @Override // com.cloud.tmc.kernel.proxy.renderprocess.IRenderProcessListener
    public Boolean isRenderProcessGone() {
        return Boolean.valueOf(this.receivedRenderProcessGone);
    }

    @Override // com.cloud.tmc.kernel.worker.IWorker
    public void loadJS(final String filePath) {
        Intrinsics.h(filePath, "filePath");
        ExecutorService executorService = this.threadPool;
        if (executorService != null) {
            executorService.submit(new Runnable() { // from class: com.cloud.tmc.worker.debug.g
                @Override // java.lang.Runnable
                public final void run() {
                    WebviewWorker.loadJS$lambda$6(this.f23952a, filePath);
                }
            });
        }
    }

    @Override // com.cloud.tmc.kernel.worker.IWorker
    public void loadScript(final String script) {
        Intrinsics.h(script, "script");
        if (!isLoad().booleanValue()) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record("", WorkerAnalyseType.ERROR, "loadJS fail : Worker is not load ");
            return;
        }
        if (TextUtils.isEmpty(script)) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record("", WorkerAnalyseType.ERROR, "loadJS fail : js string is null");
            return;
        }
        ExecutorService executorService = this.threadPool;
        if (executorService != null) {
            executorService.submit(new Runnable() { // from class: com.cloud.tmc.worker.debug.b
                @Override // java.lang.Runnable
                public final void run() {
                    WebviewWorker.loadScript$lambda$8(this.f23942a, script);
                }
            });
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.renderprocess.IRenderProcessListener
    public void onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        this.receivedRenderProcessGone = true;
        ((IOnRenderProcessGoneProxy) TmcProxy.get(IOnRenderProcessGoneProxy.class)).received(view, detail);
    }

    @Override // com.cloud.tmc.kernel.worker.IWorker
    public void registerObject(final String key, final Map<String, String> map) {
        Intrinsics.h(map, "map");
        ExecutorService executorService = this.threadPool;
        if (executorService != null) {
            executorService.submit(new Runnable() { // from class: com.cloud.tmc.worker.debug.e
                @Override // java.lang.Runnable
                public final void run() {
                    WebviewWorker.registerObject$lambda$12(this.f23947a, key, map);
                }
            });
        }
    }

    @Override // com.cloud.tmc.kernel.worker.IWorker
    public void registerObjects(Map<String, ? extends Map<String, String>> mapMap) {
        Intrinsics.h(mapMap, "mapMap");
        for (Map.Entry<String, ? extends Map<String, String>> entry : mapMap.entrySet()) {
            registerObject(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.cloud.tmc.kernel.worker.IWorker
    public void registerWorkLifeCycle(WorkerLifeCycle lifeCycle) {
        Intrinsics.h(lifeCycle, "lifeCycle");
        this.lifeCycle = lifeCycle;
    }

    @Override // com.cloud.tmc.kernel.worker.IWorker
    public void registerWorkerCallback(WorkerCallback workerCallback) {
        this.workerCallback = workerCallback;
    }

    public final void registerWorkerMessageChannel() {
        if (useMessageChannel()) {
            WebMessagePort[] webMessagePortArrCreateWebMessageChannel = createWebMessageChannel();
            Intrinsics.g(webMessagePortArrCreateWebMessageChannel, "this.createWebMessageChannel()");
            WebMessagePort webMessagePort = webMessagePortArrCreateWebMessageChannel[0];
            this.port0 = webMessagePort;
            if (webMessagePort != null) {
                webMessagePort.setWebMessageCallback(new WebMessagePort.WebMessageCallback() { // from class: com.cloud.tmc.worker.debug.WebviewWorker.registerWorkerMessageChannel.1
                    @Override // android.webkit.WebMessagePort.WebMessageCallback
                    public void onMessage(WebMessagePort port, WebMessage message) {
                        Intrinsics.h(port, "port");
                        Intrinsics.h(message, "message");
                        String data = message.getData();
                        TraceLog.i(OfflineConstantsKt.OFFLINE_TYPE_MINIAPP, "workerSendToNative MessageChannel = " + data);
                        JsonObject asJsonObject = JsonParser.parseString(data).getAsJsonObject();
                        if (asJsonObject.has("abilityName") && Intrinsics.c(asJsonObject.get("abilityName").getAsString(), "debugRefresh")) {
                            com.cloud.tmc.kernel.debug.a.b();
                            return;
                        }
                        WorkerCallback workerCallback = WebviewWorker.this.workerCallback;
                        if (workerCallback != null) {
                            workerCallback.onCallBack(asJsonObject);
                        }
                    }
                });
            }
            postWebMessage(new WebMessage("mini_init", new WebMessagePort[]{webMessagePortArrCreateWebMessageChannel[1]}), Uri.EMPTY);
        }
    }

    @Override // com.cloud.tmc.kernel.worker.IWorker
    public void setData(String key, Object value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
    }

    public final void setNode(Node node) {
        this.node = node;
    }

    public final void setPort0(WebMessagePort webMessagePort) {
        this.port0 = webMessagePort;
    }

    @Override // com.cloud.tmc.kernel.worker.IWorker
    public int type() {
        return 3;
    }
}
