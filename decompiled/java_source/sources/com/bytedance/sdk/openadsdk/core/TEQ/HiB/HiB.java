package com.bytedance.sdk.openadsdk.core.TEQ.HiB;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.adsdk.ugeno.core.Dq;
import com.bytedance.adsdk.ugeno.core.Fmk;
import com.bytedance.adsdk.ugeno.core.aa;
import com.bytedance.sdk.component.adexpress.EjP.vS;
import com.bytedance.sdk.openadsdk.core.model.LqL;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.sef;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class HiB extends TKC {
    private boolean ley;
    private com.bytedance.adsdk.ugeno.sP.TKC uP;
    private com.bytedance.adsdk.ugeno.sP.TKC wE;

    public HiB(Context context, sU sUVar, boolean z10, Sj sj2, ViewGroup viewGroup) {
        super(context, sUVar, z10, sj2, viewGroup);
        this.ley = false;
    }

    private void Sj(CharSequence charSequence, boolean z10, int i11, boolean z11) {
        int i12;
        com.bytedance.adsdk.ugeno.sP.TKC tkc = this.uP;
        if (tkc != null && (tkc instanceof com.bytedance.sdk.openadsdk.core.TEQ.sP.sP)) {
            try {
                i12 = Integer.parseInt((String) charSequence);
            } catch (Exception unused) {
                com.bytedance.sdk.component.utils.sU.sP("UGenRender", "parse duration exception", charSequence);
                i12 = 0;
            }
            if (z11 || i12 <= 0 || this.ley) {
                this.uP.TKC(8);
                return;
            }
            this.uP.TKC(0);
            if (!z10 && this.vS.Sj() && vS.sP(this.vS.EjP())) {
                ((com.bytedance.sdk.openadsdk.core.TEQ.sP.sP) this.uP).Jcg(String.valueOf(i11));
            } else if ("open_ad".equals(this.vS.EjP()) || !this.vS.Sj()) {
                ((com.bytedance.sdk.openadsdk.core.TEQ.sP.sP) this.uP).Jcg(String.valueOf(charSequence));
            } else {
                this.ley = true;
                this.uP.TKC(8);
            }
        }
    }

    private void TEQ() {
        Dq dq2 = new Dq();
        HashMap map = new HashMap();
        map.put("image_info", this.vS.Ym());
        map.put("cache_dir", this.vS.sef());
        dq2.Sj(map);
        dq2.Sj(this.sP);
        dq2.Sj(this.EjP);
        dq2.sP(this.kF);
        this.Sj.Sj(CommonLogUtil.TAG_AD, dq2);
    }

    private void sP(CharSequence charSequence, boolean z10, int i11, boolean z11) {
        com.bytedance.adsdk.ugeno.sP.TKC tkc = this.wE;
        if (tkc != null && (tkc instanceof com.bytedance.sdk.openadsdk.core.TEQ.sP.vS)) {
            int i12 = 0;
            if (!z10 && !z11) {
                i12 = 8;
            }
            tkc.TKC(i12);
        }
    }

    private void uA() {
        com.bytedance.adsdk.ugeno.sP.TKC tkc = this.uP;
        if (tkc != null) {
            tkc.TKC(8);
        }
        com.bytedance.adsdk.ugeno.sP.TKC tkc2 = this.wE;
        if (tkc2 != null) {
            tkc2.TKC(8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC
    protected com.bytedance.adsdk.ugeno.sP.TKC Dq() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC
    protected int EjP() {
        TEQ();
        this.Sj.Sj((aa) this);
        this.Sj.Sj((Fmk) this);
        LqL lqLNdK = this.HiB.ndK();
        try {
            if (lqLNdK != null) {
                this.TKC = this.Sj.Sj(this.EjP, this.kF, lqLNdK.HiB());
            } else {
                this.TKC = this.Sj.Sj(this.EjP, this.kF, (JSONObject) null);
            }
            if (this.TKC != null) {
                if (TextUtils.equals(this.zR, "rewarded_video")) {
                    this.uP = this.TKC.EjP("RVCountdown");
                    this.wE = this.TKC.EjP("RVSkipView");
                } else {
                    this.uP = this.TKC.EjP("FVCountdown");
                    this.wE = this.TKC.EjP("FVSkipView");
                }
                uA();
            }
            this.vS.fF().sP();
            this.vS.fF().TKC();
            return 0;
        } catch (NoClassDefFoundError unused) {
            return 140;
        } catch (UnsatisfiedLinkError unused2) {
            return 139;
        } catch (Throwable unused3) {
            return 141;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC
    protected com.bytedance.adsdk.ugeno.sP.TKC Jcg() {
        com.bytedance.adsdk.ugeno.sP.TKC<View> tkc = this.TKC;
        if (tkc == null) {
            return null;
        }
        return tkc.EjP("VideoV3");
    }

    @Override // com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC
    protected JSONObject Sj() {
        JSONObject jSONObjectTKC = this.vS.TKC();
        if (jSONObjectTKC != null) {
            return jSONObjectTKC.optJSONObject("xTemplate");
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC, com.bytedance.adsdk.ugeno.core.aa
    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, String str, com.bytedance.adsdk.ugeno.EjP.vS.Sj sj2) {
        int i11 = 6;
        boolean z10 = true;
        if (this.Dq == null || sj2 == null) {
            return;
        }
        String strSP = sj2.sP();
        strSP.hashCode();
        switch (strSP) {
            case "openPrivacy":
                i11 = 7;
                break;
            case "pauseVideo":
            case "videoControl":
                i11 = 4;
                break;
            case "skip":
                break;
            case "convert":
                i11 = 2;
                break;
            case "muteVideo":
                i11 = 5;
                break;
            case "dislike":
                i11 = 3;
                break;
            default:
                i11 = 0;
                break;
        }
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        WeakReference<View> weakReference = this.f21029dx;
        if (weakReference != null) {
            int[] iArrSj = FPG.Sj(weakReference.get());
            if (iArrSj != null) {
                iArr = iArrSj;
            }
            int[] iArrTKC = FPG.TKC(this.f21029dx.get());
            if (iArrTKC != null) {
                iArr2 = iArrTKC;
            }
        }
        sef.Sj Sj = new sef.Sj().EjP(this.Fmk).TKC(this.sef).sP(this.Zq).Sj(this.uvD).sP(this.dNu).Sj(this.TzV).TKC(iArr[0]).EjP(iArr[1]).HiB(iArr2[0]).vS(iArr2[1]).Sj(this.f21030ib);
        if (str.equals("tap") && !this.RiZ) {
            z10 = false;
        }
        this.Dq.Sj(tkc.Ym(), i11, Sj.Sj(z10).Sj(tkc.WMZ()).sP(false).Sj());
    }

    @Override // com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC
    protected JSONObject sP() {
        return this.vS.TKC();
    }

    @Override // com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC, com.bytedance.sdk.component.adexpress.dynamic.EjP
    public void setSoundMute(boolean z10) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC, com.bytedance.sdk.component.adexpress.dynamic.EjP
    public void setTime(CharSequence charSequence, int i11, int i12, boolean z10) {
        if (this.TKC == null) {
            return;
        }
        boolean z11 = i11 == 1;
        Sj(charSequence, z11, i12, z10);
        sP(charSequence, z11, i12, z10);
    }
}
