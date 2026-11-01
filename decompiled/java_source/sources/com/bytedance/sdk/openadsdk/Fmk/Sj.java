package com.bytedance.sdk.openadsdk.Fmk;

import android.R;
import android.app.Activity;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.component.uA.vS;
import com.bytedance.sdk.openadsdk.EjP.Ym;
import com.bytedance.sdk.openadsdk.Jcg.sP;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.Zq;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.wE;
import com.bytedance.sdk.openadsdk.core.widget.Sj.EjP;
import com.bytedance.sdk.openadsdk.core.widget.Sj.HiB;
import com.bytedance.sdk.openadsdk.core.widget.Sj.TKC;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private static long EjP = 3600000;
    private static volatile Sj Sj = null;
    private static int TKC = 2;
    private LinkedHashMap<Integer, SoftReference<vS>> HiB;
    private final Handler sP;

    public Sj() {
        TKC = com.bytedance.sdk.openadsdk.dx.Sj.Sj("pre_render_count", 2);
        long jSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("pre_render_duration", TimeConstants.HOUR);
        EjP = jSj;
        if (TKC <= 0) {
            TKC = 2;
        }
        if (jSj <= 0) {
            EjP = 3600000L;
        }
        this.HiB = new LinkedHashMap<>();
        this.sP = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.bytedance.sdk.openadsdk.Fmk.Sj.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(@NonNull Message message) {
                SoftReference softReference;
                int i11 = message.what;
                if (Sj.this.HiB == null || (softReference = (SoftReference) Sj.this.HiB.get(Integer.valueOf(i11))) == null) {
                    return false;
                }
                vS vSVar = (vS) softReference.get();
                Sj.this.Sj(i11, 2, new wE(), vSVar == null ? "" : vSVar.getTag());
                return false;
            }
        });
    }

    public static Sj Sj() {
        if (Sj == null) {
            synchronized (Sj.class) {
                try {
                    if (Sj == null) {
                        Sj = new Sj();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(int i11, int i12, sU sUVar, String str) {
        LinkedHashMap<Integer, SoftReference<vS>> linkedHashMap = this.HiB;
        if (linkedHashMap != null && linkedHashMap.containsKey(Integer.valueOf(i11))) {
            this.HiB.remove(Integer.valueOf(i11));
        }
        Handler handler = this.sP;
        if (handler != null) {
            handler.removeMessages(i11);
        }
        Sj(sUVar, str, i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(final int i11, final sU sUVar, final String str, final boolean z10) {
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Fmk.Sj.3
            private HiB Sj(@NonNull final vS vSVar, Ym ym2) {
                HiB hiB = new HiB(dNu.Sj(), null, sUVar.aZ(), ym2, true) { // from class: com.bytedance.sdk.openadsdk.Fmk.Sj.3.3
                    @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
                    public void onPageFinished(WebView webView, String str2) {
                        vS vSVar2 = vSVar;
                        if (vSVar2 != null) {
                            vSVar2.setPreFinish(true);
                        }
                        super.onPageFinished(webView, str2);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
                    public void onPageStarted(WebView webView, String str2, Bitmap bitmap) {
                        vS vSVar2 = vSVar;
                        if (vSVar2 != null) {
                            vSVar2.setPreStart(true);
                        }
                        super.onPageStarted(webView, str2, bitmap);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
                    public void onReceivedError(WebView webView, int i12, String str2, String str3) {
                        String strEjP = HiB.EjP(str3);
                        boolean z11 = false;
                        boolean z12 = strEjP != null && strEjP.startsWith("image");
                        if (strEjP != null && strEjP.startsWith("mp4")) {
                            z11 = true;
                        }
                        if (!z12 && !z11 && !vSVar.TKC()) {
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            Sj.this.Sj(i11, 4, sUVar, str);
                        }
                        super.onReceivedError(webView, i12, str2, str3);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
                    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                        if (sslErrorHandler != null) {
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            Sj.this.Sj(i11, 4, sUVar, str);
                        }
                        super.onReceivedSslError(webView, sslErrorHandler, sslError);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
                    public WebResourceResponse shouldInterceptRequest(WebView webView, String str2) {
                        try {
                            if (!z10) {
                                return super.shouldInterceptRequest(webView, str2);
                            }
                            vS vSVar2 = vSVar;
                            if (vSVar2 != null) {
                                vSVar2.Sj++;
                            }
                            WebResourceResponseModel webResourceResponseModelSj = sP.Sj().Sj(sP.Sj().sP(), sUVar.eMB(), str2);
                            if (webResourceResponseModelSj != null && webResourceResponseModelSj.getWebResourceResponse() != null) {
                                vS vSVar3 = vSVar;
                                if (vSVar3 != null) {
                                    vSVar3.sP++;
                                }
                                return webResourceResponseModelSj.getWebResourceResponse();
                            }
                            if (vSVar != null && webResourceResponseModelSj != null && webResourceResponseModelSj.getMsg() == 2) {
                                vSVar.TKC++;
                            }
                            return super.shouldInterceptRequest(webView, str2);
                        } catch (Throwable unused) {
                            return super.shouldInterceptRequest(webView, str2);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
                    public boolean shouldOverrideUrlLoading(WebView webView, String str2) {
                        return super.shouldOverrideUrlLoading(webView, str2);
                    }
                };
                hiB.Sj(sUVar);
                hiB.Sj(str);
                return hiB;
            }

            /* JADX WARN: Code duplicated, block: B:31:0x00d1  */
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.utils.Sj sjHiB;
                Activity activitySP;
                if (Sj.this.HiB != null && Sj.this.HiB.size() >= Sj.TKC) {
                    Map.Entry entry = (Map.Entry) Sj.this.HiB.entrySet().iterator().next();
                    SoftReference softReference = (SoftReference) entry.getValue();
                    if (softReference != null) {
                        vS vSVar = (vS) softReference.get();
                        Sj.this.Sj(((Integer) entry.getKey()).intValue(), 1, sUVar, vSVar == null ? "" : vSVar.getTag());
                    }
                }
                if (Sj.this.sP != null) {
                    Message messageObtain = Message.obtain();
                    messageObtain.what = i11;
                    Sj.this.sP.sendMessageDelayed(messageObtain, Sj.EjP);
                }
                SoftReference softReference2 = new SoftReference(new vS(dNu.Sj(), false));
                final vS vSVar2 = (vS) softReference2.get();
                if (vSVar2 == null) {
                    return;
                }
                Yf yf2 = null;
                vSVar2.setLayerType(2, null);
                FPG.Sj((View) vSVar2, 4);
                vSVar2.setTag(str);
                vSVar2.setLandingPage(true);
                com.bytedance.sdk.openadsdk.core.model.dNu dnuSef = sUVar.sef();
                int iSj = dnuSef != null ? dnuSef.Sj() : 3;
                if (iSj == 2) {
                    int iTKC = FPG.TKC(dNu.Sj());
                    int iHiB = FPG.HiB(dNu.Sj());
                    int iLiH = sUVar.liH();
                    if (iLiH == 1) {
                        if (iTKC >= iHiB) {
                            vSVar2.layout(0, 0, iHiB, iTKC);
                        } else {
                            vSVar2.layout(0, 0, iTKC, iHiB);
                        }
                    } else if (iLiH == 2) {
                        if (iTKC < iHiB) {
                            vSVar2.layout(0, 0, iHiB, iTKC);
                        } else {
                            vSVar2.layout(0, 0, iTKC, iHiB);
                        }
                    }
                } else if (iSj == 1 && (sjHiB = Zq.Sj().HiB()) != null && (activitySP = sjHiB.sP()) != null) {
                    final int iHashCode = activitySP.hashCode();
                    sjHiB.Sj(new com.bytedance.sdk.component.adexpress.Sj() { // from class: com.bytedance.sdk.openadsdk.Fmk.Sj.3.1
                        @Override // com.bytedance.sdk.component.adexpress.Sj
                        public void Sj(Activity activity) {
                            int i12 = iHashCode;
                            if (i12 == 0 || activity == null || i12 != activity.hashCode() || vSVar2.TKC()) {
                                return;
                            }
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            Sj.this.Sj(i11, 5, sUVar, str);
                        }
                    });
                    FrameLayout frameLayout = (FrameLayout) activitySP.findViewById(R.id.content);
                    if (frameLayout != null) {
                        frameLayout.addView(vSVar2);
                    }
                }
                int iSj2 = sP.Sj().Sj(sP.Sj().sP(), sUVar.eMB());
                Ym ym2 = new Ym(sUVar, vSVar2.getWebView());
                ym2.Sj(iSj2 > 0 ? 2 : 0);
                ym2.Sj(true);
                ym2.sP(true);
                vSVar2.setWebViewClient(Sj(vSVar2, ym2));
                vSVar2.setWebChromeClient(new EjP(yf2, ym2) { // from class: com.bytedance.sdk.openadsdk.Fmk.Sj.3.2
                    @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.EjP, android.webkit.WebChromeClient
                    public void onProgressChanged(WebView webView, int i12) {
                        super.onProgressChanged(webView, i12);
                        if (i12 == 100) {
                            vSVar2.setPreProgressHundred(true);
                        }
                    }
                });
                Sj.this.Sj(vSVar2, sUVar.Chv());
                Sj.Sj(sUVar, str, Double.valueOf((System.currentTimeMillis() / 1000) - sUVar.cra()).floatValue(), "web_start_pre_render");
                if (Sj.this.HiB != null) {
                    Sj.this.HiB.put(Integer.valueOf(i11), softReference2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(vS vSVar, String str) {
        if (vSVar == null) {
            return;
        }
        TKC.Sj(dNu.Sj()).Sj(false).sP(false).Sj(vSVar.getWebView());
        vSVar.setMixedContentMode(0);
        com.bytedance.sdk.openadsdk.utils.sU.Sj(vSVar, str);
    }

    public static void Sj(sU sUVar, String str, final float f11, String str2) {
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), sUVar, str, str2, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.Fmk.Sj.4
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("duration", f11);
                } catch (Throwable unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void Sj(sU sUVar, final String str, final int i11) {
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), sUVar, str, "web_delete_pre_render", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.Fmk.Sj.5
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("reason", i11);
                    jSONObject2.put("pag_json_data", jSONObject3.toString());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable unused) {
                }
                jSONObject2.toString();
                return jSONObject;
            }
        });
    }

    public static boolean TKC(sU sUVar) {
        return TzV.vS(sUVar) || TzV.sP(sUVar) || TzV.TKC(sUVar);
    }

    public void Sj(final sU sUVar) {
        final String str;
        if (sUVar == null || !TKC(sUVar)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.model.dNu dnuSef = sUVar.sef();
        if (dnuSef == null) {
            dnuSef = new com.bytedance.sdk.openadsdk.core.model.dNu();
        }
        sUVar.FcE();
        if (sUVar.FcE()) {
            String strChv = sUVar.Chv();
            if (TextUtils.isEmpty(strChv)) {
                return;
            }
            final int iHashCode = strChv.hashCode();
            if (TzV.sP(sUVar)) {
                str = "landingpage_split_screen";
            } else if (TzV.EjP(sUVar)) {
                str = "landingpage_direct";
            } else {
                str = TzV.TKC(sUVar) ? "landingpage_split_ceiling" : "";
            }
            LinkedHashMap<Integer, SoftReference<vS>> linkedHashMap = this.HiB;
            if (linkedHashMap == null || !linkedHashMap.containsKey(Integer.valueOf(iHashCode))) {
                HashMap map = new HashMap();
                map.put(sUVar.eMB(), sUVar);
                if (dnuSef.sP() == 2) {
                    sP.Sj().Sj((Map<String, sU>) map, new sP.Sj() { // from class: com.bytedance.sdk.openadsdk.Fmk.Sj.2
                        @Override // com.bytedance.sdk.openadsdk.Jcg.sP.Sj
                        public void Sj() {
                            Sj.this.Sj(iHashCode, sUVar, str, true);
                        }
                    }, true);
                    return;
                }
                if (dnuSef.sP() == 1) {
                    sP.Sj().Sj((Map<String, sU>) map, (sP.Sj) null, true);
                    Sj(iHashCode, sUVar, str, true);
                } else if (dnuSef.sP() == 0) {
                    Sj(iHashCode, sUVar, str, false);
                }
            }
        }
    }

    public vS sP(sU sUVar) {
        if (sUVar == null || TextUtils.isEmpty(sUVar.Chv())) {
            return null;
        }
        String strChv = sUVar.Chv();
        if (TextUtils.isEmpty(strChv)) {
            return null;
        }
        int iHashCode = strChv.hashCode();
        SoftReference<vS> softReference = this.HiB.get(Integer.valueOf(iHashCode));
        if (softReference == null || softReference.get() == null) {
            return null;
        }
        vS vSVar = softReference.get();
        Sj(sUVar, vSVar.getTag(), Double.valueOf((System.currentTimeMillis() / 1000) - sUVar.cra()).floatValue(), "web_use_pre_render");
        Sj(iHashCode, 3, sUVar, vSVar.getTag());
        return vSVar;
    }
}
