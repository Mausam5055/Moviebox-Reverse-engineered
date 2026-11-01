package com.cloud.tmc.render.utils;

import android.webkit.JavascriptInterface;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.coreimpl.eventcenter.DefaultEvent;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.render.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0010\u0010\u0010\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/cloud/tmc/render/utils/FullScreenJSI;", "", "()V", "page", "Lcom/cloud/tmc/kernel/node/Node;", "getPage", "()Lcom/cloud/tmc/kernel/node/Node;", "setPage", "(Lcom/cloud/tmc/kernel/node/Node;)V", "enterFullScreen", "", "width", "", "height", "isVideo", "", "setNode", "node", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FullScreenJSI {
    private Node page;

    @JavascriptInterface
    public final void enterFullScreen(int width, int height, boolean isVideo) {
        IEventCenter eventCenterInstance;
        TmcLogger.d("pom", "getRect->width:" + width + ", height:" + height + ", isVideo:" + isVideo);
        Node node = this.page;
        if (node == null || (eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(node)) == null) {
            return;
        }
        String str = "eventFullScreen_" + node.getNodeId();
        DefaultEvent defaultEvent = new DefaultEvent("eventFullScreen_" + node.getNodeId());
        defaultEvent.setData(MapsKt.j(TuplesKt.a(TmcConstants.EVENT_FULLSCREEN_PARAM_KEY_WIDTH, Integer.valueOf(width)), TuplesKt.a(TmcConstants.EVENT_FULLSCREEN_PARAM_KEY_HEIGHT, Integer.valueOf(height)), TuplesKt.a(TmcConstants.EVENT_FULLSCREEN_PARAM_KEY_IS_VIDEO, Boolean.valueOf(isVideo))));
        Unit unit = Unit.f67061a;
        eventCenterInstance.postEvent(str, defaultEvent);
    }

    public final Node getPage() {
        return this.page;
    }

    public final void setNode(Node node) {
        this.page = node;
    }

    public final void setPage(Node node) {
        this.page = node;
    }
}
