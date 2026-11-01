package com.bytedance.sdk.openadsdk.component.reward.sP;

import android.app.Activity;
import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity;
import com.bytedance.sdk.openadsdk.common.Fmk;
import com.bytedance.sdk.openadsdk.component.reward.Sj.aa;
import com.bytedance.sdk.openadsdk.component.reward.Sj.dNu;
import com.bytedance.sdk.openadsdk.component.reward.Sj.sef;
import com.bytedance.sdk.openadsdk.component.reward.view.RFEndCardBackUpLayout;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.core.model.uvD;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Zq;
import com.google.android.material.card.MaterialCardView;
import com.google.logging.type.LogSeverity;
import java.util.List;
import java.util.Objects;
import y5.b;

/* JADX INFO: loaded from: classes3.dex */
public abstract class sP extends com.bytedance.sdk.openadsdk.component.reward.sP.Sj {
    public com.bytedance.sdk.openadsdk.core.widget.sP Fmk;
    protected String Ym;
    private com.bytedance.sdk.openadsdk.aa.vS Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    protected com.bytedance.sdk.openadsdk.core.sP.HiB f21009aa;
    public LinearLayout sef;

    public interface Sj {
        void Sj(boolean z10);
    }

    public sP(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        super(sj2);
    }

    protected static FrameLayout Sj(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        tkc.setId(Zq.Ym);
        tkc.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        tkc.setLayoutParams(layoutParams);
        return tkc;
    }

    private void Sj(long j11, long j12) {
        long j13 = j12 - j11;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
        Activity activity = sj2.Fm;
        if (activity instanceof TTRewardVideoActivity) {
            ((TTRewardVideoActivity) activity).sP(j13, j12);
            return;
        }
        com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar = sj2.f20993jb;
        if (sPVar instanceof com.bytedance.sdk.openadsdk.activity.HiB) {
            ((com.bytedance.sdk.openadsdk.activity.HiB) sPVar).Sj(j13, j12);
        }
    }

