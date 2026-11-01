package com.mbridge.msdk.foundation.webview;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.mbridge.msdk.activity.MBCommonActivity;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.out.BaseTrackingListener;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.util.ArrayList;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
public class a implements BrowserView.e {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static String f35872o = "a";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f35873a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f35875c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f35876d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BaseTrackingListener f35877e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BrowserView f35878f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CampaignEx f35879g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.mbridge.msdk.click.a f35880h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Context f35881i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private JumpLoaderResult f35883k;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f35886n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f35874b = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f35884l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Runnable f35885m = new RunnableC0496a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Handler f35882j = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.webview.a$a, reason: collision with other inner class name */
    class RunnableC0496a implements Runnable {
        RunnableC0496a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.b(a.f35872o, "webview js！超时上限：" + a.this.f35873a + "ms");
            if (a.this.f35880h != null && a.this.f35883k != null) {
                a.this.f35883k.setSuccess(false);
                a.this.f35883k.setUrl(a.this.f35875c);
                a.this.f35883k.setType(2);
                a.this.f35883k.setExceptionMsg("linktype 8 time out");
                a.this.f35880h.a(a.this.f35883k, a.this.f35879g, 1, false);
            }
            a aVar = a.this;
            if (aVar.d(null, aVar.f35875c) && !a.this.f35884l) {
                a.this.f35884l = true;
                a aVar2 = a.this;
                aVar2.a(aVar2.f35881i, a.this.f35875c, a.this.f35879g);
            }
            if (a.this.f35877e != null) {
                a.this.f35877e.onFinishRedirection(a.this.f35879g, a.this.f35875c);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f35888a;

        b(String str) {
            this.f35888a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f35880h != null && a.this.f35883k != null) {
                a.this.f35883k.setSuccess(true);
                a.this.f35883k.setUrl(this.f35888a);
                a.this.f35883k.setType(2);
                a.this.f35880h.a(a.this.f35883k, a.this.f35879g, 1, true);
            }
            if (a.this.f35877e != null) {
                a.this.f35877e.onFinishRedirection(a.this.f35879g, this.f35888a);
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f35890a;

        c(String str) {
            this.f35890a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f35877e != null) {
                a.this.f35877e.onFinishRedirection(a.this.f35879g, this.f35890a);
            }
            if (a.this.f35880h == null || a.this.f35883k == null) {
                return;
            }
            a.this.f35883k.setSuccess(true);
            a.this.f35883k.setUrl(this.f35890a);
            a.this.f35883k.setType(2);
            a.this.f35880h.a(a.this.f35883k, a.this.f35879g, 1, true);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f35892a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f35893b;

        d(String str, String str2) {
            this.f35892a = str;
            this.f35893b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f35877e != null) {
                a.this.f35877e.onFinishRedirection(a.this.f35879g, this.f35892a);
            }
            if (a.this.f35880h == null || a.this.f35883k == null) {
                return;
            }
            a.this.f35883k.setSuccess(false);
            a.this.f35883k.setUrl(this.f35892a);
            a.this.f35883k.setType(2);
            a.this.f35883k.setExceptionMsg(this.f35893b);
            a.this.f35880h.a(a.this.f35883k, a.this.f35879g, 1, true);
        }
    }

    public a(Context context, CampaignEx campaignEx, com.mbridge.msdk.click.a aVar, BrowserView browserView, BaseTrackingListener baseTrackingListener) {
        this.f35873a = 10000;
        this.f35883k = null;
        this.f35881i = context;
        this.f35879g = campaignEx;
        this.f35878f = browserView;
        this.f35877e = baseTrackingListener;
        g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        gVarD = gVarD == null ? h.b().a() : gVarD;
        this.f35880h = aVar;
        this.f35883k = new JumpLoaderResult();
        this.f35873a = (int) gVarD.o0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, CampaignEx campaignEx) {
        if (context == null) {
            return;
        }
        if (campaignEx != null) {
            campaignEx.getCurrentLocalRid();
        }
        try {
            int i11 = MBCommonActivity.f34036e;
            Intent intent = new Intent(context, (Class<?>) MBCommonActivity.class);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            com.mbridge.msdk.foundation.webview.b.f35895a.put(str, this.f35878f);
            if (s0.a.d(str)) {
                str = "https://play.google.com/store/apps/details?id=" + str.replace(MiniAppConfigHelper.DEFAULT_JUMP_STORE_DEEPLINK, "");
            }
            intent.putExtra("url", str);
            o0.c("url", "webview url = " + str);
            intent.setFlags(805306368);
            intent.putExtra("mvcommon", campaignEx);
            context.startActivity(intent);
        } catch (Exception unused) {
            s0.a(context, str, this.f35877e, campaignEx, new ArrayList());
        }
    }

    private void c() {
        this.f35882j.removeCallbacks(this.f35885m);
    }

