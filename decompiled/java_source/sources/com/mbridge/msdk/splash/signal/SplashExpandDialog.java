package com.mbridge.msdk.splash.signal;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.material.card.MaterialCardView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.widget.MBAdChoice;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class SplashExpandDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f37586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f37588c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FrameLayout f37589d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WindVaneWebView f37590e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f37591f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f37592g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<CampaignEx> f37593h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.mbridge.msdk.splash.middle.a f37594i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.mbridge.msdk.mbsignalcommon.mraid.b f37595j;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SplashExpandDialog.this.dismiss();
        }
    }

    class b extends com.mbridge.msdk.mbsignalcommon.listener.b {

        class a implements ValueCallback<String> {
            a() {
            }

            @Override // android.webkit.ValueCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onReceiveValue(String str) {
            }
        }

        b() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            webView.evaluateJavascript("javascript:" + com.mbridge.msdk.setting.util.a.a().b(), new a());
            SplashExpandDialog.this.c();
        }
    }

    class c implements com.mbridge.msdk.foundation.feedback.a {
        c() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            SplashExpandDialog.this.a();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            SplashExpandDialog.this.a();
        }
    }

    class d implements DialogInterface.OnDismissListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (SplashExpandDialog.this.f37594i != null) {
                SplashExpandDialog.this.f37594i.a(false);
                SplashExpandDialog.this.f37594i.close();
            }
            SplashExpandDialog.this.f37590e.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
            SplashExpandDialog.this.f37589d.removeView(SplashExpandDialog.this.f37590e);
            SplashExpandDialog.this.f37590e.release();
            SplashExpandDialog.this.f37590e = null;
            SplashExpandDialog.this.f37594i = null;
        }
    }

    class e implements com.mbridge.msdk.mbsignalcommon.mraid.b {
        e() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public void close() {
            SplashExpandDialog.this.dismiss();
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public void expand(String str, boolean z10) {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public CampaignEx getMraidCampaign() {
            return null;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public void open(String str) {
            try {
                if (SplashExpandDialog.this.f37590e == null || System.currentTimeMillis() - SplashExpandDialog.this.f37590e.lastTouchTime <= com.mbridge.msdk.click.utils.a.f34446c || !com.mbridge.msdk.click.utils.a.a((CampaignEx) SplashExpandDialog.this.f37593h.get(0), SplashExpandDialog.this.f37590e.getUrl(), com.mbridge.msdk.click.utils.a.f34444a)) {
                    o0.b("SplashExpandDialog", str);
                    if (SplashExpandDialog.this.f37593h.size() > 1) {
                        com.mbridge.msdk.foundation.controller.c.m().d().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                        str = null;
                    }
                    if (SplashExpandDialog.this.f37594i != null) {
                        SplashExpandDialog.this.f37594i.a(true, str);
                    }
                }
            } catch (Throwable th2) {
                o0.b("SplashExpandDialog", MRAIDPresenter.OPEN, th2);
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public void unload() {
            close();
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public void useCustomClose(boolean z10) {
            try {
                SplashExpandDialog.this.f37591f.setVisibility(z10 ? 4 : 0);
            } catch (Throwable th2) {
                o0.b("SplashExpandDialog", "useCustomClose", th2);
            }
        }
    }

    public SplashExpandDialog(Context context, Bundle bundle, com.mbridge.msdk.splash.middle.a aVar) {
        super(context);
        this.f37586a = "SplashExpandDialog";
        this.f37595j = new e();
        if (bundle != null) {
            this.f37587b = bundle.getString("url");
            this.f37588c = bundle.getBoolean("shouldUseCustomClose");
        }
        this.f37594i = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (getWindow() != null) {
            getWindow().setBackgroundDrawable(new ColorDrawable(0));
            getWindow().getDecorView().setPadding(0, 0, 0, 0);
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.width = -1;
            attributes.height = -1;
            getWindow().setAttributes(attributes);
            getWindow().getDecorView().setSystemUiVisibility(4615);
        }
    }

    private void b() {
        CampaignEx campaignEx;
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f37589d = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        WindVaneWebView windVaneWebView = new WindVaneWebView(getContext().getApplicationContext());
        this.f37590e = windVaneWebView;
        windVaneWebView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f37589d.addView(this.f37590e);
        TextView textView = new TextView(getContext());
        this.f37591f = textView;
        textView.setBackgroundColor(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(96, 96);
        layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
        layoutParams.setMargins(30, 30, 30, 30);
        this.f37591f.setLayoutParams(layoutParams);
        this.f37591f.setVisibility(this.f37588c ? 4 : 0);
        this.f37591f.setOnClickListener(new a());
        this.f37589d.addView(this.f37591f);
        setContentView(this.f37589d);
        a();
        this.f37590e.setWebViewListener(new b());
        this.f37590e.setObject(this.f37595j);
        this.f37590e.loadUrl(this.f37587b);
        List<CampaignEx> list = this.f37593h;
        if (list != null && !list.isEmpty() && (campaignEx = this.f37593h.get(0)) != null && campaignEx.getPrivacyButtonTemplateVisibility() != 0) {
            MBAdChoice mBAdChoice = new MBAdChoice(com.mbridge.msdk.foundation.controller.c.m().d());
            mBAdChoice.setCampaign(campaignEx);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f), t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f));
            layoutParams2.gravity = 85;
            layoutParams2.bottomMargin = layoutParams.topMargin;
            layoutParams2.rightMargin = layoutParams.rightMargin;
            mBAdChoice.setFeedbackDialogEventListener(new c());
            this.f37589d.addView(mBAdChoice, layoutParams2);
        }
        BitmapDrawable bitmapDrawableA = com.mbridge.msdk.foundation.controller.c.m().a(this.f37592g, 297);
        if (bitmapDrawableA != null) {
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            t0.a(imageView, bitmapDrawableA, this.f37589d.getResources().getDisplayMetrics());
            this.f37589d.addView(imageView, new ViewGroup.LayoutParams(-1, -1));
        }
        setOnDismissListener(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        String str;
        try {
            int i11 = com.mbridge.msdk.foundation.controller.c.m().d().getResources().getConfiguration().orientation;
            JSONObject jSONObject = new JSONObject();
            if (i11 == 2) {
                str = TmcStartParams.KEY_LANDSCAPE;
            } else {
                str = i11 == 1 ? "portrait" : "undefined";
            }
            jSONObject.put("orientation", str);
            jSONObject.put("locked", "true");
            float fN = k0.n(com.mbridge.msdk.foundation.controller.c.m().d());
            float fM = k0.m(com.mbridge.msdk.foundation.controller.c.m().d());
            HashMap mapV = k0.v(com.mbridge.msdk.foundation.controller.c.m().d());
            int iIntValue = ((Integer) mapV.get("width")).intValue();
            int iIntValue2 = ((Integer) mapV.get("height")).intValue();
            HashMap map = new HashMap();
            map.put("placementType", "Interstitial");
            map.put("state", "expanded");
            map.put("viewable", "true");
            map.put("currentAppOrientation", jSONObject);
            int[] iArr = new int[2];
            this.f37590e.getLocationInWindow(iArr);
            com.mbridge.msdk.mbsignalcommon.mraid.a aVarA = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView = this.f37590e;
            aVarA.b(windVaneWebView, iArr[0], iArr[1], windVaneWebView.getWidth(), this.f37590e.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a aVarA2 = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView2 = this.f37590e;
            aVarA2.a(windVaneWebView2, iArr[0], iArr[1], windVaneWebView2.getWidth(), this.f37590e.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.f37590e, fN, fM);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f37590e, iIntValue, iIntValue2);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f37590e, map);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f37590e);
        } catch (Throwable th2) {
            o0.b("SplashExpandDialog", "notifyMraid", th2);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setCanceledOnTouchOutside(false);
        setCancelable(true);
        b();
    }

    public void setCampaignList(String str, List<CampaignEx> list) {
        this.f37592g = str;
        this.f37593h = list;
    }
}
