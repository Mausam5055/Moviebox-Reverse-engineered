package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.model.sU;

/* JADX INFO: loaded from: classes2.dex */
public class Fmk {
    private uvD Dq;
    private com.bytedance.sdk.component.uA.vS EjP;
    private ImageView HiB;
    private TzV Jcg;
    private final sU Sj;
    private final Context TKC;
    private RelativeLayout sP;
    private final String vS;

    public Fmk(Context context, sU sUVar, String str) {
        this.TKC = context;
        this.Sj = sUVar;
        this.vS = str;
        vS();
    }

    private static RelativeLayout Sj(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setBackgroundColor(-1);
        relativeLayout.addView(new uA(context));
        com.bytedance.sdk.component.uA.vS vSVar = new com.bytedance.sdk.component.uA.vS(context);
        vSVar.setId(com.bytedance.sdk.openadsdk.utils.Zq.f21129db);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(12);
        layoutParams.addRule(3, com.bytedance.sdk.openadsdk.utils.Zq.cX);
        relativeLayout.addView(vSVar, layoutParams);
        Dq dq2 = new Dq(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(dq2.getLayoutParams());
        layoutParams2.addRule(12);
        relativeLayout.addView(dq2, layoutParams2);
        return relativeLayout;
    }

    private void vS() {
        RelativeLayout relativeLayoutSj = Sj(this.TKC);
        this.sP = relativeLayoutSj;
        this.EjP = (com.bytedance.sdk.component.uA.vS) relativeLayoutSj.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.f21129db);
        TzV tzV = new TzV(this.TKC, (RelativeLayout) this.sP.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.cX), this.Sj);
        this.Jcg = tzV;
        this.HiB = tzV.TKC();
        this.Dq = new uvD(this.TKC, (LinearLayout) this.sP.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.Ir), this.EjP, this.Sj, this.vS);
    }

    public com.bytedance.sdk.component.uA.vS EjP() {
        return this.EjP;
    }

    public View HiB() {
        return this.sP;
    }

    public void Sj() {
        TzV tzV = this.Jcg;
        if (tzV != null) {
            tzV.Sj();
        }
        uvD uvd = this.Dq;
        if (uvd != null) {
            uvd.Sj();
        }
    }

    public void Sj(WebView webView, int i11, com.bytedance.sdk.openadsdk.core.widget.Sj.vS.Sj sj2) {
        TzV tzV = this.Jcg;
        if (tzV != null) {
            tzV.Sj(i11);
        }
        uvD uvd = this.Dq;
        if (uvd != null) {
            uvd.Sj(webView, sj2);
        }
    }

    public ImageView TKC() {
        return this.HiB;
    }

    public void sP() {
        TzV tzV = this.Jcg;
        if (tzV != null) {
            tzV.sP();
        }
        uvD uvd = this.Dq;
        if (uvd != null) {
            uvd.sP();
        }
    }
}
