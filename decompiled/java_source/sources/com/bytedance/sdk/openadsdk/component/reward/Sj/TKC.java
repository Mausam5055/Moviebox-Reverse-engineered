package com.bytedance.sdk.openadsdk.component.reward.Sj;

import android.R;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX INFO: loaded from: classes3.dex */
public class TKC {
    private final Sj Sj;
    private TTAdDislikeToast TKC;
    private com.bytedance.sdk.openadsdk.common.Zq sP;

    public TKC(Sj sj2) {
        this.Sj = sj2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void TKC() {
        TTAdDislikeToast tTAdDislikeToast = this.TKC;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.show(TTAdDislikeToast.getDislikeSendTip());
        }
    }

    private void sP(final com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar) {
        if (this.sP == null) {
            Sj sj2 = this.Sj;
            com.bytedance.sdk.openadsdk.common.Zq zq2 = new com.bytedance.sdk.openadsdk.common.Zq(sj2.Fm, sj2.sP);
            this.sP = zq2;
            zq2.setCallback(new com.bytedance.sdk.openadsdk.common.Zq.Sj() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.TKC.1
                @Override // com.bytedance.sdk.openadsdk.common.Zq.Sj
                public void Sj(View view) {
                    TKC.this.Sj.Ym.set(true);
                    String str = "landing_page";
                    if (!com.bytedance.sdk.openadsdk.core.model.TzV.sP(TKC.this.Sj.sP) && !com.bytedance.sdk.openadsdk.core.model.TzV.EjP(TKC.this.Sj.sP) && !com.bytedance.sdk.openadsdk.core.model.TzV.HiB(TKC.this.Sj.sP)) {
                        if (!TKC.this.Sj.TEQ.get()) {
                            str = "video_player";
                        } else if (uP.sP(TKC.this.Sj.sP)) {
                            str = "playable";
                        } else if (!TKC.this.Sj.sP.Ei()) {
                            str = CampaignEx.JSON_NATIVE_VIDEO_ENDCARD;
                        }
                    }
                    TKC.this.sP.setDislikeSource(str);
                    if (TKC.this.Sj.f20992ib.HiB) {
                        if (TKC.this.Sj.wE != null) {
                            TKC.this.Sj.wE.Sj(8, false);
                            return;
                        }
                        return;
                    }
                    sPVar.uvD();
                    if (TKC.this.Sj.f20992ib.sP()) {
                        TKC.this.Sj.f20992ib.uvD();
                    }
                    if ((TKC.this.Sj.HS instanceof com.bytedance.sdk.openadsdk.activity.TKC) && !TKC.this.Sj.HS.kF()) {
                        TKC.this.Sj.HS.uP().Sj(2);
                    }
                    com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(TKC.this.Sj.sP, 8);
                }

                @Override // com.bytedance.sdk.openadsdk.common.Zq.Sj
                public void Sj(FilterWord filterWord) {
                    if (TKC.this.Sj.f20989aa.get() || filterWord == null || filterWord.hasSecondOptions()) {
                        return;
                    }
                    TKC.this.Sj.f20989aa.set(true);
                    TKC.this.TKC();
                }

                @Override // com.bytedance.sdk.openadsdk.common.Zq.Sj
                public void sP(View view) {
                    TKC.this.Sj.Ym.set(false);
                    if (TKC.this.Sj.f20992ib.HiB) {
                        if (TKC.this.Sj.wE != null) {
                            TKC.this.Sj.wE.Sj(0, true);
                            return;
                        }
                        return;
                    }
                    TKC.this.Sj.f20992ib.Sj(sPVar);
                    if (TKC.this.Sj.f20992ib.EjP()) {
                        TKC.this.Sj.f20992ib.Zq();
                    }
                    if ((TKC.this.Sj.HS instanceof com.bytedance.sdk.openadsdk.activity.TKC) && !TKC.this.Sj.HS.kF()) {
                        TKC.this.Sj.HS.uP().Sj(1);
                    }
                    com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(TKC.this.Sj.sP, 4);
                }
            });
            ((FrameLayout) this.Sj.Fm.findViewById(R.id.content)).addView(this.sP);
        }
        if (this.TKC == null) {
            this.TKC = new TTAdDislikeToast(this.Sj.Fm);
            ((FrameLayout) this.Sj.Fm.findViewById(R.id.content)).addView(this.TKC);
        }
    }

    public void Sj() {
        TTAdDislikeToast tTAdDislikeToast = this.TKC;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.hide();
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar) {
        if (this.Sj.Fm.isFinishing()) {
            return;
        }
        if (this.Sj.f20989aa.get()) {
            if (this.TKC == null) {
                this.TKC = new TTAdDislikeToast(this.Sj.Fm);
                ((FrameLayout) this.Sj.Fm.findViewById(R.id.content)).addView(this.TKC);
            }
            this.TKC.show(TTAdDislikeToast.getDislikeTip());
            return;
        }
        if (this.sP == null) {
            try {
                sP(sPVar);
            } catch (Throwable th2) {
                ApmHelper.reportCustomError("initDislike error", "RewardFullDislikeManager", th2);
            }
        }
        com.bytedance.sdk.openadsdk.common.Zq zq2 = this.sP;
        if (zq2 != null) {
            zq2.Sj();
        }
    }

    public void sP() {
        TTAdDislikeToast tTAdDislikeToast = this.TKC;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.onDestroy();
        }
    }
}
