package com.transsion.lib_web.cache;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import gm.n;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f46142a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f46143b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static BridgeWebView f46144c;

    private a() {
    }

    private final BridgeWebView a(Context context) {
        try {
            return b.f46145a.b(context);
        } catch (Exception e11) {
            b.f46145a.g("createWebViewSafely() --> WebView 创建失败: " + e11.getMessage());
            return null;
        }
    }

    public final void b(BridgeWebView bridgeWebView) {
        if (n.f63887a.f(bridgeWebView)) {
            if (bridgeWebView == null) {
                return;
            }
            d(bridgeWebView);
        } else if (bridgeWebView != null) {
            ViewParent parent = bridgeWebView.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(bridgeWebView);
            }
            bridgeWebView.stopLoading();
            bridgeWebView.clearHistory();
            bridgeWebView.clearCache(true);
            bridgeWebView.loadUrl(TmcConstants.LOAD_BASE_DATA_URL);
            bridgeWebView.destroy();
        }
    }

    public final BridgeWebView c(String url, Context context) {
        Intrinsics.h(url, "url");
        if (n.f63887a.f(f46144c)) {
            BridgeWebView bridgeWebView = f46144c;
            if (bridgeWebView == null) {
                return null;
            }
            d(bridgeWebView);
        }
        if (!e(url)) {
            b.f46145a.g("get() --> 没有缓存，直接创建一个新的 --> url = " + url);
            if (context == null) {
                context = Utils.a().getApplicationContext();
            }
            Intrinsics.e(context);
            return a(context);
        }
        BridgeWebView bridgeWebView2 = f46144c;
        f46144c = null;
        f46143b = null;
        b.f46145a.g("get() --> 缓存命中，直接复用 --> url = " + url);
        if (bridgeWebView2 != null) {
            return bridgeWebView2;
        }
        if (context == null) {
            context = Utils.a().getApplicationContext();
        }
        Intrinsics.e(context);
        return a(context);
    }

    public final void d(WebView webView) {
        Intrinsics.h(webView, "webView");
        if (f46144c == webView) {
            f46144c = null;
            f46143b = null;
            b.f46145a.g("invalidate() --> 清空失效的普通缓存 WebView");
        }
    }

    public final boolean e(String url) {
        Intrinsics.h(url, "url");
        return TextUtils.equals(url, f46143b);
    }

    public final void f(String url) {
        Intrinsics.h(url, "url");
        if (!n.f63887a.g()) {
            b.f46145a.g("preload() --> renderer 异常后当前进程关闭预加载");
            return;
        }
        if (TextUtils.equals(url, f46143b)) {
            b.f46145a.g("preload() --> 正在缓存的地址，无需重复创建 --> url = " + url);
            return;
        }
        f46143b = url;
        if (Build.VERSION.SDK_INT >= 36) {
            b.f46145a.g("preload() --> API 36+，跳过 WebView 预创建 --> url = " + url);
            return;
        }
        if (f46144c == null) {
            Context applicationContext = Utils.a().getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            BridgeWebView bridgeWebViewA = a(applicationContext);
            if (bridgeWebViewA == null) {
                b.f46145a.g("preload() --> 设备缺少 WebView 实现，跳过预加载 --> url = " + url);
                return;
            }
            f46144c = bridgeWebViewA;
            b.f46145a.g("preloadInternal() --> 不存在创建新的对象");
        }
        BridgeWebView bridgeWebView = f46144c;
        if (bridgeWebView != null) {
            bridgeWebView.setTag(-1001, String.valueOf(System.currentTimeMillis()));
            bridgeWebView.stopLoading();
            bridgeWebView.clearHistory();
            bridgeWebView.clearCache(true);
            bridgeWebView.loadUrl(TmcConstants.LOAD_BASE_DATA_URL);
            bridgeWebView.loadUrl(url);
            b bVar = b.f46145a;
            bVar.g("preloadInternal() --> 创建新对象加入缓存池 --> 预加载埋点 --> url = " + url);
            bVar.h(url, "preload");
            bridgeWebView.setTag(-1001, Boolean.TRUE);
        }
    }
}
