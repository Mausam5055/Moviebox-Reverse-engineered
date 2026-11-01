package com.iab.omid.library.mmadbridge.publisher;

import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.mmadbridge.adsession.d;
import com.iab.omid.library.mmadbridge.internal.g;
import com.iab.omid.library.mmadbridge.internal.h;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import oe.c;
import oe.f;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class b extends AdSessionStatePublisher {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WebView f33730g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Long f33731h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Map f33732i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f33733j;

    class a extends WebViewClient {
        a() {
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Log.w("NativeBridge", "WebView renderer gone: " + renderProcessGoneDetail.toString() + "for WebView: " + webView);
            if (b.this.w() == webView) {
                Log.w("NativeBridge", "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");
                b.this.c(null);
            }
            webView.destroy();
            return true;
        }
    }

    /* JADX INFO: renamed from: com.iab.omid.library.mmadbridge.publisher.b$b, reason: collision with other inner class name */
    class RunnableC0461b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WebView f33735a;

        RunnableC0461b() {
            this.f33735a = b.this.f33730g;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f33735a.destroy();
        }
    }

    public b(String str, Map map, String str2) {
        super(str);
        this.f33731h = null;
        this.f33732i = map;
        this.f33733j = str2;
    }

    void A() {
        WebView webView = new WebView(g.c().a());
        this.f33730g = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f33730g.getSettings().setAllowContentAccess(false);
        this.f33730g.getSettings().setAllowFileAccess(false);
        this.f33730g.setWebViewClient(new a());
        c(this.f33730g);
        h.a().p(this.f33730g, this.f33733j);
        for (String str : this.f33732i.keySet()) {
            h.a().q(this.f33730g, ((com.iab.omid.library.mmadbridge.adsession.g) this.f33732i.get(str)).c().toExternalForm(), str);
        }
        this.f33731h = Long.valueOf(f.b());
    }

    @Override // com.iab.omid.library.mmadbridge.publisher.AdSessionStatePublisher
    public void f(com.iab.omid.library.mmadbridge.adsession.h hVar, d dVar) {
        JSONObject jSONObject = new JSONObject();
        Map mapF = dVar.f();
        for (String str : mapF.keySet()) {
            c.i(jSONObject, str, ((com.iab.omid.library.mmadbridge.adsession.g) mapF.get(str)).f());
        }
        g(hVar, dVar, jSONObject);
    }

    @Override // com.iab.omid.library.mmadbridge.publisher.AdSessionStatePublisher
    public void o() {
        super.o();
        new Handler().postDelayed(new RunnableC0461b(), Math.max(4000 - (this.f33731h == null ? 4000L : TimeUnit.MILLISECONDS.convert(f.b() - this.f33731h.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f33730g = null;
    }

    @Override // com.iab.omid.library.mmadbridge.publisher.AdSessionStatePublisher
    public void y() {
        super.y();
        A();
    }
}
