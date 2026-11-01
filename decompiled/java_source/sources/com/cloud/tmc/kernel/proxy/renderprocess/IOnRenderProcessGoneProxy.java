package com.cloud.tmc.kernel.proxy.renderprocess;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.defaultImpl.OnRenderProcessGoneManager")
public interface IOnRenderProcessGoneProxy extends Proxiable {

    public interface Listener {
        void onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail);
    }

    void received(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail);

    void register(Listener listener);

    void unRegister(Listener listener);
}
