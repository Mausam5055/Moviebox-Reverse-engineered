package com.mbridge.msdk.splash.manager;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.mbridge.msdk.click.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.splash.view.MBSplashView;
import com.mbridge.msdk.splash.view.MBSplashWebview;
import com.mbridge.msdk.widget.FeedBackButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CampaignEx f37416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected MBSplashView f37417c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected com.mbridge.msdk.splash.middle.d f37418d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected com.mbridge.msdk.click.a f37419e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f37420f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f37421g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f37422h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected String f37423i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f37424j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected MBridgeIds f37425k;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f37431q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f37432r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected Context f37433s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ImageView f37435u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private h f37436v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.adsession.b f37437w;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final String f37415a = "SplashShowManager";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected int f37426l = 5;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected String f37427m = "点击跳过|";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected String f37428n = "点击跳过|";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected String f37429o = "秒";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected String f37430p = "秒后自动关闭";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected boolean f37434t = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private View.OnClickListener f37438x = new a();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Handler f37439y = new HandlerC0541b(Looper.getMainLooper());

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected j f37440z = new d();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b.this.f37420f) {
                b.this.b(1);
                b.this.d(-1);
            }
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.splash.manager.b$b, reason: collision with other inner class name */
    class HandlerC0541b extends Handler {
        HandlerC0541b(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Code duplicated, block: B:36:0x00dc  */
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            MBSplashView mBSplashView;
            MBSplashWebview splashWebview;
            super.handleMessage(message);
            int i11 = message.what;
            if (i11 == 1) {
                if (!b.this.f37432r) {
                    b.this.i();
                }
                b bVar = b.this;
                if (bVar.f37426l <= 0) {
                    bVar.b(2);
                    return;
                }
                if (com.mbridge.msdk.foundation.feedback.b.f35289f) {
                    b.this.f();
                } else {
                    b bVar2 = b.this;
                    if (bVar2.f37431q) {
                        b.this.f();
                    } else {
                        int i12 = bVar2.f37426l - 1;
                        bVar2.f37426l = i12;
                        bVar2.d(i12);
                        b bVar3 = b.this;
                        if (!bVar3.f37434t) {
                            bVar3.g();
                        }
                    }
                }
                b.this.f37439y.removeMessages(1);
                sendEmptyMessageDelayed(1, 1000L);
                return;
            }
            if (i11 != 2 || b.this.f37416b == null || !b.this.f37416b.isActiveOm() || (mBSplashView = b.this.f37417c) == null || (splashWebview = mBSplashView.getSplashWebview()) == null) {
                return;
            }
            try {
                b.this.f37437w = splashWebview.getAdSession();
                if (b.this.f37437w != null) {
                    com.iab.omid.library.mmadbridge.adsession.a aVarA = com.iab.omid.library.mmadbridge.adsession.a.a(b.this.f37437w);
                    aVarA.c();
                    aVarA.b();
                }
                o0.a("OMSDK", "adSession.impressionOccurred()");
            } catch (Throwable th2) {
                o0.a("OMSDK", th2.getMessage());
                if (b.this.f37416b != null) {
                    String requestId = b.this.f37416b.getRequestId();
                    String requestIdNotice = b.this.f37416b.getRequestIdNotice();
                    String id2 = b.this.f37416b.getId();
                    new com.mbridge.msdk.foundation.same.report.h(splashWebview.getContext()).a(requestId, requestIdNotice, id2, b.this.f37423i, "fetch OM failed, exception" + th2.getMessage());
                }
            }
        }
    }

    class c implements com.mbridge.msdk.foundation.feedback.a {
        c() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String string;
            b.this.f();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("SplashShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) b.this.f37417c.getSplashWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String string;
            b.this.g();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("SplashShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) b.this.f37417c.getSplashWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String string;
            b.this.g();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("SplashShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) b.this.f37417c.getSplashWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }

    class d implements j {
        d() {
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.a(campaign, b.this.f37417c);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.a(campaign, b.this.f37417c);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            s0.b(campaign, b.this.f37417c);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f37445a;

        e(int i11) {
            this.f37445a = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(this.f37445a);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f37447a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37448b;

        f(Context context, CampaignEx campaignEx) {
            this.f37447a = context;
            this.f37448b = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(this.f37447a)).b(this.f37448b.getId());
            } catch (Exception unused) {
                o0.b("SplashShowManager", "campain can't insert db");
            }
        }
    }

    class g implements com.mbridge.msdk.foundation.feedback.a {
        g() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            b.this.f();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            b.this.g();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            b.this.g();
        }
    }

    private class h implements com.mbridge.msdk.splash.middle.a {
        private h() {
        }

        /* synthetic */ h(b bVar, a aVar) {
            this();
        }

        @Override // com.mbridge.msdk.splash.middle.a
        public void a(int i11) {
            o0.b("SplashShowManager", "resetCountdown" + i11);
            b bVar = b.this;
            bVar.f37426l = i11;
            bVar.f37439y.removeMessages(1);
            b.this.f37439y.sendEmptyMessageDelayed(1, 1000L);
        }

        @Override // com.mbridge.msdk.splash.middle.a
        public void a(int i11, int i12) {
            if (i11 == 1) {
                b.this.f37439y.removeMessages(1);
            }
            if (i11 == 2) {
                b bVar = b.this;
                bVar.f37426l = i12;
                bVar.f37439y.removeMessages(1);
                b.this.f37439y.sendEmptyMessageDelayed(1, 1000L);
            }
        }

        @Override // com.mbridge.msdk.splash.middle.a
        public void a(CampaignEx campaignEx) {
            b.this.b(campaignEx, false, "");
        }

        @Override // com.mbridge.msdk.splash.middle.a
        public void a(boolean z10) {
            if (z10) {
                b.this.f37439y.removeMessages(1);
            }
        }

        @Override // com.mbridge.msdk.splash.middle.a
        public void a(boolean z10, String str) {
            try {
                if (b.this.f37418d != null) {
                    if (TextUtils.isEmpty(str)) {
                        b bVar = b.this;
                        bVar.f37418d.a(bVar.f37425k);
                    } else {
                        CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(CampaignEx.campaignToJsonObject(b.this.f37416b));
                        campaignWithBackData.setClickTempSource(2);
                        campaignWithBackData.setClickType(2);
                        campaignWithBackData.setTriggerClickSource(2);
                        campaignWithBackData.setClickURL(str);
                        b.this.b(campaignWithBackData, true, str);
                    }
                }
            } catch (Exception e11) {
                o0.b("SplashShowManager", e11.getMessage());
            }
        }

        @Override // com.mbridge.msdk.splash.middle.a
        public void close() {
            b.this.b(1);
        }

        @Override // com.mbridge.msdk.splash.middle.a
        public void toggleCloseBtn(int i11) {
            MBSplashView mBSplashView = b.this.f37417c;
            if (mBSplashView != null) {
                mBSplashView.changeCloseBtnState(i11);
            }
        }

        @Override // com.mbridge.msdk.splash.middle.a
        public void triggerCloseBtn(Object obj, String str) {
            b.this.b(1);
        }
    }

    public b(Context context, String str, String str2) {
        this.f37423i = str2;
        this.f37424j = str;
        this.f37425k = new MBridgeIds(str, str2);
        this.f37433s = context;
        if (this.f37421g == null) {
            TextView textView = new TextView(context);
            this.f37421g = textView;
            textView.setGravity(1);
            this.f37421g.setTextIsSelectable(false);
            this.f37421g.setPadding(t0.a(context, 5.0f), t0.a(context, 5.0f), t0.a(context, 5.0f), t0.a(context, 5.0f));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f37421g.getLayoutParams();
            this.f37421g.setLayoutParams(layoutParams == null ? new RelativeLayout.LayoutParams(t0.a(context, 100.0f), t0.a(context, 50.0f)) : layoutParams);
            e();
        }
    }

    private void a() {
        RelativeLayout.LayoutParams layoutParams;
        CampaignEx campaignEx = this.f37416b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.f37423i);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f37423i, 3);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f37423i, this.f37416b);
        }
        if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
            MBSplashView mBSplashView = this.f37417c;
            if (mBSplashView == null || !mBSplashView.isDynamicView()) {
                com.mbridge.msdk.foundation.feedback.b.b().a(this.f37423i, new c());
                FeedBackButton feedBackButtonA = com.mbridge.msdk.foundation.feedback.b.b().a(this.f37423i);
                if (feedBackButtonA != null) {
                    try {
                        layoutParams = (RelativeLayout.LayoutParams) feedBackButtonA.getLayoutParams();
                    } catch (Exception e11) {
                        e11.printStackTrace();
                        layoutParams = null;
                    }
                    if (layoutParams == null) {
                        layoutParams = new RelativeLayout.LayoutParams(com.mbridge.msdk.foundation.feedback.b.f35288e, com.mbridge.msdk.foundation.feedback.b.f35287d);
                    }
                    layoutParams.topMargin = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 10.0f);
                    layoutParams.leftMargin = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 10.0f);
                    ViewGroup viewGroup = (ViewGroup) feedBackButtonA.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(feedBackButtonA);
                    }
                    MBSplashView mBSplashView2 = this.f37417c;
                    if (mBSplashView2 != null) {
                        mBSplashView2.addView(feedBackButtonA, layoutParams);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i11) {
        MBSplashView mBSplashView;
        try {
            com.mbridge.msdk.splash.middle.d dVar = this.f37418d;
            if (dVar != null) {
                dVar.a(this.f37425k, i11);
                this.f37418d = null;
                com.mbridge.msdk.splash.report.a.a(this.f37423i, this.f37416b);
            }
            ImageView imageView = this.f37435u;
            if (imageView != null && imageView.getParent() != null && (mBSplashView = this.f37417c) != null) {
                mBSplashView.removeView(this.f37435u);
                this.f37435u.setVisibility(8);
            }
            this.f37432r = false;
            com.mbridge.msdk.splash.report.a.a(this.f37423i, i11, this.f37416b);
            Handler handler = this.f37439y;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Exception e11) {
            o0.b("SplashShowManager", e11.getMessage());
        }
    }

    private void a(View view) {
        if (view != null) {
            view.setOnClickListener(this.f37438x);
        }
    }

    private void a(CampaignEx campaignEx) {
        b(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f37423i);
        a(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f37423i);
        c(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f37423i);
        campaignEx.setReport(true);
        com.mbridge.msdk.foundation.same.buffer.b.a(this.f37423i, campaignEx, "splash");
    }

    private void a(CampaignEx campaignEx, Context context, String str) {
        com.mbridge.msdk.foundation.controller.c.m().a(context);
        if (!TextUtils.isEmpty(campaignEx.getImpressionURL())) {
            new Thread(new f(context, campaignEx)).start();
            com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f34418m);
        }
        if (TextUtils.isEmpty(str) || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().k() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getNativeVideoTracking().k(), false, false);
    }

    private void b(CampaignEx campaignEx) {
        if (campaignEx.isHasMBTplMark()) {
            return;
        }
        a(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f37423i);
        campaignEx.setReport(true);
        com.mbridge.msdk.foundation.same.buffer.b.a(this.f37423i, campaignEx, "splash");
        b(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f37423i);
        c(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f37423i);
    }

    private void b(CampaignEx campaignEx, Context context, String str) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(campaignEx.getOnlyImpressionURL())) {
                    return;
                }
                com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getOnlyImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f34419n);
            } catch (Throwable th2) {
                o0.b("SplashShowManager", th2.getMessage());
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
                o0.b("SplashShowManager", th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i11) {
        MBSplashView mBSplashView = this.f37417c;
        if (mBSplashView != null) {
            mBSplashView.updateCountdown(i11);
            if (this.f37417c.getSplashSignalCommunicationImpl() != null) {
                this.f37417c.getSplashSignalCommunicationImpl().c(i11);
            }
        }
        if (i11 < 0) {
            this.f37426l = i11;
            return;
        }
        com.mbridge.msdk.splash.middle.d dVar = this.f37418d;
        if (dVar != null) {
            dVar.a(this.f37425k, i11 * 1000);
        }
        if (this.f37422h == null) {
            j();
        }
    }

    private void e() {
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        if (contextD != null) {
            String strH = com.mbridge.msdk.foundation.controller.c.m().h();
            int identifier = contextD.getResources().getIdentifier("mbridge_splash_count_time_can_skip", "string", strH);
            int identifier2 = contextD.getResources().getIdentifier("mbridge_splash_count_time_can_skip_not", "string", strH);
            int identifier3 = contextD.getResources().getIdentifier("mbridge_splash_count_time_can_skip_s", "string", strH);
            this.f37428n = contextD.getResources().getString(identifier);
            String string = contextD.getResources().getString(identifier2);
            this.f37430p = string;
            this.f37427m = string;
            this.f37429o = contextD.getResources().getString(identifier3);
            this.f37421g.setBackgroundResource(contextD.getResources().getIdentifier("mbridge_splash_close_bg", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
            this.f37421g.setTextColor(contextD.getResources().getColor(contextD.getResources().getIdentifier("mbridge_splash_count_time_skip_text_color", TtmlNode.ATTR_TTS_COLOR, strH)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void i() {
        MBSplashView mBSplashView;
        try {
            if (this.f37416b == null) {
                return;
            }
            this.f37432r = true;
            if (this.f37418d != null && (mBSplashView = this.f37417c) != null) {
                if (mBSplashView.getContext() != null && (this.f37417c.getContext() instanceof Activity) && ((Activity) this.f37417c.getContext()).isFinishing()) {
                    o0.a("SplashShowManager", "Activity is finishing");
                }
                if (this.f37417c.isShown()) {
                    this.f37418d.b(this.f37425k);
                } else {
                    this.f37418d.a(this.f37425k, "SplashView or container is not visibility");
                }
            }
            if (!this.f37416b.isReport()) {
                MBSplashView mBSplashView2 = this.f37417c;
                if (mBSplashView2 == null || mBSplashView2.isDynamicView()) {
                    a(this.f37416b);
                } else {
                    b(this.f37416b);
                }
                com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f37416b, this.f37423i);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void j() {
        String str;
        if (this.f37420f) {
            str = this.f37428n + this.f37426l + this.f37429o;
        } else {
            str = this.f37426l + this.f37430p;
        }
        this.f37421g.setText(str);
    }

    public void a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            viewGroup.setOnClickListener(this.f37438x);
        }
        this.f37422h = viewGroup;
    }

    public void a(CampaignEx campaignEx, MBSplashView mBSplashView) {
        MBSplashWebview splashWebview;
        a(this.f37420f);
        this.f37416b = campaignEx;
        this.f37417c = mBSplashView;
        com.mbridge.msdk.splash.signal.b splashSignalCommunicationImpl = mBSplashView.getSplashSignalCommunicationImpl();
        if (splashSignalCommunicationImpl == null) {
            splashSignalCommunicationImpl = new com.mbridge.msdk.splash.signal.b(mBSplashView.getContext(), this.f37424j, this.f37423i);
            ArrayList arrayList = new ArrayList();
            arrayList.add(campaignEx);
            splashSignalCommunicationImpl.a(arrayList);
        }
        splashSignalCommunicationImpl.b(this.f37426l);
        splashSignalCommunicationImpl.a(this.f37420f ? 1 : 0);
        a aVar = null;
        if (this.f37436v == null) {
            this.f37436v = new h(this, aVar);
        }
        splashSignalCommunicationImpl.a(this.f37436v);
        mBSplashView.setSplashSignalCommunicationImpl(splashSignalCommunicationImpl);
        boolean zIsHasMBTplMark = campaignEx.isHasMBTplMark();
        View view = this.f37422h;
        if (view == null) {
            if (zIsHasMBTplMark) {
                this.f37421g.setVisibility(8);
            }
            j();
            a(this.f37421g);
            mBSplashView.setCloseView(this.f37421g);
        } else {
            if (zIsHasMBTplMark) {
                view.setVisibility(8);
            }
            a(this.f37422h);
            mBSplashView.setCloseView(this.f37422h);
        }
        mBSplashView.show();
        CampaignEx campaignEx2 = this.f37416b;
        if (campaignEx2 != null && campaignEx2.isActiveOm() && (splashWebview = mBSplashView.getSplashWebview()) != null) {
            try {
                com.iab.omid.library.mmadbridge.adsession.b bVarA = com.mbridge.msdk.omsdk.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), splashWebview, splashWebview.getUrl(), this.f37416b);
                this.f37437w = bVarA;
                if (bVarA != null) {
                    splashWebview.setAdSession(bVarA);
                    this.f37437w.d(splashWebview);
                    this.f37437w.g();
                }
                o0.a("OMSDK", "adSession.start()");
            } catch (Throwable th2) {
                o0.a("OMSDK", th2.getMessage());
                CampaignEx campaignEx3 = this.f37416b;
                if (campaignEx3 != null) {
                    String requestId = campaignEx3.getRequestId();
                    String requestIdNotice = this.f37416b.getRequestIdNotice();
                    String id2 = this.f37416b.getId();
                    new com.mbridge.msdk.foundation.same.report.h(splashWebview.getContext()).a(requestId, requestIdNotice, id2, this.f37423i, "fetch OM failed, exception" + th2.getMessage());
                }
            }
        }
        com.mbridge.msdk.splash.manager.d.b(this.f37423i);
        this.f37439y.removeMessages(1);
        this.f37439y.sendEmptyMessageDelayed(1, 1000L);
        this.f37439y.sendEmptyMessageDelayed(2, 1000L);
        b();
        if (!this.f37416b.isMraid()) {
            a();
        }
        com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f37416b.getMaitve(), this.f37416b.getMaitve_src());
        try {
            BitmapDrawable bitmapDrawableA = com.mbridge.msdk.foundation.controller.c.m().a(this.f37423i, this.f37416b.getAdType());
            if (bitmapDrawableA != null) {
                if (this.f37435u == null) {
                    this.f37435u = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
                }
                if (this.f37435u.getVisibility() != 0) {
                    this.f37435u.setVisibility(0);
                }
                t0.a(this.f37435u, bitmapDrawableA, mBSplashView.getResources().getDisplayMetrics());
                if (this.f37435u.getParent() == null) {
                    mBSplashView.addView(this.f37435u, new ViewGroup.LayoutParams(-1, -1));
                }
                com.iab.omid.library.mmadbridge.adsession.b bVar = this.f37437w;
                if (bVar != null) {
                    bVar.a(this.f37435u, FriendlyObstructionPurpose.OTHER, null);
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    protected void a(CampaignEx campaignEx, boolean z10, String str) {
        if (this.f37419e == null) {
            com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f37423i);
            this.f37419e = aVar;
            aVar.a(this.f37440z);
        }
        campaignEx.setCampaignUnitId(this.f37423i);
        this.f37419e.a(campaignEx);
        if (!this.f37416b.isReportClick()) {
            this.f37416b.setReportClick(true);
            com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
        }
        com.mbridge.msdk.splash.middle.d dVar = this.f37418d;
        if (dVar != null) {
            dVar.a(this.f37425k);
            b(3);
        }
        if (!z10 || TextUtils.isEmpty(str)) {
            return;
        }
        com.mbridge.msdk.splash.report.a.a(campaignEx, this.f37423i, str);
    }

    public void a(com.mbridge.msdk.splash.middle.d dVar) {
        this.f37418d = dVar;
    }

    public void a(boolean z10) {
        this.f37420f = z10;
        if (z10) {
            this.f37427m = this.f37428n;
        } else {
            this.f37427m = this.f37430p;
        }
    }

    public void b() {
        MBSplashView mBSplashView;
        Context context;
        CampaignEx campaignEx = this.f37416b;
        if (campaignEx == null || campaignEx.getPrivacyButtonTemplateVisibility() != 1 || (mBSplashView = this.f37417c) == null || mBSplashView.getSplashWebview() == null || this.f37417c.isDynamicView() || !this.f37416b.isMraid() || (context = this.f37417c.getContext()) == null) {
            return;
        }
        try {
            int iA = g0.a(context, "mbridge_splash_notice", "drawable");
            int iA2 = t0.a(context, 35.0f);
            int iA3 = t0.a(context, 9.0f);
            ImageView imageView = new ImageView(context);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA2, iA2);
            layoutParams.addRule(9);
            layoutParams.addRule(10);
            layoutParams.setMargins(iA3, iA3, iA3, iA3);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setBackgroundResource(iA);
            t0.a(3, imageView, this.f37416b, context, true, new g());
            this.f37417c.addView(imageView);
        } catch (Throwable th2) {
            o0.b("SplashShowManager", th2.getMessage());
        }
    }

    protected void b(int i11) {
        CampaignEx campaignEx;
        MBSplashWebview splashWebview;
        MBSplashView mBSplashView = this.f37417c;
        if (mBSplashView != null && (splashWebview = mBSplashView.getSplashWebview()) != null) {
            splashWebview.finishAdSession();
        }
        if (this.f37439y == null || (campaignEx = this.f37416b) == null || !campaignEx.isActiveOm()) {
            a(i11);
        } else {
            this.f37439y.postDelayed(new e(i11), 1500L);
        }
    }

    public void b(CampaignEx campaignEx, boolean z10, String str) {
        throw null;
    }

    public String c() {
        ArrayList arrayList = new ArrayList();
        CampaignEx campaignEx = this.f37416b;
        if (campaignEx != null) {
            arrayList.add(campaignEx);
        }
        return com.mbridge.msdk.foundation.same.c.b(arrayList);
    }

    public void c(int i11) {
        this.f37426l = i11;
    }

    public String d() {
        CampaignEx campaignEx = this.f37416b;
        return (campaignEx == null || campaignEx.getRequestId() == null) ? "" : this.f37416b.getRequestId();
    }

    public void f() {
        Handler handler;
        this.f37434t = false;
        if (this.f37417c != null && this.f37426l > 0 && (handler = this.f37439y) != null) {
            handler.removeMessages(1);
        }
        MBSplashView mBSplashView = this.f37417c;
        if (mBSplashView != null) {
            mBSplashView.onPause();
            MBSplashWebview splashWebview = this.f37417c.getSplashWebview();
            if (splashWebview == null || splashWebview.isDestoryed()) {
                return;
            }
            com.mbridge.msdk.splash.signal.c.a(splashWebview, "onSystemPause", "");
        }
    }

    public void g() {
        MBSplashView mBSplashView;
        Handler handler;
        this.f37434t = true;
        if (this.f37417c != null && this.f37426l > 0 && (handler = this.f37439y) != null) {
            handler.removeMessages(1);
            this.f37439y.sendEmptyMessageDelayed(1, 1000L);
        }
        if (com.mbridge.msdk.foundation.feedback.b.f35289f || (mBSplashView = this.f37417c) == null) {
            return;
        }
        mBSplashView.onResume();
        MBSplashWebview splashWebview = this.f37417c.getSplashWebview();
        if (splashWebview == null || splashWebview.isDestoryed()) {
            return;
        }
        com.mbridge.msdk.splash.signal.c.a(splashWebview, "onSystemPause", "");
    }

    public void h() {
        if (this.f37418d != null) {
            this.f37418d = null;
        }
        if (this.f37436v != null) {
            this.f37436v = null;
        }
        if (this.f37438x != null) {
            this.f37438x = null;
        }
        MBSplashView mBSplashView = this.f37417c;
        if (mBSplashView != null) {
            mBSplashView.destroy();
        }
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f37423i);
    }
}
