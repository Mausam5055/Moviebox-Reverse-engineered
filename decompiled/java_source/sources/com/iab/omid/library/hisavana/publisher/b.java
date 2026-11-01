package com.iab.omid.library.hisavana.publisher;

import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.hisavana.adsession.d;
import com.iab.omid.library.hisavana.adsession.g;
import com.iab.omid.library.hisavana.adsession.h;
import ie.c;
import ie.f;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class b extends AdSessionStatePublisher {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WebView f33610f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Long f33611g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Map f33612h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f33613i;

    class a extends WebViewClient {
        a() {
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Log.w("NativeBridge", "WebView renderer gone: " + renderProcessGoneDetail.toString() + "for WebView: " + webView);
            if (b.this.s() == webView) {
                Log.w("NativeBridge", "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");
                b.this.c(null);
            }
            webView.destroy();
            return true;
        }
    }

    /* JADX INFO: renamed from: com.iab.omid.library.hisavana.publisher.b$b, reason: collision with other inner class name */
    class RunnableC0459b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WebView f33615a;

        RunnableC0459b() {
            this.f33615a = b.this.f33610f;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f33615a.destroy();
        }
    }

    public b(String str, Map map, String str2) {
        super(str);
        this.f33611g = null;
        this.f33612h = map;
        this.f33613i = str2;
    }

    @Override // com.iab.omid.library.hisavana.publisher.AdSessionStatePublisher
    public void f(h hVar, d dVar) {
        JSONObject jSONObject = new JSONObject();
        Map mapE = dVar.e();
        for (String str : mapE.keySet()) {
            c.i(jSONObject, str, ((g) mapE.get(str)).f());
        }
        g(hVar, dVar, jSONObject);
    }

    @Override // com.iab.omid.library.hisavana.publisher.AdSessionStatePublisher
    public void l() {
        super.l();
        new Handler().postDelayed(new RunnableC0459b(), Math.max(4000 - (this.f33611g == null ? 4000L : TimeUnit.MILLISECONDS.convert(f.b() - this.f33611g.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f33610f = null;
    }

    @Override // com.iab.omid.library.hisavana.publisher.AdSessionStatePublisher
    public void u() {
        super.u();
        w();
    }

    void w() {
        WebView webView = new WebView(com.iab.omid.library.hisavana.internal.g.c().a());
        this.f33610f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f33610f.getSettings().setAllowContentAccess(false);
        this.f33610f.getSettings().setAllowFileAccess(false);
        this.f33610f.setWebViewClient(new a());
        c(this.f33610f);
        com.iab.omid.library.hisavana.internal.h.a().o(this.f33610f, this.f33613i);
        for (String str : this.f33612h.keySet()) {
            com.iab.omid.library.hisavana.internal.h.a().p(this.f33610f, ((g) this.f33612h.get(str)).c().toExternalForm(), str);
        }
        this.f33611g = Long.valueOf(f.b());
    }
}
