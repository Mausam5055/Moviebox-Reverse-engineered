package com.bytedance.sdk.openadsdk.EjP;

import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.WebBackForwardList;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.core.model.sU;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Dq {
    private final WebView Dq;
    private final boolean HiB;
    private int Jcg;
    private final sU Sj;
    private long TEQ;
    private int vS;
    private String uA = "landingpage";
    private final Map<Integer, Long> sP = new HashMap();
    private final List<Integer> TKC = new ArrayList();
    private final Map<Integer, String> EjP = new HashMap();

    public Dq(sU sUVar, WebView webView, boolean z10) {
        this.Sj = sUVar;
        this.Dq = webView;
        this.HiB = z10;
    }

    private boolean Sj(boolean z10) {
        int i11 = z10 ? this.vS : this.Jcg;
        sP(z10);
        int i12 = z10 ? this.vS : this.Jcg;
        return i12 > 0 && i12 != i11;
    }

    private void sP(boolean z10) {
        try {
            WebBackForwardList webBackForwardListCopyBackForwardList = this.Dq.copyBackForwardList();
            if (webBackForwardListCopyBackForwardList != null) {
                if (z10) {
                    int currentIndex = webBackForwardListCopyBackForwardList.getCurrentIndex();
                    this.vS = currentIndex + 1;
                    if (this.HiB) {
                        this.vS = currentIndex + 2;
                        return;
                    }
                    return;
                }
                int currentIndex2 = webBackForwardListCopyBackForwardList.getCurrentIndex();
                this.Jcg = currentIndex2 + 1;
                if (this.HiB) {
                    this.Jcg = currentIndex2 + 2;
                }
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("ArbitrageLandingLog", th2.toString());
        }
    }

    public void Sj(WebView webView, String str) {
        sU sUVar = this.Sj;
        if (sUVar == null || !com.bytedance.sdk.component.uA.sP.Sj(sUVar.Zq().sP(), str)) {
            return;
        }
        String str2 = this.EjP.get(Integer.valueOf(this.vS));
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        TKC.Sj(this.Sj, this.uA, this.vS, str2, str, 2);
    }

    public void Sj(String str) {
        if (Sj(false)) {
            TKC.Sj(this.Sj, this.uA, this.vS, str, SystemClock.elapsedRealtime() - this.TEQ);
        }
    }

    public void Sj(String str, int i11) {
        if (this.HiB) {
            i11++;
        }
        if (Sj(true)) {
            TKC.Sj(this.Sj, this.uA, this.vS, str, i11);
            this.EjP.put(Integer.valueOf(this.vS), str);
            this.TEQ = SystemClock.elapsedRealtime();
        }
    }

    public void TKC(String str) {
        this.uA = str;
    }

    public void sP(String str) {
        String str2 = this.EjP.get(Integer.valueOf(this.vS));
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        String str3 = str2;
        int i11 = this.vS;
        if (i11 > 0) {
            TKC.Sj(this.Sj, this.uA, i11, str3, str, 1);
        }
    }
}
