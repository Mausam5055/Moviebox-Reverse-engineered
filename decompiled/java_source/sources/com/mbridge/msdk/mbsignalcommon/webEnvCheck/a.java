package com.mbridge.msdk.mbsignalcommon.webEnvCheck;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.base.b;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile Boolean f36516a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile Handler f36517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Boolean f36518c;

    /* JADX INFO: renamed from: com.mbridge.msdk.mbsignalcommon.webEnvCheck.a$a, reason: collision with other inner class name */
    class RunnableC0516a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f36519a;

        RunnableC0516a(Context context) {
            this.f36519a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.f36516a == null) {
                try {
                    Boolean unused = a.f36516a = Boolean.valueOf(a.a(this.f36519a));
                } catch (Exception unused2) {
                    Boolean unused3 = a.f36516a = Boolean.FALSE;
                }
            }
        }
    }

    private static void a(WebView webView) {
        try {
            webView.destroy();
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("MBWebViewChecker", "destroy webview error", e11);
            }
        }
    }

    public static boolean a(Context context) {
        WebView webView;
        try {
            webView = new WebView(context);
            webView.setWebViewClient(new b());
        } catch (Exception unused) {
            webView = null;
        }
        if (webView == null) {
            return false;
        }
        a(webView);
        return true;
    }

    public static boolean b(Context context) {
        g gVarB;
        try {
            gVarB = h.b().b(c.m().b());
        } catch (Exception unused) {
            gVarB = null;
        }
        if (gVarB != null) {
            f36518c = Boolean.valueOf(gVarB.C0());
        } else {
            f36518c = Boolean.FALSE;
        }
        Boolean bool = f36518c;
        if (bool == null || !bool.booleanValue()) {
            return true;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            if (f36516a == null) {
                try {
                    f36516a = Boolean.valueOf(a(context));
                } catch (Exception unused2) {
                    f36516a = Boolean.FALSE;
                }
            }
            if (f36516a == null) {
                f36516a = new Boolean(false);
            }
            return f36516a.booleanValue();
        }
        if (f36516a == null && f36517b == null) {
            f36517b = new Handler(Looper.getMainLooper());
            f36517b.post(new RunnableC0516a(context));
        }
        if (f36516a == null) {
            return true;
        }
        return f36516a.booleanValue();
    }
}
