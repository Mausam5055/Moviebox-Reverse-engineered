package com.cloud.tmc.render;

import android.graphics.Bitmap;
import android.webkit.WebView;
import com.cloud.tmc.kernel.engine.EngineRouter;
import com.cloud.tmc.kernel.render.IPageEventCallback;
import com.cloud.tmc.kernel.render.WebviewPageEventCallback;
import com.cloud.tmc.worker.dispatch.IBridgeDispatch;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B7\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0006H\u0016J\u001a\u0010'\u001a\u00020%2\b\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0012\u0010*\u001a\u00020%2\b\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0012\u0010-\u001a\u00020%2\b\u0010.\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010/\u001a\u00020%H\u0016J\u0012\u00100\u001a\u00020%2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u001c\u00101\u001a\u00020%2\b\u00102\u001a\u0004\u0018\u00010)2\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u00103\u001a\u00020%2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b#\u0010 ¨\u00064"}, d2 = {"Lcom/cloud/tmc/render/DefaultPageEventCallback;", "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;", "Lcom/cloud/tmc/render/IRegisterEngineRouter;", "Lcom/cloud/tmc/render/IRegisterPageEventCallback;", "Lcom/cloud/tmc/render/IRegisterRenderId;", "workerId", "", "renderId", "pageEventCallback", "Lcom/cloud/tmc/kernel/render/IPageEventCallback;", "bridgeDispatcher", "Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;", "engineRouter", "Lcom/cloud/tmc/kernel/engine/EngineRouter;", "(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IPageEventCallback;Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;Lcom/cloud/tmc/kernel/engine/EngineRouter;)V", "getBridgeDispatcher", "()Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;", "getEngineRouter", "()Lcom/cloud/tmc/kernel/engine/EngineRouter;", "setEngineRouter", "(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V", "newProgress", "", "getNewProgress", "()I", "setNewProgress", "(I)V", "getPageEventCallback", "()Lcom/cloud/tmc/kernel/render/IPageEventCallback;", "setPageEventCallback", "(Lcom/cloud/tmc/kernel/render/IPageEventCallback;)V", "getRenderId", "()Ljava/lang/String;", "setRenderId", "(Ljava/lang/String;)V", "getWorkerId", "onConsoleMessage", "", "consoleMessage", "onProgressChanged", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/webkit/WebView;", "onReceivedIcon", RewardPlus.ICON, "Landroid/graphics/Bitmap;", "onReceivedTitle", CampaignEx.JSON_KEY_TITLE, "onRequestFocus", "registerEnginerRouter", "registerPageEventCallback", "webView", "registerRenderId", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DefaultPageEventCallback implements WebviewPageEventCallback, IRegisterEngineRouter, IRegisterPageEventCallback, IRegisterRenderId {
    private final IBridgeDispatch bridgeDispatcher;
    private EngineRouter engineRouter;
    private int newProgress;
    private IPageEventCallback pageEventCallback;
    private String renderId;
    private final String workerId;

    public DefaultPageEventCallback(String workerId, String renderId, IPageEventCallback iPageEventCallback, IBridgeDispatch iBridgeDispatch, EngineRouter engineRouter) {
        Intrinsics.h(workerId, "workerId");
        Intrinsics.h(renderId, "renderId");
        this.workerId = workerId;
        this.renderId = renderId;
        this.pageEventCallback = iPageEventCallback;
        this.bridgeDispatcher = iBridgeDispatch;
        this.engineRouter = engineRouter;
    }

    public /* synthetic */ DefaultPageEventCallback(String str, String str2, IPageEventCallback iPageEventCallback, IBridgeDispatch iBridgeDispatch, EngineRouter engineRouter, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i11 & 4) != 0 ? null : iPageEventCallback, (i11 & 8) != 0 ? null : iBridgeDispatch, engineRouter);
    }

    public final IBridgeDispatch getBridgeDispatcher() {
        return this.bridgeDispatcher;
    }

    public final EngineRouter getEngineRouter() {
        return this.engineRouter;
    }

    public final int getNewProgress() {
        return this.newProgress;
    }

    public final IPageEventCallback getPageEventCallback() {
        return this.pageEventCallback;
    }

    public final String getRenderId() {
        return this.renderId;
    }

    public final String getWorkerId() {
        return this.workerId;
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageEventCallback
    public void onConsoleMessage(String consoleMessage) {
        Intrinsics.h(consoleMessage, "consoleMessage");
        IBridgeDispatch iBridgeDispatch = this.bridgeDispatcher;
        if (iBridgeDispatch != null) {
            iBridgeDispatch.invoke(this.engineRouter, this.workerId, this.renderId, consoleMessage);
        }
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageEventCallback
    public void onProgressChanged(WebView view, int newProgress) {
        this.newProgress = newProgress;
        IPageEventCallback iPageEventCallback = this.pageEventCallback;
        if (iPageEventCallback != null) {
            iPageEventCallback.onProgressChanged(view, newProgress);
        }
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageEventCallback
    public void onReceivedIcon(Bitmap icon) {
        IPageEventCallback iPageEventCallback = this.pageEventCallback;
        if (iPageEventCallback != null) {
            iPageEventCallback.onReceivedIcon(icon);
        }
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageEventCallback
    public void onReceivedTitle(String title) {
        IPageEventCallback iPageEventCallback = this.pageEventCallback;
        if (iPageEventCallback != null) {
            iPageEventCallback.onReceivedTitle(title);
        }
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageEventCallback
    public void onRequestFocus() {
        IPageEventCallback iPageEventCallback = this.pageEventCallback;
        if (iPageEventCallback != null) {
            iPageEventCallback.onRequestFocus();
        }
    }

    @Override // com.cloud.tmc.render.IRegisterEngineRouter
    public void registerEnginerRouter(EngineRouter engineRouter) {
        this.engineRouter = engineRouter;
    }

    @Override // com.cloud.tmc.render.IRegisterPageEventCallback
    public void registerPageEventCallback(WebView webView, IPageEventCallback pageEventCallback) {
        this.pageEventCallback = pageEventCallback;
        if (pageEventCallback != null) {
            pageEventCallback.onProgressChanged(webView, this.newProgress);
        }
    }

    @Override // com.cloud.tmc.render.IRegisterRenderId
    public void registerRenderId(String renderId) {
        Intrinsics.h(renderId, "renderId");
        this.renderId = renderId;
    }

    public final void setEngineRouter(EngineRouter engineRouter) {
        this.engineRouter = engineRouter;
    }

    public final void setNewProgress(int i11) {
        this.newProgress = i11;
    }

    public final void setPageEventCallback(IPageEventCallback iPageEventCallback) {
        this.pageEventCallback = iPageEventCallback;
    }

    public final void setRenderId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.renderId = str;
    }
}
