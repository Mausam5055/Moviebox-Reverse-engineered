package com.mbridge.msdk.advanced.signal;

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
public class NativeAdvancedExpandDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f34214b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f34215c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FrameLayout f34216d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WindVaneWebView f34217e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f34218f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f34219g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<CampaignEx> f34220h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.mbridge.msdk.advanced.middle.a f34221i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.mbridge.msdk.mbsignalcommon.mraid.b f34222j;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NativeAdvancedExpandDialog.this.dismiss();
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
            NativeAdvancedExpandDialog.this.c();
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
            NativeAdvancedExpandDialog.this.a();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            NativeAdvancedExpandDialog.this.a();
        }
    }

    class d implements DialogInterface.OnDismissListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (NativeAdvancedExpandDialog.this.f34221i != null) {
                NativeAdvancedExpandDialog.this.f34221i.a(false);
            }
            NativeAdvancedExpandDialog.this.f34217e.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
            NativeAdvancedExpandDialog.this.f34216d.removeView(NativeAdvancedExpandDialog.this.f34217e);
            NativeAdvancedExpandDialog.this.f34217e.release();
            NativeAdvancedExpandDialog.this.f34217e = null;
            NativeAdvancedExpandDialog.this.f34221i = null;
        }
    }

    class e implements com.mbridge.msdk.mbsignalcommon.mraid.b {
        e() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public void close() {
            NativeAdvancedExpandDialog.this.dismiss();
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
                if (NativeAdvancedExpandDialog.this.f34217e == null || System.currentTimeMillis() - NativeAdvancedExpandDialog.this.f34217e.lastTouchTime <= com.mbridge.msdk.click.utils.a.f34446c || !com.mbridge.msdk.click.utils.a.a((CampaignEx) NativeAdvancedExpandDialog.this.f34220h.get(0), NativeAdvancedExpandDialog.this.f34217e.getUrl(), com.mbridge.msdk.click.utils.a.f34444a)) {
                    o0.b("NativeAdvancedExpandDialog", str);
                    if (NativeAdvancedExpandDialog.this.f34220h.size() > 1) {
                        com.mbridge.msdk.foundation.controller.c.m().d().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                        str = null;
                    }
                    if (NativeAdvancedExpandDialog.this.f34221i != null) {
                        NativeAdvancedExpandDialog.this.f34221i.a(true, str);
                    }
                }
            } catch (Throwable th2) {
                o0.b("NativeAdvancedExpandDialog", MRAIDPresenter.OPEN, th2);
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public void unload() {
            close();
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public void useCustomClose(boolean z10) {
            try {
                NativeAdvancedExpandDialog.this.f34218f.setVisibility(z10 ? 4 : 0);
            } catch (Throwable th2) {
                o0.b("NativeAdvancedExpandDialog", "useCustomClose", th2);
            }
        }
    }

    public NativeAdvancedExpandDialog(Context context, Bundle bundle, com.mbridge.msdk.advanced.middle.a aVar) {
        super(context);
        this.f34213a = "NativeAdvancedExpandDialog";
        this.f34222j = new e();
        if (bundle != null) {
            this.f34214b = bundle.getString("url");
            this.f34215c = bundle.getBoolean("shouldUseCustomClose");
        }
        this.f34221i = aVar;
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
        this.f34216d = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        WindVaneWebView windVaneWebView = new WindVaneWebView(getContext().getApplicationContext());
        this.f34217e = windVaneWebView;
        windVaneWebView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f34216d.addView(this.f34217e);
        TextView textView = new TextView(getContext());
        this.f34218f = textView;
        textView.setBackgroundColor(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(96, 96);
        layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
        layoutParams.setMargins(30, 30, 30, 30);
        this.f34218f.setLayoutParams(layoutParams);
        this.f34218f.setVisibility(this.f34215c ? 4 : 0);
        this.f34218f.setOnClickListener(new a());
        this.f34216d.addView(this.f34218f);
        setContentView(this.f34216d);
        a();
        this.f34217e.setWebViewListener(new b());
        this.f34217e.setObject(this.f34222j);
        this.f34217e.loadUrl(this.f34214b);
        List<CampaignEx> list = this.f34220h;
        if (list != null && list.size() > 0 && (campaignEx = this.f34220h.get(0)) != null && campaignEx.getPrivacyButtonTemplateVisibility() != 0) {
            MBAdChoice mBAdChoice = new MBAdChoice(com.mbridge.msdk.foundation.controller.c.m().d());
            mBAdChoice.setCampaign(campaignEx);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f), t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f));
            layoutParams2.gravity = 85;
            layoutParams2.bottomMargin = layoutParams.topMargin;
            layoutParams2.rightMargin = layoutParams.rightMargin;
            mBAdChoice.setFeedbackDialogEventListener(new c());
            this.f34216d.addView(mBAdChoice, layoutParams2);
        }
        BitmapDrawable bitmapDrawableA = com.mbridge.msdk.foundation.controller.c.m().a(this.f34219g, 296);
        if (bitmapDrawableA != null) {
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            t0.a(imageView, bitmapDrawableA, this.f34216d.getResources().getDisplayMetrics());
            this.f34216d.addView(imageView, new ViewGroup.LayoutParams(-1, -1));
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
            map.put("placementType", "inline");
            map.put("state", "expanded");
            map.put("viewable", "true");
            map.put("currentAppOrientation", jSONObject);
            int[] iArr = new int[2];
            this.f34217e.getLocationInWindow(iArr);
            com.mbridge.msdk.mbsignalcommon.mraid.a aVarA = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView = this.f34217e;
            aVarA.b(windVaneWebView, iArr[0], iArr[1], windVaneWebView.getWidth(), this.f34217e.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a aVarA2 = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView2 = this.f34217e;
            aVarA2.a(windVaneWebView2, iArr[0], iArr[1], windVaneWebView2.getWidth(), this.f34217e.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.f34217e, fN, fM);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f34217e, iIntValue, iIntValue2);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f34217e, map);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f34217e);
        } catch (Throwable th2) {
            o0.b("NativeAdvancedExpandDialog", "notifyMraid", th2);
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
        this.f34219g = str;
        this.f34220h = list;
    }
}
