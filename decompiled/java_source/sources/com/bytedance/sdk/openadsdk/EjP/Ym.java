package com.bytedance.sdk.openadsdk.EjP;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.webkit.JavascriptInterface;
import android.webkit.WebBackForwardList;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Ym {
    private static final int[] TKC = {10, 30, 50, 75, 100};
    private final AtomicBoolean Dq;
    private final AtomicBoolean EZ;
    private volatile long Ei;
    private int EjP;
    private WeakReference<WebView> FPG;
    private boolean Fm;
    private String Fmk;
    private long HiB;
    private final AtomicInteger HpB;
    private String IOh;
    private boolean JcM;
    private final AtomicBoolean Jcg;
    private long LD;
    private long LqL;
    private final AtomicInteger Mts;
    private final AtomicBoolean MuB;
    private Dq RiZ;
    public com.bytedance.sdk.openadsdk.core.widget.Sj.vS.Sj Sj;
    private final AtomicBoolean TEQ;
    private com.bytedance.sdk.openadsdk.sU.Dq TzV;
    private volatile long UHs;
    private final boolean WMZ;
    private boolean Wjd;
    private long Yf;
    private int Ym;
    private final Context Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f20939aa;
    private boolean dNu;

    /* JADX INFO: renamed from: db, reason: collision with root package name */
    private final AtomicBoolean f20940db;
    private volatile long dwU;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private int f20941dx;
    private long fF;
    private String gY;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private long f20942ib;

    /* JADX INFO: renamed from: jb, reason: collision with root package name */
    private TEQ f20943jb;
    private int kF;
    private long ley;
    private volatile int ndK;
    private long pfr;
    private int qRN;
    AtomicBoolean sP;
    private boolean sU;
    private volatile long sdp;
    private String sef;
    private final AtomicBoolean uA;
    private final sU uP;
    private com.bytedance.sdk.openadsdk.core.widget.Sj.vS uvD;
    private int vS;
    private String wE;
    private com.bytedance.sdk.openadsdk.EjP.EjP.HiB xD;
    private final AtomicInteger xhi;
    private long zR;

    private class Sj {
        private Sj() {
        }

        @JavascriptInterface
        public String getUrl() {
            return "";
        }

        @JavascriptInterface
        public void readPercent(String str) {
            int i11 = 0;
            try {
                int iIntValue = Float.valueOf(str).intValue();
                if (iIntValue > 100) {
                    i11 = 100;
                } else if (iIntValue >= 0) {
                    i11 = iIntValue;
                }
            } catch (Throwable unused) {
            }
            Ym.this.Mts.set(i11);
        }
    }

    public Ym(sU sUVar, WebView webView) {
        this(sUVar, webView, false);
    }

    public Ym(sU sUVar, WebView webView, TEQ teq, int i11) {
        this(sUVar, webView);
        this.f20943jb = teq;
        this.qRN = i11;
    }

    public Ym(sU sUVar, WebView webView, boolean z10) {
        this.EjP = 0;
        this.HiB = -1L;
        this.vS = 1;
        this.Jcg = new AtomicBoolean(false);
        this.Dq = new AtomicBoolean(false);
        this.uA = new AtomicBoolean(false);
        this.TEQ = new AtomicBoolean(false);
        this.Ym = -1;
        this.sU = false;
        this.f20941dx = 0;
        this.sP = new AtomicBoolean(false);
        this.wE = "landingpage";
        this.ley = 0L;
        this.LqL = 0L;
        this.Yf = 0L;
        this.LD = 0L;
        this.fF = 0L;
        this.JcM = false;
        this.WMZ = false;
        this.Mts = new AtomicInteger(0);
        this.Wjd = false;
        this.Fm = false;
        this.Ei = 0L;
        this.HpB = new AtomicInteger(0);
        this.xhi = new AtomicInteger(0);
        this.f20940db = new AtomicBoolean(false);
        this.ndK = 0;
        this.qRN = -1;
        this.MuB = new AtomicBoolean(false);
        this.EZ = new AtomicBoolean(false);
        Context contextSj = com.bytedance.sdk.openadsdk.core.dNu.Sj();
        this.Zq = contextSj;
        this.uP = sUVar;
        if (webView == null) {
            return;
        }
        this.sU = z10;
        WeakReference<WebView> weakReference = new WeakReference<>(webView);
        this.FPG = weakReference;
        WebView webView2 = weakReference.get();
        if (webView2 == null) {
            return;
        }
        if (sUVar != null && sUVar.MuB()) {
            com.bytedance.sdk.openadsdk.core.widget.Sj.vS vSVar = new com.bytedance.sdk.openadsdk.core.widget.Sj.vS(webView2, sUVar, contextSj, this.sU);
            this.uvD = vSVar;
            this.Sj = vSVar.TKC();
        }
        if (sUVar != null && sUVar.IOh() && com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().nru()) {
            this.RiZ = new Dq(sUVar, webView, this.sU);
        }
        if (webView instanceof com.bytedance.sdk.component.uA.HiB) {
            this.pfr = ((com.bytedance.sdk.component.uA.HiB) webView2).Sj;
        } else {
            this.pfr = System.currentTimeMillis();
        }
        try {
            webView2.addJavascriptInterface(new Sj(), "JS_LANDING_PAGE_LOG_OBJ");
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.Sj("LandingPageLog", "addJavascriptInterface exception", e11);
        }
        if (sUVar != null && sUVar.DhB() != null) {
            this.HiB = sUVar.DhB().optLong("page_id", -1L);
        }
        this.gY = String.valueOf(SystemClock.elapsedRealtime());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(int i11, String str) {
        try {
            if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.settings.Jcg.sP)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            StringBuilder sb2 = new StringBuilder(com.bytedance.sdk.openadsdk.core.settings.Jcg.sP);
            jSONObject.putOpt(BidResponsedEx.KEY_CID, Sj().aZ());
            jSONObject.putOpt("ad_id", Sj().aZ());
            jSONObject.put("log_extra", Sj().mZN());
            Mts.Sj(sb2, "\"/** adInfo **/\"", jSONObject.toString());
            Mts.Sj(sb2, "\"/** first_page **/\"", String.valueOf(i11));
            Mts.Sj(sb2, "\"/** ix_to_externalurl **/\"", this.HiB != -1 ? "1" : "0");
            Mts.Sj(sb2, "\"/** preload_status **/\"", this.qRN == 2 ? "2" : "0");
            Mts.Sj(sb2, "\"/** scene_state **/\"", str);
            Mts.Sj(sb2, "\"/** web_init_time **/\"", String.valueOf(this.pfr));
            Mts.Sj(sb2, "\"/** channel_name **/\"", "\"" + Sj().eMB() + "\"");
            Mts.Sj(sb2, "\"/** session_id **/\"", "\"" + UUID.randomUUID().toString() + "\"");
            Mts.Sj(sb2, "\"/** web_url **/\"", "\"" + Sj().Chv() + "\"");
            String string = sb2.toString();
            if (TextUtils.isEmpty(string)) {
                return;
            }
            final String strTKC = TKC(string);
            WeakReference<WebView> weakReference = this.FPG;
            final WebView webView = weakReference != null ? weakReference.get() : null;
            if (TextUtils.isEmpty(strTKC) || webView == null) {
                return;
            }
            JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.Ym.3
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.component.utils.sef.Sj(webView, strTKC);
                }
            });
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP(th2.getMessage(), new Object[0]);
        }
    }

    public static void Sj(final sU sUVar, final String str, final long j11, final int i11) {
        TKC.Sj(System.currentTimeMillis(), sUVar, str, "lp_feeling_duration", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.Ym.4
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("is_lp_pre_render", i11);
                    jSONObject3.put("meta_pre_render", sUVar.FcE() ? 1 : 0);
                    com.bytedance.sdk.openadsdk.core.model.dNu dnuSef = sUVar.sef();
                    if (dnuSef == null) {
                        dnuSef = new com.bytedance.sdk.openadsdk.core.model.dNu();
                    }
                    jSONObject3.put("pre_render_status", dnuSef.TKC());
                    jSONObject3.put("pre_render_use_gecko", dnuSef.sP());
                    jSONObject3.put("pre_render_add_type", dnuSef.Sj());
                    jSONObject2.put("pag_json_data", jSONObject3.toString());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                    jSONObject.put("duration", j11);
                } catch (Throwable unused) {
                }
                return jSONObject;
            }
        });
    }

    private void Sj(String str, String str2, long j11) {
        if (this.uA.compareAndSet(false, true)) {
            JSONObject jSONObject = new JSONObject();
            try {
                if (str.length() > 200) {
                    int iIndexOf = str.indexOf(38, 200);
                    int i11 = 300;
                    if (iIndexOf == -1 || iIndexOf > 300) {
                        iIndexOf = str.indexOf(63);
                    }
                    if (iIndexOf != -1 && iIndexOf <= 300) {
                        i11 = iIndexOf;
                    }
                    str = str.substring(0, i11);
                }
                jSONObject.put("url", str);
                jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, str2);
            } catch (Throwable unused) {
            }
            Sj("load_finish_progress", jSONObject, j11);
        }
    }

    private void Sj(String str, JSONObject jSONObject) {
        Sj(str, jSONObject, -1L);
    }

    private void Sj(final String str, final JSONObject jSONObject, final long j11) {
        if (!this.Wjd || this.uP == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.sU.Dq dq2 = this.TzV;
        final int iFPG = dq2 != null ? dq2.FPG() : -1;
        TKC.Sj(System.currentTimeMillis(), this.uP, this.wE, str, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.Ym.1
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject2 = null;
                if (jSONObject != null) {
                    try {
                        boolean zSP = uP.sP(Ym.this.uP);
                        int i11 = 0;
                        jSONObject.put("is_playable", zSP ? 1 : 0);
                        jSONObject.put("usecache", com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(Ym.this.uP) ? 1 : 0);
                        if (zSP && ("load_finish".equals(str) || "load_fail".equals(str))) {
                            jSONObject.put("playable_has_show", iFPG);
                        }
                        if (com.bytedance.sdk.openadsdk.Fmk.Sj.TKC(Ym.this.uP)) {
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("is_lp_pre_render", Ym.this.f20941dx);
                            jSONObject.put("pag_json_data", jSONObject3.toString());
                        }
                        if ("stay_page".equals(str)) {
                            JSONObject jSONObject4 = jSONObject;
                            if (Ym.this.kF <= 1) {
                                i11 = 1;
                            }
                            jSONObject4.put("first_page", i11);
                        }
                    } catch (JSONException unused) {
                    }
                    try {
                        JSONObject jSONObject5 = new JSONObject();
                        try {
                            jSONObject5.put("ad_extra_data", jSONObject.toString());
                            long j12 = j11;
                            if (j12 > 0) {
                                jSONObject5.put("duration", j12);
                            }
                        } catch (JSONException unused2) {
                        }
                        jSONObject2 = jSONObject5;
                    } catch (JSONException unused3) {
                    }
                }
                String unused4 = Ym.this.wE;
                return jSONObject2;
            }
        });
    }

    private void Sj(boolean z10, final String str) {
        if (z10) {
            final int iTEQ = TEQ();
            TKC.Sj(new com.bytedance.sdk.component.Dq.Dq("sendPrefLog") { // from class: com.bytedance.sdk.openadsdk.EjP.Ym.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        com.bytedance.sdk.openadsdk.core.settings.Jcg jcgIb = com.bytedance.sdk.openadsdk.core.dNu.EjP().ib();
                        boolean zSj = Ym.this.Sj(jcgIb, str);
                        if (zSj) {
                            if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.settings.Jcg.sP)) {
                                Ym.this.Sj(iTEQ, str);
                                return;
                            }
                            if (TextUtils.isEmpty(jcgIb.TKC) || !zSj) {
                                return;
                            }
                            String str2 = jcgIb.TKC;
                            com.bytedance.sdk.component.Jcg.sP.sP sPVarTKC = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().TKC();
                            sPVarTKC.sP(str2);
                            HashMap map = new HashMap();
                            map.put("content-type", "application/json; charset=utf-8");
                            sPVarTKC.EjP(map);
                            sPVarTKC.Sj(9);
                            sPVarTKC.Sj("sendPrefLog");
                            sPVarTKC.Sj(new com.bytedance.sdk.component.Jcg.Sj.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.Ym.2.1
                                @Override // com.bytedance.sdk.component.Jcg.Sj.Sj
                                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, com.bytedance.sdk.component.Jcg.sP sPVar) {
                                    try {
                                        com.bytedance.sdk.openadsdk.core.settings.Jcg.sP = sPVar.EjP();
                                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                        Ym.this.Sj(iTEQ, str);
                                    } catch (Exception e11) {
                                        com.bytedance.sdk.component.utils.sU.Sj("LandingPageLog", "TTWebViewClient : onPageFinished", e11);
                                    }
                                }

                                @Override // com.bytedance.sdk.component.Jcg.Sj.Sj
                                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, IOException iOException) {
                                }
                            });
                        }
                    } catch (Throwable th2) {
                        com.bytedance.sdk.component.utils.sU.sP(th2.getMessage(), new Object[0]);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Sj(com.bytedance.sdk.openadsdk.core.settings.Jcg jcg, String str) {
        str.hashCode();
        switch (str) {
            case "0":
                return jcg.EjP;
            case "1":
                return jcg.HiB;
            case "2":
                return jcg.vS;
            default:
                return false;
        }
    }

    private int TEQ() {
        WeakReference<WebView> weakReference = this.FPG;
        WebView webView = weakReference != null ? weakReference.get() : null;
        if (webView != null) {
            try {
                WebBackForwardList webBackForwardListCopyBackForwardList = webView.copyBackForwardList();
                if (webBackForwardListCopyBackForwardList != null && webBackForwardListCopyBackForwardList.getCurrentIndex() == 0) {
                    return 1;
                }
            } catch (Throwable unused) {
            }
        }
        return 0;
    }

    private String TKC(String str) {
        return "javascript:".concat(String.valueOf(str));
    }

    private boolean uA() {
        sU sUVar;
        return this.Fm && (sUVar = this.uP) != null && sUVar.Za();
    }

    public void Dq() {
        if (("landingpage".equals(this.wE) || "landingpage_endcard".equals(this.wE) || "landingpage_split_screen".equals(this.wE) || "landingpage_direct".equals(this.wE) || "aggregate_page".equals(this.wE) || "landingpage_split_ceiling".equals(this.wE)) && this.vS == 2) {
            if (this.LqL > 0 || !TKC()) {
                long jCurrentTimeMillis = System.currentTimeMillis() - Math.max(this.ley, this.LqL);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("load_status", this.vS);
                    jSONObject.put("max_scroll_percent", this.Mts.get());
                    jSONObject.put("jump_times", this.HpB.getAndSet(0));
                    jSONObject.put("click_times", this.xhi.getAndSet(0));
                    jSONObject.putOpt("render_type", "h5");
                    jSONObject.putOpt("render_type_2", 0);
                } catch (JSONException unused) {
                }
                this.TEQ.set(true);
                Sj("stay_page", jSONObject, Math.min(jCurrentTimeMillis, 600000L));
                com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj("landingPause", this.uP, this.gY);
            }
        }
    }

    public void EjP() {
        if (uA()) {
            this.UHs = SystemClock.elapsedRealtime();
            TKC.Sj(this.uP, this.IOh);
        }
    }

    public void EjP(boolean z10) {
        WeakReference<WebView> weakReference = this.FPG;
        WebView webView = weakReference != null ? weakReference.get() : null;
        if (webView != null) {
            try {
                webView.removeJavascriptInterface("JS_LANDING_PAGE_LOG_OBJ");
            } catch (Exception e11) {
                com.bytedance.sdk.component.utils.sU.Sj("LandingPageLog", "removeJavascriptInterface exception", e11);
            }
        }
        if (this.Dq.compareAndSet(false, true)) {
            Sj(z10, "1");
            if (this.Wjd) {
                TKC.Sj(this.uP, this.wE, System.currentTimeMillis() - this.fF, this.qRN, TEQ());
            }
        } else if (this.vS == 2 && !this.TEQ.get()) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("load_status", this.vS);
                jSONObject.put("max_scroll_percent", this.Mts.get());
                jSONObject.put("jump_times", this.HpB.getAndSet(0));
                jSONObject.put("click_times", this.xhi.getAndSet(0));
                jSONObject.putOpt("render_type", "h5");
                jSONObject.putOpt("render_type_2", 0);
            } catch (JSONException unused) {
            }
            Sj("stay_page", jSONObject, 0L);
        }
        if ("landingpage".equals(this.wE) || "landingpage_endcard".equals(this.wE) || "landingpage_split_screen".equals(this.wE) || "landingpage_direct".equals(this.wE) || "aggregate_page".equals(this.wE) || "landingpage_split_ceiling".equals(this.wE)) {
            com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj("landingFinish", this.uP, this.gY);
        }
    }

    public void HiB() {
        if (uA()) {
            this.dwU = SystemClock.elapsedRealtime();
            vS();
        }
    }

    public void Jcg() {
        if (this.fF == 0) {
            this.fF = System.currentTimeMillis();
        }
        this.ley = System.currentTimeMillis();
        if ("landingpage".equals(this.wE) || "landingpage_endcard".equals(this.wE) || "landingpage_split_screen".equals(this.wE) || "landingpage_direct".equals(this.wE) || "aggregate_page".equals(this.wE)) {
            if (this.EZ.compareAndSet(false, true)) {
                com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj("landingStart", this.uP, this.gY);
            } else {
                com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj("landingContinue", this.uP, this.gY);
            }
        }
        if (TzV.vS(this.uP) || TzV.sP(this.uP)) {
            Sj(true, SystemClock.elapsedRealtime());
        }
    }

    public sU Sj() {
        return this.uP;
    }

    public void Sj(int i11) {
        this.qRN = i11;
    }

    public void Sj(long j11) {
        this.LqL = j11;
    }

    public void Sj(MotionEvent motionEvent) {
        com.bytedance.sdk.openadsdk.core.widget.Sj.vS vSVar = this.uvD;
        if (vSVar != null && this.dNu) {
            vSVar.Sj(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.Ei != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                this.xhi.incrementAndGet();
                if (this.f20940db.getAndSet(true)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", this.uP.Chv());
                } catch (JSONException unused) {
                }
                Sj(TrackingKey.CLICK_TIME, jSONObject, Math.max(SystemClock.elapsedRealtime() - this.Ei, 0L));
            }
        }
    }

    public void Sj(WebView webView, int i11) {
        if (webView == null) {
            return;
        }
        if (this.Ei == 0) {
            this.Ei = SystemClock.elapsedRealtime();
        }
        if (this.Yf == 0 && i11 > 0) {
            this.Yf = System.currentTimeMillis();
        } else if (this.LD == 0 && i11 == 100) {
            this.LD = System.currentTimeMillis();
        }
        if (this.EjP != TKC.length && ("landingpage".equals(this.wE) || "landingpage_endcard".equals(this.wE) || "landingpage_split_screen".equals(this.wE) || "landingpage_direct".equals(this.wE) || "aggregate_page".equals(this.wE))) {
            int i12 = this.EjP;
            while (true) {
                int[] iArr = TKC;
                if (i12 >= iArr.length || i11 < iArr[this.EjP]) {
                    break;
                }
                int i13 = i12 + 1;
                this.EjP = i13;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", webView.getUrl());
                    long j11 = this.HiB;
                    if (j11 != -1) {
                        jSONObject.put("page_id", j11);
                    }
                    jSONObject.putOpt("render_type", "h5");
                    jSONObject.putOpt("render_type_2", 0);
                    jSONObject.put("pct", iArr[i12]);
                } catch (Exception unused) {
                }
                Sj("progress_load_finish", jSONObject);
                i12 = i13;
            }
        }
        if (i11 == 100) {
            Sj(false, SystemClock.elapsedRealtime());
            Sj(webView.getUrl(), NotificationCompat.CATEGORY_PROGRESS, Math.min(this.LD - this.Yf, 600000L));
        }
    }

    public void Sj(WebView webView, int i11, String str, String str2, String str3, boolean z10) {
        com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = this.xD;
        if (hiB != null) {
            hiB.Sj((JSONObject) null);
        }
        if ((str3 == null || !str3.startsWith("image")) && this.vS != 2) {
            this.vS = 3;
        }
        this.Ym = i11;
        this.Fmk = str;
        this.sef = str2;
        this.f20939aa = z10;
    }

    public void Sj(WebView webView, String str, Bitmap bitmap, boolean z10, int i11) {
        this.dNu = z10;
        this.kF++;
        com.bytedance.sdk.openadsdk.core.widget.Sj.vS vSVar = this.uvD;
        if (vSVar != null && z10) {
            vSVar.sP(str);
            this.uvD.sP();
        }
        Dq dq2 = this.RiZ;
        if (dq2 != null && z10) {
            dq2.Sj(str, i11);
        }
        WeakReference<WebView> weakReference = this.FPG;
        WebView webView2 = weakReference != null ? weakReference.get() : null;
        if (webView2 != null) {
            try {
                WebBackForwardList webBackForwardListCopyBackForwardList = webView2.copyBackForwardList();
                if (webBackForwardListCopyBackForwardList != null && webBackForwardListCopyBackForwardList.getCurrentIndex() > this.ndK) {
                    this.HpB.incrementAndGet();
                }
                this.ndK = webBackForwardListCopyBackForwardList.getCurrentIndex();
            } catch (Exception e11) {
                com.bytedance.sdk.component.utils.sU.Sj("LandingPageLog", "copyBackForwardList exception", e11);
            }
        }
        if (this.Ei == 0) {
            this.Ei = SystemClock.elapsedRealtime();
        }
        com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = this.xD;
        if (hiB != null) {
            hiB.HiB();
        }
        if (this.Jcg.compareAndSet(false, true)) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("render_type", "h5");
                jSONObject.putOpt("render_type_2", 0);
                int i12 = this.qRN;
                if (i12 >= 0) {
                    jSONObject.putOpt("preload_status", Integer.valueOf(i12));
                }
            } catch (Exception unused) {
            }
            Sj("load_start", jSONObject);
        }
    }

    public void Sj(WebView webView, String str, boolean z10) {
        Sj(false, SystemClock.elapsedRealtime());
        com.bytedance.sdk.openadsdk.core.widget.Sj.vS vSVar = this.uvD;
        if (vSVar != null && z10) {
            vSVar.Sj();
        }
        com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = this.xD;
        if (hiB != null) {
            hiB.vS();
        }
        Dq dq2 = this.RiZ;
        if (dq2 != null && z10) {
            dq2.Sj(str);
        }
        if (webView != null && !this.JcM && this.Wjd) {
            this.JcM = true;
            com.bytedance.sdk.component.utils.sef.Sj(webView, "javascript:\nfunction sendScroll(){\n   var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n   var clientH = window.innerHeight || document.documentElement.clientHeight;\n   var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n   var validH = scrollH + clientH;\n   var result = (validH/totalH*100).toFixed(2);\n   console.log('LandingPageLogscroll status: (' + scrollH + '+' + clientH + ')/' + totalH + '=' + result);\n   window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n}\nsendScroll();\nwindow.addEventListener('scroll', function(e){\n    sendScroll();\n});");
        }
        if (this.Dq.compareAndSet(false, true)) {
            if (this.vS != 3) {
                this.vS = 2;
            }
            this.ley = System.currentTimeMillis();
            boolean z11 = this.vS == 2;
            int iTEQ = TEQ();
            if (!z11) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("error_code", this.Ym);
                    jSONObject.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, this.Fmk);
                    jSONObject.put("error_url", this.sef);
                    jSONObject.put("first_page", iTEQ);
                    int i11 = this.qRN;
                    if (i11 >= 0) {
                        jSONObject.put("preload_status", i11);
                    }
                    jSONObject.putOpt("render_type", "h5");
                    jSONObject.putOpt("render_type_2", 0);
                    jSONObject.put("url", this.uP.Chv());
                    jSONObject.put("preload_h5_type", this.uP.rd());
                } catch (Exception unused) {
                }
                Sj(z10, "2");
                Sj("load_fail", jSONObject);
                if (uA()) {
                    TKC.Sj(this.uP, this.IOh, SystemClock.elapsedRealtime() - this.UHs, this.Ym, this.Fmk, this.sef);
                }
                if (this.f20939aa) {
                    jSONObject.remove("render_type");
                    jSONObject.remove("render_type_2");
                    Sj("load_fail_main", jSONObject);
                    return;
                }
                return;
            }
            long j11 = this.LD - this.Yf;
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("error_code", this.Ym);
                jSONObject2.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, this.Fmk);
                jSONObject2.put("error_url", this.sef);
                int i12 = this.qRN;
                if (i12 >= 0) {
                    jSONObject2.put("preload_status", i12);
                }
                jSONObject2.put("first_page", iTEQ);
                jSONObject2.putOpt("render_type", "h5");
                jSONObject2.putOpt("render_type_2", 0);
                jSONObject2.put("url", this.uP.Chv());
                jSONObject2.put("preload_h5_type", this.uP.rd());
            } catch (Exception unused2) {
            }
            Sj(z10, "0");
            long jMin = Math.min(j11, 600000L);
            Sj("load_finish", jSONObject2, jMin);
            if (uA()) {
                this.sdp = SystemClock.elapsedRealtime();
                vS();
                TKC.Sj(this.uP, this.IOh, this.sdp - this.UHs);
            }
            Sj(str, "load_finish", jMin);
            TEQ teq = this.f20943jb;
            if (teq != null) {
                teq.Sj(iTEQ);
            }
        }
    }

    public void Sj(com.bytedance.sdk.component.uA.vS vSVar) {
        int iIOh;
        Bitmap bitmapSj;
        sU sUVar;
        if ((!"landingpage".equals(this.wE) && !"landingpage_endcard".equals(this.wE) && !"landingpage_split_screen".equals(this.wE) && !"landingpage_direct".equals(this.wE) && !"aggregate_page".equals(this.wE)) || (iIOh = com.bytedance.sdk.openadsdk.core.dNu.EjP().IOh()) == 0 || new Random().nextInt(100) + 1 > iIOh || vSVar == null || vSVar.getWebView() == null || vSVar.getVisibility() != 0 || (bitmapSj = FPG.Sj(vSVar)) == null || (sUVar = this.uP) == null) {
            return;
        }
        FPG.Sj(sUVar, this.wE, "landing_page_blank", bitmapSj, vSVar.getUrl(), this.HiB);
    }

    public void Sj(com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB) {
        this.xD = hiB;
    }

    public void Sj(TEQ teq) {
        this.f20943jb = teq;
    }

    public void Sj(com.bytedance.sdk.openadsdk.sU.Dq dq2) {
        this.TzV = dq2;
    }

    public void Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.widget.Sj.vS vSVar = this.uvD;
        if (vSVar != null) {
            vSVar.Sj(str);
        }
        Dq dq2 = this.RiZ;
        if (dq2 != null) {
            dq2.TKC(str);
        }
        this.wE = str;
    }

    public void Sj(String str, boolean z10) {
        com.bytedance.sdk.openadsdk.core.widget.Sj.vS vSVar = this.uvD;
        if (vSVar != null && z10) {
            vSVar.TKC(str);
        }
        Dq dq2 = this.RiZ;
        if (dq2 == null || !z10) {
            return;
        }
        dq2.sP(str);
    }

    public void Sj(boolean z10) {
        if (z10) {
            this.f20941dx = 1;
        }
    }

    public void Sj(boolean z10, long j11) {
        if (z10) {
            this.zR = j11;
        } else {
            this.f20942ib = j11;
        }
        if (this.zR <= 0 || this.f20942ib <= 0 || !this.dNu || !this.sP.compareAndSet(false, true)) {
            return;
        }
        Sj(this.uP, this.wE, this.f20942ib - this.zR, this.f20941dx);
    }

    public void TKC(boolean z10) {
        this.Fm = z10;
    }

    public boolean TKC() {
        return this.Fm;
    }

    public com.bytedance.sdk.openadsdk.EjP.EjP.HiB sP() {
        return this.xD;
    }

    public Ym sP(boolean z10) {
        this.Wjd = z10;
        return this;
    }

    public void sP(int i11) {
        com.bytedance.sdk.openadsdk.core.widget.Sj.vS vSVar = this.uvD;
        if (vSVar == null || !this.dNu) {
            return;
        }
        vSVar.Sj(i11);
    }

    public void sP(WebView webView, String str, boolean z10) {
        Dq dq2 = this.RiZ;
        if (dq2 == null || !z10) {
            return;
        }
        dq2.Sj(webView, str);
    }

    public void sP(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.IOh = str;
    }

    public void vS() {
        if (uA() && this.dwU > 0 && this.sdp > 0 && !this.MuB.getAndSet(true)) {
            TKC.sP(this.sdp - this.dwU, this.uP, this.IOh, (String) null);
        }
    }
}
