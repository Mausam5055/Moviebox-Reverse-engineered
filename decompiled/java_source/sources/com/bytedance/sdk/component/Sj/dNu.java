package com.bytedance.sdk.component.Sj;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class dNu {
    static zR Sj;
    private final TEQ EjP;
    private final List<sef> HiB;
    private final WebView TKC;
    private final Sj sP;
    private volatile boolean vS;

    dNu(TEQ teq) {
        ArrayList arrayList = new ArrayList();
        this.HiB = arrayList;
        this.vS = false;
        this.EjP = teq;
        if (teq.Dq && Sj != null) {
            throw null;
        }
        if (teq.Sj != null) {
            Sj sj2 = teq.sP;
            if (sj2 == null) {
                this.sP = new uP();
            } else {
                this.sP = sj2;
            }
        } else {
            this.sP = teq.sP;
        }
        this.sP.Sj(teq, (dx) null);
        this.TKC = teq.Sj;
        arrayList.add(teq.TEQ);
        kF.Sj(teq.Jcg);
    }

    public static TEQ Sj(WebView webView) {
        return new TEQ(webView);
    }

    private void sP() {
        if (this.vS) {
            uA.Sj(new IllegalStateException("JsBridge2 is already released!!!"));
        }
    }

    public dNu Sj(String str, EjP.sP sPVar) {
        return Sj(str, (String) null, sPVar);
    }

    public dNu Sj(String str, HiB<?, ?> hiB) {
        return Sj(str, (String) null, hiB);
    }

    public dNu Sj(String str, String str2, EjP.sP sPVar) {
        sP();
        this.sP.Jcg.Sj(str, sPVar);
        return this;
    }

    public dNu Sj(String str, String str2, HiB<?, ?> hiB) {
        sP();
        this.sP.Jcg.Sj(str, hiB);
        return this;
    }

    public void Sj() {
        if (this.vS) {
            return;
        }
        this.sP.sP();
        this.vS = true;
        Iterator<sef> it = this.HiB.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }
}
