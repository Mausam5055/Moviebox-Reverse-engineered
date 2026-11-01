package com.iab.omid.library.vungle.publisher;

import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.vungle.adsession.d;
import com.iab.omid.library.vungle.adsession.g;
import com.iab.omid.library.vungle.adsession.h;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import ue.c;
import ue.f;

/* JADX INFO: loaded from: classes4.dex */
public class b extends AdSessionStatePublisher {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WebView f33840f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Long f33841g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Map f33842h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f33843i;

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

    /* JADX INFO: renamed from: com.iab.omid.library.vungle.publisher.b$b, reason: collision with other inner class name */
    class RunnableC0463b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WebView f33845a;

        RunnableC0463b() {
            this.f33845a = b.this.f33840f;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f33845a.destroy();
        }
    }

    public b(String str, Map map, String str2) {
        super(str);
        this.f33841g = null;
        this.f33842h = map;
        this.f33843i = str2;
    }

    @Override // com.iab.omid.library.vungle.publisher.AdSessionStatePublisher
    public void f(h hVar, d dVar) {
        JSONObject jSONObject = new JSONObject();
        Map mapF = dVar.f();
        for (String str : mapF.keySet()) {
            c.i(jSONObject, str, ((g) mapF.get(str)).e());
        }
        g(hVar, dVar, jSONObject);
    }

    @Override // com.iab.omid.library.vungle.publisher.AdSessionStatePublisher
    public void l() {
        super.l();
        new Handler().postDelayed(new RunnableC0463b(), Math.max(4000 - (this.f33841g == null ? 4000L : TimeUnit.MILLISECONDS.convert(f.b() - this.f33841g.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f33840f = null;
    }

    @Override // com.iab.omid.library.vungle.publisher.AdSessionStatePublisher
    public void u() {
        super.u();
        w();
    }

    void w() {
        WebView webView = new WebView(com.iab.omid.library.vungle.internal.g.c().a());
        this.f33840f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f33840f.getSettings().setAllowContentAccess(false);
        this.f33840f.getSettings().setAllowFileAccess(false);
        this.f33840f.setWebViewClient(new a());
        c(this.f33840f);
        com.iab.omid.library.vungle.internal.h.a().o(this.f33840f, this.f33843i);
        for (String str : this.f33842h.keySet()) {
            com.iab.omid.library.vungle.internal.h.a().p(this.f33840f, ((g) this.f33842h.get(str)).b().toExternalForm(), str);
        }
        this.f33841g = Long.valueOf(f.b());
    }
}
