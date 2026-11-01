package com.bytedance.sdk.openadsdk.component.reward.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.adexpress.sP.sef;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.component.reward.Sj.uvD;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.Fmk;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Zq;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class TEQ {
    View Dq;
    final sU EjP;
    ImageView HiB;
    View Jcg;
    private final String RiZ;
    ImageView TEQ;
    protected final com.bytedance.sdk.openadsdk.component.reward.Sj.Sj TKC;
    private final boolean TzV;
    RelativeLayout Ym;
    public TzV Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    uvD f21010aa;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private boolean f21011dx;
    final Activity sP;
    private int sU;
    PAGLogoView uA;
    com.bytedance.sdk.openadsdk.core.HiB.vS uvD;
    FrameLayout vS;
    private TKC zR;
    int Sj = 3;
    protected int Fmk = 0;
    protected final AtomicBoolean sef = new AtomicBoolean(false);
    Runnable dNu = new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.TEQ.2
        @Override // java.lang.Runnable
        public void run() {
            ImageView imageView;
            try {
                sU sUVar = TEQ.this.EjP;
                if ((sUVar == null || !sUVar.Fqk()) && (imageView = TEQ.this.HiB) != null) {
                    int[] iArr = new int[2];
                    imageView.getLocationOnScreen(iArr);
                    TEQ.this.TKC.Mts.Sj(iArr[0]);
                }
            } catch (Exception unused) {
            }
        }
    };

    public TEQ(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        this.TKC = sj2;
        this.sP = sj2.Fm;
        this.EjP = sj2.sP;
        this.RiZ = sj2.HiB;
        this.TzV = sj2.EjP;
    }

    private int Sj(String str) {
        Resources resources = this.sP.getResources();
        if (resources != null) {
            return resources.getDimensionPixelSize(resources.getIdentifier(str, "dimen", "android"));
        }
        return 0;
    }

    private void Sj(com.bytedance.sdk.openadsdk.core.sP.TKC tkc) {
        FPG.Sj((View) this.vS, (View.OnTouchListener) tkc, "TTBaseVideoActivity#mVideoNativeFrame");
    }

    private void TzV() {
        RelativeLayout relativeLayout;
        TKC tkc = (TKC) this.TKC.xD.findViewById(Zq.f21127aa);
        this.zR = tkc;
        tkc.Sj(this.TKC);
        this.uA = (PAGLogoView) this.TKC.xD.findViewById(520093757);
        this.TEQ = (ImageView) this.TKC.xD.findViewById(Zq.Ss);
        this.HiB = (ImageView) this.TKC.xD.findViewById(520093708);
        this.vS = (FrameLayout) this.TKC.xD.findViewById(Zq.Ym);
        this.Jcg = this.TKC.xD.findViewById(Zq.dNu);
        this.Dq = this.TKC.xD.findViewById(Zq.TO);
        this.Ym = (RelativeLayout) this.TKC.xD.findViewById(Zq.TT);
        uvD uvd = this.f21010aa;
        if (uvd == null || uvd.EjP() == null || (relativeLayout = this.Ym) == null) {
            return;
        }
        relativeLayout.addView(this.f21010aa.EjP(), new LinearLayout.LayoutParams(-1, -1));
        this.f21010aa.sP();
    }

    protected void Dq() {
        TKC tkc = this.zR;
        if (tkc == null) {
            return;
        }
        tkc.Sj();
    }

    public void EjP() {
        FPG.Sj((View) this.vS, 8);
        FPG.Sj(this.Jcg, 8);
        FPG.Sj(this.Dq, 8);
        sP(8);
        FPG.Sj((View) this.HiB, 8);
        FPG.Sj((View) this.uA, 8);
        FPG.Sj((View) this.Ym, 8);
        FPG.Sj((View) this.TEQ, 8);
    }

    public void EjP(int i11) {
        int i12 = this.Sj;
        if (i12 == -1 || i11 != i12 || this.sef.get()) {
            return;
        }
        sP(0);
        this.sef.set(true);
        Dq();
    }

    public void Fmk() {
        try {
            Activity activity = this.TKC.Fm;
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(activity, ib.uA(activity, "tt_fade_out"));
            if (animationLoadAnimation == null) {
                this.TKC.Wjd.aa();
            } else {
                animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.TEQ.3
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        TEQ.this.TKC.Wjd.aa();
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                this.TKC.Wjd.Sj(animationLoadAnimation);
            }
        } catch (Throwable unused) {
            this.TKC.Wjd.aa();
        }
    }

    void HiB() {
        int iFm = this.EjP.Fm();
        this.Sj = iFm;
        if (iFm == -200) {
            this.Sj = dNu.EjP().Zq(String.valueOf(this.EjP.If()));
        }
        if (this.Sj != -1 || Sj()) {
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC.f20994kb;
        if ((sPVar instanceof com.bytedance.sdk.openadsdk.component.reward.sP.EjP) || (sPVar instanceof com.bytedance.sdk.openadsdk.component.reward.sP.TKC)) {
            return;
        }
        sP(0);
    }

    public void HiB(int i11) {
        FPG.Sj((View) this.HiB, i11);
        if (i11 == 0 && !this.TKC.TEQ.get() && uP.Jcg(this.TKC.sP)) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sj2.sP, sj2.HiB, "show_close_button", (JSONObject) null, System.currentTimeMillis() - this.TKC.Bml);
        }
    }

    public void Jcg() {
        if (this.TEQ.getVisibility() == 0) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.TEQ.getLayoutParams();
            marginLayoutParams.setMargins(0, 0, 11, 16);
            marginLayoutParams.setMarginStart(0);
            marginLayoutParams.setMarginEnd(11);
            this.TEQ.setLayoutParams(marginLayoutParams);
        }
    }

    public void Sj(float f11) {
        FPG.Sj(this.HiB, f11);
    }

    public void Sj(int i11) {
        if (this.uvD == null) {
            this.uvD = new com.bytedance.sdk.openadsdk.core.HiB.vS(this.TKC.Fm);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(120, 120);
            layoutParams.gravity = 17;
            this.uvD.setLayoutParams(layoutParams);
            this.uvD.setIndeterminateDrawable(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(this.TKC.Fm, "tt_video_loading_progress_bar"));
            this.TKC.Wjd.vS().addView(this.uvD);
        }
        this.uvD.setVisibility(i11);
    }

    public void Sj(int i11, int i12) {
        FrameLayout frameLayout;
        if (this.EjP.FPG() == 1 && (frameLayout = this.vS) != null && (frameLayout.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
            int iTKC = FPG.TKC((Context) this.sP);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.vS.getLayoutParams();
            layoutParams.width = iTKC;
            int i13 = (iTKC * 9) / 16;
            layoutParams.height = i13;
            this.vS.setLayoutParams(layoutParams);
            this.Fmk = (FPG.HiB(this.sP) - i13) / 2;
        }
    }

    public void Sj(int i11, sef sefVar) {
        TzV tzV = this.Zq;
        if (tzV != null) {
            tzV.Sj(i11, sefVar);
        }
    }

    public void Sj(View.OnClickListener onClickListener) {
        FPG.Sj(this.vS, onClickListener, "TTBaseVideoActivity#mVideoNativeFrame");
    }

    public void Sj(Animation animation) {
        RelativeLayout relativeLayout = this.Ym;
        if (relativeLayout != null) {
            relativeLayout.startAnimation(animation);
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.sP.TKC tkc, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        View view;
        View view2;
        sU sUVar;
        if (this.vS != null && (sUVar = this.EjP) != null && sUVar.Wjd() != null) {
            if (!this.EjP.Wjd().vS || TzV.sP(this.EjP)) {
                Sj(onClickListener);
            } else {
                Sj((View.OnClickListener) tkc);
                Sj(tkc);
            }
        }
        sU sUVar2 = this.EjP;
        if (sUVar2 != null && sUVar2.FPG() == 1) {
            if (this.EjP.Wjd() != null && (view2 = this.Jcg) != null) {
                FPG.Sj(view2, 0);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.Jcg.getLayoutParams();
                layoutParams.height = this.Fmk;
                this.Jcg.setLayoutParams(layoutParams);
                if (this.EjP.Wjd().sP) {
                    this.Jcg.setOnClickListener(tkc);
                    this.Jcg.setOnTouchListener(onTouchListener);
                } else {
                    this.Jcg.setOnClickListener(onClickListener);
                }
            }
            if (this.EjP.Wjd() != null && (view = this.Dq) != null) {
                FPG.Sj(view, 0);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.Dq.getLayoutParams();
                layoutParams2.height = this.Fmk;
                this.Dq.setLayoutParams(layoutParams2);
                if (this.EjP.Wjd().EjP) {
                    this.Dq.setOnClickListener(tkc);
                    this.Dq.setOnTouchListener(onTouchListener);
                } else {
                    this.Dq.setOnClickListener(onClickListener);
                }
            }
        }
        PAGLogoView pAGLogoView = this.uA;
        if (pAGLogoView != null) {
            pAGLogoView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.TEQ.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    try {
                        TEQ teq = TEQ.this;
                        TTWebsiteActivity.Sj(teq.sP, teq.EjP, teq.RiZ);
                    } catch (Throwable th2) {
                        com.bytedance.sdk.component.utils.sU.sP("TTAD.RFullVideoLayout", th2.getMessage());
                    }
                }
            });
        }
        ImageView imageView = this.TEQ;
        if (imageView != null) {
            imageView.setClickable(true);
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj((int) FPG.Sj(dNu.Sj(), 14.0f, true), this.TEQ, this.TKC.sP);
        }
    }

    public void Sj(boolean z10) {
        FPG.Sj((View) this.uA, uP.TKC(this.EjP) ? 8 : 0);
        FPG.Sj((View) this.TEQ, (this.EjP.Ph() && this.EjP.aa()) ? 0 : 8);
        sP(z10);
        if (this.TzV) {
            HiB();
        }
    }

    protected boolean Sj() {
        return true;
    }

    public View TEQ() {
        return this.HiB;
    }

    public void TKC() {
        this.vS.removeAllViews();
    }

    public void TKC(int i11) {
        FPG.Sj((View) this.uA, i11);
    }

    public View Ym() {
        return this.zR;
    }

    public void Zq() {
        TzV tzV = this.Zq;
        if (tzV != null) {
            tzV.Jcg();
        }
    }

    public void aa() {
        try {
            uvD uvd = this.f21010aa;
            if (uvd != null) {
                uvd.TKC();
            }
            RelativeLayout relativeLayout = this.Ym;
            if (relativeLayout != null) {
                relativeLayout.removeAllViews();
            }
        } catch (Throwable unused) {
            RelativeLayout relativeLayout2 = this.Ym;
            if (relativeLayout2 != null) {
                relativeLayout2.setAlpha(0.0f);
            }
        }
    }

    public void dNu() {
        com.bytedance.sdk.openadsdk.core.sP.HiB HiB = this.TKC.LqL.HiB();
        View view = this.zR;
        if (view == null) {
            view = this.TKC.xD;
        }
        HiB.onClick(view);
    }

    public void sP() {
        if (this.f21011dx) {
            return;
        }
        this.f21011dx = true;
        this.sU = this.TKC.sdp;
        if (Sj()) {
            uvD uvd = new uvD(this.TKC);
            this.f21010aa = uvd;
            uvd.Sj();
        }
        TzV();
        Activity activity = this.sP;
        sU sUVar = this.EjP;
        String str = this.RiZ;
        FrameLayout frameLayout = this.vS;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        TzV tzV = new TzV(activity, sUVar, str, frameLayout, sj2.f20993jb, sj2.xD);
        this.Zq = tzV;
        tzV.Sj();
    }

    public void sP(int i11) {
        sU sUVar = this.EjP;
        if (sUVar != null && sUVar.Ph() && Fmk.Sj(this.EjP)) {
            FPG.Sj((View) this.zR, 8);
        } else {
            FPG.Sj((View) this.zR, i11);
        }
    }

    void sP(boolean z10) {
        ImageView imageView;
        int iSj;
        if (this.sU != 1 && (imageView = this.HiB) != null && z10) {
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            if ((layoutParams instanceof ViewGroup.MarginLayoutParams) && (iSj = Sj("navigation_bar_height")) > 0) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                if (iSj > marginLayoutParams.rightMargin) {
                    marginLayoutParams.rightMargin = iSj;
                }
            }
        }
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC.f20994kb;
        if ((sPVar instanceof com.bytedance.sdk.openadsdk.component.reward.sP.EjP) || (sPVar instanceof com.bytedance.sdk.openadsdk.component.reward.sP.TKC)) {
            return;
        }
        sP(0);
    }

    public void sef() {
        TzV tzV = this.Zq;
        if (tzV != null) {
            tzV.vS();
        }
        ImageView imageView = this.HiB;
        if (imageView != null) {
            imageView.removeCallbacks(this.dNu);
        }
    }

    public boolean uA() {
        ImageView imageView = this.HiB;
        return imageView != null && imageView.getVisibility() == 0;
    }

    public void uvD() {
        TzV tzV = this.Zq;
        if (tzV != null) {
            tzV.Dq();
        }
    }

    public FrameLayout vS() {
        return this.vS;
    }
}
