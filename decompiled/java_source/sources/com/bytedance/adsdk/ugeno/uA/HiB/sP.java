package com.bytedance.adsdk.ugeno.uA.HiB;

import android.content.Context;
import android.graphics.Color;
import com.bytedance.adsdk.ugeno.sP.TKC;

/* JADX INFO: loaded from: classes2.dex */
public class sP extends TKC<Sj> {
    private int AVc;
    private float RrR;
    private float SP;
    private int Sj;
    private float dLt;
    private static final int zwV = Color.parseColor("#FFC642");
    private static final int Xqg = Color.parseColor("#e3e3e4");

    public sP(Context context) {
        super(context);
        this.Sj = zwV;
        this.AVc = Xqg;
        this.RrR = 4.0f;
        this.SP = 20.0f;
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public void Sj(String str, String str2) {
        super.Sj(str, str2);
        str.hashCode();
        switch (str) {
            case "highLightColor":
            case "highlightColor":
                this.Sj = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str2);
                break;
            case "lowLightColor":
            case "lowlightColor":
                this.AVc = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str2, Xqg);
                break;
            case "gap":
                this.dLt = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case "size":
                this.SP = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 20.0f);
                break;
            case "score":
                this.RrR = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 4.0f);
                break;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    /* JADX INFO: renamed from: TKC, reason: merged with bridge method [inline-methods] */
    public Sj Sj() {
        Sj sj2 = new Sj(this.sP);
        sj2.Sj(this);
        return sj2;
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public void sP() {
        super.sP();
        if (LD()) {
            ((Sj) this.HiB).Sj(this.RrR, this.Sj, this.AVc, this.SP, (int) this.dLt);
        } else {
            ((Sj) this.HiB).Sj(this.RrR, this.Sj, this.AVc, this.SP, 5);
        }
    }
}
