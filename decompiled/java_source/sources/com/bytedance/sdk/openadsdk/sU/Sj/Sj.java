package com.bytedance.sdk.openadsdk.sU.Sj;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.ConsoleMessage;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.uA.vS;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.core.widget.Sj.HiB;
import com.bytedance.sdk.openadsdk.core.widget.TEQ;
import com.bytedance.sdk.openadsdk.core.widget.uA;
import com.bytedance.sdk.openadsdk.sU.Dq;
import com.bytedance.sdk.openadsdk.sU.Jcg;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.TzV;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    private String Dq;
    private final int EjP;
    private volatile boolean Fmk;
    private final FrameLayout HiB;
    private Yf Jcg;
    protected vS Sj;
    private Dq TEQ;
    private final sU TKC;
    private InterfaceC0288Sj TzV;

    @Nullable
    private com.bytedance.sdk.openadsdk.aa.vS Ym;
    private AtomicBoolean Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f21122aa;
    private com.bytedance.sdk.openadsdk.core.sP.Sj dNu;
    private final Context sP;
    private volatile boolean sef;
    private final String uA;
    private uA uvD;

    @Nullable
    private TEQ vS;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.sU.Sj.Sj$Sj, reason: collision with other inner class name */
    public interface InterfaceC0288Sj {
        void Sj();
    }

    public Sj(Context context, sU sUVar, int i11, boolean z10, FrameLayout frameLayout) {
        this(context, sUVar, i11, z10, frameLayout, false);
    }

    public Sj(Context context, sU sUVar, int i11, boolean z10, FrameLayout frameLayout, boolean z11) {
        this.f21122aa = true;
        this.Zq = new AtomicBoolean(false);
        this.sP = context;
        this.TKC = sUVar;
        this.EjP = i11;
        String strTKC = Mts.TKC(sUVar.xD().getDurationSlotType());
        this.Dq = strTKC;
        int iSj = Mts.Sj(strTKC);
        if (z11) {
            this.Dq = Mts.sP(iSj);
        }
        this.uA = uP.Fmk(sUVar);
        this.HiB = frameLayout;
        Sj(frameLayout);
        Sj(iSj);
        TKC(z10);
        Jcg();
    }

    private void Jcg() {
        this.Sj.setWebViewClient(new HiB(dNu.Sj(), this.Jcg, this.TKC.aZ(), null, true) { // from class: com.bytedance.sdk.openadsdk.sU.Sj.Sj.5
            @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                if (Sj.this.TEQ != null) {
                    Sj.this.TEQ.uA(str);
                }
                if (Sj.this.f21122aa) {
                    Sj.this.Sj(0, 0);
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), Sj.this.TKC, Sj.this.Dq, "py_loading_success");
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i11, String str, String str2) {
                super.onReceivedError(webView, i11, str, str2);
                Sj.this.f21122aa = false;
                if (Sj.this.TEQ != null) {
                    Sj.this.TEQ.vS(com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(Sj.this.TKC));
                    Sj.this.TEQ.Sj(i11, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                if (webResourceRequest.isForMainFrame()) {
                    Sj.this.f21122aa = false;
                    if (Sj.this.TEQ == null || webResourceError == null) {
                        return;
                    }
                    Sj.this.TEQ.vS(com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(Sj.this.TKC));
                    Sj.this.TEQ.Sj(webResourceError.getErrorCode(), String.valueOf(webResourceError.getDescription()), String.valueOf(webResourceRequest.getUrl()));
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                if (webResourceRequest.isForMainFrame()) {
                    Sj.this.f21122aa = false;
                    if (Sj.this.TEQ != null) {
                        Sj.this.TEQ.vS(com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(Sj.this.TKC));
                        Sj.this.TEQ.Sj(webResourceRequest.isForMainFrame(), webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode());
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                try {
                    if (Sj.this.TKC.UHs() != null && !TextUtils.isEmpty(Sj.this.TKC.UHs().f())) {
                        if (Sj.this.TEQ != null) {
                            Sj.this.TEQ.TEQ(str);
                        }
                        String strFmk = uP.Fmk(Sj.this.TKC);
                        WebResourceResponse webResourceResponseSj = com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(Sj.this.TKC.UHs().f(), strFmk, str);
                        if (webResourceResponseSj == null) {
                            return super.shouldInterceptRequest(webView, str);
                        }
                        if (Sj.this.TEQ != null) {
                            Sj.this.TEQ.Ym(str);
                        }
                        return webResourceResponseSj;
                    }
                    return super.shouldInterceptRequest(webView, str);
                } catch (Throwable unused) {
                    return super.shouldInterceptRequest(webView, str);
                }
            }
        });
        this.Sj.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Sj.EjP(this.Jcg) { // from class: com.bytedance.sdk.openadsdk.sU.Sj.Sj.6
            @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.EjP, android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                return super.onConsoleMessage(consoleMessage);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.EjP, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i11) {
                super.onProgressChanged(webView, i11);
                if (Sj.this.vS == null || Sj.this.vS.getVisibility() != 0) {
                    return;
                }
                Sj.this.vS.setProgress(i11);
            }
        });
        com.bytedance.sdk.openadsdk.core.widget.Sj.TKC.Sj(this.sP).Sj(false).sP(false).Sj(this.Sj.getWebView());
        vS vSVar = this.Sj;
        vSVar.setUserAgentString(TzV.Sj(vSVar.getWebView(), BuildConfig.VERSION_CODE));
        this.Sj.setMixedContentMode(0);
    }

    private void Sj(int i11) {
        HashMap map = new HashMap();
        map.put("click_scence", 3);
        this.Jcg = new Yf(this.sP);
        this.Jcg.sP(this.Sj).Sj(this.TKC).TKC(this.TKC.aZ()).EjP(this.TKC.mZN()).sP(i11).HiB(this.TKC.Lip()).Sj(this.Sj).sP(this.Dq).Sj(map).Sj(new com.bytedance.sdk.openadsdk.EjP.dNu(3, this.Dq, this.TKC));
    }

    private void Sj(FrameLayout frameLayout) {
        vS vSVar = new vS(this.sP);
        this.Sj = vSVar;
        vSVar.HiB();
        this.Sj.setLayerType(2, null);
        this.Sj.setVisibility(4);
        this.Sj.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.Sj.setEnabled(true);
        this.Sj.setTag(this.Dq);
        this.Sj.setMaterialMeta(this.TKC.hif());
        this.Sj.setLandingPage(true);
        frameLayout.addView(this.Sj, new FrameLayout.LayoutParams(-1, -1));
        uA uAVar = new uA(this.sP);
        this.uvD = uAVar;
        uAVar.Sj(this.TKC, this.Dq, this.dNu);
        frameLayout.addView(this.uvD, new FrameLayout.LayoutParams(-1, -1));
        if (this.TKC.eEJ()) {
            TEQ teq = new TEQ(this.sP);
            this.vS = teq;
            teq.sP();
            frameLayout.addView(this.vS, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    public static void Sj(sU sUVar, JSONObject jSONObject) {
        if (jSONObject == null || sUVar == null || !uP.sP(sUVar) || !sUVar.pR()) {
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("is_new_playable", 1);
            jSONObject.put("pag_json_data", jSONObject2.toString());
        } catch (JSONException unused) {
        }
    }

    private void TKC(boolean z10) {
        com.bytedance.sdk.component.Sj.dNu dnuSP;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(BidResponsedEx.KEY_CID, this.TKC.aZ());
            jSONObject.put("log_extra", this.TKC.mZN());
        } catch (Throwable unused) {
        }
        if (com.bytedance.sdk.openadsdk.core.uA.sP().RiZ()) {
            Jcg.Sj(new Jcg.Sj() { // from class: com.bytedance.sdk.openadsdk.sU.Sj.Sj.1
            });
        }
        Dq dqSj = Dq.Sj(dNu.Sj(), this.Sj.getWebView(), new com.bytedance.sdk.openadsdk.sU.TKC() { // from class: com.bytedance.sdk.openadsdk.sU.Sj.Sj.2
            @Override // com.bytedance.sdk.openadsdk.sU.TKC
            public void Sj(String str, JSONObject jSONObject2) {
                if (Sj.this.Jcg != null) {
                    Sj.this.Jcg.Sj(str, jSONObject2);
                }
            }
        }, new com.bytedance.sdk.openadsdk.sU.Sj() { // from class: com.bytedance.sdk.openadsdk.sU.Sj.Sj.3
            @Override // com.bytedance.sdk.openadsdk.sU.Sj
            public com.bytedance.sdk.openadsdk.sU.EjP Sj() {
                String strVS = com.bytedance.sdk.openadsdk.common.sP.vS();
                strVS.hashCode();
                switch (strVS) {
                    case "2g":
                        return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_2G;
                    case "3g":
                        return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_3G;
                    case "4g":
                        return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_4G;
                    case "5g":
                        return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_5G;
                    case "wifi":
                        return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_WIFI;
                    default:
                        return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_UNKNOWN;
                }
            }

            @Override // com.bytedance.sdk.openadsdk.sU.Sj
            public void Sj(int i11, String str) {
                Sj.this.f21122aa = false;
                if (i11 == 2 || i11 == 3 || i11 == 4) {
                    Sj.this.Sj(2, i11);
                } else if (i11 == 5) {
                    Sj.this.Sj(3, i11);
                } else {
                    Sj.this.Sj(1, 0);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.sU.Sj
            public void Sj(JSONObject jSONObject2) {
                if (jSONObject2 == null) {
                    jSONObject2 = new JSONObject();
                }
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("is_new_playable", 1);
                    if (Sj.this.TKC.WO()) {
                        jSONObject3.put("is_pre_render", 1);
                    }
                    jSONObject2.put("pag_json_data", jSONObject3.toString());
                } catch (JSONException e11) {
                    com.bytedance.sdk.component.utils.sU.sP("PlayableManager", e11.getMessage());
                }
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(Sj.this.TKC, Sj.this.Dq, "playable_track", jSONObject2);
            }

            @Override // com.bytedance.sdk.openadsdk.sU.Sj
            public void sP() {
                Sj.this.Jcg.TKC(true);
                if (Sj.this.Ym != null) {
                    Sj.this.Ym.Sj();
                }
            }
        });
        this.TEQ = dqSj;
        dqSj.Jcg(this.uA).HiB(com.bytedance.sdk.openadsdk.common.sP.Sj(dNu.Sj())).sP(com.bytedance.sdk.openadsdk.common.sP.HiB()).Sj(com.bytedance.sdk.openadsdk.common.sP.Sj()).EjP(com.bytedance.sdk.openadsdk.common.sP.EjP()).TKC(jSONObject).TKC(uP.Ym(this.TKC)).EjP(true).Sj(z10).TKC(false).Sj(uP.sU(this.TKC)).sP(uP.sU(this.TKC)).Sj("sdkEdition", com.bytedance.sdk.openadsdk.common.sP.TKC()).HiB(uP.vS(this.TKC)).vS(this.Dq);
        this.TEQ.Sj(com.bytedance.sdk.openadsdk.sU.HiB.sP(this.sP));
        Set<String> setYm = this.TEQ.Ym();
        final WeakReference weakReference = new WeakReference(this.TEQ);
        for (String str : setYm) {
            if (!"subscribe_app_ad".equals(str) && !"adInfo".equals(str) && !"webview_time_track".equals(str) && !"download_app_ad".equals(str) && (dnuSP = this.Jcg.sP()) != null) {
                dnuSP.Sj(str, new com.bytedance.sdk.component.Sj.HiB<JSONObject, JSONObject>() { // from class: com.bytedance.sdk.openadsdk.sU.Sj.Sj.4
                    @Override // com.bytedance.sdk.component.Sj.HiB
                    public JSONObject Sj(@NonNull JSONObject jSONObject2, @NonNull com.bytedance.sdk.component.Sj.vS vSVar) {
                        try {
                            Dq dq2 = (Dq) weakReference.get();
                            if (dq2 == null) {
                                return null;
                            }
                            return dq2.EjP(Sj(), jSONObject2);
                        } catch (Throwable unused2) {
                            return null;
                        }
                    }
                });
            }
        }
    }

    public void EjP() {
        Dq dq2 = this.TEQ;
        if (dq2 != null) {
            dq2.Mts();
        }
        vS vSVar = this.Sj;
        if (vSVar != null) {
            vSVar.uvD();
        }
        Yf yf2 = this.Jcg;
        if (yf2 != null) {
            yf2.aa();
        }
        this.Sj = null;
    }

    public boolean HiB() {
        return this.Fmk;
    }

    public void Sj() {
        boolean z10;
        TEQ teq;
        if (this.Zq.getAndSet(true)) {
            return;
        }
        FrameLayout frameLayout = this.HiB;
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
        }
        if (this.sef || (teq = this.vS) == null) {
            this.TEQ.TKC(true);
            z10 = false;
        } else {
            teq.sP(this.TKC, this.EjP);
            Dq dq2 = this.TEQ;
            if (dq2 != null) {
                dq2.Yf();
            }
            z10 = true;
        }
        if (this.TEQ != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("webview_state", this.TEQ.xD());
                jSONObject2.put("has_loading", z10);
                jSONObject2.put("is_new_playable", 1);
                jSONObject.put("pag_json_data", jSONObject2.toString());
                jSONObject.put("playable_event", "start_show_plb");
            } catch (Throwable unused) {
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.TKC, this.Dq, "playable_track", jSONObject);
            this.TEQ.vS(com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(this.TKC));
        }
        this.Sj.setVisibility(0);
    }

    public void Sj(final int i11, final int i12) {
        Dq dq2;
        InterfaceC0288Sj interfaceC0288Sj;
        if (this.sef) {
            return;
        }
        this.sef = true;
        if (i11 == 2) {
            this.Fmk = true;
            this.TEQ.Sj(3);
        } else if (i11 == 1) {
            this.Fmk = true;
            this.TEQ.Sj(2);
        } else if (i11 == 3) {
            this.Fmk = true;
            this.TEQ.Sj(4);
        } else if (i11 == 0) {
            this.TEQ.Sj(1);
        }
        if (this.Fmk && (interfaceC0288Sj = this.TzV) != null) {
            interfaceC0288Sj.Sj();
        }
        if (this.Zq.get() && (dq2 = this.TEQ) != null) {
            dq2.TKC(true);
        }
        TEQ teq = this.vS;
        if (teq != null) {
            teq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.sU.Sj.Sj.7
                @Override // java.lang.Runnable
                public void run() {
                    if (Sj.this.Fmk) {
                        Sj.this.uvD.setVisibility(0);
                        Sj.this.Sj(true);
                    }
                    Sj.this.vS.TKC();
                    if (Sj.this.Zq.get()) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("remove_loading_page_type", i11);
                            jSONObject2.put("remove_loading_page_reason", i12);
                            jSONObject2.put("playable_url", Sj.this.uA);
                            jSONObject2.put("duration", Sj.this.vS.getDisplayDuration());
                            jSONObject2.put("is_new_playable", 1);
                            jSONObject.put("pag_json_data", jSONObject2.toString());
                            jSONObject.put("playable_event", "remove_loading_page");
                        } catch (Throwable unused) {
                        }
                        com.bytedance.sdk.openadsdk.EjP.TKC.sP(Sj.this.TKC, Sj.this.Dq, "playable_track", jSONObject);
                    }
                }
            });
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar) {
        Yf yf2 = this.Jcg;
        if (yf2 != null) {
            yf2.Sj(sPVar);
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.sP.Sj sj2) {
        this.dNu = sj2;
        TEQ teq = this.vS;
        if (teq != null && teq.getDownloadButton() != null) {
            com.bytedance.sdk.openadsdk.core.HiB.Dq downloadButton = this.vS.getDownloadButton();
            downloadButton.setOnClickListener(sj2);
            downloadButton.setOnTouchListener(sj2);
        }
        uA uAVar = this.uvD;
        if (uAVar != null) {
            uAVar.setClickListener(sj2);
        }
    }

    public void Sj(InterfaceC0288Sj interfaceC0288Sj) {
        this.TzV = interfaceC0288Sj;
    }

    public void Sj(boolean z10) {
        Dq dq2 = this.TEQ;
        if (dq2 != null) {
            dq2.Sj(z10);
        }
    }

    public void Sj(boolean z10, com.bytedance.sdk.openadsdk.aa.vS vSVar) {
        this.Ym = vSVar;
        this.TEQ.sP(z10);
        com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().sP(this.TKC);
        this.Sj.a_(this.uA);
        Dq dq2 = this.TEQ;
        if (dq2 != null) {
            dq2.vS(com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(this.TKC));
            this.TEQ.Dq(this.uA);
        }
    }

    public void TKC() {
        Dq dq2;
        if (!this.Zq.get() || (dq2 = this.TEQ) == null) {
            return;
        }
        dq2.TKC(false);
    }

    public void sP() {
        Dq dq2;
        if (!this.Zq.get() || (dq2 = this.TEQ) == null) {
            return;
        }
        dq2.TKC(true);
    }

    public void sP(boolean z10) {
        Dq dq2 = this.TEQ;
        if (dq2 != null) {
            dq2.HiB(z10);
        }
    }

    public boolean vS() {
        Yf yf2 = this.Jcg;
        if (yf2 != null) {
            return yf2.vS();
        }
        return false;
    }
}
