package com.cloud.tmc.kernel.render;

import android.graphics.Bitmap;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes3.dex */
public interface WebviewPageEventCallback {
    void onConsoleMessage(String str);

    void onProgressChanged(WebView webView, int i11);

    void onReceivedIcon(Bitmap bitmap);

    void onReceivedTitle(String str);

    void onRequestFocus();
}
