package gm;

import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import com.transsion.lib_web.cache.TWebViewAdCacheManager;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final n f63887a = new n();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Handler f63888b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map f63889c = Collections.synchronizedMap(new WeakHashMap());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile boolean f63890d = true;

    private n() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(WebView webView, String str) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.lib_web.cache.a.f46142a.d(webView);
            TWebViewAdCacheManager.f46136a.h(webView);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Exception e11) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(e11));
        } catch (LinkageError e12) {
            Result.Companion companion3 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(e12));
        }
        try {
            ViewParent parent = webView.getParent();
            Unit unit = null;
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(webView);
                unit = Unit.f67061a;
            }
            Result.m454constructorimpl(unit);
        } catch (Exception e13) {
            Result.Companion companion4 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(e13));
        } catch (LinkageError e14) {
            Result.Companion companion5 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(e14));
        }
        try {
            webView.destroy();
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Exception e15) {
            Result.Companion companion6 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(e15));
        } catch (LinkageError e16) {
            Result.Companion companion7 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(e16));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            i.f63883a.d("WebViewRenderProcessGuard --> destroy failed, owner = " + str + ", error = " + thM457exceptionOrNullimpl.getMessage());
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(Function0 function0) {
        function0.invoke();
    }

    private final void h(RenderProcessGoneDetail renderProcessGoneDetail, String str) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(Build.VERSION.SDK_INT >= 26 ? WebView.getCurrentWebViewPackage() : null);
        } catch (Exception e11) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(e11));
        } catch (LinkageError e12) {
            Result.Companion companion3 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(e12));
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = null;
        }
        PackageInfo packageInfo = (PackageInfo) objM454constructorimpl;
        Map mapM = MapsKt.m(TuplesKt.a("owner", str), TuplesKt.a("did_crash", renderProcessGoneDetail != null ? Boolean.valueOf(renderProcessGoneDetail.didCrash()).toString() : null), TuplesKt.a("renderer_priority", renderProcessGoneDetail != null ? Integer.valueOf(renderProcessGoneDetail.rendererPriorityAtExit()).toString() : null), TuplesKt.a("webview_package", packageInfo != null ? packageInfo.packageName : null), TuplesKt.a("webview_version", packageInfo != null ? packageInfo.versionName : null));
        try {
            hj.i.f64505a.s("web", "app_perf", mapM);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Exception e13) {
            Result.Companion companion4 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(e13));
        } catch (LinkageError e14) {
            Result.Companion companion5 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(e14));
        }
        i.f63883a.d("WebViewRenderProcessGuard --> renderer gone, params = " + mapM);
    }

    public final boolean c(final WebView webView, RenderProcessGoneDetail renderProcessGoneDetail, final String owner) {
        boolean z10;
        Intrinsics.h(owner, "owner");
        f63890d = false;
        try {
            Result.Companion companion = Result.INSTANCE;
            f63887a.h(renderProcessGoneDetail, owner);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Exception e11) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(e11));
        } catch (LinkageError e12) {
            Result.Companion companion3 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(e12));
        }
        if (webView == null) {
            i.f63883a.d("WebViewRenderProcessGuard --> renderer gone, webView is null, owner = " + owner);
            return true;
        }
        Map destroyedWebViews = f63889c;
        Intrinsics.g(destroyedWebViews, "destroyedWebViews");
        synchronized (destroyedWebViews) {
            z10 = destroyedWebViews.put(webView, Boolean.TRUE) == null;
        }
        if (z10) {
            final Function0 function0 = new Function0() { // from class: gm.l
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return n.d(webView, owner);
                }
            };
            if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
                function0.invoke();
            } else {
                f63888b.post(new Runnable() { // from class: gm.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.e(function0);
                    }
                });
            }
            return true;
        }
        i.f63883a.e("WebViewRenderProcessGuard --> WebView already destroyed, owner = " + owner);
        return true;
    }

    public final boolean f(WebView webView) {
        return webView != null && f63889c.containsKey(webView);
    }

    public final boolean g() {
        return f63890d;
    }
}
