package com.bytedance.sdk.openadsdk.core.TKC;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.Dq.RiZ;
import com.bytedance.sdk.openadsdk.core.Dq.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.sef;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.Ym;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.google.android.material.card.MaterialCardView;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import u5.b;

/* JADX INFO: loaded from: classes3.dex */
public class Jcg extends com.bytedance.sdk.openadsdk.core.Dq.Sj implements b.a, b.c {
    private RiZ Fmk;
    private PAGBannerAdWrapperListener RiZ;
    public boolean Sj;
    private long TzV;
    private com.bytedance.sdk.openadsdk.core.aa.sP.vS Zq;
    private String dNu;
    private com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS sef;
    private ImageView uvD;

    private static class Sj {
        public com.bytedance.sdk.openadsdk.core.HiB.EjP EjP;
        public PAGLogoView HiB;
        public FrameLayout Sj;
        public com.bytedance.sdk.openadsdk.core.HiB.EjP TKC;
        public Ym sP;
        public com.bytedance.sdk.openadsdk.core.HiB.EjP vS;

        private Sj() {
        }
    }

    public Jcg(@NonNull Context context) {
        super(context);
        this.Sj = true;
        this.sP = context;
    }

    private void HiB() {
        dNu dnuSj = com.bytedance.sdk.openadsdk.core.TKC.Sj.Sj(this.Fmk.getExpectExpressWidth(), this.Fmk.getExpectExpressHeight());
        if (this.Fmk.getExpectExpressWidth() <= 0 || this.Fmk.getExpectExpressHeight() <= 0) {
            int iTKC = FPG.TKC(this.sP);
            this.Jcg = iTKC;
            this.Dq = Float.valueOf(iTKC / dnuSj.sP).intValue();
        } else {
            this.Jcg = FPG.sP(this.sP, this.Fmk.getExpectExpressWidth());
            this.Dq = FPG.sP(this.sP, this.Fmk.getExpectExpressHeight());
        }
        int i11 = this.Jcg;
        if (i11 > 0 && i11 > FPG.TKC(this.sP)) {
            float fTKC = FPG.TKC(this.sP) / this.Jcg;
            this.Jcg = FPG.TKC(this.sP);
            this.Dq = Float.valueOf(this.Dq * fTKC).intValue();
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.Jcg, this.Dq);
        }
        layoutParams.width = this.Jcg;
        layoutParams.height = this.Dq;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        Sj(dnuSj);
    }

    private void Sj(dNu dnu) {
        View view;
        sU sUVar = this.TKC;
        if (sUVar != null) {
            int iHcZ = sUVar.HcZ();
            Sj sjSP = sP(dnu);
            if (sjSP == null || (view = sjSP.Sj) == null) {
                return;
            }
            addView(view);
            com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = sjSP.EjP;
            PAGLogoView pAGLogoView = sjSP.HiB;
            com.bytedance.sdk.openadsdk.core.HiB.EjP ejP2 = sjSP.vS;
            if (ejP2 != null && this.TKC.aa()) {
                FPG.Sj((View) ejP2, 0);
                com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj((int) FPG.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj(), 11.0f, true), ejP2, this.TKC);
            }
            this.uvD = sjSP.TKC;
            com.bytedance.sdk.openadsdk.core.aa.sP.vS videoView = getVideoView();
            if (videoView instanceof com.bytedance.sdk.openadsdk.core.aa.sP.vS) {
                this.Zq = videoView;
                videoView.setVideoAdLoadListener(this);
                this.Zq.setVideoAdInteractionListener(this);
                ArrayList arrayList = new ArrayList();
                arrayList.add(new Pair(ejP, FriendlyObstructionPurpose.CLOSE_AD));
                FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
                arrayList.add(new Pair(pAGLogoView, friendlyObstructionPurpose));
                arrayList.add(new Pair(ejP2, friendlyObstructionPurpose));
                arrayList.add(new Pair(this.uvD, FriendlyObstructionPurpose.VIDEO_CONTROLS));
                this.Zq.Sj(arrayList);
                this.Zq.setAdCreativeClickListener(new com.bytedance.sdk.openadsdk.core.aa.sP.vS.Sj() { // from class: com.bytedance.sdk.openadsdk.core.TKC.Jcg.1
                    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.vS.Sj
                    public void Sj(View view2, int i11) {
                        if (Jcg.this.RiZ != null) {
                            Jcg.this.RiZ.onAdClicked();
                        }
                    }
                });
            }
            if (pAGLogoView != null) {
                pAGLogoView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.TKC.Jcg.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        TTWebsiteActivity.Sj(((com.bytedance.sdk.openadsdk.core.Dq.Sj) Jcg.this).sP, ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Jcg.this).TKC, ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Jcg.this).vS);
                    }
                });
            }
            if (ejP != null) {
                ejP.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.TKC.Jcg.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        Jcg.this.Sj();
                    }
                });
                RiZ riZ = this.Fmk;
                if (riZ != null) {
                    if (riZ.getClickListener() != null) {
                        this.Fmk.getClickListener().sP(ejP);
                    }
                    if (this.Fmk.getClickCreativeListener() != null) {
                        this.Fmk.getClickCreativeListener().sP(ejP);
                    }
                }
            }
            ImageView imageView = this.uvD;
            if (imageView != null) {
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.TKC.Jcg.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (Jcg.this.Zq != null) {
                            boolean zUA = Jcg.this.Zq.uA();
                            boolean z10 = !zUA;
                            Jcg jcg = Jcg.this;
                            Drawable drawableTKC = !zUA ? ib.TKC(jcg.getContext(), "tt_reward_full_mute") : ib.TKC(jcg.getContext(), "tt_reward_full_unmute");
                            Jcg.this.Zq.Sj(z10, "vastBannerBackupViewClick");
                            Jcg.this.uvD.setImageDrawable(drawableTKC);
                            if (((com.bytedance.sdk.openadsdk.core.Dq.Sj) Jcg.this).TKC == null || ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Jcg.this).TKC.GMp() == null || ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Jcg.this).TKC.GMp().Sj() == null) {
                                return;
                            }
                            if (zUA) {
                                ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Jcg.this).TKC.GMp().Sj().uA(Jcg.this.TzV);
                            } else {
                                ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Jcg.this).TKC.GMp().Sj().Dq(Jcg.this.TzV);
                            }
                        }
                    }
                });
            }
            Ym ym2 = sjSP.sP;
            sU sUVar2 = this.TKC;
            if (sUVar2 != null && sUVar2.GMp() != null && ym2 != null) {
                int iAa = this.TKC.GMp().aa();
                float fFmk = this.TKC.GMp().Fmk();
                if (iAa > 0 && fFmk > 0.0f) {
                    ym2.setRatio(iAa / fFmk);
                } else if (iHcZ == 15) {
                    ym2.setRatio(0.5625f);
                } else if (iHcZ == 5) {
                    ym2.setRatio(1.7777778f);
                } else {
                    ym2.setRatio(1.0f);
                }
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            if (videoView != null && ym2 != null) {
                ym2.addView(videoView, layoutParams);
                videoView.setTag(520093762, Boolean.TRUE);
            }
            Sj((View) videoView, true);
            Sj((View) this, true);
            Sj(ym2);
        }
    }

    private Sj sP(dNu dnu) {
        Sj sj2 = new Sj();
        sj2.Sj = new FrameLayout(this.sP);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
        layoutParams.width = -1;
        layoutParams.height = -1;
        sj2.Sj.setLayoutParams(layoutParams);
        sj2.sP = new Ym(this.sP);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -1);
        layoutParams2.gravity = 17;
        sj2.sP.setLayoutParams(layoutParams2);
        sj2.Sj.addView(sj2.sP);
        int iSP = FPG.sP(this.sP, 28.0f);
        int iSP2 = FPG.sP(this.sP, 12.0f);
        int iSP3 = FPG.sP(this.sP, 2.25f);
        int iSP4 = FPG.sP(this.sP, 5.0f);
        if (dnu != null && dnu.Sj == 1) {
            iSP = iSP2;
        }
        if (dnu == null || dnu.Sj != 1) {
            iSP3 = iSP4;
        }
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(getContext());
        sj2.TKC = ejP;
        ejP.setPadding(iSP3, iSP3, iSP3, iSP3);
        sj2.TKC.setBackground(com.bytedance.sdk.openadsdk.core.widget.EjP.Sj());
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(iSP, iSP);
        layoutParams3.setMargins(iSP4, iSP4, iSP4, iSP4);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP2 = sj2.TKC;
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_CENTER;
        ejP2.setScaleType(scaleType);
        sj2.TKC.setImageDrawable(ib.TKC(getContext(), "tt_reward_full_mute"));
        sj2.TKC.setLayoutParams(layoutParams3);
        sj2.Sj.addView(sj2.TKC);
        if (dnu == null || dnu.Sj != 1) {
            sj2.EjP = com.bytedance.sdk.openadsdk.core.widget.vS.sP(getContext());
        } else {
            sj2.EjP = com.bytedance.sdk.openadsdk.core.widget.vS.Sj(getContext());
        }
        sj2.EjP.setId(520093697);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = GravityCompat.END;
        layoutParams4.setMargins(iSP4, iSP4, iSP4, iSP4);
        sj2.EjP.setLayoutParams(layoutParams4);
        sj2.Sj.addView(sj2.EjP);
        sj2.HiB = PAGLogoView.createPAGLogoViewByMaterial(this.sP, this.TKC);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams5.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
        layoutParams5.setMargins(iSP4, iSP4, iSP4, iSP4);
        sj2.HiB.setLayoutParams(layoutParams5);
        sj2.Sj.addView(sj2.HiB);
        sj2.vS = new com.bytedance.sdk.openadsdk.core.HiB.EjP(this.sP);
        int iSP5 = FPG.sP(this.sP, 11.0f);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(iSP5, iSP5);
        layoutParams6.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_END;
        layoutParams6.rightMargin = iSP4;
        layoutParams6.bottomMargin = iSP4;
        sj2.vS.setVisibility(8);
        sj2.vS.setScaleType(scaleType);
        sj2.vS.setLayoutParams(layoutParams6);
        sj2.Sj.addView(sj2.vS);
        return sj2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.Sj
    public void Sj() {
        TTDislikeDialogAbstract tTDislikeDialogAbstract = this.HiB;
        if (tTDislikeDialogAbstract != null) {
            tTDislikeDialogAbstract.show();
            return;
        }
        com.bytedance.sdk.openadsdk.TKC.TKC tkc = this.EjP;
        if (tkc != null) {
            tkc.Sj();
        } else {
            TTDelegateActivity.Sj(this.TKC, this.dNu);
        }
    }

    @Override // u5.b.a
    public void Sj(int i11, int i12) {
        ImageView imageView = this.uvD;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    @Override // u5.b.c
    public void Sj(long j11, long j12) {
        this.TzV = j11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.Sj
    protected void Sj(View view, int i11, sef sefVar) {
        RiZ riZ = this.Fmk;
        if (riZ != null) {
            riZ.Sj(view, i11, sefVar);
            com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar = this.Zq;
            if (vSVar == null || !(vSVar.getNativeVideoController() instanceof com.bytedance.sdk.openadsdk.core.aa.sP.TKC)) {
                return;
            }
            ((com.bytedance.sdk.openadsdk.core.aa.sP.TKC) this.Zq.getNativeVideoController()).WMZ();
        }
    }

    public void Sj(sU sUVar, RiZ riZ, com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS vSVar) {
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.TKC = sUVar;
        this.Fmk = riZ;
        this.sef = vSVar;
        this.vS = "banner_ad";
        riZ.addView(this, new ViewGroup.LayoutParams(-2, -2));
        HiB();
    }

    @Override // u5.b.c
    public void d_() {
    }

    @Override // u5.b.c
    public void g_() {
    }

    public long getVideoProgress() {
        return this.TzV;
    }

    @Override // u5.b.c
    public void h_() {
    }

    @Override // u5.b.c
    public void i_() {
        ImageView imageView = this.uvD;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    public void setAdInteractionListener(PAGBannerAdWrapperListener pAGBannerAdWrapperListener) {
        this.RiZ = pAGBannerAdWrapperListener;
    }

    public void setClosedListenerKey(String str) {
        this.dNu = str;
    }
}
