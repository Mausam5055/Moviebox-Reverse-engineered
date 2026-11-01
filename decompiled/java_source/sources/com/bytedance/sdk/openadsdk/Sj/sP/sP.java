package com.bytedance.sdk.openadsdk.Sj.sP;

import android.content.Context;
import android.util.Pair;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.TzV;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.uvD;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.List;
import u5.b;

/* JADX INFO: loaded from: classes2.dex */
public class sP extends Dq implements b.a, b.c, com.bytedance.sdk.openadsdk.multipro.sP.Sj.InterfaceC0285Sj {
    private TKC Dq;
    private long Fmk;
    private boolean TEQ;
    private boolean Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private AdSlot f20946aa;
    private final com.bytedance.sdk.openadsdk.multipro.sP.Sj uA;

    public sP(@NonNull Context context, @NonNull sU sUVar, int i11, AdSlot adSlot) {
        super(context, sUVar, i11, true);
        this.TEQ = false;
        this.Ym = true;
        this.HiB = i11;
        this.f20946aa = adSlot;
        this.uA = new com.bytedance.sdk.openadsdk.multipro.sP.Sj();
        Sj(this.vS);
        Sj("embeded_ad");
        this.EjP.Sj(this);
    }

    public sP(@NonNull Context context, @NonNull sU sUVar, int i11, AdSlot adSlot, Sj sj2, uvD uvd) {
        super(context, sUVar, i11, false);
        this.TEQ = false;
        this.Ym = true;
        this.EjP = sj2;
        this.Sj = uvd;
        this.HiB = i11;
        this.f20946aa = adSlot;
        this.uA = new com.bytedance.sdk.openadsdk.multipro.sP.Sj();
        Sj(this.vS);
        Sj("embeded_ad");
        sj2.Sj(this);
    }

    private void Sj(int i11) {
        int iSP = dNu.EjP().sP(i11);
        int iTKC = TzV.TKC(dNu.Sj());
        if (3 == iSP) {
            this.TEQ = false;
            this.Ym = false;
        } else {
            if (1 == iSP && Mts.EjP(iTKC)) {
                this.TEQ = false;
            } else if (2 == iSP) {
                if (Mts.HiB(iTKC) || Mts.EjP(iTKC) || Mts.vS(iTKC)) {
                    this.TEQ = false;
                }
            } else if (4 == iSP) {
                this.TEQ = true;
            } else if (5 == iSP && (Mts.EjP(iTKC) || Mts.vS(iTKC))) {
            }
            this.Ym = true;
        }
        Sj sj2 = this.EjP;
        if (sj2 != null) {
            sj2.Sj(this.TEQ);
        }
    }

    public View HiB() {
        com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar;
        sU sUVar = this.sP;
        if (sUVar != null && this.TKC != null) {
            if (sU.HiB(sUVar)) {
                try {
                    vSVar = new com.bytedance.sdk.openadsdk.core.aa.sP.vS(this.TKC, this.sP, this.Sj.Sj());
                    sU sUVar2 = this.sP;
                    if (sUVar2 != null && sUVar2.Ph()) {
                        com.bytedance.sdk.openadsdk.core.Ym.vS vSVarSj = vSVar.Sj((List<Pair<View, FriendlyObstructionPurpose>>) null);
                        Sj sj2 = this.EjP;
                        if (sj2 != null) {
                            sj2.Sj(vSVarSj);
                        }
                    }
                    this.Sj.Sj(vSVar.getNativeVideoController());
                    Sj sj3 = this.EjP;
                    if (sj3 != null) {
                        sj3.Sj(vSVar);
                    }
                    vSVar.setVideoAdClickListenerTTNativeAd(this);
                    vSVar.setAdCreativeClickListener(new com.bytedance.sdk.openadsdk.core.aa.sP.vS.Sj() { // from class: com.bytedance.sdk.openadsdk.Sj.sP.sP.1
                        @Override // com.bytedance.sdk.openadsdk.core.aa.sP.vS.Sj
                        public void Sj(View view, int i11) {
                            uvD uvd = sP.this.Sj;
                            if (uvd != null) {
                                uvd.Sj(view, i11);
                            }
                        }
                    });
                    vSVar.setControllerStatusCallBack(new com.bytedance.sdk.openadsdk.core.aa.sP.vS.sP() { // from class: com.bytedance.sdk.openadsdk.Sj.sP.sP.2
                        @Override // com.bytedance.sdk.openadsdk.core.aa.sP.vS.sP
                        public void Sj(boolean z10, long j11, long j12, long j13, boolean z11) {
                            sP.this.uA.Sj = z10;
                            sP.this.uA.HiB = j11;
                            sP.this.uA.vS = j12;
                            sP.this.uA.Jcg = j13;
                            sP.this.uA.EjP = z11;
                        }
                    });
                    vSVar.setVideoAdLoadListener(this);
                    vSVar.setVideoAdInteractionListener(this);
                    if (5 == this.HiB) {
                        vSVar.setIsAutoPlay(this.TEQ ? this.f20946aa.isAutoPlay() : this.Ym);
                    } else {
                        vSVar.setIsAutoPlay(this.Ym);
                    }
                    vSVar.Sj(dNu.EjP().TKC(String.valueOf(this.vS)), "feedGetAdView");
                } catch (Exception e11) {
                    ApmHelper.reportCustomError("", "getAdView null", e11);
                    vSVar = null;
                }
            } else {
                vSVar = null;
            }
            if (sU.HiB(this.sP) && vSVar != null && vSVar.Sj(0L, true, false)) {
                return vSVar;
            }
            ApmHelper.reportCustomError(this.sP.HcZ() + "," + vSVar, "getAdView null", new RuntimeException());
        }
        return null;
    }

    @Override // u5.b.a
    public void Sj(int i11, int i12) {
        TKC tkc = this.Dq;
        if (tkc != null) {
            tkc.Sj(i11, i12);
        }
    }

    @Override // u5.b.c
    public void Sj(long j11, long j12) {
        this.Fmk = j11;
    }

    public void Sj(TKC tkc) {
        this.Dq = tkc;
    }

    @Override // com.bytedance.sdk.openadsdk.Sj.sP.Dq
    protected void Sj(String str) {
        super.Sj(str);
    }

    @Override // u5.b.c
    public void d_() {
        TKC tkc = this.Dq;
        if (tkc != null) {
            tkc.Sj(this);
        }
    }

    @Override // u5.b.c
    public void g_() {
        TKC tkc = this.Dq;
        if (tkc != null) {
            tkc.sP(this);
        }
    }

    @Override // u5.b.c
    public void h_() {
    }

    @Override // u5.b.c
    public void i_() {
        TKC tkc = this.Dq;
        if (tkc != null) {
            tkc.TKC(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.Sj.sP.Dq, com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd
    public void showPrivacyActivity() {
        Sj sj2 = this.EjP;
        if (sj2 != null) {
            sj2.aa();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.sP.Sj.InterfaceC0285Sj
    public com.bytedance.sdk.openadsdk.multipro.sP.Sj vS() {
        return this.uA;
    }
}