    private void d() {
        this.f35882j.postDelayed(this.f35885m, this.f35873a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(WebView webView, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            Uri uri = Uri.parse(str);
            if (!uri.getScheme().equals("http") && !uri.getScheme().equals("https")) {
                if (uri.getScheme().equals("intent")) {
                    Intent uri2 = Intent.parseUri(str, 1);
                    try {
                        String str2 = uri2.getPackage();
                        if (!TextUtils.isEmpty(str2) && this.f35881i.getPackageManager().getLaunchIntentForPackage(str2) != null) {
                            return false;
                        }
                    } catch (Throwable th2) {
                        o0.b(f35872o, th2.getMessage());
                    }
                    try {
                        String stringExtra = uri2.getStringExtra("browser_fallback_url");
                        if (!TextUtils.isEmpty(stringExtra)) {
                            Uri uri3 = Uri.parse(str);
                            if (uri3.getScheme().equals("http") || uri3.getScheme().equals("https")) {
                                return true;
                            }
                            str = stringExtra;
                        }
                    } catch (Throwable th3) {
                        o0.b(f35872o, th3.getMessage());
                    }
                }
                if (com.mbridge.msdk.click.c.d(this.f35881i, str)) {
                    o0.b(f35872o, "openDeepLink");
                    return false;
                }
            }
            return true;
        } catch (Throwable th4) {
            o0.b(f35872o, th4.getMessage());
            return true;
        }
    }

    private boolean e(WebView webView, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Uri uri = Uri.parse(str);
            if (!uri.getScheme().equals("http") && !uri.getScheme().equals("https")) {
                if (uri.getScheme().equals("intent")) {
                    Intent uri2 = Intent.parseUri(str, 1);
                    try {
                        String str2 = uri2.getPackage();
                        if (!TextUtils.isEmpty(str2) && this.f35881i.getPackageManager().getLaunchIntentForPackage(str2) != null) {
                            uri2.setFlags(ASTNode.DEOP);
                            this.f35881i.startActivity(uri2);
                            this.f35884l = true;
                            return true;
                        }
                        try {
                            String stringExtra = uri2.getStringExtra("browser_fallback_url");
                            if (!TextUtils.isEmpty(stringExtra)) {
                                Uri uri3 = Uri.parse(str);
                                if (!uri3.getScheme().equals("http") && !uri3.getScheme().equals("https")) {
                                    str = stringExtra;
                                }
                                webView.loadUrl(stringExtra);
                                return false;
                            }
                        } catch (Throwable th2) {
                            o0.b(f35872o, th2.getMessage());
                        }
                    } catch (Throwable th3) {
                        o0.b(f35872o, th3.getMessage());
                    }
                    o0.b(f35872o, th.getMessage());
                    return false;
                }
                if (com.mbridge.msdk.click.c.d(this.f35881i, str)) {
                    o0.b(f35872o, "openDeepLink");
                    this.f35884l = true;
                    return true;
                }
            }
            return false;
        } catch (Throwable th4) {
            o0.b(f35872o, th4.getMessage());
            return false;
        }
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
    public void a() {
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
    public void a(WebView webView, int i11, String str, String str2) {
        o0.d(f35872o, str);
        c();
        com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new d(str2, str));
        if (!d(webView, str2) || this.f35884l) {
            return;
        }
        this.f35884l = true;
        a(this.f35881i, str2, this.f35879g);
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
    public void a(WebView webView, String str) {
        o0.b(f35872o, "onPageFinished1  " + str);
        if (this.f35874b) {
            this.f35886n = 0L;
            this.f35874b = false;
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new c(str));
            if (TextUtils.isEmpty(str)) {
                return;
            }
            c();
            Uri uri = Uri.parse(str);
            if ((uri.getScheme().equals("http") || uri.getScheme().equals("https")) && !this.f35884l) {
                this.f35884l = true;
                a(this.f35881i, str, this.f35879g);
            }
        }
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
    public void a(WebView webView, String str, Bitmap bitmap) {
        if (this.f35886n == 0) {
            this.f35886n = System.currentTimeMillis();
            if (!this.f35876d) {
                this.f35876d = true;
                d();
            }
            this.f35884l = false;
        }
        this.f35875c = str;
        this.f35874b = true;
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
    public boolean b(WebView webView, String str) {
        o0.b(f35872o, "shouldOverrideUrlLoading1  " + str);
        this.f35874b = false;
        if (s0.a.b(str) && s0.a.a(this.f35881i, str, null)) {
            this.f35884l = true;
        }
        boolean zE = e(webView, str);
        if (zE) {
            this.f35886n = 0L;
            this.f35874b = false;
            c();
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new b(str));
        }
        return zE;
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
    public void c(WebView webView, String str) {
        if (this.f35886n == 0) {
            this.f35886n = System.currentTimeMillis();
            if (!this.f35876d) {
                this.f35876d = true;
                d();
            }
        }
        this.f35875c = str;
        this.f35874b = true;
    }
}
