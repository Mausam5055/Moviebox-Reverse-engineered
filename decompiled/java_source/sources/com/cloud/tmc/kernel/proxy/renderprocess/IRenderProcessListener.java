package com.cloud.tmc.kernel.proxy.renderprocess;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes3.dex */
public interface IRenderProcessListener {
    Boolean isRenderProcessGone();

    void onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail);
}
