package com.bytedance.sdk.openadsdk.common;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.JcM;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class EjP implements LqL.Sj {
    private float Dq;
    private final com.bytedance.sdk.component.uA.vS EjP;
    private int Fmk;
    private TKC HiB;
    private int RiZ;
    private final sU Sj;
    private long TEQ;
    private WebView TKC;
    private long Zq;
    private final boolean sP;
    private String sU;
    private boolean sef;
    private int uA;
    private boolean uvD;
    private String vS = "landingpage";
    private final Handler Jcg = new LqL(com.bytedance.sdk.openadsdk.core.sef.sP().getLooper(), this);
    private final AtomicBoolean Ym = new AtomicBoolean(false);

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private Pattern f20984aa = null;
    private long TzV = -1;
    private final List<Integer> dNu = new ArrayList();

    public EjP(sU sUVar, com.bytedance.sdk.component.uA.vS vSVar, String str, boolean z10) {
        this.Sj = sUVar;
        this.EjP = vSVar;
        this.sP = z10;
        sP();
    }

    private void Dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("loading_show_interval", SystemClock.elapsedRealtime() - this.TzV);
            jSONObject.put("loading_show_timestamp", this.Zq);
            WebView webView = this.TKC;
            jSONObject.put("arbi_current_url", webView != null ? webView.getUrl() : "");
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.Sj, this.vS, jSONObject);
    }

    private void EjP() {
        Handler handler = this.Jcg;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void HiB() {
        this.sef = false;
        if (this.Ym.getAndSet(true)) {
            return;
        }
        this.TEQ = SystemClock.elapsedRealtime();
        this.Zq = System.currentTimeMillis();
        Dq();
        if (this.HiB == null) {
            return;
        }
        WebView webView = this.TKC;
        if (webView != null) {
            this.sU = webView.getUrl();
        }
        this.HiB.setVisibility(0);
        this.HiB.Sj(this.Sj);
        this.HiB.Sj();
        this.HiB.setAlpha(this.Dq);
        this.HiB.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.common.EjP.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        EjP();
        TKC();
    }

    private int Jcg() {
        try {
            return this.TKC.copyBackForwardList().getCurrentIndex() + 1;
        } catch (Throwable unused) {
            return 0;
        }
    }

    private void Sj(final int i11) {
        WebView webView = this.TKC;
        if (webView != null && i11 == 1) {
            String url = webView.getUrl();
            if (TextUtils.isEmpty(url) || url.equals(this.sU)) {
                return;
            }
        }
        com.bytedance.sdk.component.utils.uA.sP().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.EjP.4
            @Override // java.lang.Runnable
            public void run() {
                if (EjP.this.HiB != null) {
                    EjP.this.Ym.set(false);
                    EjP.this.HiB.Sj(EjP.this.Sj, EjP.this.vS, i11, EjP.this.sU, EjP.this.TEQ, EjP.this.sef, EjP.this.Fmk, EjP.this.Zq);
                    EjP.this.Fmk = 0;
                }
            }
        });
        EjP();
    }

    private void Sj(int i11, WebView webView) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("load_progress", i11);
            jSONObject.put("progress_timestamp", System.currentTimeMillis());
            jSONObject.put("arbi_current_url", webView.getUrl());
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.TKC(this.Sj, this.vS, jSONObject);
    }

    private boolean Sj(int i11, int i12) {
        if (i11 < i12 || this.dNu.contains(Integer.valueOf(i12)) || this.RiZ < 2) {
            return false;
        }
        this.dNu.add(Integer.valueOf(i12));
        return true;
    }

    private void TKC() {
        Handler handler = this.Jcg;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(1, this.uA);
        }
    }

    private void sP() {
        com.bytedance.sdk.component.uA.vS vSVar = this.EjP;
        if (vSVar != null) {
            this.TKC = vSVar.getWebView();
            View arbitrageLoadingView = this.EjP.getArbitrageLoadingView();
            if (arbitrageLoadingView instanceof TKC) {
                this.HiB = (TKC) arbitrageLoadingView;
            }
        }
        this.uA = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().eMB();
        this.Dq = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().TO();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean vS() {
        return Jcg() > 0 && !this.Ym.get();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void Sj() {
        if (JcM.vS()) {
            HiB();
        } else {
            com.bytedance.sdk.component.utils.uA.sP().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.EjP.2
                @Override // java.lang.Runnable
                public void run() {
                    EjP.this.HiB();
                }
            });
        }
    }

    @Override // com.bytedance.sdk.component.utils.LqL.Sj
    public void Sj(Message message) {
        if (message.what == 1) {
            Sj(0);
        }
    }

    public void Sj(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.TzV = SystemClock.elapsedRealtime();
        }
    }

    public void Sj(WebView webView, int i11) {
        TKC tkc = this.HiB;
        if (tkc != null) {
            tkc.Sj(i11);
        }
        if (this.uvD) {
            if (Sj(i11, 30)) {
                Sj(30, webView);
            }
            if (Sj(i11, 50)) {
                Sj(50, webView);
            }
            if (Sj(i11, 70)) {
                Sj(70, webView);
            }
        }
        if (this.HiB == null || i11 != 100) {
            return;
        }
        Sj(1);
    }

    public void Sj(WebView webView, String str) {
        sU sUVar = this.Sj;
        if (sUVar == null || !com.bytedance.sdk.component.uA.sP.Sj(sUVar.Zq().sP(), str)) {
            return;
        }
        this.Fmk++;
        com.bytedance.sdk.component.utils.uA.sP().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.EjP.1
            @Override // java.lang.Runnable
            public void run() {
                if (EjP.this.vS()) {
                    EjP.this.Sj();
                }
            }
        });
    }

    public void Sj(WebView webView, String str, boolean z10) {
        if (z10 && vS()) {
            Sj();
        }
    }

    public void Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.vS = str;
    }

    public void TKC(WebView webView, String str, boolean z10) {
        this.dNu.clear();
        this.uvD = z10;
        if (z10) {
            this.sef = true;
        }
        this.RiZ = Jcg();
    }

    public void sP(WebView webView, String str, boolean z10) {
        if (!z10 || this.HiB == null) {
            return;
        }
        Sj(1);
    }
}