    static void Sj(FrameLayout frameLayout, final com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        final com.bytedance.sdk.openadsdk.core.HiB.EjP ejP;
        Context context = frameLayout.getContext();
        if (sj2.Uc) {
            com.bytedance.sdk.openadsdk.core.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
            tkc.setId(Zq.TEQ);
            frameLayout.addView(tkc, new FrameLayout.LayoutParams(-1, -1));
            FrameLayout frameLayoutSj = Sj(context);
            String strSj = "";
            if (sU.HiB(sj2.sP)) {
                b bVarUHs = sj2.sP.UHs();
                if (bVarUHs != null) {
                    strSj = bVarUHs.r();
                }
            } else {
                List<uvD> listBml = sj2.sP.Bml();
                if (listBml != null && !listBml.isEmpty()) {
                    strSj = listBml.get(0).Sj();
                }
            }
            if (TextUtils.isEmpty(strSj)) {
                ejP = null;
            } else {
                ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
                int i11 = Zq.roy;
                ejP.setId(i11);
                ejP.setTag(i11, strSj);
                ejP.setScaleType(ImageView.ScaleType.CENTER_CROP);
                frameLayoutSj.addView(ejP);
            }
            tkc.addView(frameLayoutSj);
            View tkc2 = new com.bytedance.sdk.openadsdk.component.reward.view.TKC(context);
            tkc2.setId(Zq.f21127aa);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 80;
            frameLayout.addView(tkc2, layoutParams);
            tkc2.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.sP.sP.3
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
                    int height = view.getHeight();
                    if (height <= 0) {
                        return;
                    }
                    View viewFindViewById = sj2.xD.findViewById(520093757);
                    if (viewFindViewById != null) {
                        ViewGroup.LayoutParams layoutParams2 = viewFindViewById.getLayoutParams();
                        if (layoutParams2 instanceof FrameLayout.LayoutParams) {
                            ((FrameLayout.LayoutParams) layoutParams2).bottomMargin = height;
                        }
                    }
                    View viewFindViewById2 = sj2.xD.findViewById(Zq.Ss);
                    if (viewFindViewById2 != null) {
                        ViewGroup.LayoutParams layoutParams3 = viewFindViewById2.getLayoutParams();
                        if (layoutParams3 instanceof FrameLayout.LayoutParams) {
                            ((FrameLayout.LayoutParams) layoutParams3).bottomMargin = height;
                        }
                    }
                    View viewFindViewById3 = sj2.xD.findViewById(Zq.Hs);
                    if (viewFindViewById3 != null) {
                        ViewGroup.LayoutParams layoutParams4 = viewFindViewById3.getLayoutParams();
                        if (layoutParams4 instanceof FrameLayout.LayoutParams) {
                            ((FrameLayout.LayoutParams) layoutParams4).bottomMargin = height;
                        }
                    }
                    com.bytedance.sdk.openadsdk.core.HiB.EjP ejP2 = ejP;
                    if (ejP2 != null) {
                        ViewGroup.LayoutParams layoutParams5 = ejP2.getLayoutParams();
                        if (layoutParams5 instanceof ViewGroup.MarginLayoutParams) {
                            ((ViewGroup.MarginLayoutParams) layoutParams5).bottomMargin = height;
                            ejP.setLayoutParams(layoutParams5);
                        }
                    }
                }
            });
            com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
            hiB.setId(Zq.Fmk);
            hiB.setOrientation(1);
            hiB.setVisibility(8);
            frameLayout.addView(hiB, new FrameLayout.LayoutParams(-1, -1));
        }
        if (sj2.xhi) {
            View vSVar = new com.bytedance.sdk.component.uA.vS(context, true);
            vSVar.setId(Zq.sef);
            vSVar.setLayerType(2, null);
            vSVar.setVisibility(4);
            frameLayout.addView(vSVar, new FrameLayout.LayoutParams(-1, -1));
            View frameLayout2 = new FrameLayout(context);
            frameLayout2.setId(Zq.Zq);
            frameLayout2.setVisibility(4);
            frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
            if (uP.sP(sj2.sP)) {
                View tkc3 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
                tkc3.setId(Zq.yfI);
                tkc3.setVisibility(4);
                frameLayout.addView(tkc3, new FrameLayout.LayoutParams(-1, -1));
            }
        }
        View vSVar2 = new com.bytedance.sdk.component.uA.vS(context, true);
        vSVar2.setId(Zq.uvD);
        vSVar2.setVisibility(8);
        frameLayout.addView(vSVar2, new FrameLayout.LayoutParams(-1, -1));
    }

    public RFEndCardBackUpLayout Dq() {
        return new RFEndCardBackUpLayout(this.Sj.Ei);
    }

    public Sj EjP() {
        return null;
    }

    public void Fmk() {
    }

    public abstract boolean HiB();

    public abstract void Jcg();

    protected boolean LqL() {
        return true;
    }

    public void RiZ() {
    }

    public void Sj(int i11) {
        this.HiB.sef();
        Sj(false, true, false, i11);
        if (this.Sj.EjP) {
            this.uA.Sj(10000);
        }
    }

    /* JADX WARN: Code duplicated, block: B:93:0x020e  */
    public void Sj(Message message) {
        int i11 = message.what;
        if (i11 == 1) {
            kF();
            return;
        }
        if (i11 == 300) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
            if (sj2.gR) {
                com.bytedance.sdk.openadsdk.activity.vS vSVar = sj2.HS;
                if (vSVar instanceof com.bytedance.sdk.openadsdk.activity.Sj) {
                    ((com.bytedance.sdk.openadsdk.activity.Sj) vSVar).dx();
                } else {
                    Sj(com.bytedance.sdk.openadsdk.EjP.sP.C0238sP.sP);
                    dNu dnu = this.Sj.f20992ib;
                    dnu.Sj(!dnu.LqL() ? 1 : 0, 1 ^ (this.Sj.f20992ib.LqL() ? 1 : 0));
                }
            } else {
                Sj(com.bytedance.sdk.openadsdk.EjP.sP.C0238sP.sP);
                dNu dnu2 = this.Sj.f20992ib;
                dnu2.Sj(!dnu2.LqL() ? 1 : 0, 1 ^ (this.Sj.f20992ib.LqL() ? 1 : 0));
            }
            if (this.Sj.sP.GMp() != null && this.Sj.sP.GMp().Sj() != null) {
                this.Sj.sP.GMp().Sj().Sj(com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj.GENERAL_LINEAR_AD_ERROR);
            }
            TzV tzV = this.Sj.Wjd.Zq;
            if (tzV != null) {
                tzV.TEQ();
                return;
            }
            return;
        }
        if (i11 == 400) {
            this.Sj.f20992ib.sef();
            Sj(false, true, false, 3);
            return;
        }
        if (i11 == 500) {
            if (!uP.Jcg(this.Sj.sP)) {
                this.Sj.Mts.TKC(false);
            }
            com.bytedance.sdk.component.uA.vS vSVarTEQ = this.Sj.JcM.TEQ();
            if (vSVarTEQ != null && vSVarTEQ.getWebView() != null) {
                vSVarTEQ.Fmk();
                vSVarTEQ.getWebView().resumeTimers();
            }
            if (this.Sj.JcM.TEQ() != null) {
                this.Sj.JcM.Sj(1.0f);
                this.Sj.Wjd.Sj(1.0f);
            }
            if (!this.Sj.sP.TT() && this.Sj.f20992ib.sP() && this.Sj.TzV.get()) {
                this.Sj.f20992ib.sef();
                return;
            }
            return;
        }
        if (i11 == 600) {
            Zq();
            return;
        }
        if (i11 == 700) {
            int i12 = message.arg1;
            if (this.Sj.f20991dx.get()) {
                return;
            }
            if (i12 <= 0) {
                this.TEQ.removeMessages(LogSeverity.ALERT_VALUE);
                if (!uP.uA(this.sP)) {
                    Zq();
                    return;
                } else if (this.Sj.uP.Jcg() || !this.Sj.JcM.TzV()) {
                    Zq();
                    return;
                } else {
                    kF();
                    return;
                }
            }
            this.Sj.Mts.sP();
            this.Sj.Mts.Sj((CharSequence) ((i12 / 1000) + "s"));
            this.Sj.Mts.HiB(false);
            Message messageObtain = Message.obtain();
            messageObtain.what = LogSeverity.ALERT_VALUE;
            messageObtain.arg1 = i12 - 1000;
            this.Sj.Dq -= 1000;
            this.TEQ.sendMessageDelayed(messageObtain, 1000L);
            return;
        }
        if (i11 == 800) {
            if (!uP.Jcg(this.Sj.sP)) {
                this.Sj.Mts.TKC(false);
            }
            this.Sj.Wjd.Sj(1.0f);
            if (!this.Sj.sP.TT() && this.Sj.f20992ib.sP() && this.Sj.TzV.get()) {
                this.Sj.f20992ib.sef();
                return;
            }
            return;
        }
        if (i11 == 900 && !this.Sj.zR.get()) {
            int i13 = message.arg1;
            double dYf = this.Sj.f20992ib.Yf();
            Sj(i13, (long) (1000.0d * dYf));
            if (i13 <= 0) {
                this.TEQ.removeMessages(DescriptorProtos$Edition.EDITION_LEGACY_VALUE);
                Zq();
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.Sj;
                com.bytedance.sdk.openadsdk.activity.vS vSVar2 = sj3.HS;
                if (sj3.gR && (vSVar2 instanceof com.bytedance.sdk.openadsdk.activity.Sj)) {
                    vSVar2.uP().Sj(vSVar2, new com.bytedance.sdk.openadsdk.activity.sP.HiB(5, this.Sj));
                    return;
                }
                return;
            }
            this.Sj.Mts.sP();
            this.Sj.Mts.Sj((CharSequence) ((i13 / 1000) + "s"));
            this.Sj.Mts.HiB(false);
            Message messageObtain2 = Message.obtain();
            messageObtain2.what = DescriptorProtos$Edition.EDITION_LEGACY_VALUE;
            int i14 = i13 - 1000;
            messageObtain2.arg1 = i14;
            this.Sj.uA = i14;
            this.TEQ.sendMessageDelayed(messageObtain2, 1000L);
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.Sj;
            if (sj4.gR) {
                com.bytedance.sdk.openadsdk.activity.vS vSVar3 = sj4.HS;
                if (!(vSVar3 instanceof com.bytedance.sdk.openadsdk.activity.Sj) || dYf <= 0.0d) {
                    return;
                }
                ((com.bytedance.sdk.openadsdk.activity.Sj) vSVar3).Sj((float) (1.0d - (((double) (i13 / 1000.0f)) / dYf)));
            }
        }
    }

    public abstract void Sj(FrameLayout frameLayout);

    public void Sj(com.bytedance.sdk.openadsdk.aa.vS vSVar) {
        this.Zq = vSVar;
        TKC();
        if (!this.Sj.sP.Ph() && LqL()) {
            ley();
        }
        if (LqL()) {
            this.Sj.FPG.sP();
        }
        if (TzV.EjP(this.Sj.sP) || TzV.HiB(this.Sj.sP)) {
            this.TEQ.sendEmptyMessageDelayed(500, 100L);
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
        sj2.Wjd.Sj(sj2.MuB == 100.0f);
        uP();
        Jcg();
    }

    public void Sj(com.bytedance.sdk.openadsdk.component.reward.view.Jcg jcg) {
        Sj(jcg, this.Sj);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.Sj
    public void Sj(com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar, LqL lqL) {
        super.Sj(sPVar, lqL);
        if (this.Sj.sP.EjP()) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
            if (sj2.Uc) {
                sj2.JcM.Sj(false);
            }
        }
        if (uP.TzV(this.Sj.sP)) {
            this.Sj.uP.aa();
        }
    }

    public void Sj(boolean z10, boolean z11, boolean z12, int i11) {
        this.Sj.FPG.Sj(z10, z11, z12, this, i11);
    }

    public View TEQ() {
        com.bytedance.sdk.openadsdk.core.HiB.Jcg jcg;
        if (this.sP.FPG() != 5) {
            jcg = new com.bytedance.sdk.openadsdk.core.HiB.Jcg(this.Sj.Fm);
            jcg.setId(Zq.TT);
        } else {
            jcg = null;
        }
        Objects.toString(jcg);
        return jcg;
    }

    protected void TzV() {
        int i11;
        if (this.Sj.TEQ.get()) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
            if (!sj2.Jcg && sj2.f20991dx.getAndSet(false) && ((i11 = this.Sj.Dq) >= 0 || i11 == -1)) {
                Message messageObtain = Message.obtain();
                messageObtain.what = LogSeverity.ALERT_VALUE;
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.Sj;
                messageObtain.arg1 = sj3.Dq;
                sj3.HpB.sendMessage(messageObtain);
            }
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.Sj;
        if (sj4.uA <= 0 || !sj4.zR.getAndSet(false)) {
            return;
        }
        Message messageObtain2 = Message.obtain();
        messageObtain2.what = DescriptorProtos$Edition.EDITION_LEGACY_VALUE;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = this.Sj;
        messageObtain2.arg1 = sj5.uA;
        sj5.HpB.sendMessage(messageObtain2);
    }

    public void Ym() {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
        sj2.ley.Sj(sj2.EjP);
        this.Sj.Wjd.sP();
        this.Sj.FPG.Sj();
        if (!this.Sj.sP.Ph()) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.Sj;
            if (sj3.Jcg && TextUtils.isEmpty(sU.Sj(sj3.Ei, this.sP))) {
                aa();
            }
            this.Sj.JcM.Sj();
            this.Sj.WMZ.Sj();
        }
        this.Sj.uP.Zq();
        this.Sj.Mts.Sj();
        if (uP.Jcg(this.Sj.sP)) {
            com.bytedance.sdk.component.uA.vS vSVarTEQ = this.Sj.JcM.TEQ();
            if (vSVarTEQ != null) {
                vSVarTEQ.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            }
            this.Sj.JcM.Ym().setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            this.Sj.Mts.TKC(true);
            if (uP.TzV(this.Sj.sP)) {
                this.Sj.Wjd.EjP();
                FPG.Sj((View) vSVarTEQ, 4);
                FPG.Sj((View) this.Sj.JcM.Ym(), 0);
            }
        }
        if (uP.vS(this.Sj.sP)) {
            this.Sj.Wjd.EjP();
            FPG.Sj((View) this.Sj.JcM.TEQ(), 4);
        }
        if (TzV.EjP(this.Sj.sP) || TzV.sP(this.Sj.sP) || TzV.HiB(this.Sj.sP)) {
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.Sj;
        com.bytedance.sdk.openadsdk.component.reward.view.TEQ teq = sj4.Wjd;
        int iSP = FPG.sP(sj4.Ei, sj4.IOh);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = this.Sj;
        teq.Sj(iSP, FPG.sP(sj5.Ei, sj5.pfr));
        this.Sj.kF.Sj();
        if (uP.TzV(this.Sj.sP)) {
            this.Sj.JcM.Sj(true);
            this.Sj.JcM.HiB();
            Sj(false, false, false, com.bytedance.sdk.openadsdk.EjP.sP.C0238sP.TKC);
        } else {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj6 = this.Sj;
            if (sj6.cX) {
                sj6.Wjd.Sj(0);
            }
        }
    }

    public void Zq() {
        com.bytedance.sdk.openadsdk.activity.vS vSVar;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
        if (sj2.Jcg) {
            return;
        }
        sj2.Mts.HiB();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.Sj;
        if (!sj3.Ir || (vSVar = sj3.HS) == null || vSVar.kF()) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.Sj;
            if (sj4.gR && (sj4.HS instanceof com.bytedance.sdk.openadsdk.activity.Sj)) {
                return;
            }
            sj4.Wjd.HiB(0);
        }
    }

    public void aa() {
        LinearLayout linearLayout = (LinearLayout) this.Sj.xD.findViewById(Zq.Fmk);
        this.sef = linearLayout;
        FPG.Sj((View) linearLayout, 8);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
        sj2.aNB = new Fmk(sj2.Fm, sj2.sP, "landingpage_endcard");
        this.Sj.aNB.TKC().setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.sP.sP.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                sP.this.Sj.Wjd.TEQ().performClick();
            }
        });
        this.sef.addView(this.Sj.aNB.HiB(), new LinearLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.Sj;
        sj3.JcM.Sj(sj3.aNB);
    }

    public void dNu() {
        if (!uP.TEQ(this.sP) || this.Sj.JcM.xD()) {
            TzV();
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
        if (sj2 == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.utils.Fmk fmk = sj2.f20996xu;
        if (fmk != null) {
            fmk.Sj();
        }
        this.Sj.Sj();
    }

    public void dx() {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
        if (sj2 == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.view.TEQ teq = sj2.Wjd;
        if (teq != null) {
            teq.uvD();
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.Sj;
        boolean z10 = sj3.ndK;
        sj3.fF.Sj();
        DeviceUtils.Jcg();
        this.Sj.JcM.sU();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.Sj;
        if (sj4.ndK) {
            sj4.Fm.runOnUiThread(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.sP.sP.2
                @Override // java.lang.Runnable
                public void run() {
                    if (sP.this.Sj.fF.Sj() > 0) {
                        sP.this.Sj.fF.Sj(false);
                    }
                }
            });
        }
    }

    public void ib() {
        int iSj;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Dq dq2;
        sef sefVar;
        if (com.bytedance.sdk.openadsdk.core.dNu.EjP().dx(String.valueOf(this.Sj.vS)) == 1) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
            if (sj2.EjP) {
                if (uP.TKC(sj2.sP)) {
                    iSj = com.bytedance.sdk.openadsdk.core.dNu.EjP().Sj(String.valueOf(this.Sj.vS), true);
                } else {
                    iSj = this.Sj.sP.sP() >= 0 ? this.Sj.sP.sP() : com.bytedance.sdk.openadsdk.core.dNu.EjP().TEQ(String.valueOf(this.Sj.vS));
                }
            } else if (uP.TKC(sj2.sP)) {
                iSj = com.bytedance.sdk.openadsdk.core.dNu.EjP().Sj(String.valueOf(this.Sj.vS), false);
            } else {
                iSj = this.Sj.sP.Sj() >= 0 ? this.Sj.sP.Sj() : com.bytedance.sdk.openadsdk.core.dNu.EjP().RiZ(String.valueOf(this.Sj.vS));
            }
            com.bytedance.sdk.openadsdk.component.reward.view.TEQ teq = this.Sj.Wjd;
            if (teq != null && teq.uA()) {
                com.bytedance.sdk.openadsdk.component.reward.view.TEQ teq2 = this.Sj.Wjd;
                if (teq2 != null) {
                    teq2.TEQ().performClick();
                    return;
                }
                return;
            }
            if ((!this.Sj.TEQ.get() || uP.TKC(this.Sj.sP)) && iSj != -1) {
                dNu dnu = this.Sj.f20992ib;
                if (((dnu == null || dnu.Dq() < ((long) iSj) * 1000) && ((dq2 = this.Sj.uP) == null || !dq2.EjP(iSj))) || (sefVar = this.Sj.Mts) == null) {
                    return;
                }
                sefVar.EjP();
            }
        }
    }

    public void kF() {
        this.Sj.Mts.TKC();
        this.Sj.Mts.HiB(true);
    }

    public final void ley() {
        if (this.Sj.Fm.isFinishing()) {
            return;
        }
        this.Sj.JcM.Zq();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
        String str = sj2.EjP ? "reward_endcard" : "fullscreen_endcard";
        sj2.JcM.Sj(this.Zq, str, sj2.f20993jb);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.Sj;
        sj3.uP.Sj(this.Zq, sj3.ndK);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.Sj;
        sj4.JcM.Sj(str, sj4.f20993jb);
        this.Sj.JcM.HiB();
    }

    public void sU() {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
        if (sj2 == null) {
            return;
        }
        sj2.qRN = false;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.Sj;
        boolean z10 = sj3.qRN;
        boolean z11 = sj3.ndK;
        if (!sj3.Ym.get()) {
            this.Sj.f20992ib.TEQ();
        }
        uvD();
        this.Sj.JcM.dx();
        this.Sj.uP.uvD();
        this.Sj.zR.set(true);
        if (this.Sj.TEQ.get()) {
            this.Sj.f20991dx.set(true);
        }
        com.bytedance.sdk.openadsdk.utils.Fmk fmk = this.Sj.f20996xu;
        if (fmk != null) {
            fmk.sP();
        }
        this.Sj.sP();
    }

    public void sef() {
        com.bytedance.sdk.openadsdk.core.widget.sP sPVar = this.Fmk;
        if (sPVar == null || !sPVar.isShowing()) {
            return;
        }
        this.Fmk.dismiss();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x00fe  */
    public View uA() {
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.HiB.TKC(this.Sj.Fm);
        tkc.setId(Zq.IPx);
        View viewSP = com.bytedance.sdk.openadsdk.core.widget.vS.sP(this.Sj.Fm);
        viewSP.setId(520093708);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
        layoutParams.topMargin = FPG.sP(this.Sj.Fm, 20.0f);
        layoutParams.rightMargin = FPG.sP(this.Sj.Fm, 16.0f);
        viewSP.setLayoutParams(layoutParams);
        viewSP.setContentDescription(ib.Sj(this.Sj.Fm, "tt_ad_close_text"));
        viewSP.setVisibility(8);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
        View viewCreatePAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(sj2.Fm, sj2.sP);
        viewCreatePAGLogoViewByMaterial.setId(520093757);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, FPG.sP(this.Sj.Fm, 14.0f));
        layoutParams2.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
        viewCreatePAGLogoViewByMaterial.setLayoutParams(layoutParams2);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(this.Sj.Fm);
        ejP.setId(Zq.Ss);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(FPG.sP(this.Sj.Fm, 32.0f), FPG.sP(this.Sj.Fm, 14.0f));
        layoutParams3.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_END;
        ejP.setLayoutParams(layoutParams3);
        ejP.setPadding(FPG.sP(this.Sj.Fm, 9.0f), 0, FPG.sP(this.Sj.Fm, 9.0f), 0);
        ejP.setScaleType(ImageView.ScaleType.FIT_CENTER);
        View teq = new com.bytedance.sdk.openadsdk.core.widget.TEQ(this.Sj.Fm);
        teq.setId(Zq.ewz);
        teq.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        teq.setClickable(true);
        teq.setFocusable(true);
        tkc.addView(viewCreatePAGLogoViewByMaterial);
        tkc.addView(ejP);
        tkc.addView(teq);
        if (this.Sj.sP.tR()) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.Sj;
            if (!sj3.gR || sj3.Sj != 1) {
                View tkc2 = new com.bytedance.sdk.openadsdk.component.reward.top.TKC(this.Sj.Fm);
                tkc2.setId(Zq.MGU);
                tkc2.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
                tkc.addView(tkc2);
            }
        } else {
            View tkc3 = new com.bytedance.sdk.openadsdk.component.reward.top.TKC(this.Sj.Fm);
            tkc3.setId(Zq.MGU);
            tkc3.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
            tkc.addView(tkc3);
        }
        tkc.addView(viewSP);
        return tkc;
    }

    public void uP() {
        this.f21009aa = this.Sj.LqL.TKC();
    }

    public void uvD() {
        this.TEQ.removeMessages(300);
    }

    public abstract boolean vS();

    /* JADX WARN: Code duplicated, block: B:17:0x003e  */
    public void wE() {
        sU sUVar;
        if (!vS() && ((this instanceof Dq) || (this instanceof uA))) {
            this.Sj.LqL.sP();
            return;
        }
        if (!this.uA.Sj(this.HiB.uA(), false)) {
            this.TEQ.removeMessages(300);
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
            if (sj2.gR) {
                com.bytedance.sdk.openadsdk.activity.vS vSVar = sj2.HS;
                if (vSVar instanceof com.bytedance.sdk.openadsdk.activity.Sj) {
                    ((com.bytedance.sdk.openadsdk.activity.Sj) vSVar).dx();
                } else {
                    Sj(com.bytedance.sdk.openadsdk.EjP.sP.C0238sP.Sj);
                    dNu dnu = this.HiB;
                    dnu.Sj(!dnu.LqL() ? 1 : 0, 4);
                }
            } else {
                Sj(com.bytedance.sdk.openadsdk.EjP.sP.C0238sP.Sj);
                dNu dnu2 = this.HiB;
                dnu2.Sj(!dnu2.LqL() ? 1 : 0, 4);
            }
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.Sj;
        if (sj3 == null || (sUVar = sj3.sP) == null || sj3.f20996xu == null || !sUVar.Fqk()) {
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.Sj;
        sj4.f20996xu.Sj(sj4.f20992ib.dx());
    }

    public void zR() {
        com.bytedance.sdk.openadsdk.component.reward.view.Dq dq2 = this.Sj.wE;
        if (dq2 != null) {
            dq2.vS();
        }
        com.bytedance.sdk.openadsdk.component.reward.view.TEQ teq = this.Sj.Wjd;
        if (teq != null) {
            teq.sef();
        }
        this.Sj.f20992ib.wE();
        if (!HiB()) {
            this.Sj.TEQ.get();
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.TzV tzV = this.Sj.JcM;
        if (tzV != null) {
            tzV.uvD();
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Dq dq3 = this.Sj.uP;
        if (dq3 != null) {
            dq3.Jcg(com.bytedance.sdk.openadsdk.component.reward.Sj.Dq.Sj);
        }
        com.bytedance.sdk.openadsdk.component.reward.view.TEQ teq2 = this.Sj.Wjd;
        if (teq2 != null) {
            teq2.aa();
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.HiB hiB = this.Sj.FPG;
        if (hiB != null) {
            hiB.TKC();
        }
        aa aaVar = this.Sj.ley;
        if (aaVar != null) {
            aaVar.sP();
        }
        com.bytedance.sdk.openadsdk.utils.Fmk fmk = this.Sj.f20996xu;
        if (fmk != null) {
            fmk.TKC();
        }
    }
}
