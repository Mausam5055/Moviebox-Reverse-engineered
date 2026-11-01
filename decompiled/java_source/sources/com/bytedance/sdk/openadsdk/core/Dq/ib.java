package com.bytedance.sdk.openadsdk.core.Dq;

import android.R;
import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.fF;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class ib extends com.bytedance.sdk.component.adexpress.HiB.Sj {
    private String Dq;
    private com.bytedance.sdk.openadsdk.EjP.Ym Fmk;
    private Context Jcg;
    private TEQ RiZ;
    private JSONObject TEQ;
    private volatile int TzV;
    private com.bytedance.sdk.openadsdk.EjP.EjP.HiB Ym;
    private Yf Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private String f21023aa;
    private com.bytedance.sdk.openadsdk.core.model.sU.Sj dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private final Runnable f21024dx;
    private final com.bytedance.sdk.component.Dq.Dq sU;
    private final Map<String, com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS> sef;
    private com.bytedance.sdk.openadsdk.core.model.sU uA;
    private com.bytedance.sdk.component.adexpress.sP.Jcg uvD;
    com.bytedance.sdk.openadsdk.utils.Sj vS;

    public ib(Context context, com.bytedance.sdk.component.adexpress.sP.Fmk fmk, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        super(context, fmk, themeStatusBroadcastReceiver);
        this.sef = Collections.synchronizedMap(new HashMap());
        this.TzV = 0;
        this.sU = new com.bytedance.sdk.component.Dq.Dq("webviewrender_template") { // from class: com.bytedance.sdk.openadsdk.core.Dq.ib.1
            @Override // java.lang.Runnable
            public void run() {
                if (((com.bytedance.sdk.component.adexpress.HiB.Sj) ib.this).HiB.get()) {
                    return;
                }
                if ((ib.this.uA instanceof com.bytedance.sdk.openadsdk.core.model.dx) && ((com.bytedance.sdk.openadsdk.core.model.dx) ib.this.uA).Qne()) {
                    ib.this.sP(true);
                }
                ib ibVar = ib.this;
                ibVar.TEQ = ibVar.Ym().TKC();
                ib ibVar2 = ib.this;
                ibVar2.Sj(ibVar2.TEQ);
                if (ib.this.TzV == 0) {
                    ib.this.dNu();
                }
                com.bytedance.sdk.openadsdk.core.sef.TKC().post(ib.this.f21024dx);
            }
        };
        this.f21024dx = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Dq.ib.2
            @Override // java.lang.Runnable
            public void run() {
                if (((com.bytedance.sdk.component.adexpress.HiB.Sj) ib.this).HiB.get() || ib.this.uvD == null) {
                    return;
                }
                ib.this.aa();
                ib ibVar = ib.this;
                ib.super.Sj(ibVar.uvD);
            }
        };
        if (this.TKC == null) {
            return;
        }
        this.Jcg = context;
        this.Dq = fmk.EjP();
        this.uA = sUVar;
        this.Ym = hiB;
        themeStatusBroadcastReceiver.Sj(this);
        dNu();
    }

    public static String Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        return com.bytedance.sdk.component.adexpress.Sj.sP.sP.EjP((sUVar == null || !sUVar.db()) ? null : "v3");
    }

    private void Sj(com.bytedance.sdk.component.uA.vS vSVar) {
        if (vSVar == null) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.core.widget.Sj.TKC.Sj(this.Jcg).Sj(false).Sj(vSVar.getWebView());
            vSVar.setVerticalScrollBarEnabled(false);
            vSVar.setHorizontalScrollBarEnabled(false);
            com.bytedance.sdk.openadsdk.core.widget.Sj.TKC.Sj(vSVar);
            vSVar.sef();
            vSVar.setUserAgentString(com.bytedance.sdk.openadsdk.utils.TzV.Sj(vSVar.getWebView(), BuildConfig.VERSION_CODE));
            vSVar.setMixedContentMode(0);
            vSVar.setJavaScriptEnabled(true);
            vSVar.setJavaScriptCanOpenWindowsAutomatically(true);
            vSVar.setDomStorageEnabled(true);
            vSVar.setDatabaseEnabled(true);
            vSVar.setAllowFileAccess(false);
            vSVar.setSupportZoom(true);
            vSVar.setBuiltInZoomControls(true);
            vSVar.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
            vSVar.setUseWideViewPort(true);
            vSVar.setCacheMode(-1);
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.WebViewRender", e11.toString());
        }
    }

    private void TKC(boolean z10) {
        if (this.Zq == null || this.TKC == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("adVisible", z10);
            this.Zq.Sj("expressAdShow", jSONObject);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void TzV() {
        com.bytedance.sdk.component.uA.vS vSVar = this.TKC;
        if (vSVar == null || vSVar.getWebView() == null || this.TzV == 2) {
            return;
        }
        this.f21023aa = Sj(this.uA);
        this.TKC.setDisplayZoomControls(false);
        Sj(fF.Sj(this.f21023aa));
        Fmk();
        Yf yf2 = new Yf(this.Jcg);
        this.Zq = yf2;
        yf2.EjP(true);
        sef();
        this.TzV = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dNu() {
        if (this.TKC.getWebView() != null && JcM.vS()) {
            TzV();
        } else {
            this.TzV = 1;
            JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Dq.ib.3
                @Override // java.lang.Runnable
                public void run() {
                    ib.this.TzV();
                }
            });
        }
    }

    public static boolean sP(String str) {
        return "banner_call".equals(str) || "banner_ad".equals(str) || "slide_banner_ad".equals(str) || "banner_ad_landingpage".equals(str);
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.Sj
    public void Dq() {
        super.Dq();
        if (this.Zq == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("expressShow", true);
            this.Zq.Sj("expressShow", jSONObject);
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.Sj
    public void EjP() {
        if (this.HiB.get()) {
            return;
        }
        super.EjP();
        Yf yf2 = this.Zq;
        if (yf2 != null) {
            yf2.TKC();
            this.Zq.aa();
            this.Zq = null;
        }
        com.bytedance.sdk.openadsdk.EjP.Ym ym2 = this.Fmk;
        if (ym2 != null) {
            ym2.EjP(false);
        }
        com.bytedance.sdk.openadsdk.core.sef.TKC().removeCallbacks(this.f21024dx);
        this.sef.clear();
    }

    public void Fmk() {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.uA;
        if (sUVar == null || sUVar.xhi() == null) {
            return;
        }
        this.dNu = this.uA.xhi();
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.Sj
    public void Jcg() {
        Yf yf2 = this.Zq;
        if (yf2 == null) {
            return;
        }
        yf2.Sj("expressWebviewRecycle", (JSONObject) null);
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.Sj
    public com.bytedance.sdk.component.uA.vS Sj() {
        return this.TKC;
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.Sj
    public void Sj(int i11) {
        if (i11 == this.EjP) {
            return;
        }
        this.EjP = i11;
        TKC(i11 == 0);
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.Sj, com.bytedance.sdk.component.adexpress.sP.EjP
    public void Sj(com.bytedance.sdk.component.adexpress.sP.Jcg jcg) {
        this.uvD = jcg;
        JcM.sP(this.sU);
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.Sj, com.bytedance.sdk.component.adexpress.sP.Ym
    public void Sj(com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
        super.Sj(sefVar);
        if (this.sP) {
            com.bytedance.sdk.component.utils.uA.sP().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Dq.ib.4
                @Override // java.lang.Runnable
                public void run() {
                    WebView webView = ((com.bytedance.sdk.component.adexpress.HiB.Sj) ib.this).TKC.getWebView();
                    if (webView != null) {
                        webView.resumeTimers();
                    }
                }
            }, 2000L);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.Sj
    protected void TEQ() {
        super.TEQ();
        com.bytedance.sdk.openadsdk.utils.Sj sj2 = this.vS;
        if (sj2 != null) {
            sj2.sP(this);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.Sj, com.bytedance.sdk.component.adexpress.sP.EjP
    public int TKC() {
        return this.uA.fF();
    }

    public TEQ Zq() {
        return this.RiZ;
    }

    public void aa() {
        Yf yf2;
        com.bytedance.sdk.component.uA.vS vSVar = this.TKC;
        if (vSVar == null || vSVar.getWebView() == null || (yf2 = this.Zq) == null) {
            return;
        }
        yf2.sP(this.TKC).Sj(this.uA).TKC(this.uA.aZ()).EjP(this.uA.mZN()).sP(Mts.Sj(this.Dq)).HiB(this.uA.Lip()).Sj(this).Sj(this.TEQ).Sj(this.TKC).Sj(this.Ym);
    }

    @Override // com.bytedance.sdk.component.adexpress.theme.Sj
    public void onThemeChanged(int i11) {
        if (this.Zq == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(NotificationCompat.CATEGORY_STATUS, i11);
        } catch (JSONException unused) {
        }
        this.Zq.Sj("themeChange", jSONObject);
    }

    public void sP(int i11) {
        if (this.Zq == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("zoom_type", i11);
            this.Zq.Sj("expressAdViewWillZoom", jSONObject);
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.WebViewRender", e11.getMessage());
        }
    }

    public void sef() {
        com.bytedance.sdk.component.uA.vS vSVar = this.TKC;
        if (vSVar == null || vSVar.getWebView() == null) {
            return;
        }
        this.TKC.setBackgroundColor(0);
        this.TKC.setBackgroundResource(R.color.transparent);
        Sj(this.TKC);
        if (Sj() != null) {
            this.Fmk = new com.bytedance.sdk.openadsdk.EjP.Ym(this.uA, Sj().getWebView()).sP(false);
        }
        this.Fmk.Sj(this.Ym);
        TEQ teq = new TEQ(this.Jcg, this.Zq, this.uA, this.Fmk, Ym());
        this.RiZ = teq;
        this.TKC.setWebViewClient(teq);
        this.TKC.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Sj.EjP(this.Zq, this.Fmk));
        com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().Sj(this.TKC, this.Zq);
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.Sj
    protected void uA() {
        super.uA();
        com.bytedance.sdk.openadsdk.utils.Sj sjHiB = com.bytedance.sdk.openadsdk.core.Zq.Sj().HiB();
        this.vS = sjHiB;
        sjHiB.Sj(this);
    }

    public Yf uvD() {
        return this.Zq;
    }

    @Override // com.bytedance.sdk.component.adexpress.HiB.Sj
    public void vS() {
        if (Sj() == null) {
            return;
        }
        try {
            Sj().getWebView().resumeTimers();
        } catch (Exception unused) {
        }
    }
}
