package com.mbridge.msdk.splash.manager;

import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.splash.view.MBSplashView;
import com.mbridge.msdk.splash.view.MBSplashWebview;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f37517a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f37518b;

    class a extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f37519a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MBSplashView f37520b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37521c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f37522d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f37523e;

        a(c cVar, MBSplashView mBSplashView, CampaignEx campaignEx, String str, long j11) {
            this.f37519a = cVar;
            this.f37520b = mBSplashView;
            this.f37521c = campaignEx;
            this.f37522d = str;
            this.f37523e = j11;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11) {
            super.a(webView, i11);
            c cVar = this.f37519a;
            if (cVar != null) {
                cVar.a(i11);
            }
            if (i11 == 1) {
                g.this.f37517a = true;
                this.f37520b.setH5Ready(true);
                com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f37521c, this.f37522d, "", this.f37523e, 1);
                com.mbridge.msdk.splash.report.a.a(1, "", this.f37522d, this.f37521c);
                return;
            }
            g.this.f37517a = false;
            this.f37520b.setH5Ready(false);
            com.mbridge.msdk.splash.report.a.a(2, "readyState 2", this.f37522d, this.f37521c);
            com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f37521c, this.f37522d, "readyState 2", this.f37523e, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11, String str, String str2) {
            super.a(webView, i11, str, str2);
            c cVar = this.f37519a;
            if (cVar != null) {
                cVar.onError(str);
            }
            g.this.b();
            this.f37520b.setH5Ready(false);
            com.mbridge.msdk.splash.report.a.a(2, "error code:" + i11 + str, this.f37522d, this.f37521c);
            com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f37521c, this.f37522d, "error code:" + i11 + str, this.f37523e, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            c cVar = this.f37519a;
            if (cVar != null) {
                cVar.onError(sslError.toString());
            }
            g.this.b();
            this.f37520b.setH5Ready(false);
            com.mbridge.msdk.splash.report.a.a(2, "error url:" + sslError.getUrl(), this.f37522d, this.f37521c);
            com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f37521c, this.f37522d, "error url:" + sslError.getUrl(), this.f37523e, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            c cVar = this.f37519a;
            if (cVar != null) {
                cVar.a();
            }
            g.this.f37518b = true;
            if (!this.f37521c.isHasMBTplMark()) {
                this.f37520b.setH5Ready(true);
                com.mbridge.msdk.splash.report.a.a(1, "", this.f37522d, this.f37521c);
                com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f37521c, this.f37522d, "", this.f37523e, 1);
            }
            com.mbridge.msdk.splash.signal.c.a(webView);
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final g f37525a = new g(null);
    }

    public interface c {
        void a();

        void a(int i11);

        void onError(String str);
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f37526a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f37527b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CampaignEx f37528c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f37529d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f37530e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f37531f;

        public CampaignEx a() {
            return this.f37528c;
        }

        public void a(int i11) {
            this.f37531f = i11;
        }

        public void a(CampaignEx campaignEx) {
            this.f37528c = campaignEx;
        }

        public void a(String str) {
            this.f37529d = str;
        }

        public void a(boolean z10) {
            this.f37530e = z10;
        }

        public int b() {
            return this.f37531f;
        }

        public void b(String str) {
            this.f37526a = str;
        }

        public String c() {
            return this.f37529d;
        }

        public void c(String str) {
            this.f37527b = str;
        }

        public String d() {
            return this.f37526a;
        }

        public String e() {
            return this.f37527b;
        }

        public boolean f() {
            return this.f37530e;
        }
    }

    private g() {
        this.f37517a = false;
        this.f37518b = false;
    }

    /* synthetic */ g(a aVar) {
        this();
    }

    public static g a() {
        return b.f37525a;
    }

    public void a(MBSplashView mBSplashView, d dVar, c cVar) {
        if (mBSplashView == null || dVar == null) {
            return;
        }
        String strE = dVar.e();
        String strD = dVar.d();
        CampaignEx campaignExA = dVar.a();
        String strC = dVar.c();
        boolean zF = dVar.f();
        int iB = dVar.b();
        MBSplashWebview splashWebview = mBSplashView.getSplashWebview();
        if (splashWebview == null) {
            return;
        }
        com.mbridge.msdk.splash.signal.b bVar = new com.mbridge.msdk.splash.signal.b(mBSplashView.getContext(), strD, strE);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignExA);
        bVar.a(arrayList);
        bVar.a(zF ? 1 : 0);
        bVar.b(iB);
        mBSplashView.setSplashSignalCommunicationImpl(bVar);
        String requestIdNotice = TextUtils.isEmpty(campaignExA.getRequestId()) ? campaignExA.getRequestIdNotice() : campaignExA.getRequestId();
        String requestId = splashWebview.getRequestId();
        o0.b("WebViewRenderManager", "CampaignEx RequestId = " + requestIdNotice + " WebView RequestId = " + requestId);
        if (!TextUtils.isEmpty(requestId) && requestId.equals(requestIdNotice) && (this.f37517a || this.f37518b)) {
            mBSplashView.setH5Ready(true);
            if (cVar != null) {
                cVar.a(1);
                return;
            }
            return;
        }
        b();
        splashWebview.setRequestId(requestIdNotice);
        com.mbridge.msdk.splash.report.a.b(strE, campaignExA);
        long jCurrentTimeMillis = System.currentTimeMillis();
        splashWebview.setWebViewListener(new a(cVar, mBSplashView, campaignExA, strE, jCurrentTimeMillis));
        if (!splashWebview.isDestoryed()) {
            splashWebview.loadUrl(strC);
        } else {
            mBSplashView.setH5Ready(false);
            com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignExA, strE, "webview had destory", jCurrentTimeMillis, 3);
        }
    }

    public void b() {
        this.f37517a = false;
        this.f37518b = false;
    }
}
