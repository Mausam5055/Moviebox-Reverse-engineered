package com.cloud.tmc.kernel.proxy.render;

import android.content.Context;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.kernel.render.IWebView;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.defaultimpl.WebViewImp")
public interface IWebViewFactory extends Proxiable {
    void clear();

    IWebView createWebView(Context context);

    IWebView createWebView(Context context, int i11);
}
