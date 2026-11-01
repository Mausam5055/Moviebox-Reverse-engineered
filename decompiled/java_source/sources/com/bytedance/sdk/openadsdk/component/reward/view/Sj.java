package com.bytedance.sdk.openadsdk.component.reward.view;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.model.sef;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.uvD;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.Zq;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class Sj extends com.bytedance.sdk.openadsdk.core.Dq.Sj {
    private boolean Fmk;
    private FrameLayout RiZ;
    private float Sj;
    private View TzV;
    private int Zq;
    private View dNu;
    private com.bytedance.sdk.openadsdk.core.sP.HiB sU;
    private int sef;
    private int uvD;

    public Sj(@NonNull Context context, String str) {
        super(context, str);
        this.uvD = 1;
        this.sP = context;
    }

    private void Dq() {
        com.bytedance.sdk.openadsdk.sef.EjP ejP = new com.bytedance.sdk.openadsdk.sef.EjP(this.sP);
        this.dNu = ejP;
        sP(ejP);
        EjP();
    }

    private void EjP() {
        this.RiZ = (FrameLayout) this.dNu.findViewById(Zq.zwV);
        ImageView imageView = (ImageView) this.dNu.findViewById(Zq.dLt);
        uvD uvd = (uvD) this.dNu.findViewById(Zq.QZ);
        TextView textView = (TextView) this.dNu.findViewById(Zq.RrR);
        TextView textView2 = (TextView) this.dNu.findViewById(Zq.nP);
        View viewFindViewById = this.dNu.findViewById(520093739);
        if (!TextUtils.isEmpty(this.TKC.Ir())) {
            textView2.setText(this.TKC.Ir());
        }
        Sj(this.RiZ, imageView);
        if (this.TKC.EZ() != null && !TextUtils.isEmpty(this.TKC.EZ().Sj())) {
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.TKC.EZ().Sj(), this.TKC.EZ().sP(), this.TKC.EZ().TKC(), uvd, this.TKC);
        }
        textView.setText(getTitle());
        TKC(this.RiZ);
        TKC(imageView);
        TKC(uvd);
        TKC(textView);
        TKC(textView2);
        if (viewFindViewById instanceof PAGLogoView) {
            ((PAGLogoView) viewFindViewById).initData(this.TKC);
        }
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.Sj.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    TTWebsiteActivity.Sj(((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).sP, ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).TKC, ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).vS);
                } catch (Throwable th2) {
                    sU.sP("FullInteractionStyleView", th2.getMessage());
                }
            }
        });
    }

    private void Fmk() {
        com.bytedance.sdk.openadsdk.sef.uA uAVar = new com.bytedance.sdk.openadsdk.sef.uA(this.sP);
        this.dNu = uAVar;
        sP(uAVar);
        EjP();
        vS();
    }

    private void HiB() {
        com.bytedance.sdk.openadsdk.sef.TKC tkc = new com.bytedance.sdk.openadsdk.sef.TKC(this.sP);
        this.dNu = tkc;
        sP(tkc);
        EjP();
        vS();
    }

    private void Jcg() {
        com.bytedance.sdk.openadsdk.sef.sP sPVar = new com.bytedance.sdk.openadsdk.sef.sP(this.sP);
        this.dNu = sPVar;
        sP(sPVar);
        EjP();
        vS();
    }

    private com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, Context context) {
        if (sUVar != null && sUVar.sdp() == 4) {
            return new com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.EjP(context, sUVar, this.vS);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0071  */
    private void Sj(float f11) {
        float fMin;
        float fMax;
        int iMax;
        int i11;
        int iMax2;
        float heightDp = getHeightDp();
        float widthDp = getWidthDp();
        if (this.uvD == 2) {
            fMin = Math.max(heightDp, widthDp);
            fMax = Math.min(heightDp, widthDp);
        } else {
            fMin = Math.min(heightDp, widthDp);
            fMax = Math.max(heightDp, widthDp);
        }
        if (this.uvD != 2 && FPG.TKC((Activity) this.sP)) {
            fMax -= FPG.TKC(this.sP, FPG.Sj());
        }
        int i12 = 20;
        if (this.uvD != 2) {
            if (f11 == 0.0f || f11 == 100.0f) {
                i12 = 0;
                iMax2 = 0;
                iMax = 0;
                i11 = 0;
            } else {
                iMax2 = (int) Math.max((fMax - (((fMin - 20.0f) - 20.0f) / f11)) / 2.0f, 0.0f);
                iMax = 20;
                i11 = 20;
                i12 = iMax2;
            }
        } else if (f11 == 0.0f || f11 == 100.0f) {
            i12 = 0;
            iMax2 = 0;
            iMax = 0;
            i11 = 0;
        } else {
            iMax = (int) Math.max((fMin - (((fMax - 20.0f) - 20.0f) * f11)) / 2.0f, 0.0f);
            i11 = iMax;
            iMax2 = 20;
        }
        ((Activity) this.sP).getWindow().getDecorView().setPadding(FPG.sP(this.sP, iMax), FPG.sP(this.sP, i12), FPG.sP(this.sP, i11), FPG.sP(this.sP, iMax2));
    }

    private void Sj(FrameLayout frameLayout, ImageView imageView) {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.TKC;
        if (sUVar == null) {
            return;
        }
        boolean zHiB = com.bytedance.sdk.openadsdk.core.model.sU.HiB(sUVar);
        if (this.TKC.UHs() != null && zHiB) {
            FPG.Sj((View) imageView, 8);
            FPG.Sj((View) frameLayout, 0);
        } else {
            Sj(imageView);
            FPG.Sj((View) imageView, 0);
            FPG.Sj((View) frameLayout, 8);
        }
    }

    private void Sj(ImageView imageView) {
        List<com.bytedance.sdk.openadsdk.core.model.uvD> listBml;
        com.bytedance.sdk.openadsdk.core.model.uvD uvd;
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.TKC;
        if (sUVar == null || (listBml = sUVar.Bml()) == null || listBml.size() <= 0 || (uvd = listBml.get(0)) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.uA.EjP.Sj(uvd).TKC(2).Sj(com.bytedance.sdk.openadsdk.uA.TKC.Sj(this.TKC, uvd.Sj(), imageView));
    }

    private void TEQ() {
        com.bytedance.sdk.openadsdk.sef.Dq dq2 = new com.bytedance.sdk.openadsdk.sef.Dq(this.sP);
        this.dNu = dq2;
        sP(dq2);
        EjP();
    }

    private void TKC() {
        com.bytedance.sdk.openadsdk.sef.Sj sj2 = new com.bytedance.sdk.openadsdk.sef.Sj(this.sP);
        this.dNu = sj2;
        sP(sj2);
        EjP();
        vS();
    }

    private void TKC(View view) {
        if (view == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.sP.Sj sj2 = this.sU;
        if (sj2 == null) {
            Context context = this.sP;
            com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.TKC;
            String str = this.vS;
            sj2 = new com.bytedance.sdk.openadsdk.core.sP.Sj(context, sUVar, str, Mts.Sj(str));
            sj2.Sj(Sj(this.TKC, this.sP));
        }
        view.setOnTouchListener(sj2);
        view.setOnClickListener(sj2);
    }

    private void Ym() {
        View hiB = new com.bytedance.sdk.openadsdk.sef.HiB(this.sP);
        this.dNu = hiB;
        sP(hiB);
        this.RiZ = (FrameLayout) this.dNu.findViewById(Zq.zwV);
        ImageView imageView = (ImageView) this.dNu.findViewById(Zq.Xqg);
        TextView textView = (TextView) this.dNu.findViewById(Zq.oWa);
        View viewFindViewById = this.dNu.findViewById(520093739);
        Sj(this.RiZ, imageView);
        textView.setText(getDescription());
        TKC(this.RiZ);
        TKC(imageView);
        TKC(textView);
        if (viewFindViewById instanceof PAGLogoView) {
            ((PAGLogoView) viewFindViewById).initData(this.TKC);
        }
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.Sj.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    TTWebsiteActivity.Sj(((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).sP, ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).TKC, ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).vS);
                } catch (Throwable th2) {
                    sU.sP("FullInteractionStyleView", th2.getMessage());
                }
            }
        });
    }

    private void aa() {
        com.bytedance.sdk.openadsdk.sef.Jcg jcg = new com.bytedance.sdk.openadsdk.sef.Jcg(this.sP);
        this.dNu = jcg;
        sP(jcg);
        EjP();
    }

    private float getHeightDp() {
        return FPG.TKC(this.sP, FPG.Ym(this.sP));
    }

    private float getWidthDp() {
        return FPG.TKC(this.sP, FPG.aa(this.sP));
    }

    private void sP() {
        this.Jcg = FPG.sP(this.sP, this.sef);
        this.Dq = FPG.sP(this.sP, this.Zq);
        int i11 = (int) (this.Sj * 1000.0f);
        if (this.uvD == 1) {
            if (i11 == 666) {
                HiB();
                return;
            }
            if (i11 == 1000) {
                TKC();
                return;
            }
            if (i11 == 1500) {
                Ym();
                return;
            } else if (i11 == 1777) {
                Fmk();
                return;
            } else {
                Sj(0.562f);
                aa();
                return;
            }
        }
        if (i11 == 562) {
            uA();
            return;
        }
        if (i11 == 666) {
            Jcg();
            return;
        }
        if (i11 == 1000) {
            TKC();
        } else if (i11 == 1500) {
            Dq();
        } else {
            Sj(1.777f);
            TEQ();
        }
    }

    private void sP(View view) {
        if (view.getParent() == null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            view.setLayoutParams(layoutParams);
            layoutParams.gravity = 17;
            addView(view);
        }
    }

    private void uA() {
        com.bytedance.sdk.openadsdk.sef.vS vSVar = new com.bytedance.sdk.openadsdk.sef.vS(this.sP);
        this.dNu = vSVar;
        sP(vSVar);
        EjP();
        vS();
    }

    private void vS() {
        TextView textView = (TextView) this.dNu.findViewById(Zq.SP);
        if (textView != null) {
            textView.setText(getDescription());
            TKC(textView);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.Sj
    protected void Sj(View view, int i11, sef sefVar) {
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, float f11, int i11, int i12, int i13) {
        this.Sj = f11;
        this.uvD = i11;
        this.TKC = sUVar;
        this.vS = "fullscreen_interstitial_ad";
        this.sef = i12;
        this.Zq = i13;
        Sj(this.uA);
        sP();
    }

    public View getInteractionStyleRootView() {
        return this;
    }

    public FrameLayout getVideoContainer() {
        return this.RiZ;
    }

    public void setDownloadListener(com.bytedance.sdk.openadsdk.core.sP.HiB hiB) {
        this.sU = hiB;
    }

    public void setIsMute(boolean z10) {
        this.Fmk = z10;
        View view = this.TzV;
        if (view != null && (view instanceof com.bytedance.sdk.openadsdk.core.aa.sP.vS)) {
            ((com.bytedance.sdk.openadsdk.core.aa.sP.vS) view).Sj(z10, "interactionStyle");
        }
    }
}
