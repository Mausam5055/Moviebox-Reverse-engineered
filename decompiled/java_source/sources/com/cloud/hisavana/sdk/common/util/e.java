package com.cloud.hisavana.sdk.common.util;

import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.e4;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f22153a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ConcurrentHashMap f22154b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Handler f22155c = new Handler(Looper.getMainLooper());

    private e() {
    }

    private final void c(String str, long j11) {
        try {
            ConcurrentHashMap concurrentHashMap = f22154b;
            WebView webView = (WebView) concurrentHashMap.get(Long.valueOf(j11));
            if (webView == null) {
                e4.b().d("AdxTrackWebviewManager", "create trackwebview now, key->" + j11);
                webView = new WebView(com.cloud.sdk.commonutil.util.e.a());
                webView.setWebViewClient(new WebViewClient());
                webView.getSettings().setJavaScriptEnabled(true);
                concurrentHashMap.put(Long.valueOf(j11), webView);
            }
            e4.b().d("AdxTrackWebviewManager", "adx track, load url: " + str);
            webView.loadUrl(str);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(WebView webView, long j11) {
        f22153a.f(webView, j11);
    }

    private final void f(WebView webView, long j11) {
        try {
            e4.b().d("AdxTrackWebviewManager", "destroy trackwebview now, key->" + j11);
            if (webView != null) {
                webView.clearHistory();
                webView.clearCache(true);
                webView.loadUrl(TmcConstants.LOAD_BASE_DATA_URL);
                webView.freeMemory();
                webView.destroy();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(String url, long j11) {
        Intrinsics.h(url, "$url");
        f22153a.c(url, j11);
    }

    public final void d(final long j11) {
        try {
            final WebView webView = (WebView) f22154b.remove(Long.valueOf(j11));
            if (webView != null) {
                e4.b().d("AdxTrackWebviewManager", "delay 10 seconds to destroy the trackWebview,key: ->" + j11);
                f22155c.postDelayed(new Runnable() { // from class: com.cloud.hisavana.sdk.common.util.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.e(webView, j11);
                    }
                }, 10000L);
            }
        } catch (Throwable unused) {
        }
    }

    public final void g(final long j11, final String url) {
        Intrinsics.h(url, "url");
        f22155c.post(new Runnable() { // from class: com.cloud.hisavana.sdk.common.util.d
            @Override // java.lang.Runnable
            public final void run() {
                e.h(url, j11);
            }
        });
    }
}
