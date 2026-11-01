package com.transsion.ad.web.cct;

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.appcompat.app.AppCompatActivity;
import com.transsion.ad.MBAd;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import oi.a;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0015¨\u0006\b"}, d2 = {"Lcom/transsion/ad/web/cct/CCTWebviewActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CCTWebviewActivity extends AppCompatActivity {
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (MBAd.f41751a.g()) {
            a.e(a.f71022a, "CCTWebviewActivity --> openH5InCustomTab() --> 降级处理", 0, false, 6, null);
        }
        setContentView(R$layout.activity_cct_webview_layout);
        Intent intent = getIntent();
        String stringExtra = intent != null ? intent.getStringExtra("extra.url") : null;
        WebView webView = (WebView) findViewById(R$id.webview);
        if (webView != null) {
            webView.setWebViewClient(new WebViewClient());
        }
        WebSettings settings = webView != null ? webView.getSettings() : null;
        if (settings != null) {
            settings.setJavaScriptEnabled(true);
        }
        if (webView != null) {
            if (stringExtra == null) {
                stringExtra = "";
            }
            webView.loadUrl(stringExtra);
        }
    }
}
