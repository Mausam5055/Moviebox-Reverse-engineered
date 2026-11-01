package com.mbridge.msdk.advanced.manager;

import android.content.Context;
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
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedWebview;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.h;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.out.MBridgeIds;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected CampaignEx f34060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected MBNativeAdvancedView f34061c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected com.mbridge.msdk.advanced.middle.d f34062d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected com.mbridge.msdk.click.a f34063e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.mbridge.msdk.advanced.middle.c f34064f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f34065g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ImageView f34067i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected String f34068j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f34069k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected MBridgeIds f34070l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f34071m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f34059a = "NativeAdvancedShowManager";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f34066h = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View.OnClickListener f34072n = new ViewOnClickListenerC0466a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Handler f34073o = new b(Looper.getMainLooper());

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private com.mbridge.msdk.advanced.middle.a f34074p = new c();

    /* JADX INFO: renamed from: com.mbridge.msdk.advanced.manager.a$a, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes4.dex */
    class ViewOnClickListenerC0466a implements View.OnClickListener {
        ViewOnClickListenerC0466a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.f34065g) {
                a.this.a(1);
            }
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            CampaignEx campaignEx;
            MBNativeAdvancedView mBNativeAdvancedView;
            MBNativeAdvancedWebview advancedNativeWebview;
            super.handleMessage(message);
            if (message.what != 2 || (campaignEx = a.this.f34060b) == null || !campaignEx.isActiveOm() || (mBNativeAdvancedView = a.this.f34061c) == null || (advancedNativeWebview = mBNativeAdvancedView.getAdvancedNativeWebview()) == null) {
                return;
            }
            try {
                com.iab.omid.library.mmadbridge.adsession.b adSession = advancedNativeWebview.getAdSession();
                if (adSession != null) {
                    com.iab.omid.library.mmadbridge.adsession.a aVarA = com.iab.omid.library.mmadbridge.adsession.a.a(adSession);
                    aVarA.c();
                    aVarA.b();
                    o0.a("OMSDK", "adSession.impressionOccurred()");
                }
            } catch (Throwable th2) {
                o0.a("OMSDK", th2.getMessage());
                CampaignEx campaignEx2 = a.this.f34060b;
                if (campaignEx2 != null) {
                    String requestId = campaignEx2.getRequestId();
                    String requestIdNotice = a.this.f34060b.getRequestIdNotice();
                    String id2 = a.this.f34060b.getId();
                    new h(advancedNativeWebview.getContext()).a(requestId, requestIdNotice, id2, a.this.f34068j, "fetch OM failed, exception" + th2.getMessage());
                }
            }
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    class c implements com.mbridge.msdk.advanced.middle.a {
        c() {
        }

        @Override // com.mbridge.msdk.advanced.middle.a
        public void a(int i11) {
            o0.b(a.this.f34059a, "resetCountdown" + i11);
        }

        @Override // com.mbridge.msdk.advanced.middle.a
        public void a(CampaignEx campaignEx) {
            a.this.a(campaignEx, false, "");
        }

        @Override // com.mbridge.msdk.advanced.middle.a
        public void a(boolean z10) {
            a aVar = a.this;
            if (aVar.f34062d != null) {
                aVar.f34071m = z10;
                if (z10) {
                    a aVar2 = a.this;
                    aVar2.f34062d.f(aVar2.f34070l);
                } else {
                    a aVar3 = a.this;
                    aVar3.f34062d.a(aVar3.f34070l);
                }
            }
        }

        @Override // com.mbridge.msdk.advanced.middle.a
        public void a(boolean z10, String str) {
            try {
                if (a.this.f34062d != null) {
                    if (TextUtils.isEmpty(str)) {
                        a aVar = a.this;
                        aVar.f34062d.b(aVar.f34070l);
                        a aVar2 = a.this;
                        aVar2.f34062d.d(aVar2.f34070l);
                    } else {
                        CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(CampaignEx.campaignToJsonObject(a.this.f34060b));
                        campaignWithBackData.setClickTempSource(2);
                        campaignWithBackData.setClickType(2);
                        campaignWithBackData.setTriggerClickSource(2);
                        campaignWithBackData.setClickURL(str);
                        a.this.a(campaignWithBackData, z10, str);
                    }
                }
            } catch (Exception e11) {
                o0.b(a.this.f34059a, e11.getMessage());
            }
        }

        @Override // com.mbridge.msdk.advanced.middle.a
        public void close() {
            a.this.a(1);
        }

        @Override // com.mbridge.msdk.advanced.middle.a
        public void toggleCloseBtn(int i11) {
            a.this.f34066h = i11;
            MBNativeAdvancedView mBNativeAdvancedView = a.this.f34061c;
            if (mBNativeAdvancedView != null) {
                mBNativeAdvancedView.changeCloseBtnState(i11);
            }
        }

        @Override // com.mbridge.msdk.advanced.middle.a
        public void triggerCloseBtn(Object obj, String str) {
            MBNativeAdvancedView mBNativeAdvancedView = a.this.f34061c;
            if (mBNativeAdvancedView != null) {
                mBNativeAdvancedView.setVisibility(8);
            }
            a.this.a(1);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    class d implements com.mbridge.msdk.foundation.feedback.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MBNativeAdvancedView f34078a;

        d(MBNativeAdvancedView mBNativeAdvancedView) {
            this.f34078a = mBNativeAdvancedView;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String string;
            a.this.e();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(a.this.f34059a, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f34078a.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String string;
            a.this.f();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(a.this.f34059a, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f34078a.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String string;
            a.this.f();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(a.this.f34059a, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f34078a.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f34080a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MBNativeAdvancedView f34081b;

        e(CampaignEx campaignEx, MBNativeAdvancedView mBNativeAdvancedView) {
            this.f34080a = campaignEx;
            this.f34081b = mBNativeAdvancedView;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.a(this.f34080a, this.f34081b, false);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f34083a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f34084b;

        f(Context context, CampaignEx campaignEx) {
            this.f34083a = context;
            this.f34084b = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j.a(g.a(this.f34083a)).b(this.f34084b.getId());
            } catch (Exception unused) {
                o0.b(a.this.f34059a, "campain can't insert db");
            }
        }
    }

    public a(Context context, String str, String str2) {
        this.f34068j = str2;
        this.f34069k = str;
        this.f34070l = new MBridgeIds(str, str2);
        if (this.f34067i == null) {
            ImageView imageView = new ImageView(context);
            this.f34067i = imageView;
            imageView.setPadding(t0.a(context, 2.0f), t0.a(context, 2.0f), t0.a(context, 2.0f), t0.a(context, 2.0f));
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i11) {
        com.mbridge.msdk.advanced.middle.d dVar = this.f34062d;
        if (dVar != null) {
            dVar.c(this.f34070l);
            this.f34062d = null;
            com.mbridge.msdk.advanced.report.a.a(this.f34068j, this.f34060b);
        }
        com.mbridge.msdk.advanced.report.a.a(this.f34068j, i11, this.f34060b);
        MBNativeAdvancedView mBNativeAdvancedView = this.f34061c;
        if (mBNativeAdvancedView != null) {
            mBNativeAdvancedView.setVisibility(8);
            e();
            MBNativeAdvancedWebview advancedNativeWebview = this.f34061c.getAdvancedNativeWebview();
            if (advancedNativeWebview != null) {
                advancedNativeWebview.finishAdSession();
            }
        }
        Handler handler = this.f34073o;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    private void a(View view) {
        if (view != null) {
            view.setOnClickListener(this.f34072n);
        }
    }

    private void a(CampaignEx campaignEx) {
        if (campaignEx.isHasMBTplMark()) {
            return;
        }
        a(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f34068j);
        campaignEx.setReport(true);
        com.mbridge.msdk.foundation.same.buffer.b.a(this.f34068j, campaignEx, "h5_native");
        b(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f34068j);
        c(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f34068j);
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

    private void b(CampaignEx campaignEx, Context context, String str) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(campaignEx.getOnlyImpressionURL())) {
                    return;
                }
                com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getOnlyImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f34419n);
            } catch (Throwable th2) {
                o0.b(this.f34059a, th2.getMessage());
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
                o0.b(this.f34059a, th2.getMessage());
            }
        }
    }

    private void d() {
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        this.f34067i.setScaleType(ImageView.ScaleType.FIT_XY);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f34067i.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(t0.a(contextD, 29.0f), t0.a(contextD, 16.0f));
        }
        this.f34067i.setLayoutParams(layoutParams);
        this.f34067i.setImageResource(contextD.getResources().getIdentifier("mbridge_native_advanced_close_icon", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
    }

    private void h() {
        if (this.f34060b.isReport()) {
            return;
        }
        a(this.f34060b);
        com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f34060b, this.f34068j);
        com.mbridge.msdk.advanced.middle.d dVar = this.f34062d;
        if (dVar != null) {
            dVar.e(this.f34070l);
        }
    }

    private void i() {
        CampaignEx campaignEx;
        MBNativeAdvancedView mBNativeAdvancedView = this.f34061c;
        if (mBNativeAdvancedView == null || (campaignEx = this.f34060b) == null) {
            return;
        }
        mBNativeAdvancedView.setAdChoiceCampaign(campaignEx);
    }

    public String a() {
        ArrayList arrayList = new ArrayList();
        CampaignEx campaignEx = this.f34060b;
        if (campaignEx != null) {
            arrayList.add(campaignEx);
        }
        return com.mbridge.msdk.foundation.same.c.b(arrayList);
    }

    public void a(com.mbridge.msdk.advanced.middle.c cVar) {
        this.f34064f = cVar;
    }

    public void a(com.mbridge.msdk.advanced.middle.d dVar) {
        this.f34062d = dVar;
    }

    public void a(CampaignEx campaignEx, MBNativeAdvancedView mBNativeAdvancedView, boolean z10) {
        MBNativeAdvancedWebview advancedNativeWebview;
        View viewA;
        RelativeLayout.LayoutParams layoutParams;
        if (mBNativeAdvancedView == null) {
            return;
        }
        this.f34060b = campaignEx;
        this.f34061c = mBNativeAdvancedView;
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f34068j, new d(mBNativeAdvancedView));
        if (campaignEx.isMraid() && com.mbridge.msdk.foundation.feedback.b.b().a() && (viewA = com.mbridge.msdk.foundation.feedback.b.b().a(this.f34068j)) != null) {
            try {
                layoutParams = (RelativeLayout.LayoutParams) viewA.getLayoutParams();
            } catch (Exception e11) {
                e11.printStackTrace();
                layoutParams = null;
            }
            if (layoutParams == null) {
                layoutParams = new RelativeLayout.LayoutParams(com.mbridge.msdk.foundation.feedback.b.f35288e, com.mbridge.msdk.foundation.feedback.b.f35287d);
            }
            layoutParams.addRule(12);
            ViewGroup viewGroup = (ViewGroup) viewA.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(viewA);
            }
            mBNativeAdvancedView.addView(viewA, layoutParams);
        }
        a(this.f34065g);
        com.mbridge.msdk.advanced.signal.b advancedNativeSignalCommunicationImpl = mBNativeAdvancedView.getAdvancedNativeSignalCommunicationImpl();
        if (advancedNativeSignalCommunicationImpl == null) {
            advancedNativeSignalCommunicationImpl = new com.mbridge.msdk.advanced.signal.b(mBNativeAdvancedView.getContext(), this.f34069k, this.f34068j);
            List<CampaignEx> arrayList = new ArrayList<>();
            arrayList.add(campaignEx);
            advancedNativeSignalCommunicationImpl.a(arrayList);
        }
        advancedNativeSignalCommunicationImpl.a(this.f34065g ? 1 : 0);
        advancedNativeSignalCommunicationImpl.a(this.f34074p);
        mBNativeAdvancedView.setAdvancedNativeSignalCommunicationImpl(advancedNativeSignalCommunicationImpl);
        if (campaignEx.isHasMBTplMark() || !this.f34065g) {
            this.f34067i.setVisibility(8);
        }
        a(this.f34067i);
        mBNativeAdvancedView.setCloseView(this.f34067i);
        if (mBNativeAdvancedView.getVisibility() != 0) {
            mBNativeAdvancedView.setVisibility(0);
        }
        boolean zA = b1.a(mBNativeAdvancedView.getAdvancedNativeWebview(), 0);
        com.mbridge.msdk.advanced.middle.c cVar = this.f34064f;
        if (cVar == null || zA || cVar.d() == null || this.f34064f.d().getAlpha() < 0.5f || this.f34064f.d().getVisibility() != 0 || this.f34071m) {
            if (z10) {
                mBNativeAdvancedView.postDelayed(new e(campaignEx, mBNativeAdvancedView), 200L);
                return;
            }
            return;
        }
        mBNativeAdvancedView.show();
        com.mbridge.msdk.foundation.controller.c.m().a(mBNativeAdvancedView.getContext());
        campaignEx.setCampaignUnitId(this.f34068j);
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f34068j, campaignEx);
        CampaignEx campaignEx2 = this.f34060b;
        if (campaignEx2 != null && campaignEx2.isActiveOm() && (advancedNativeWebview = mBNativeAdvancedView.getAdvancedNativeWebview()) != null) {
            try {
                com.iab.omid.library.mmadbridge.adsession.b bVarA = com.mbridge.msdk.omsdk.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), advancedNativeWebview, advancedNativeWebview.getUrl(), this.f34060b);
                if (bVarA != null) {
                    advancedNativeWebview.setAdSession(bVarA);
                    bVarA.d(advancedNativeWebview);
                    bVarA.g();
                    o0.a("OMSDK", "adSession.start()");
                }
            } catch (Throwable th2) {
                o0.a("OMSDK", th2.getMessage());
                CampaignEx campaignEx3 = this.f34060b;
                if (campaignEx3 != null) {
                    String requestId = campaignEx3.getRequestId();
                    String requestIdNotice = this.f34060b.getRequestIdNotice();
                    String id2 = this.f34060b.getId();
                    new h(com.mbridge.msdk.foundation.controller.c.m().d()).a(requestId, requestIdNotice, id2, this.f34068j, "fetch OM failed, exception" + th2.getMessage());
                }
            }
        }
        h();
        if (campaignEx.isMraid()) {
            i();
        }
        int i11 = this.f34066h;
        if (i11 != -1) {
            mBNativeAdvancedView.changeCloseBtnState(i11);
        }
        com.mbridge.msdk.advanced.manager.d.b(this.f34068j);
        com.mbridge.msdk.advanced.common.c.b(this.f34069k + this.f34068j + campaignEx.getRequestId());
        this.f34073o.sendEmptyMessageDelayed(2, 1000L);
        com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f34060b.getMaitve(), this.f34060b.getMaitve_src());
    }

    public void a(CampaignEx campaignEx, boolean z10, String str) {
        throw null;
    }

    public void a(boolean z10) {
        this.f34065g = z10;
    }

    public com.mbridge.msdk.advanced.middle.a b() {
        return this.f34074p;
    }

    public String c() {
        CampaignEx campaignEx = this.f34060b;
        return (campaignEx == null || campaignEx.getRequestId() == null) ? "" : this.f34060b.getRequestId();
    }

    public void e() {
        MBNativeAdvancedWebview advancedNativeWebview;
        MBNativeAdvancedView mBNativeAdvancedView = this.f34061c;
        if (mBNativeAdvancedView == null || (advancedNativeWebview = mBNativeAdvancedView.getAdvancedNativeWebview()) == null || advancedNativeWebview.isDestoryed()) {
            return;
        }
        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) advancedNativeWebview, "onViewDisappeared", "");
    }

    public void f() {
        MBNativeAdvancedWebview advancedNativeWebview;
        if (this.f34061c == null || com.mbridge.msdk.foundation.feedback.b.f35289f || (advancedNativeWebview = this.f34061c.getAdvancedNativeWebview()) == null || advancedNativeWebview.isDestoryed()) {
            return;
        }
        com.mbridge.msdk.advanced.signal.a.a(advancedNativeWebview, "onViewAppeared", "");
    }

    public void g() {
        if (this.f34062d != null) {
            this.f34062d = null;
        }
        if (this.f34074p != null) {
            this.f34074p = null;
        }
        if (this.f34072n != null) {
            this.f34072n = null;
        }
        MBNativeAdvancedView mBNativeAdvancedView = this.f34061c;
        if (mBNativeAdvancedView != null) {
            MBNativeAdvancedWebview advancedNativeWebview = mBNativeAdvancedView.getAdvancedNativeWebview();
            if (advancedNativeWebview != null) {
                advancedNativeWebview.finishAdSession();
            }
            this.f34061c.destroy();
        }
        if (this.f34064f != null) {
            this.f34064f = null;
        }
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f34068j);
    }
}
