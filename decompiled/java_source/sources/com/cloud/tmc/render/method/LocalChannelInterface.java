package com.cloud.tmc.render.method;

import android.os.Bundle;
import android.webkit.JavascriptInterface;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.render.BuildConfig;
import com.cloud.tmc.render.ILocalChannelProxy;
import com.cloud.tmc.render.IPageChainCallback;
import com.cloud.tmc.render.proxy.SessionUtilProxy;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0014\u0010\n\u001a\u0004\u0018\u00010\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006H\u0007J\u0006\u0010\f\u001a\u00020\rJ\b\u0010\u000e\u001a\u00020\u0006H\u0007J\b\u0010\u000f\u001a\u00020\u0006H\u0007J\b\u0010\u0010\u001a\u00020\u0006H\u0007J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0006H\u0007J(\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0007J(\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0007J\u0010\u0010\u0019\u001a\u00020\r2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0004¨\u0006\u001b"}, d2 = {"Lcom/cloud/tmc/render/method/LocalChannelInterface;", "", "callback", "Lcom/cloud/tmc/render/IPageChainCallback;", "(Lcom/cloud/tmc/render/IPageChainCallback;)V", "appId", "", "getCallback", "()Lcom/cloud/tmc/render/IPageChainCallback;", "setCallback", "callBridgeApi", "params", "clear", "", "gamePerformanceMonitorGetSessionId", "gamePerformanceMonitorGetStr", "getMiniAppId", "onPageFinished", "report", "tag", "reportData", "reportType", "", "athenaAppId", "reportForH5", "setAppId", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LocalChannelInterface {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String appId;
    private IPageChainCallback callback;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lcom/cloud/tmc/render/method/LocalChannelInterface$Companion;", "", "()V", "reportForH5Fail", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "", NotificationCompat.CATEGORY_MESSAGE, "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void reportForH5Fail(int type, String msg) {
            Intrinsics.h(msg, "msg");
            try {
                Bundle bundle = new Bundle();
                bundle.putInt("reportForH5Fail", type);
                bundle.putString("reportForH5FailReason", msg);
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).recordForCommon("", "miniapp_auto_close_record", bundle);
            } catch (Throwable unused) {
            }
        }
    }

    public LocalChannelInterface(IPageChainCallback iPageChainCallback) {
        this.callback = iPageChainCallback;
    }

    @JavascriptInterface
    public final String callBridgeApi(String params) {
        IPageChainCallback iPageChainCallback;
        if (params != null) {
            try {
                if (params.length() != 0 && (iPageChainCallback = this.callback) != null) {
                    iPageChainCallback.onConsoleMessage("__TmcRenderToWorkerMsg:" + params);
                }
            } catch (Throwable th2) {
                TmcLogger.e("callBridgeApi", th2);
            }
        }
        return "";
    }

    public final void clear() {
        this.callback = null;
    }

    @JavascriptInterface
    public final String gamePerformanceMonitorGetSessionId() {
        String id2;
        try {
            id2 = ((SessionUtilProxy) TmcProxy.get(SessionUtilProxy.class)).getId(this.appId);
        } catch (Throwable unused) {
            id2 = "";
        }
        TmcLogger.d("LocalChannelInterface", "gamePerformanceMonitorGetSessionId:" + id2);
        return id2;
    }

    @JavascriptInterface
    public final String gamePerformanceMonitorGetStr() {
        String strGamePerformanceMonitorGetStr;
        try {
            strGamePerformanceMonitorGetStr = ((ILocalChannelProxy) TmcProxy.get(ILocalChannelProxy.class)).gamePerformanceMonitorGetStr();
        } catch (Throwable unused) {
            strGamePerformanceMonitorGetStr = "";
        }
        TmcLogger.d("LocalChannelInterface", "gamePerformanceMonitorGetStr:" + strGamePerformanceMonitorGetStr);
        return strGamePerformanceMonitorGetStr;
    }

    public final IPageChainCallback getCallback() {
        return this.callback;
    }

    @JavascriptInterface
    public final String getMiniAppId() {
        String str = this.appId;
        return str == null ? "" : str;
    }

    @JavascriptInterface
    public final void onPageFinished(String params) {
        Intrinsics.h(params, "params");
        TmcLogger.d("LocalChannelInterface", "onPageFinised params:" + params);
        try {
            IPageChainCallback iPageChainCallback = this.callback;
            if (iPageChainCallback != null) {
                iPageChainCallback.onPageFinished(params);
            }
        } catch (Throwable unused) {
        }
    }

    @JavascriptInterface
    public final void report(String tag, String reportData, int reportType, int athenaAppId) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(reportData, "reportData");
        try {
            TmcLogger.d("LocalChannelInterface", "report tag:" + tag + ", reportData:" + reportData + ", reportType:" + reportType + ", athenaAppId:" + athenaAppId);
            ((ILocalChannelProxy) TmcProxy.get(ILocalChannelProxy.class)).report(tag, reportData, Integer.valueOf(reportType), Integer.valueOf(athenaAppId));
        } catch (Throwable unused) {
        }
    }

    @JavascriptInterface
    public final void reportForH5(String tag, String reportData, int reportType, int athenaAppId) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(reportData, "reportData");
        try {
            ((ILocalChannelProxy) TmcProxy.get(ILocalChannelProxy.class)).reportForH5(tag, reportData, Integer.valueOf(reportType), Integer.valueOf(athenaAppId));
        } catch (Throwable th2) {
            INSTANCE.reportForH5Fail(1, String.valueOf(th2));
        }
    }

    public final void setAppId(String appId) {
        this.appId = appId;
    }

    public final void setCallback(IPageChainCallback iPageChainCallback) {
        this.callback = iPageChainCallback;
    }
}
