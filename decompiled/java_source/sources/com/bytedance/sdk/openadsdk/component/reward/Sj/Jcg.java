package com.bytedance.sdk.openadsdk.component.reward.Sj;

import android.os.Handler;
import android.os.Message;
import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;

/* JADX INFO: loaded from: classes3.dex */
public class Jcg extends TEQ implements Handler.Callback {
    int EjP;
    int HiB;
    private final Handler RiZ;
    boolean Sj;
    int TKC;
    long sP;
    boolean vS;

    public Jcg(Sj sj2) {
        super(sj2);
        this.RiZ = new Handler(this);
        this.Sj = false;
        this.sP = 0L;
        this.TKC = 0;
        this.EjP = 0;
        this.HiB = 0;
        this.vS = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aa() {
        boolean z10 = false;
        boolean z11 = (1.0f - (((float) this.TKC) / ((float) this.EjP))) * 100.0f >= ((float) com.bytedance.sdk.openadsdk.core.dNu.EjP().ley(String.valueOf(this.Ym.vS)).vS);
        int iSj = com.bytedance.sdk.openadsdk.core.dNu.EjP().Sj(String.valueOf(this.Ym.vS));
        if (iSj == 0) {
            com.bytedance.sdk.openadsdk.sU.Sj.Sj sj2 = this.dNu;
            boolean zVS = sj2 != null ? sj2.vS() : false;
            if (this.sef) {
                zVS = true;
            }
            if (z11 && zVS) {
                z10 = true;
            }
        } else if (iSj == 1) {
            z10 = z11;
        }
        if (z10) {
            this.Ym.f20993jb.Sj(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.Sj.TEQ
    public void Dq() {
        if (this.Fmk) {
            this.RiZ.removeMessages(DescriptorProtos$Edition.EDITION_LEGACY_VALUE);
            this.RiZ.removeMessages(600);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.Sj.TEQ
    public void EjP() {
        com.bytedance.sdk.openadsdk.core.widget.sP sPVar;
        if (this.Fmk) {
            super.EjP();
            if (DeviceUtils.Jcg() == 0) {
                this.Ym.ndK = true;
            }
            Sj sj2 = this.Ym;
            if (sj2.ndK) {
                sj2.Mts.sP(true);
                TKC(true);
            }
            com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar2 = this.Ym.f20994kb;
            if ((sPVar2 == null || (sPVar = sPVar2.Fmk) == null || !sPVar.isShowing()) && Jcg() > 0) {
                Sj(0L);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.Sj.TEQ
    public void HiB() {
        if (this.Fmk) {
            super.HiB();
            if (uP.TKC(this.Ym.sP)) {
                this.Ym.HpB.removeMessages(600);
            }
            this.RiZ.removeMessages(DescriptorProtos$Edition.EDITION_LEGACY_VALUE);
        }
    }

    public int Jcg() {
        return this.TKC;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.Sj.TEQ
    public void Sj() {
        if (this.Fmk && !this.f20997aa) {
            super.Sj();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.Sj.TEQ
    public void Sj(int i11) {
        this.TKC = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.Sj.TEQ
    public void Sj(long j11) {
        if (this.Fmk && this.Jcg) {
            Message messageObtain = Message.obtain();
            messageObtain.what = DescriptorProtos$Edition.EDITION_LEGACY_VALUE;
            messageObtain.arg1 = Jcg();
            this.RiZ.sendMessageDelayed(messageObtain, j11);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.Sj.TEQ
    protected void Sj(boolean z10) {
        if (this.uvD != null) {
            try {
                com.bytedance.sdk.openadsdk.sU.Sj.sP sPVarSj = com.bytedance.sdk.openadsdk.sU.Sj.EjP.Sj().Sj(this.uA, this.uvD, sP());
                this.dNu = sPVarSj;
                sPVarSj.Sj(this.Ym.f20993jb);
            } catch (Throwable unused) {
                sU.sP("RVIVPlayableNewManager", "PreRender injection exception");
            }
            if (this.dNu == null) {
                super.Sj(z10);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.Sj.TEQ
    public void TKC() {
        if (this.Fmk) {
            this.Jcg = true;
            this.dNu.Sj();
            if (uP.TEQ(this.uA)) {
                this.Ym.JcM.vS();
            }
            this.EjP = this.uA.oWa();
            this.HiB = com.bytedance.sdk.openadsdk.core.dNu.EjP().Sj(String.valueOf(this.Ym.vS), this.uA.TT());
            this.sP = System.currentTimeMillis();
            Handler handler = this.RiZ;
            handler.sendMessage(handler.obtainMessage(DescriptorProtos$Edition.EDITION_LEGACY_VALUE, this.EjP, 0));
            this.Ym.f20993jb.Ym();
            com.bytedance.sdk.openadsdk.component.reward.Ym ym2 = this.Ym.f20995tz;
            if (ym2 != null) {
                ym2.Sj(this.EjP);
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 900 && this.Jcg && uP.TKC(this.Ym.sP) && !this.TzV.get()) {
            int i11 = message.arg1;
            if (i11 > 0) {
                this.Ym.Mts.EjP(true);
                int i12 = this.HiB - (this.EjP - i11);
                if (i12 == i11) {
                    this.Ym.Mts.Sj(String.valueOf(i11), null);
                } else if (i12 > 0) {
                    this.Ym.Mts.Sj(String.valueOf(i11), String.format(ib.Sj(this.Ym.Fm.getApplicationContext(), "tt_skip_ad_time_text"), Integer.valueOf(i12)));
                } else {
                    this.vS = true;
                    if (uP.TEQ(this.Ym.sP)) {
                        this.Ym.Mts.TKC();
                        this.Ym.Mts.HiB(true);
                    } else {
                        this.Ym.RiZ.set(true);
                        this.Ym.f20994kb.Zq();
                    }
                }
                Message messageObtain = Message.obtain();
                messageObtain.what = DescriptorProtos$Edition.EDITION_LEGACY_VALUE;
                int i13 = i11 - 1;
                messageObtain.arg1 = i13;
                this.RiZ.sendMessageDelayed(messageObtain, 1000L);
                this.TKC = i13;
            } else {
                this.vS = true;
                if (!uP.TEQ(this.uA) || (uP.ib(this.uA) && this.dNu.HiB())) {
                    this.Ym.Mts.EjP(false);
                    this.Ym.RiZ.set(true);
                    this.Ym.f20994kb.Zq();
                } else {
                    this.Ym.Mts.TKC();
                    this.Ym.Mts.HiB(true);
                }
                com.bytedance.sdk.openadsdk.sU.Sj.Sj sj2 = this.dNu;
                if (sj2 == null || sj2.HiB()) {
                    this.sef = true;
                }
            }
            aa();
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.Sj.TEQ
    protected com.bytedance.sdk.openadsdk.aa.vS sP() {
        return new com.bytedance.sdk.openadsdk.aa.vS() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.Jcg.1
            @Override // com.bytedance.sdk.openadsdk.aa.vS
            public void Sj() {
                Jcg.this.aa();
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.Sj.TEQ
    public boolean uA() {
        return this.vS;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.Sj.TEQ
    public void vS() {
        if (this.Fmk && !this.Zq) {
            super.vS();
            this.RiZ.removeCallbacksAndMessages(null);
        }
    }
}
