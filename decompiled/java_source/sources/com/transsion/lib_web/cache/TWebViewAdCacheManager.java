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
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class TWebViewAdCacheManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TWebViewAdCacheManager f46136a = new TWebViewAdCacheManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile String f46137b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile BridgeWebView f46138c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile boolean f46139d;

    private TWebViewAdCacheManager() {
    }

    private final BridgeWebView c(Context context) {
        try {
            return b.f46145a.b(context);
        } catch (Exception e11) {
            b.f46145a.g("createWebViewSafely() --> WebView 创建失败: " + e11.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(String str) {
        BridgeWebView bridgeWebView = f46138c;
        if (bridgeWebView != null) {
            bridgeWebView.setTag(-1001, String.valueOf(System.currentTimeMillis()));
            bridgeWebView.stopLoading();
            bridgeWebView.clearHistory();
            bridgeWebView.clearCache(true);
            bridgeWebView.loadUrl(TmcConstants.LOAD_BASE_DATA_URL);
            bridgeWebView.loadUrl(str);
            b bVar = b.f46145a;
            bVar.g("preloadInternal() --> 创建新对象加入缓存池 --> 预加载埋点 --> url = " + str);
            bVar.h(str, "preload");
            bridgeWebView.setTag(-1001, Boolean.TRUE);
            f46137b = str;
        }
    }

    public final void d(BridgeWebView bridgeWebView) {
        b.f46145a.g("destroy webview curWebview = " + f46138c + " ## desWeb = " + bridgeWebView);
        if (n.f63887a.f(bridgeWebView)) {
            if (bridgeWebView == null) {
                return;
            }
            h(bridgeWebView);
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(Continuation continuation) throws Throwable {
        TWebViewAdCacheManager$getAdStatus$1 tWebViewAdCacheManager$getAdStatus$1;
        if (continuation instanceof TWebViewAdCacheManager$getAdStatus$1) {
            tWebViewAdCacheManager$getAdStatus$1 = (TWebViewAdCacheManager$getAdStatus$1) continuation;
            int i11 = tWebViewAdCacheManager$getAdStatus$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                tWebViewAdCacheManager$getAdStatus$1.label = i11 - Integer.MIN_VALUE;
            } else {
                tWebViewAdCacheManager$getAdStatus$1 = new TWebViewAdCacheManager$getAdStatus$1(this, continuation);
            }
        } else {
            tWebViewAdCacheManager$getAdStatus$1 = new TWebViewAdCacheManager$getAdStatus$1(this, continuation);
        }
        Object objE = tWebViewAdCacheManager$getAdStatus$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = tWebViewAdCacheManager$getAdStatus$1.label;
        if (i12 == 0) {
            ResultKt.b(objE);
            if (n.f63887a.f(f46138c)) {
                BridgeWebView bridgeWebView = f46138c;
                if (bridgeWebView == null) {
                    return "webview 已失效";
                }
                h(bridgeWebView);
                return "webview 已失效";
            }
            if (f46138c == null) {
                return "webview 没有预热";
            }
            if (TextUtils.isEmpty(f46137b)) {
                return "webview url为空";
            }
            TWebViewAdCacheManager$getAdStatus$2 tWebViewAdCacheManager$getAdStatus$2 = new TWebViewAdCacheManager$getAdStatus$2(null);
            tWebViewAdCacheManager$getAdStatus$1.label = 1;
            objE = TimeoutKt.e(3000L, tWebViewAdCacheManager$getAdStatus$2, tWebViewAdCacheManager$getAdStatus$1);
            if (objE == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objE);
        }
        String str = (String) objE;
        return str == null ? "超时还没回来" : str;
    }

    public final BridgeWebView f(String url, Context context) {
        Intrinsics.h(url, "url");
        b.f46145a.g("getWebView() preload --> url = " + url + "  ## mCurrentH5Url = " + f46137b);
        if (n.f63887a.f(f46138c)) {
            BridgeWebView bridgeWebView = f46138c;
            if (bridgeWebView == null) {
                return null;
            }
            h(bridgeWebView);
        }
        if (Build.VERSION.SDK_INT >= 36) {
            if (context == null) {
                return null;
            }
            return c(context);
        }
        if (f46138c == null) {
            if (context == null) {
                context = Utils.a().getApplicationContext();
            }
            Intrinsics.e(context);
            BridgeWebView bridgeWebViewC = c(context);
            if (bridgeWebViewC == null) {
                return null;
            }
            f46138c = bridgeWebViewC;
        }
        if (!i(url)) {
            g(url);
        }
        f46139d = true;
        return f46138c;
    }

    public final void h(WebView webView) {
        Intrinsics.h(webView, "webView");
        if (f46138c == webView) {
            f46138c = null;
            f46137b = null;
            f46139d = false;
            b.f46145a.g("invalidate() --> 清空失效的广告缓存 WebView");
        }
    }

    public final boolean i(String url) {
        Intrinsics.h(url, "url");
        return Build.VERSION.SDK_INT < 36 && TextUtils.equals(url, f46137b);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00df  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object j(String str, Continuation continuation) {
        TWebViewAdCacheManager$isWebviewLoaded$1 tWebViewAdCacheManager$isWebviewLoaded$1;
        if (continuation instanceof TWebViewAdCacheManager$isWebviewLoaded$1) {
            tWebViewAdCacheManager$isWebviewLoaded$1 = (TWebViewAdCacheManager$isWebviewLoaded$1) continuation;
            int i11 = tWebViewAdCacheManager$isWebviewLoaded$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                tWebViewAdCacheManager$isWebviewLoaded$1.label = i11 - Integer.MIN_VALUE;
            } else {
                tWebViewAdCacheManager$isWebviewLoaded$1 = new TWebViewAdCacheManager$isWebviewLoaded$1(this, continuation);
            }
        } else {
            tWebViewAdCacheManager$isWebviewLoaded$1 = new TWebViewAdCacheManager$isWebviewLoaded$1(this, continuation);
        }
        Object objE = tWebViewAdCacheManager$isWebviewLoaded$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = tWebViewAdCacheManager$isWebviewLoaded$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                ResultKt.b(objE);
                return Boxing.a(false);
            }
            if (i12 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objE);
            Boolean bool = (Boolean) objE;
            return Boxing.a(bool != null ? bool.booleanValue() : false);
        }
        ResultKt.b(objE);
        if (n.f63887a.f(f46138c)) {
            BridgeWebView bridgeWebView = f46138c;
            if (bridgeWebView == null) {
                return Boxing.a(false);
            }
            h(bridgeWebView);
            return Boxing.a(false);
        }
        if (Build.VERSION.SDK_INT >= 36) {
            b.f46145a.g("isWebviewLoaded API 36+，因为 WebView 无法创建，所以这里返回取决于是否需要加载");
            return Boxing.a(true);
        }
        b bVar = b.f46145a;
        bVar.g("isWebviewLoaded url = " + str + " ## mCurrentH5Url = " + f46137b);
        if (TextUtils.isEmpty(str)) {
            return Boxing.a(false);
        }
        if (f46138c == null) {
            bVar.g("isWebviewLoaded mCurrentWebView = null");
            return Boxing.a(false);
        }
        if (Intrinsics.c(str, f46137b)) {
            TWebViewAdCacheManager$isWebviewLoaded$3 tWebViewAdCacheManager$isWebviewLoaded$3 = new TWebViewAdCacheManager$isWebviewLoaded$3(null);
            tWebViewAdCacheManager$isWebviewLoaded$1.label = 2;
            objE = TimeoutKt.e(3000L, tWebViewAdCacheManager$isWebviewLoaded$3, tWebViewAdCacheManager$isWebviewLoaded$1);
            if (objE == objF) {
                return objF;
            }
            Boolean bool2 = (Boolean) objE;
            return Boxing.a(bool2 != null ? bool2.booleanValue() : false);
        }
        bVar.g("isWebviewLoaded mCurrentWebView != url");
        if (str != null) {
            a2 a2VarC = y0.c();
            TWebViewAdCacheManager$isWebviewLoaded$2$1 tWebViewAdCacheManager$isWebviewLoaded$2$1 = new TWebViewAdCacheManager$isWebviewLoaded$2$1(str, null);
            tWebViewAdCacheManager$isWebviewLoaded$1.label = 1;
            if (i.g(a2VarC, tWebViewAdCacheManager$isWebviewLoaded$2$1, tWebViewAdCacheManager$isWebviewLoaded$1) == objF) {
                return objF;
            }
        }
        return Boxing.a(false);
    }

    public final void k(String url) {
        Intrinsics.h(url, "url");
        b bVar = b.f46145a;
        bVar.g("preload() --> url = " + url + "  ## mCurrentH5Url = " + f46137b);
        if (!n.f63887a.g()) {
            bVar.g("preload() --> renderer 异常后当前进程关闭预加载");
            return;
        }
        if (TextUtils.equals(url, f46137b)) {
            bVar.g("preload() --> 正在缓存的地址，无需重复创建 --> url = " + url);
            return;
        }
        if (Build.VERSION.SDK_INT >= 36) {
            bVar.g("preload() --> API 36+，跳过 WebView 预创建 --> url = " + url);
            return;
        }
        if (f46139d) {
            bVar.g("preload() --> WebView 使用中，仅记录目标 URL，待归还后再加载 --> url = " + url);
            return;
        }
        if (f46138c == null) {
            Context applicationContext = Utils.a().getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            BridgeWebView bridgeWebViewC = c(applicationContext);
            if (bridgeWebViewC == null) {
                bVar.g("preload() --> 设备缺少 WebView 实现，跳过预加载 --> url = " + url);
                return;
            }
            f46138c = bridgeWebViewC;
            bVar.g("preloadInternal() --> 不存在创建新的对象");
        }
        g(url);
    }

    public final void l(BridgeWebView webView, String url) {
        Intrinsics.h(webView, "webView");
        Intrinsics.h(url, "url");
        if (n.f63887a.f(webView)) {
            h(webView);
            return;
        }
        if (Build.VERSION.SDK_INT >= 36) {
            d(webView);
            return;
        }
        ViewParent parent = webView.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(webView);
        }
        f46139d = false;
        b bVar = b.f46145a;
        bVar.g("recycle() --> WebView 归还缓存池 --> url = " + url);
        String str = f46137b;
        if (TextUtils.equals(str, url) || str == null || str.length() == 0) {
            bVar.g("recycle() --> 检测到待加载 URL 一致 mCurrentWebView = " + f46138c);
            return;
        }
        bVar.g("recycle() --> 检测到待加载 URL，补触 preload --> url = " + str);
        g(str);
    }
}
