package com.mbridge.msdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import com.mbridge.msdk.click.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.c1;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.webview.BrowserView;
import com.mbridge.msdk.foundation.webview.b;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes4.dex */
public class DomainMBCommonActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f34025a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BrowserView.e f34026b = new a();
    protected BrowserView browserView;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CampaignEx f34027c;

    class a implements BrowserView.e {
        a() {
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
        public void a() {
            DomainMBCommonActivity.this.finish();
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
        public void a(WebView webView, int i11, String str, String str2) {
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
        public void a(WebView webView, String str) {
            o0.b("MBCommonActivity", "onPageFinished  " + str);
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
        public void a(WebView webView, String str, Bitmap bitmap) {
            o0.b("MBCommonActivity", "onPageStarted  " + str);
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
        public boolean b(WebView webView, String str) {
            o0.b("MBCommonActivity", "shouldOverrideUrlLoading  " + str);
            if (s0.a.b(str) && s0.a.a(DomainMBCommonActivity.this, str, null)) {
                DomainMBCommonActivity.this.finish();
            }
            return DomainMBCommonActivity.this.a(webView, str);
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
        public void c(WebView webView, String str) {
        }
    }

    private void a() {
        String stringExtra = getIntent().getStringExtra("url");
        this.f34025a = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            Toast.makeText(this, "Error: no data", 0).show();
            return;
        }
        this.f34027c = (CampaignEx) getIntent().getSerializableExtra("mvcommon");
        if (b.f35895a.containsKey(this.f34025a)) {
            BrowserView browserView = b.f35895a.get(this.f34025a);
            this.browserView = browserView;
            if (browserView != null) {
                browserView.setListener(this.f34026b);
            }
        } else {
            BrowserView browserView2 = new BrowserView(this, this.f34027c);
            this.browserView = browserView2;
            browserView2.setListener(this.f34026b);
            this.browserView.loadUrl(this.f34025a);
        }
        BrowserView browserView3 = this.browserView;
        if (browserView3 != null) {
            c1.a(browserView3);
            setContentView(this.browserView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(WebView webView, String str) {
        Intent uri;
        String str2;
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Uri uri2 = Uri.parse(str);
            if (!uri2.getScheme().equals("http") && !uri2.getScheme().equals("https")) {
                if (uri2.getScheme().equals("intent") || uri2.getScheme().equals("android-app")) {
                    String stringExtra = null;
                    if (uri2.getScheme().equals("intent")) {
                        uri = Intent.parseUri(str, 1);
                    } else {
                        uri = uri2.getScheme().equals("android-app") ? Intent.parseUri(str, 2) : null;
                    }
                    if (uri != null) {
                        uri.setComponent(null);
                        uri.setSelector(null);
                    }
                    if (uri == null) {
                        str2 = "";
                    } else {
                        try {
                            str2 = uri.getPackage();
                        } catch (Throwable th2) {
                            o0.b("MBCommonActivity", th2.getMessage());
                        }
                    }
                    if (!TextUtils.isEmpty(str2) && getPackageManager().getLaunchIntentForPackage(str2) != null) {
                        if (uri != null) {
                            uri.setFlags(ASTNode.DEOP);
                        }
                        startActivityForResult(uri, 0);
                        finish();
                        return true;
                    }
                    if (uri != null) {
                        try {
                            stringExtra = uri.getStringExtra("browser_fallback_url");
                        } catch (Throwable th3) {
                            o0.b("MBCommonActivity", th3.getMessage());
                        }
                    }
                    if (!TextUtils.isEmpty(stringExtra)) {
                        Uri uri3 = Uri.parse(str);
                        if (!uri3.getScheme().equals("http") && !uri3.getScheme().equals("https")) {
                            str = stringExtra;
                        }
                        webView.loadUrl(stringExtra);
                        return false;
                    }
                    o0.b("MBCommonActivity", th.getMessage());
                    return false;
                }
                if (c.d(this, str)) {
                    o0.b("MBCommonActivity", "openDeepLink");
                    finish();
                    return true;
                }
                if (!TextUtils.isEmpty(str)) {
                    return !(str.startsWith("http") || str.startsWith("https"));
                }
            }
            return false;
        } catch (Throwable th4) {
            o0.b("MBCommonActivity", th4.getMessage());
            return false;
        }
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        try {
            requestWindowFeature(1);
        } catch (Throwable th2) {
            o0.b("MBCommonActivity", th2.getMessage());
        }
        if (com.mbridge.msdk.foundation.controller.c.m().d() == null) {
            com.mbridge.msdk.foundation.controller.c.m().b(getApplicationContext());
        }
        com.mbridge.msdk.foundation.controller.c.m().a(this);
        a();
    }
}
