package com.mbridge.msdk.interstitial.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.activity.MBBaseActivity;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBInterstitialActivity extends MBBaseActivity implements com.mbridge.msdk.mbsignalcommon.mraid.b {
    public static final String INTENT_CAMAPIGN = "campaign";
    public static final String INTENT_UNIT_ID = "unitId";
    public static final long WATI_JS_INVOKE = 2000;
    public static final long WEB_LOAD_TIME = 15000;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private CampaignEx f35953h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private WindVaneWebView f35954i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ImageView f35955j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.mbridge.msdk.interstitial.controller.a.d f35956k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f35957l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.mbridge.msdk.mbsignalcommon.mraid.d f35958m;
    public ProgressBar mProgressBar;
    public String mUnitid;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f35959n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f35960o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f35961p;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private com.mbridge.msdk.click.a f35965t;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f35951f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f35952g = false;
    public boolean mIsMBPage = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Handler f35962q = new f();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    Runnable f35963r = new j();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    Runnable f35964s = new k();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressBar progressBar = MBInterstitialActivity.this.mProgressBar;
            if (progressBar != null) {
                progressBar.setVisibility(0);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressBar progressBar = MBInterstitialActivity.this.mProgressBar;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
        }
    }

    class c implements NativeListener.NativeTrackingListener {
        c() {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDismissLoading(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadFinish(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadProgress(int i11) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadStart(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            try {
                MBInterstitialActivity.this.hideLoading();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public boolean onInterceptDefaultLoadingDialog() {
            return false;
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            MBInterstitialActivity.this.hideLoading();
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onShowLoading(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            try {
                MBInterstitialActivity.this.showLoading();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(MBInterstitialActivity.this.f35954i, MBInterstitialActivity.this.f35954i.getLeft(), MBInterstitialActivity.this.f35954i.getTop(), MBInterstitialActivity.this.f35954i.getWidth(), MBInterstitialActivity.this.f35954i.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(MBInterstitialActivity.this.f35954i, MBInterstitialActivity.this.f35954i.getLeft(), MBInterstitialActivity.this.f35954i.getTop(), MBInterstitialActivity.this.f35954i.getWidth(), MBInterstitialActivity.this.f35954i.getHeight());
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(MBInterstitialActivity.this)).b(MBInterstitialActivity.this.f35953h.getId());
        }
    }

    class f extends Handler {
        f() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
        }
    }

    class g implements com.mbridge.msdk.foundation.feedback.a {
        g() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String string;
            MBInterstitialActivity.this.onPause();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("MBInterstitialActivity", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBInterstitialActivity.this.f35954i, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String string;
            MBInterstitialActivity.this.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("MBInterstitialActivity", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBInterstitialActivity.this.f35954i, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String string;
            MBInterstitialActivity.this.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("MBInterstitialActivity", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBInterstitialActivity.this.f35954i, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBInterstitialActivity.this.finish();
        }
    }

    class i extends com.mbridge.msdk.mbsignalcommon.listener.b {
        i() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11) {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11, String str, String str2) {
            try {
                MBInterstitialActivity.this.f35957l = true;
                if (MBInterstitialActivity.this.f35956k != null) {
                    MBInterstitialActivity.this.f35956k.a(str);
                }
                MBInterstitialActivity.this.a(3, str);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            MBInterstitialActivity.this.f35957l = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            try {
                if (MBInterstitialActivity.this.f35957l) {
                    return;
                }
                MBInterstitialActivity.this.a(1, "");
                MBInterstitialActivity mBInterstitialActivity = MBInterstitialActivity.this;
                if (mBInterstitialActivity.f35963r != null && mBInterstitialActivity.f35962q != null) {
                    MBInterstitialActivity.this.f35962q.removeCallbacks(MBInterstitialActivity.this.f35963r);
                }
                if (MBInterstitialActivity.this.f35956k != null) {
                    MBInterstitialActivity.this.f35956k.c();
                }
                MBInterstitialActivity mBInterstitialActivity2 = MBInterstitialActivity.this;
                if (!mBInterstitialActivity2.mIsMBPage) {
                    mBInterstitialActivity2.f35962q.postDelayed(MBInterstitialActivity.this.f35964s, 2000L);
                }
                MBInterstitialActivity.this.i();
            } catch (Exception e11) {
                e11.printStackTrace();
                if (MBInterstitialActivity.this.f35956k != null) {
                    MBInterstitialActivity.this.f35956k.a("load page failed");
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str, Bitmap bitmap) {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void b(WebView webView, int i11) {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public boolean b(WebView webView, String str) {
            return true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void c(WebView webView, int i11) {
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBInterstitialActivity.this.f35952g) {
                return;
            }
            MBInterstitialActivity.this.f35951f = true;
            if (MBInterstitialActivity.this.f35956k != null) {
                MBInterstitialActivity.this.f35956k.a("load page timeout");
                if (MBInterstitialActivity.this.f35954i != null) {
                    MBInterstitialActivity.this.f35954i.setVisibility(8);
                    MBInterstitialActivity.this.f35954i.setWebViewListener(null);
                    MBInterstitialActivity.this.f35954i.release();
                }
                MBInterstitialActivity.this.hideLoading();
            }
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBInterstitialActivity mBInterstitialActivity = MBInterstitialActivity.this;
            if (mBInterstitialActivity.mIsMBPage) {
                return;
            }
            if (mBInterstitialActivity.f35953h != null && MBInterstitialActivity.this.f35953h.isMraid()) {
                MBInterstitialActivity.this.m();
            }
            com.mbridge.msdk.interstitial.cache.a.a().a(MBInterstitialActivity.this.f35953h, MBInterstitialActivity.this.mUnitid);
            if (MBInterstitialActivity.this.f35951f) {
                return;
            }
            MBInterstitialActivity.this.f35952g = true;
            MBInterstitialActivity.this.hideLoading();
            MBInterstitialActivity.this.showWebView();
        }
    }

    class l implements com.mbridge.msdk.mbsignalcommon.mraid.d.b {
        l() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.d.b
        public void a(double d11) {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(MBInterstitialActivity.this.f35954i, d11);
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (MBInterstitialActivity.this.f35954i == null || MBInterstitialActivity.this.f35953h == null) {
                    return;
                }
                MBInterstitialActivity.this.f35954i.setVisibility(0);
                if (MBInterstitialActivity.this.f35953h.isMraid()) {
                    MBInterstitialActivity.this.k();
                }
                MBInterstitialActivity.this.j();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBInterstitialActivity.this.f35954i != null) {
                MBInterstitialActivity.this.f35954i.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i11, String str) {
        CampaignEx campaignEx = this.f35953h;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
        mVar.n(this.f35953h.getRequestId());
        mVar.o(this.f35953h.getRequestIdNotice());
        mVar.b(this.f35953h.getId());
        mVar.d(i11);
        mVar.e(String.valueOf(System.currentTimeMillis() - this.f35959n));
        mVar.g("");
        mVar.m(str);
        mVar.a("5");
        mVar.b(this.f35953h.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
        com.mbridge.msdk.foundation.same.report.g.b(mVar, this.mUnitid, this.f35953h);
    }

    private void a(String str) {
        CampaignEx mraidCampaign = getMraidCampaign();
        if (mraidCampaign != null) {
            new com.mbridge.msdk.foundation.same.report.h(getApplicationContext()).a(mraidCampaign.getRequestId(), mraidCampaign.getRequestIdNotice(), mraidCampaign.getId(), this.mUnitid, str, mraidCampaign.isBidCampaign());
        }
    }

    private void e() {
        g();
        n();
        f();
        h();
    }

    private void f() {
        try {
            if (com.mbridge.msdk.interstitial.controller.a.f35920r == null || TextUtils.isEmpty(this.mUnitid) || !com.mbridge.msdk.interstitial.controller.a.f35920r.containsKey(this.mUnitid)) {
                return;
            }
            this.f35956k = com.mbridge.msdk.interstitial.controller.a.f35920r.get(this.mUnitid);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void g() {
        Intent intent = getIntent();
        if (intent != null) {
            this.mUnitid = intent.getStringExtra("unitId");
            this.f35953h = (CampaignEx) intent.getSerializableExtra(INTENT_CAMAPIGN);
        }
        CampaignEx campaignEx = this.f35953h;
        if (campaignEx != null && campaignEx.isMraid()) {
            com.mbridge.msdk.mbsignalcommon.mraid.d dVar = new com.mbridge.msdk.mbsignalcommon.mraid.d(this);
            this.f35958m = dVar;
            dVar.c();
            this.f35958m.a(new l());
        }
        CampaignEx campaignEx2 = this.f35953h;
        if (campaignEx2 != null) {
            com.mbridge.msdk.click.c.a(this, campaignEx2.getMaitve(), this.f35953h.getMaitve_src());
        }
    }

    @SuppressLint({"NewApi"})
    private void h() {
        try {
            CampaignEx campaignEx = this.f35953h;
            if (campaignEx == null || (TextUtils.isEmpty(campaignEx.getHtmlUrl()) && !this.f35953h.isMraid())) {
                com.mbridge.msdk.interstitial.controller.a.d dVar = this.f35956k;
                if (dVar != null) {
                    dVar.a("htmlurl is null");
                    return;
                }
                return;
            }
            o0.c("MBInterstitialActivity", "url:" + this.f35953h.getHtmlUrl());
            goneWebView();
            this.f35954i.setWebViewListener(new i());
            String htmlUrl = this.f35953h.getHtmlUrl();
            if (this.f35953h.isMraid()) {
                File file = new File(this.f35953h.getMraid());
                if (file.exists() && file.isFile() && file.canRead()) {
                    htmlUrl = "file:////" + this.f35953h.getMraid();
                }
            }
            this.f35959n = System.currentTimeMillis();
            this.f35954i.loadUrl(htmlUrl);
            this.f35962q.postDelayed(this.f35963r, WEB_LOAD_TIME);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        String str;
        CampaignEx campaignEx = this.f35953h;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        int i11 = getResources().getConfiguration().orientation;
        if (i11 == 0) {
            str = "undefined";
        } else if (i11 != 1) {
            str = i11 != 2 ? "UNDEFINED" : TmcStartParams.KEY_LANDSCAPE;
        } else {
            str = "portrait";
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("orientation", str);
            jSONObject.put("locked", "true");
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        float fN = k0.n(this);
        float fM = k0.m(this);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        float f11 = displayMetrics.widthPixels;
        float f12 = displayMetrics.heightPixels;
        HashMap map = new HashMap();
        map.put("placementType", "Interstitial");
        map.put("state", "default");
        map.put("viewable", "true");
        map.put("currentAppOrientation", jSONObject);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.f35954i, fN, fM);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f35954i, f11, f12);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f35954i, map);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f35954i, this.f35958m.a());
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f35954i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        CampaignEx campaignEx = this.f35953h;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        this.f35954i.post(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        try {
            com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
            mVar.n(this.f35953h.getRequestId());
            mVar.o(this.f35953h.getRequestIdNotice());
            mVar.b(this.f35953h.getId());
            mVar.b(this.f35953h.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
            com.mbridge.msdk.foundation.same.report.g.d(mVar, getApplicationContext(), this.mUnitid);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void l() {
        com.mbridge.msdk.foundation.same.report.h hVar = new com.mbridge.msdk.foundation.same.report.h(getApplicationContext());
        CampaignEx campaignEx = this.f35953h;
        if (campaignEx != null) {
            hVar.b(campaignEx.getRequestId(), this.f35953h.getRequestIdNotice(), this.f35953h.getId(), this.mUnitid, com.mbridge.msdk.mbsignalcommon.mraid.c.b(this.f35953h.getId()), this.f35953h.isBidCampaign());
            com.mbridge.msdk.mbsignalcommon.mraid.c.a(this.f35953h.getId());
            this.f35960o = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        List<String> pv_urls;
        try {
            com.mbridge.msdk.foundation.controller.c.m().a(this);
            if (!TextUtils.isEmpty(this.f35953h.getImpressionURL())) {
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                CampaignEx campaignEx = this.f35953h;
                com.mbridge.msdk.click.a.a(contextD, campaignEx, this.mUnitid, campaignEx.getImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f34418m);
            }
            if (!TextUtils.isEmpty(this.f35953h.getOnlyImpressionURL())) {
                Context contextD2 = com.mbridge.msdk.foundation.controller.c.m().d();
                CampaignEx campaignEx2 = this.f35953h;
                com.mbridge.msdk.click.a.a(contextD2, campaignEx2, this.mUnitid, campaignEx2.getOnlyImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f34419n);
            }
            com.mbridge.msdk.foundation.same.buffer.b.a(this.mUnitid, this.f35953h, com.vungle.ads.internal.b.PLACEMENT_TYPE_INTERSTITIAL);
            e eVar = new e();
            if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(eVar);
            } else {
                eVar.run();
            }
            CampaignEx campaignEx3 = this.f35953h;
            if (campaignEx3 == null || (pv_urls = campaignEx3.getPv_urls()) == null || pv_urls.size() <= 0) {
                return;
            }
            Iterator<String> it = pv_urls.iterator();
            while (it.hasNext()) {
                com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f35953h, this.mUnitid, it.next(), false, true);
            }
        } catch (Throwable th2) {
            o0.a("MBInterstitialActivity", th2.getMessage());
        }
    }

    private void n() {
        CampaignEx campaignEx;
        this.f35955j.setOnClickListener(new h());
        if (this.f35954i == null || (campaignEx = this.f35953h) == null) {
            return;
        }
        com.mbridge.msdk.foundation.same.webview.a aVar = new com.mbridge.msdk.foundation.same.webview.a(campaignEx);
        aVar.a(this.f35953h.getAppName());
        this.f35954i.setCampaignId(this.f35953h.getId());
        this.f35954i.setDownloadListener(aVar);
    }

    public void clickTracking() {
        try {
            if (this.f35953h != null && !y0.a(this.mUnitid)) {
                onIntersClick();
                com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(getApplicationContext(), this.mUnitid);
                this.f35965t = aVar;
                aVar.a(new c());
                this.f35965t.a(this.f35953h);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        finish();
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z10) {
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        if (!this.f35960o) {
            l();
        }
        if (this.f35961p) {
            return;
        }
        reportPlayableClosed();
    }

    public com.mbridge.msdk.setting.l getIntersUnitSetting() {
        try {
            if (TextUtils.isEmpty(this.mUnitid)) {
                return null;
            }
            com.mbridge.msdk.setting.l lVarE = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.mUnitid);
            return lVarE == null ? com.mbridge.msdk.setting.l.h(this.mUnitid) : lVarE;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        return this.f35953h;
    }

    public void goneWebView() {
        try {
            runOnUiThread(new n());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void hideLoading() {
        try {
            runOnUiThread(new b());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void initView() {
        this.f35954i = (WindVaneWebView) findViewById(g0.a(getApplicationContext(), "mbridge_interstitial_wv", "id"));
        this.mProgressBar = (ProgressBar) findViewById(g0.a(getApplicationContext(), "mbridge_interstitial_pb", "id"));
        this.f35955j = (ImageView) findViewById(g0.a(getApplicationContext(), "mbridge_interstitial_iv_close", "id"));
    }

    @Override // com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            int iA = g0.a(getApplicationContext(), "mbridge_interstitial_activity", TtmlNode.TAG_LAYOUT);
            if (!g0.a(iA)) {
                g();
                f();
                com.mbridge.msdk.interstitial.controller.a.d dVar = this.f35956k;
                if (dVar != null) {
                    dVar.a("not found resource");
                }
                finish();
                return;
            }
            setContentView(iA);
            initView();
            e();
            com.mbridge.msdk.foundation.controller.c.m().a(this);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.mUnitid, this, (ViewGroup) null, (ViewGroup.LayoutParams) null, new g());
            this.f35953h.setCampaignUnitId(this.mUnitid);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.mUnitid, this.f35953h);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            com.mbridge.msdk.interstitial.controller.a.d dVar = this.f35956k;
            if (dVar != null) {
                dVar.b();
            }
            com.mbridge.msdk.click.a aVar = this.f35965t;
            if (aVar != null) {
                aVar.a(false);
                this.f35965t.a((NativeListener.NativeTrackingListener) null);
                this.f35965t.c();
            }
            com.mbridge.msdk.mbsignalcommon.mraid.d dVar2 = this.f35958m;
            if (dVar2 != null) {
                dVar2.d();
            }
            if (!this.f35960o) {
                l();
            }
            if (com.mbridge.msdk.interstitial.controller.a.f35920r != null && !TextUtils.isEmpty(this.mUnitid)) {
                com.mbridge.msdk.interstitial.controller.a.f35920r.remove(this.mUnitid);
            }
            this.f35956k = null;
            com.mbridge.msdk.foundation.feedback.b.b().d(this.mUnitid);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void onIntersClick() {
        try {
            com.mbridge.msdk.interstitial.controller.a.d dVar = this.f35956k;
            if (dVar != null) {
                dVar.a();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        CampaignEx campaignEx = this.f35953h;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(this.f35954i, "false");
    }

    @Override // com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        CampaignEx campaignEx = this.f35953h;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(this.f35954i, "true");
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f35953h.setClickURL(str);
            a(str);
        }
        this.f35953h.setClickTempSource(2);
        this.f35953h.setClickType(2);
        this.f35953h.setTriggerClickSource(2);
        clickTracking();
    }

    public void reportPlayableClosed() {
        if (this.f35953h != null) {
            com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("2000061", this.f35953h.getId(), this.f35953h.getRequestId(), this.f35953h.getRequestIdNotice(), this.mUnitid, k0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
            mVar.b(this.f35953h.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
            com.mbridge.msdk.foundation.same.report.g.b(mVar, com.mbridge.msdk.foundation.controller.c.m().d(), this.mUnitid);
            this.f35961p = true;
        }
    }

    @Override // com.mbridge.msdk.activity.MBBaseActivity
    public void setTopControllerPadding(int i11, int i12, int i13, int i14, int i15) {
        int iA = t0.a(this, 10.0f);
        if (i12 <= 0) {
            i12 = iA;
        }
        if (i13 <= 0) {
            i13 = iA;
        }
        if (i14 <= 0) {
            i14 = iA;
        }
        if (i15 <= 0) {
            i15 = iA;
        }
        if (this.f35955j != null) {
            int iA2 = t0.a(this, 25.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA2, iA2);
            layoutParams.addRule(11);
            layoutParams.setMargins(i12, i14, i13, i15);
            this.f35955j.setLayoutParams(layoutParams);
        }
    }

    public void showLoading() {
        try {
            runOnUiThread(new a());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void showWebView() {
        runOnUiThread(new m());
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void unload() {
        close();
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void useCustomClose(boolean z10) {
        if (z10) {
            this.f35955j.setImageDrawable(new ColorDrawable(0));
        } else {
            this.f35955j.setImageResource(g0.a(getApplicationContext(), "mbridge_interstitial_close", "drawable"));
        }
    }
}
