package com.cloud.tmc.integration.defaultImpl;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.proxy.renderprocess.IOnRenderProcessGoneProxy;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\f\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u000e\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/cloud/tmc/integration/defaultImpl/OnRenderProcessGoneManager;", "Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;", "()V", "listeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy$Listener;", "received", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/webkit/WebView;", "detail", "Landroid/webkit/RenderProcessGoneDetail;", "register", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "unRegister", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OnRenderProcessGoneManager implements IOnRenderProcessGoneProxy {
    private final CopyOnWriteArrayList<IOnRenderProcessGoneProxy.Listener> listeners = new CopyOnWriteArrayList<>();

    @Override // com.cloud.tmc.kernel.proxy.renderprocess.IOnRenderProcessGoneProxy
    public void received(WebView view, RenderProcessGoneDetail detail) {
        Iterator<IOnRenderProcessGoneProxy.Listener> it = this.listeners.iterator();
        Intrinsics.g(it, "listeners.iterator()");
        while (it.hasNext()) {
            it.next().onRenderProcessGone(view, detail);
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.renderprocess.IOnRenderProcessGoneProxy
    public void register(IOnRenderProcessGoneProxy.Listener listener) {
        if (listener == null || this.listeners.contains(listener)) {
            return;
        }
        this.listeners.add(listener);
    }

    @Override // com.cloud.tmc.kernel.proxy.renderprocess.IOnRenderProcessGoneProxy
    public void unRegister(IOnRenderProcessGoneProxy.Listener listener) {
        if (listener == null || !this.listeners.contains(listener)) {
            return;
        }
        this.listeners.remove(listener);
    }
}
