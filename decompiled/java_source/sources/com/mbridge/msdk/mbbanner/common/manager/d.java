package com.mbridge.msdk.mbbanner.common.manager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.mbbanner.common.util.BannerUtils;
import com.mbridge.msdk.mbbanner.view.MBBannerWebView;
import com.mbridge.msdk.out.MBBannerView;
import com.mbridge.msdk.widget.MBAdChoice;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class d {
    private com.iab.omid.library.mmadbridge.adsession.b A;
    private com.iab.omid.library.mmadbridge.adsession.a B;
    private float E;
    private float F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.mbridge.msdk.mbbanner.common.listener.c f36099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f36100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected CampaignEx f36101c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final MBBannerView f36102d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView f36103e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private MBBannerWebView f36104f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f36105g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ImageView f36106h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f36107i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f36108j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f36109k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f36110l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f36111m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f36112n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected boolean f36113o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected final String f36114p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f36115q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f36116r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    com.mbridge.msdk.click.a f36118t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private List<CampaignEx> f36119u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f36122x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.communication.b f36124z;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f36117s = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f36120v = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f36121w = 1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final long f36123y = MBInterstitialActivity.WEB_LOAD_TIME;
    private final Handler C = new e(Looper.getMainLooper());
    private final com.mbridge.msdk.foundation.same.task.a D = new f();
    private final View.OnClickListener G = new g();
    private com.mbridge.msdk.mbbanner.common.listener.a H = new h();
    private com.mbridge.msdk.mbsignalcommon.listener.b I = new c();

    class a implements com.mbridge.msdk.foundation.feedback.a {
        a() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("BannerShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f36104f, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("BannerShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f36104f, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("BannerShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f36104f, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f36126a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f36127b;

        b(Context context, CampaignEx campaignEx) {
            this.f36126a = context;
            this.f36127b = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(this.f36126a)).b(this.f36127b.getId());
            } catch (Exception e11) {
                o0.b("BannerShowManager", e11.getMessage());
            }
        }
    }

    class c extends com.mbridge.msdk.mbsignalcommon.listener.b {
        c() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView) {
            d.this.g();
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11, String str, String str2) {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880000);
            bVar.c(i11 + " WebView receive error: " + i11 + "  message : " + str);
            bVar.b(d.this.f36116r);
            d.this.a(bVar);
            d.this.a(str, 2);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            d.this.f36109k = true;
            com.mbridge.msdk.mbbanner.common.communication.a.a(webView);
            d.this.f36111m = true;
            CampaignEx campaignEx = d.this.f36101c;
            if (campaignEx == null || campaignEx.isHasMBTplMark()) {
                return;
            }
            d.this.p();
            d.this.a("", 1);
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.mbbanner.common.manager.d$d, reason: collision with other inner class name */
    class C0501d implements com.mbridge.msdk.foundation.feedback.a {
        C0501d() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String string;
            d.this.f36102d.onPause();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("BannerShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f36104f, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String string;
            d.this.f36102d.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("BannerShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f36104f, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String string;
            d.this.f36102d.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("BannerShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f36104f, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }

    class e extends Handler {
        e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 1) {
                return;
            }
            try {
                if (d.this.A != null) {
                    d dVar = d.this;
                    dVar.B = com.iab.omid.library.mmadbridge.adsession.a.a(dVar.A);
                    if (d.this.B != null) {
                        d.this.B.c();
                        d.this.B.b();
                    }
                }
            } catch (Throwable th2) {
                o0.a("BannerShowManager", th2.getMessage());
            }
        }
    }

    class f extends com.mbridge.msdk.foundation.same.task.a {
        f() {
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void cancelTask() {
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void pauseTask(boolean z10) {
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void runTask() {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880045);
            bVar.b(d.this.f36101c.getLocalRequestId());
            d.this.a(bVar);
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d dVar = d.this;
            if (dVar.f36113o) {
                dVar.f36117s = 1;
                d.this.b();
            }
        }
    }

    class h implements com.mbridge.msdk.mbbanner.common.listener.a {
        h() {
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.a
        public void a(CampaignEx campaignEx) {
            d.this.a(campaignEx, false, "");
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.a
        public void a(boolean z10) {
            d dVar = d.this;
            if (dVar.f36099a != null) {
                dVar.f36112n = z10;
                if (z10) {
                    d.this.f36099a.a();
                } else {
                    d.this.f36099a.d();
                }
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.a
        public void a(boolean z10, String str) {
            try {
                if (d.this.f36099a != null) {
                    if (TextUtils.isEmpty(str)) {
                        d.this.f36099a.c();
                        d.this.f36099a.onLeaveApp();
                    } else {
                        CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(CampaignEx.campaignToJsonObject(d.this.f36101c));
                        campaignWithBackData.setClickTempSource(2);
                        campaignWithBackData.setClickType(2);
                        campaignWithBackData.setTriggerClickSource(2);
                        campaignWithBackData.setClickURL(str);
                        d.this.a(campaignWithBackData, z10, str);
                    }
                }
            } catch (Exception e11) {
                o0.b("BannerShowManager", e11.getMessage());
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.a
        public void close() {
            d.this.f36117s = 2;
            d.this.b();
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.a
        public void readyStatus(int i11) {
            if (i11 != 1) {
                d.this.g();
            } else {
                d.this.p();
                d.this.a("", 1);
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.a
        public void toggleCloseBtn(int i11) {
            if (i11 == 2) {
                d.this.e();
            } else {
                d.this.n();
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.a
        public void triggerCloseBtn(String str) {
            d.this.f36117s = 2;
            d.this.b();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (d.this.f36104f != null) {
                    String str = d.this.f36120v == 2 ? "false" : "true";
                    d.this.f36104f.evaluateJavascript("(function() {\n    var videos = document.getElementsByTagName('video');\n    for (var i = 0; i < videos.length; i++) {\n    videos[i].muted = " + str + ";\n    }\n    var audios = document.getElementsByTagName('audio');\n    for (var i = 0; i < audios.length; i++) {\n    audios[i].muted = " + str + ";\n    }\n    })()", null);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    class j implements View.OnTouchListener {
        j() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            d.this.E = motionEvent.getRawX();
            d.this.F = motionEvent.getRawY();
            o0.b("BannerShowManager", d.this.E + "  " + d.this.F);
            return false;
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.a(BannerUtils.managerCampaignEX(com.mbridge.msdk.mbsignalcommon.communication.d.a(d.this.E, d.this.F), d.this.f36101c), false, "");
        }
    }

    class l implements com.mbridge.msdk.foundation.same.image.c {
        l() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880039);
            bVar.b(d.this.f36116r);
            d.this.a(bVar);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (d.this.f36103e != null) {
                d.this.f36103e.setImageBitmap(bitmap);
            }
            d.this.f36109k = true;
            d.this.o();
            d.this.n();
            d.this.m();
            d dVar = d.this;
            if (dVar.f36113o) {
                return;
            }
            dVar.p();
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.p();
        }
    }

    public d(MBBannerView mBBannerView, com.mbridge.msdk.mbbanner.common.listener.c cVar, String str, String str2, boolean z10, com.mbridge.msdk.setting.l lVar) {
        this.f36100b = z10;
        this.f36102d = mBBannerView;
        this.f36114p = str2;
        this.f36115q = str;
        this.f36099a = new com.mbridge.msdk.mbbanner.common.listener.e(cVar, lVar);
    }

    private CampaignEx a(CampaignUnit campaignUnit) {
        if (campaignUnit != null) {
            ArrayList<CampaignEx> ads = campaignUnit.getAds();
            this.f36119u = ads;
            if (ads != null && ads.size() > 0) {
                return this.f36119u.get(0);
            }
        }
        return null;
    }

    private String a(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return "";
        }
        try {
            String bannerUrl = campaignEx.getBannerUrl();
            if (!TextUtils.isEmpty(bannerUrl)) {
                return bannerUrl;
            }
            String bannerHtml = campaignEx.getBannerHtml();
            File file = new File(bannerHtml);
            if (!file.exists() || !file.isFile() || !file.canRead()) {
                return bannerHtml;
            }
            return "file:////" + bannerHtml;
        } catch (Throwable th2) {
            o0.b("BannerShowManager", th2.getMessage());
            return "";
        }
    }

    private void a(CampaignEx campaignEx, Context context, String str) {
        if (!TextUtils.isEmpty(campaignEx.getImpressionURL())) {
            new Thread(new b(context, campaignEx)).start();
            com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f34418m);
        }
        if (TextUtils.isEmpty(str) || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().k() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getNativeVideoTracking().k(), false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.foundation.error.b bVar) {
        if (this.f36101c == null || d()) {
            return;
        }
        this.C.removeCallbacks(this.D);
        com.mbridge.msdk.mbbanner.common.listener.c cVar = this.f36099a;
        if (cVar != null) {
            cVar.a(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i11) {
        try {
            CampaignEx campaignEx = this.f36101c;
            if (campaignEx != null) {
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.f36114p, campaignEx.getLocalRequestId());
                cVarA.g(this.f36121w);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", Integer.valueOf(i11));
                if (TextUtils.isEmpty(str)) {
                    str = "";
                }
                eVar.a("reason", str);
                cVarA.d(TextUtils.isEmpty(this.f36101c.getBannerUrl()) ? 2 : 1);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000068", cVarA, eVar);
            }
        } catch (Throwable th2) {
            o0.b("BannerShowManager", th2.getMessage());
        }
    }

    private void a(boolean z10) {
        if (this.f36102d != null) {
            View viewA = com.mbridge.msdk.foundation.feedback.b.b().a(this.f36114p);
            if (com.mbridge.msdk.foundation.feedback.b.b().a() && z10 && viewA != null) {
                ViewGroup viewGroup = (ViewGroup) viewA.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(viewA);
                }
                viewA.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) viewA.getLayoutParams();
                if (layoutParams == null) {
                    layoutParams = new RelativeLayout.LayoutParams(com.mbridge.msdk.foundation.feedback.b.f35288e, com.mbridge.msdk.foundation.feedback.b.f35287d);
                }
                layoutParams.addRule(12);
                viewA.setLayoutParams(layoutParams);
                this.f36102d.addView(viewA);
            }
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f36114p, new C0501d());
            this.f36101c.setCampaignUnitId(this.f36114p);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f36114p, this.f36101c);
        }
    }

    private boolean a() {
        if (this.f36102d == null) {
            return false;
        }
        CampaignEx campaignEx = this.f36101c;
        return (b1.a(this.f36102d, campaignEx != null ? campaignEx.getImpReportType() : 0) || this.f36112n) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        k();
        MBBannerWebView mBBannerWebView = this.f36104f;
        if (mBBannerWebView != null && mBBannerWebView.getParent() != null) {
            this.f36102d.removeView(this.f36104f);
        }
        ImageView imageView = this.f36103e;
        if (imageView != null && imageView.getParent() != null) {
            this.f36103e.setVisibility(8);
            this.f36102d.removeView(this.f36103e);
        }
        ImageView imageView2 = this.f36105g;
        if (imageView2 != null && imageView2.getParent() != null) {
            this.f36102d.removeView(this.f36105g);
            this.f36105g.setVisibility(8);
        }
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f36114p);
        ImageView imageView3 = this.f36106h;
        if (imageView3 != null && imageView3.getParent() != null) {
            this.f36102d.removeView(this.f36106h);
            this.f36106h.setVisibility(8);
        }
        BannerUtils.inserCloseId(this.f36114p, this.f36119u);
        j();
        com.mbridge.msdk.mbbanner.common.listener.c cVar = this.f36099a;
        if (cVar != null) {
            cVar.b();
        }
        i();
    }

    private void b(CampaignEx campaignEx) {
        if (campaignEx != null) {
            a(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f36114p);
            b(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f36114p);
            c(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f36114p);
        }
    }

    private void b(CampaignEx campaignEx, Context context, String str) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(campaignEx.getOnlyImpressionURL())) {
                    return;
                }
                com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getOnlyImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f34419n);
            } catch (Throwable th2) {
                o0.b("BannerShowManager", th2.getMessage());
            }
        }
    }

    private void c(CampaignEx campaignEx, Context context, String str) {
        if (campaignEx != null) {
            try {
                List<String> pv_urls = campaignEx.getPv_urls();
                if (pv_urls == null || pv_urls.size() <= 0) {
                    return;
                }
                Iterator<String> it = pv_urls.iterator();
                while (it.hasNext()) {
                    com.mbridge.msdk.click.a.a(context, campaignEx, str, it.next(), false, true);
                }
            } catch (Throwable th2) {
                o0.b("BannerShowManager", th2.getMessage());
            }
        }
    }

    private synchronized boolean d() {
        boolean zIsReport;
        zIsReport = this.f36101c.isReport();
        if (!zIsReport) {
            this.f36101c.setReport(true);
        }
        return zIsReport;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        ImageView imageView;
        if (this.f36100b && (imageView = this.f36105g) != null && imageView.getVisibility() == 0) {
            this.f36105g.setVisibility(8);
            this.f36105g.setOnClickListener(null);
            if (this.f36102d == null || this.f36105g.getParent() == null) {
                return;
            }
            this.f36102d.removeView(this.f36105g);
        }
    }

    private void f() {
        if (this.f36100b && this.f36105g == null) {
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            this.f36105g = imageView;
            imageView.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_banner_close", "drawable"));
            this.f36105g.setVisibility(8);
            this.f36105g.setContentDescription("closeButton");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void g() {
        if (this.f36102d == null) {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880046);
            bVar.b(this.f36116r);
            a(bVar);
            return;
        }
        MBBannerWebView mBBannerWebView = this.f36104f;
        if (mBBannerWebView != null && mBBannerWebView.getParent() != null) {
            this.f36102d.removeView(this.f36104f);
        }
        if (this.f36103e == null) {
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            this.f36103e = imageView;
            imageView.setOnTouchListener(new j());
            this.f36103e.setOnClickListener(new k());
        }
        String imageUrl = this.f36101c.getImageUrl();
        if (!TextUtils.isEmpty(imageUrl)) {
            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(imageUrl, new l());
            return;
        }
        com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880047);
        bVar2.b(this.f36116r);
        a(bVar2);
    }

    private void i() {
        com.iab.omid.library.mmadbridge.adsession.b bVar = this.A;
        if (bVar != null) {
            bVar.c();
            this.A = null;
            o0.a("omsdk", " adSession.finish() ");
        }
    }

    private void j() {
        try {
            CampaignEx campaignEx = this.f36101c;
            if (campaignEx != null) {
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.f36114p, campaignEx.getLocalRequestId());
                cVarA.g(this.f36121w);
                cVarA.b(true);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000152", cVarA, (com.mbridge.msdk.foundation.same.report.metrics.e) null);
            }
        } catch (Throwable th2) {
            o0.b("BannerShowManager", th2.getMessage());
        }
    }

    private void k() {
        try {
            CampaignEx campaignEx = this.f36101c;
            if (campaignEx != null) {
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.f36114p, campaignEx.getLocalRequestId());
                cVarA.g(this.f36121w);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("close_click_type", Integer.valueOf(this.f36117s));
                eVar.a(CampaignEx.JSON_KEY_CREATIVE_ID, Long.valueOf(this.f36101c.getCreativeId()));
                com.mbridge.msdk.mbbanner.common.report.a.a("2000069", cVarA, eVar);
            }
        } catch (Throwable th2) {
            o0.b("BannerShowManager", th2.getMessage());
        }
    }

    private void l() {
        try {
            CampaignEx campaignEx = this.f36101c;
            if (campaignEx != null) {
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.f36114p, campaignEx.getLocalRequestId());
                cVarA.g(this.f36121w);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000133", cVarA, (com.mbridge.msdk.foundation.same.report.metrics.e) null);
            }
        } catch (Throwable th2) {
            o0.b("BannerShowManager", th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (this.f36102d == null) {
            return;
        }
        CampaignEx campaignEx = this.f36101c;
        if (campaignEx == null || campaignEx.getPrivacyButtonTemplateVisibility() == 1) {
            MBAdChoice mBAdChoice = new MBAdChoice(com.mbridge.msdk.foundation.controller.c.m().d());
            mBAdChoice.setCampaign(this.f36101c);
            mBAdChoice.setFeedbackDialogEventListener(new a());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 6.0f), t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 6.0f));
            layoutParams.addRule(11);
            layoutParams.addRule(12);
            this.f36102d.addView(mBAdChoice, layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        ImageView imageView;
        if (!this.f36100b || (imageView = this.f36105g) == null) {
            return;
        }
        if (imageView.getVisibility() != 0) {
            this.f36105g.setVisibility(0);
            this.f36105g.setOnClickListener(this.G);
        }
        if (this.f36105g.getParent() != null || this.f36102d == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f), t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f));
        layoutParams.addRule(11);
        layoutParams.addRule(10);
        this.f36102d.addView(this.f36105g, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (this.f36103e != null) {
            MBBannerWebView mBBannerWebView = this.f36104f;
            if (mBBannerWebView != null) {
                mBBannerWebView.setVisibility(8);
            }
            if (this.f36103e.getVisibility() != 0) {
                this.f36103e.setVisibility(0);
            }
            this.f36121w = 2;
            if (this.f36102d != null) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(10);
                this.f36103e.setScaleType(ImageView.ScaleType.FIT_XY);
                if (this.f36103e.getParent() == null) {
                    this.f36102d.addView(this.f36103e, layoutParams);
                }
                a(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        MBBannerView mBBannerView;
        if (this.f36109k && !this.f36110l && this.f36099a != null) {
            this.f36110l = true;
            this.C.removeCallbacks(this.D);
            CampaignEx campaignEx = this.f36101c;
            if (campaignEx != null && !campaignEx.isCallbacked()) {
                this.f36101c.setCallbacked(true);
                this.f36099a.a(this.f36119u);
                com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f36101c.getMaitve(), this.f36101c.getMaitve_src());
            }
        }
        if (this.f36109k && this.f36107i && this.f36108j && this.f36110l && this.f36101c != null && !d()) {
            boolean zA = a();
            if (!zA && (mBBannerView = this.f36102d) != null) {
                mBBannerView.postDelayed(new m(), 1000L);
            }
            if (this.f36111m && zA) {
                o0.b("BannerShowManager", "onBannerWebViewShow && transInfoToMraid");
                int[] iArr = new int[2];
                this.f36102d.getLocationInWindow(iArr);
                com.mbridge.msdk.mbbanner.common.communication.a.a(this.f36104f, iArr[0], iArr[1]);
                com.mbridge.msdk.mbbanner.common.communication.a.a(this.f36104f, iArr[0], iArr[1], this.f36102d.getWidth(), this.f36102d.getHeight());
                this.f36111m = false;
                this.f36121w = 1;
                if (!TextUtils.isEmpty(this.f36101c.getImageUrl())) {
                    com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.f36101c.getImageUrl());
                }
                l();
            }
            o0.b("BannerShowManager", "showSuccessed:" + this.f36101c.getId());
            if (!zA) {
                this.f36101c.setReport(false);
                return;
            }
            ImageView imageView = this.f36103e;
            if (imageView == null || imageView.getVisibility() != 0) {
                List<CampaignEx> list = this.f36119u;
                if (list != null && list.size() > 0) {
                    boolean z10 = false;
                    int i11 = 0;
                    for (int i12 = 0; i12 < this.f36119u.size(); i12++) {
                        if (!this.f36119u.get(i12).isHasMBTplMark() && (i12 == 0 || !this.f36119u.get(i12).isReport())) {
                            a(this.f36119u.get(i12), com.mbridge.msdk.foundation.controller.c.m().d(), this.f36114p);
                            this.f36119u.get(i12).setReport(true);
                            com.mbridge.msdk.foundation.same.buffer.b.a(this.f36114p, this.f36119u.get(i12), "banner");
                            i11 = i12;
                            z10 = true;
                        }
                    }
                    if (z10) {
                        b(this.f36119u.get(i11), com.mbridge.msdk.foundation.controller.c.m().d(), this.f36114p);
                        c(this.f36119u.get(i11), com.mbridge.msdk.foundation.controller.c.m().d(), this.f36114p);
                    }
                }
            } else {
                CampaignEx campaignEx2 = this.f36101c;
                if (campaignEx2 != null) {
                    b(campaignEx2);
                    this.f36101c.setReport(true);
                    this.f36121w = 2;
                    com.mbridge.msdk.foundation.same.buffer.b.a(this.f36114p, this.f36101c, "banner");
                }
            }
            this.f36113o = true;
            com.mbridge.msdk.mbbanner.common.listener.c cVar = this.f36099a;
            if (cVar != null) {
                cVar.a(this.f36101c);
            }
            try {
                CampaignEx campaignEx3 = this.f36101c;
                if (campaignEx3 != null && campaignEx3.isActiveOm()) {
                    Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                    MBBannerWebView mBBannerWebView = this.f36104f;
                    com.iab.omid.library.mmadbridge.adsession.b bVarA = com.mbridge.msdk.omsdk.b.a(contextD, mBBannerWebView, mBBannerWebView.getUrl(), this.f36101c);
                    this.A = bVarA;
                    if (bVarA != null) {
                        try {
                            bVarA.d(this.f36104f);
                            ImageView imageView2 = this.f36105g;
                            if (imageView2 != null) {
                                this.A.a(imageView2, FriendlyObstructionPurpose.CLOSE_AD, null);
                            }
                            ImageView imageView3 = this.f36103e;
                            if (imageView3 != null) {
                                this.A.a(imageView3, FriendlyObstructionPurpose.OTHER, null);
                            }
                            this.A.g();
                        } catch (Exception e11) {
                            o0.a("OMSDK", e11.getMessage());
                        }
                    } else {
                        CampaignEx campaignEx4 = this.f36101c;
                        if (campaignEx4 != null) {
                            new com.mbridge.msdk.foundation.same.report.h(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx4.getRequestId(), this.f36101c.getRequestIdNotice(), this.f36101c.getId(), this.f36114p, "fetch OM failed, context null");
                        }
                    }
                }
            } catch (Exception unused) {
                CampaignEx campaignEx5 = this.f36101c;
                if (campaignEx5 != null) {
                    new com.mbridge.msdk.foundation.same.report.h(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx5.getRequestId(), this.f36101c.getRequestIdNotice(), this.f36101c.getId(), this.f36114p, "fetch OM failed, context null");
                }
            }
            this.C.sendEmptyMessageDelayed(1, 1000L);
            BitmapDrawable bitmapDrawableA = com.mbridge.msdk.foundation.controller.c.m().a(this.f36114p, this.f36101c.getAdType());
            if (bitmapDrawableA != null) {
                if (this.f36106h == null) {
                    this.f36106h = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
                }
                if (this.f36106h.getVisibility() != 0) {
                    this.f36106h.setVisibility(0);
                }
                t0.a(this.f36106h, bitmapDrawableA, this.f36102d.getResources().getDisplayMetrics());
                if (this.f36106h.getParent() == null) {
                    this.f36102d.addView(this.f36106h, new ViewGroup.LayoutParams(-1, -1));
                }
                com.iab.omid.library.mmadbridge.adsession.b bVar = this.A;
                if (bVar != null) {
                    bVar.a(this.f36106h, FriendlyObstructionPurpose.OTHER, null);
                }
            }
        }
    }

    private boolean q() {
        String strA = a(this.f36101c);
        if (TextUtils.isEmpty(strA)) {
            return false;
        }
        if (this.f36102d != null) {
            if (this.f36104f == null) {
                try {
                    MBBannerWebView mBBannerWebView = new MBBannerWebView(com.mbridge.msdk.foundation.controller.c.m().d());
                    this.f36104f = mBBannerWebView;
                    mBBannerWebView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                    this.f36104f.setWebViewClient(new com.mbridge.msdk.mbbanner.view.a(this.f36114p, this.f36119u, this.H));
                } catch (Throwable unused) {
                    a(com.mbridge.msdk.foundation.error.a.a(880029), 1);
                    return false;
                }
            }
            ImageView imageView = this.f36103e;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            if (this.f36104f.getVisibility() != 0) {
                this.f36104f.setVisibility(0);
            }
            if (this.f36104f.getParent() == null) {
                this.f36102d.addView(this.f36104f);
                a(this.f36101c.isMraid());
            }
            if (this.f36101c.isMraid()) {
                m();
            }
            n();
            com.mbridge.msdk.mbbanner.common.communication.b bVar = new com.mbridge.msdk.mbbanner.common.communication.b(this.f36102d.getContext(), this.f36115q, this.f36114p);
            this.f36124z = bVar;
            bVar.a(this.f36119u);
            this.f36124z.a(this.H);
            this.f36124z.a(this.f36122x);
            this.f36104f.setWebViewListener(this.I);
            this.f36104f.setObject(this.f36124z);
            this.f36104f.loadUrl(strA);
            MBBannerWebView mBBannerWebView2 = this.f36104f;
            if (mBBannerWebView2 != null) {
                mBBannerWebView2.postDelayed(new i(), 1000L);
            }
        } else {
            a(com.mbridge.msdk.foundation.error.a.a(880046), 2);
            com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880046);
            bVar2.b(this.f36116r);
            a(bVar2);
        }
        return true;
    }

    public void a(int i11, int i12, int i13, int i14) {
        if (i11 == i13 && i12 == i14) {
            return;
        }
        com.mbridge.msdk.mbbanner.common.communication.a.a((WebView) this.f36104f, i11, i12);
    }

    public void a(CampaignEx campaignEx, boolean z10, String str) {
        throw null;
    }

    public void a(String str) {
        this.f36116r = str;
    }

    public void a(boolean z10, int i11) {
        this.f36122x = i11;
        if (i11 != 0) {
            this.f36100b = z10;
            return;
        }
        com.mbridge.msdk.setting.l lVarE = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f36114p);
        if (lVarE != null) {
            this.f36100b = lVarE.g() == 1;
        }
    }

    public void b(CampaignUnit campaignUnit) {
        CampaignEx campaignExA = a(campaignUnit);
        this.f36101c = campaignExA;
        if (campaignExA == null) {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880043);
            bVar.b(this.f36116r);
            a(bVar);
            return;
        }
        this.C.removeCallbacks(this.D);
        f();
        this.f36109k = false;
        this.f36110l = false;
        this.f36113o = false;
        if (!TextUtils.isEmpty(this.f36101c.getBannerHtml()) || !TextUtils.isEmpty(this.f36101c.getBannerUrl())) {
            com.mbridge.msdk.mbbanner.common.report.a.a(this.f36114p, this.f36101c);
        }
        this.C.postDelayed(this.D, MBInterstitialActivity.WEB_LOAD_TIME);
        if (q()) {
            return;
        }
        if (!TextUtils.isEmpty(this.f36101c.getBannerHtml()) || !TextUtils.isEmpty(this.f36101c.getBannerUrl())) {
            a(com.mbridge.msdk.foundation.error.a.a(880048), 2);
        }
        g();
    }

    public void b(boolean z10) {
        this.f36107i = z10;
        p();
    }

    public int c() {
        return this.f36121w;
    }

    public void c(boolean z10) {
        this.f36100b = z10;
    }

    public void d(boolean z10) {
        this.f36108j = z10;
        p();
    }

    public void h() {
        i();
        com.mbridge.msdk.mbbanner.common.report.a.a(this.f36101c, this.f36114p);
        if (this.f36099a != null) {
            this.f36099a = null;
        }
        MBBannerWebView mBBannerWebView = this.f36104f;
        if (mBBannerWebView != null) {
            mBBannerWebView.setWebViewListener(null);
        }
        if (this.I != null) {
            this.I = null;
        }
        ImageView imageView = this.f36105g;
        if (imageView != null) {
            imageView.setOnClickListener(null);
        }
        ImageView imageView2 = this.f36103e;
        if (imageView2 != null) {
            imageView2.setOnClickListener(null);
        }
        MBBannerView mBBannerView = this.f36102d;
        if (mBBannerView != null) {
            mBBannerView.removeAllViews();
        }
        MBBannerWebView mBBannerWebView2 = this.f36104f;
        if (mBBannerWebView2 != null) {
            mBBannerWebView2.release();
        }
        com.mbridge.msdk.mbbanner.common.communication.b bVar = this.f36124z;
        if (bVar != null) {
            bVar.a();
        }
        if (this.H != null) {
            this.H = null;
        }
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f36114p);
        com.mbridge.msdk.mbbanner.common.report.a.a(this.f36114p);
    }
}
