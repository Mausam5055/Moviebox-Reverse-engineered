package com.bytedance.sdk.openadsdk.core.TKC;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.Dq.Dq;
import com.bytedance.sdk.openadsdk.core.Dq.RiZ;
import com.bytedance.sdk.openadsdk.core.Dq.TzV;
import com.bytedance.sdk.openadsdk.core.Dq.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.sef;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.Ym;
import com.bytedance.sdk.openadsdk.core.widget.Zq;
import com.bytedance.sdk.openadsdk.core.widget.aa;
import com.bytedance.sdk.openadsdk.core.widget.uvD;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.TEQ;
import com.google.android.material.card.MaterialCardView;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class Sj extends com.bytedance.sdk.openadsdk.core.Dq.Sj {
    public static dNu[] Sj = {new dNu(1, 6.4f, Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 50), new dNu(4, 1.2f, 300, 250)};
    private C0265Sj Fmk;
    private String Zq;
    private RiZ sef;
    private PAGBannerAdWrapperListener uvD;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.TKC.Sj$Sj, reason: collision with other inner class name */
    private static class C0265Sj {
        private Ym Dq;
        Zq EjP;
        FrameLayout HiB;
        TextView Jcg;
        public aa Sj;
        ImageView TKC;
        public TextView sP;
        View vS;

        public C0265Sj(View view, aa aaVar) {
            this.vS = view;
            this.Sj = aaVar;
        }

        public C0265Sj(ImageView imageView, View view, TextView textView, TextView textView2, Ym ym2, Zq zq2, FrameLayout frameLayout) {
            this.TKC = imageView;
            this.vS = view;
            this.Jcg = textView;
            this.sP = textView2;
            this.Dq = ym2;
            this.EjP = zq2;
            this.HiB = frameLayout;
        }

        public C0265Sj(ImageView imageView, View view, TextView textView, TextView textView2, aa aaVar, Zq zq2, FrameLayout frameLayout) {
            this.TKC = imageView;
            this.vS = view;
            this.Jcg = textView;
            this.sP = textView2;
            this.Sj = aaVar;
            this.EjP = zq2;
            this.HiB = frameLayout;
        }

        C0265Sj(ImageView imageView, TextView textView, Zq zq2, View view, TextView textView2) {
            this.TKC = imageView;
            this.sP = textView;
            this.EjP = zq2;
            this.vS = view;
            this.Jcg = textView2;
        }
    }

    public Sj(@NonNull Context context) {
        super(context);
        this.sP = context;
    }

    private C0265Sj Dq() {
        int iSP = FPG.sP(this.sP, 8.0f);
        int iSP2 = FPG.sP(this.sP, 21.0f);
        RelativeLayout relativeLayout = new RelativeLayout(this.sP);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        relativeLayout.setPadding(iSP, iSP, iSP, iSP2);
        relativeLayout.setLayoutParams(layoutParams);
        addView(relativeLayout);
        LinearLayout linearLayout = new LinearLayout(this.sP);
        linearLayout.setId(520093737);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(12);
        linearLayout.setGravity(16);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(layoutParams2);
        relativeLayout.addView(linearLayout);
        uvD uvd = new uvD(this.sP);
        uvd.setId(520093738);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(FPG.sP(this.sP, 52.0f), FPG.sP(this.sP, 52.0f));
        uvd.setScaleType(ImageView.ScaleType.FIT_XY);
        uvd.setLayoutParams(layoutParams3);
        linearLayout.addView(uvd);
        LinearLayout linearLayout2 = new LinearLayout(this.sP);
        linearLayout2.setOrientation(1);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2);
        layoutParams4.weight = 1.0f;
        layoutParams4.leftMargin = iSP;
        layoutParams4.rightMargin = iSP;
        layoutParams4.setMarginStart(iSP);
        layoutParams4.setMarginEnd(iSP);
        linearLayout.addView(linearLayout2, layoutParams4);
        TextView textView = new TextView(this.sP);
        textView.setId(520093730);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setMaxLines(1);
        textView.setTextColor(Color.parseColor("#FF3E3E3E"));
        textView.setTextSize(16.0f);
        textView.setLayoutParams(layoutParams5);
        linearLayout2.addView(textView);
        Zq zq2 = new Zq(this.sP);
        zq2.setId(520093735);
        linearLayout2.addView(zq2, new LinearLayout.LayoutParams(-2, -2));
        TextView textView2 = new TextView(this.sP);
        textView2.setId(520093703);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(FPG.sP(this.sP, 76.0f), FPG.sP(this.sP, 36.0f));
        textView2.setBackground(TEQ.Sj(this.sP, 18));
        textView2.setEllipsize(truncateAt);
        textView2.setMaxLines(1);
        textView2.setGravity(17);
        textView2.setText(ib.Sj(this.sP, "tt_video_download_apk"));
        textView2.setTextColor(-1);
        textView2.setTextSize(14.0f);
        textView2.setLayoutParams(layoutParams6);
        linearLayout.addView(textView2);
        FrameLayout frameLayout = new FrameLayout(this.sP);
        frameLayout.setLayoutDirection(3);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams7.addRule(2, linearLayout.getId());
        layoutParams7.bottomMargin = iSP2;
        frameLayout.setLayoutParams(layoutParams7);
        relativeLayout.addView(frameLayout);
        aa aaVar = new aa(this.sP);
        aaVar.setId(520093736);
        aaVar.setScaleType(ImageView.ScaleType.FIT_CENTER);
        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-2, -1);
        layoutParams8.gravity = 17;
        frameLayout.addView(aaVar, layoutParams8);
        View viewCreatePAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(this.sP, this.TKC);
        viewCreatePAGLogoViewByMaterial.setId(520093739);
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams9.addRule(10);
        layoutParams9.addRule(9);
        layoutParams9.setMargins(iSP, iSP, 0, 0);
        viewCreatePAGLogoViewByMaterial.setLayoutParams(layoutParams9);
        relativeLayout.addView(viewCreatePAGLogoViewByMaterial);
        return new C0265Sj(uvd, viewCreatePAGLogoViewByMaterial, textView2, textView, aaVar, zq2, frameLayout);
    }

    private void EjP() {
        C0265Sj c0265SjVS = vS();
        this.Fmk = c0265SjVS;
        View view = c0265SjVS.vS;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.TKC.Sj.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    TTWebsiteActivity.Sj(((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).sP, ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).TKC, ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).vS);
                }
            });
        }
        aa aaVar = this.Fmk.Sj;
        if (aaVar != null) {
            List<com.bytedance.sdk.openadsdk.core.model.uvD> listBml = this.TKC.Bml();
            if (listBml != null && !listBml.isEmpty()) {
                com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(listBml.get(0), aaVar, this.TKC);
            }
            Sj((View) aaVar, true);
            aaVar.setTag(520093762, Boolean.TRUE);
        }
    }

    private void HiB() {
        sU sUVar = this.TKC;
        if (sUVar != null) {
            int iHcZ = sUVar.HcZ();
            if (this.TKC.UHs() == null) {
                C0265Sj c0265SjDq = Dq();
                this.Fmk = c0265SjDq;
                aa aaVar = c0265SjDq.Sj;
                ImageView imageView = c0265SjDq.TKC;
                TextView textView = c0265SjDq.sP;
                TextView textView2 = c0265SjDq.Jcg;
                View view = c0265SjDq.vS;
                if (view != null) {
                    view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.TKC.Sj.3
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            TTWebsiteActivity.Sj(((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).sP, ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).TKC, ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).vS);
                        }
                    });
                }
                ViewGroup.LayoutParams layoutParams = aaVar.getLayoutParams();
                if (this.Jcg - (FPG.sP(this.sP, 8.0f) * 2) >= ((this.Dq - FPG.sP(this.sP, 8.0f)) - (FPG.sP(this.sP, 21.0f) * 2)) - FPG.sP(this.sP, 52.0f)) {
                    layoutParams.width = -2;
                    layoutParams.height = -1;
                } else {
                    layoutParams.width = -1;
                    layoutParams.height = -2;
                }
                aaVar.setLayoutParams(layoutParams);
                if (iHcZ == 33) {
                    aaVar.setRatio(1.0f);
                } else {
                    aaVar.setRatio(1.91f);
                }
                List<com.bytedance.sdk.openadsdk.core.model.uvD> listBml = this.TKC.Bml();
                if (listBml != null && !listBml.isEmpty()) {
                    com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(listBml.get(0), aaVar, this.TKC);
                    com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(listBml.get(0).Sj(), this.Fmk.HiB);
                }
                if (this.TKC.EZ() != null && !TextUtils.isEmpty(this.TKC.EZ().Sj())) {
                    com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.TKC.EZ().Sj(), this.TKC.EZ().sP(), this.TKC.EZ().TKC(), imageView, this.TKC);
                }
                textView.setText(this.TKC.xu());
                if (TextUtils.isEmpty(this.TKC.Ir())) {
                    textView2.setVisibility(8);
                } else {
                    textView2.setText(this.TKC.Ir());
                }
                FPG.Sj((TextView) null, this.Fmk.EjP, this.TKC);
                Sj((View) aaVar, true);
                aaVar.setTag(520093762, Boolean.TRUE);
                Sj((View) this, true);
                Sj((View) textView2, true);
                return;
            }
            C0265Sj c0265SjUA = uA();
            this.Fmk = c0265SjUA;
            TextView textView3 = c0265SjUA.sP;
            TextView textView4 = c0265SjUA.Jcg;
            Ym ym2 = c0265SjUA.Dq;
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.TKC.UHs().r(), this.Fmk.HiB);
            View view2 = this.Fmk.vS;
            if (view2 != null) {
                view2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.TKC.Sj.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        TTWebsiteActivity.Sj(((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).sP, ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).TKC, ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).vS);
                    }
                });
            }
            ViewGroup.LayoutParams layoutParams2 = ym2.getLayoutParams();
            if (iHcZ == 15) {
                layoutParams2.width = -2;
                layoutParams2.height = -1;
                ym2.setLayoutParams(layoutParams2);
                ym2.setRatio(0.5625f);
            } else if (iHcZ == 5) {
                layoutParams2.width = -1;
                layoutParams2.height = -2;
                ym2.setLayoutParams(layoutParams2);
                ym2.setRatio(1.7777778f);
            } else {
                if (this.Jcg - (FPG.sP(this.sP, 8.0f) * 2) >= ((this.Dq - FPG.sP(this.sP, 8.0f)) - (FPG.sP(this.sP, 21.0f) * 2)) - FPG.sP(this.sP, 52.0f)) {
                    layoutParams2.width = -2;
                    layoutParams2.height = -1;
                } else {
                    layoutParams2.width = -1;
                    layoutParams2.height = -2;
                }
                ym2.setLayoutParams(layoutParams2);
                ym2.setRatio(1.0f);
            }
            ym2.removeAllViews();
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
            com.bytedance.sdk.openadsdk.core.aa.sP.vS videoView = getVideoView();
            if (videoView != null) {
                RiZ riZ = this.sef;
                if (riZ instanceof TzV) {
                    videoView.setVideoAdInteractionListener((TzV) riZ);
                }
                ym2.addView(videoView, layoutParams3);
                videoView.setAdCreativeClickListener(new com.bytedance.sdk.openadsdk.core.aa.sP.vS.Sj() { // from class: com.bytedance.sdk.openadsdk.core.TKC.Sj.5
                    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.vS.Sj
                    public void Sj(View view3, int i11) {
                        if (Sj.this.uvD != null) {
                            Sj.this.uvD.onAdClicked();
                        }
                    }
                });
                Dq clickCreativeListener = this.sef.getClickCreativeListener();
                if (clickCreativeListener != null) {
                    clickCreativeListener.Sj(videoView.getNativeVideoController());
                }
            }
            if (this.TKC.EZ() != null && !TextUtils.isEmpty(this.TKC.EZ().Sj())) {
                com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.TKC.EZ().Sj(), this.TKC.EZ().sP(), this.TKC.EZ().TKC(), this.Fmk.TKC, this.TKC);
            }
            textView3.setText(this.TKC.xu());
            FPG.Sj((TextView) null, this.Fmk.EjP, this.TKC);
            if (TextUtils.isEmpty(this.TKC.Ir())) {
                textView4.setVisibility(8);
            } else {
                textView4.setText(this.TKC.Ir());
            }
            Sj((View) videoView, true);
            if (videoView != null) {
                videoView.setTag(520093762, Boolean.TRUE);
            }
            Sj((View) this, true);
            Sj((View) textView4, true);
            Sj(ym2);
        }
    }

    private C0265Sj Jcg() {
        int iSP = FPG.sP(this.sP, 38.0f);
        int iSP2 = (int) (((double) FPG.sP(this.sP, 25.0f)) / 5.0d);
        int iSP3 = FPG.sP(this.sP, 10.0f);
        int iSP4 = FPG.sP(this.sP, 2.0f);
        int iSP5 = FPG.sP(this.sP, 6.0f);
        int iSP6 = FPG.sP(this.sP, 8.0f);
        RelativeLayout relativeLayout = new RelativeLayout(this.sP);
        addView(relativeLayout, -1, -1);
        uvD uvd = new uvD(this.sP);
        uvd.setId(520093738);
        TextView textView = new TextView(this.sP);
        textView.setId(520093730);
        Zq zq2 = new Zq(this.sP);
        zq2.setId(520093735);
        View viewCreatePAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(this.sP, this.TKC);
        viewCreatePAGLogoViewByMaterial.setId(520093739);
        TextView textView2 = new TextView(this.sP);
        textView2.setId(520093703);
        C0265Sj c0265Sj = new C0265Sj(uvd, textView, zq2, viewCreatePAGLogoViewByMaterial, textView2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iSP, iSP);
        layoutParams.addRule(15);
        layoutParams.addRule(9);
        layoutParams.addRule(20);
        layoutParams.setMarginStart(iSP5);
        layoutParams.setMargins(iSP5, 0, 0, 0);
        uvd.setLayoutParams(layoutParams);
        uvd.setBackgroundColor(-1);
        uvd.setScaleType(ImageView.ScaleType.FIT_XY);
        relativeLayout.addView(uvd);
        LinearLayout linearLayout = new LinearLayout(this.sP);
        linearLayout.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(15);
        layoutParams2.addRule(16, textView2.getId());
        layoutParams2.addRule(17, uvd.getId());
        layoutParams2.setMarginStart(iSP6);
        layoutParams2.setMarginEnd(iSP6);
        layoutParams2.addRule(0, textView2.getId());
        layoutParams2.addRule(1, uvd.getId());
        layoutParams2.setMargins(iSP6, 0, iSP6, 0);
        relativeLayout.addView(linearLayout, layoutParams2);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        textView.setTextDirection(5);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setGravity(80);
        textView.setMaxLines(1);
        textView.setTextColor(Color.parseColor("#FF333333"));
        textView.setTextSize(12.0f);
        textView.setLayoutParams(layoutParams3);
        linearLayout.addView(textView);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.topMargin = iSP4;
        zq2.setLayoutParams(layoutParams4);
        linearLayout.addView(zq2);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.addRule(20);
        layoutParams5.addRule(9);
        layoutParams5.addRule(12);
        viewCreatePAGLogoViewByMaterial.setLayoutParams(layoutParams5);
        relativeLayout.addView(viewCreatePAGLogoViewByMaterial);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(11);
        layoutParams6.addRule(15);
        layoutParams6.setMarginEnd(iSP5);
        layoutParams6.addRule(21);
        layoutParams6.rightMargin = iSP5;
        textView2.setBackground(TEQ.Sj(this.sP, 12));
        textView2.setEllipsize(truncateAt);
        textView2.setGravity(17);
        textView2.setMaxLines(1);
        textView2.setPadding(iSP3, iSP2, iSP3, iSP2);
        textView2.setText(ib.Sj(this.sP, "tt_video_download_apk"));
        textView2.setTextColor(Color.parseColor("#f0f0f0"));
        textView2.setTextSize(10.0f);
        textView2.setLayoutParams(layoutParams6);
        relativeLayout.addView(textView2);
        return c0265Sj;
    }

    public static dNu Sj(int i11, int i12) {
        try {
            return ((double) i12) >= Math.floor((((double) i11) * 450.0d) / 600.0d) ? Sj[1] : Sj[0];
        } catch (Throwable unused) {
            return Sj[0];
        }
    }

    private void Sj(dNu dnu) {
        if (dnu.Sj == 1) {
            TKC();
        } else {
            HiB();
        }
    }

    private void TKC() {
        FPG.sP(this.sP, 50.0f);
        C0265Sj c0265SjJcg = Jcg();
        this.Fmk = c0265SjJcg;
        ImageView imageView = c0265SjJcg.TKC;
        TextView textView = c0265SjJcg.sP;
        Zq zq2 = c0265SjJcg.EjP;
        TextView textView2 = c0265SjJcg.Jcg;
        View view = c0265SjJcg.vS;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.TKC.Sj.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    TTWebsiteActivity.Sj(((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).sP, ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).TKC, ((com.bytedance.sdk.openadsdk.core.Dq.Sj) Sj.this).vS);
                }
            });
        }
        if (this.TKC.EZ() != null && !TextUtils.isEmpty(this.TKC.EZ().Sj())) {
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.TKC.EZ().Sj(), this.TKC.EZ().sP(), this.TKC.EZ().TKC(), imageView, this.TKC);
        }
        textView.setText(this.TKC.xu());
        if (TextUtils.isEmpty(this.TKC.Ir())) {
            textView2.setVisibility(8);
        } else {
            textView2.setText(this.TKC.Ir());
        }
        FPG.Sj((TextView) null, zq2, this.TKC);
        Sj((View) imageView, true);
        imageView.setTag(520093762, Boolean.TRUE);
        Sj((View) this, true);
        Sj((View) textView2, true);
    }

    private void sP() {
        dNu dnuSj = Sj(this.sef.getExpectExpressWidth(), this.sef.getExpectExpressHeight());
        if (this.sef.getExpectExpressWidth() <= 0 || this.sef.getExpectExpressHeight() <= 0) {
            int iTKC = FPG.TKC(this.sP);
            this.Jcg = iTKC;
            this.Dq = Float.valueOf(iTKC / dnuSj.sP).intValue();
        } else {
            this.Jcg = FPG.sP(this.sP, this.sef.getExpectExpressWidth());
            this.Dq = FPG.sP(this.sP, this.sef.getExpectExpressHeight());
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
        sU sUVar = this.TKC;
        if (sUVar != null) {
            int iHcZ = sUVar.HcZ();
            if (iHcZ == 1010 || iHcZ == 1011 || iHcZ == 1012) {
                EjP();
            } else {
                Sj(dnuSj);
            }
        }
    }

    private C0265Sj uA() {
        int iSP = FPG.sP(this.sP, 8.0f);
        int iSP2 = FPG.sP(this.sP, 21.0f);
        RelativeLayout relativeLayout = new RelativeLayout(this.sP);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        relativeLayout.setPadding(iSP, iSP, iSP, iSP2);
        relativeLayout.setLayoutParams(layoutParams);
        addView(relativeLayout);
        LinearLayout linearLayout = new LinearLayout(this.sP);
        linearLayout.setId(520093737);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(12);
        linearLayout.setGravity(16);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(layoutParams2);
        relativeLayout.addView(linearLayout);
        uvD uvd = new uvD(this.sP);
        uvd.setId(520093738);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(FPG.sP(this.sP, 52.0f), FPG.sP(this.sP, 52.0f));
        uvd.setScaleType(ImageView.ScaleType.FIT_XY);
        uvd.setLayoutParams(layoutParams3);
        linearLayout.addView(uvd);
        LinearLayout linearLayout2 = new LinearLayout(this.sP);
        linearLayout2.setOrientation(1);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2);
        layoutParams4.weight = 1.0f;
        layoutParams4.leftMargin = iSP;
        layoutParams4.rightMargin = iSP;
        layoutParams4.setMarginStart(iSP);
        layoutParams4.setMarginEnd(iSP);
        linearLayout.addView(linearLayout2, layoutParams4);
        TextView textView = new TextView(this.sP);
        textView.setId(520093730);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setMaxLines(1);
        textView.setTextColor(Color.parseColor("#FF3E3E3E"));
        textView.setTextSize(16.0f);
        textView.setLayoutParams(layoutParams5);
        linearLayout2.addView(textView);
        Zq zq2 = new Zq(this.sP);
        zq2.setId(520093735);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams6.topMargin = FPG.sP(this.sP, 4.0f);
        linearLayout2.addView(zq2, layoutParams6);
        TextView textView2 = new TextView(this.sP);
        textView2.setId(520093703);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(FPG.sP(this.sP, 76.0f), FPG.sP(this.sP, 36.0f));
        textView2.setBackground(TEQ.Sj(this.sP, 18));
        textView2.setEllipsize(truncateAt);
        textView2.setMaxLines(1);
        textView2.setGravity(17);
        textView2.setText(ib.Sj(this.sP, "tt_video_download_apk"));
        textView2.setTextColor(-1);
        textView2.setTextSize(14.0f);
        textView2.setLayoutParams(layoutParams7);
        linearLayout.addView(textView2);
        FrameLayout frameLayout = new FrameLayout(this.sP);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams8.addRule(2, linearLayout.getId());
        layoutParams8.bottomMargin = iSP2;
        frameLayout.setLayoutParams(layoutParams8);
        relativeLayout.addView(frameLayout);
        Ym ym2 = new Ym(this.sP);
        ym2.setId(520093736);
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-2, -1);
        layoutParams9.gravity = 17;
        ym2.setLayoutParams(layoutParams9);
        frameLayout.addView(ym2);
        View viewCreatePAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(this.sP, this.TKC);
        viewCreatePAGLogoViewByMaterial.setId(520093739);
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams10.addRule(10);
        layoutParams10.addRule(9);
        layoutParams10.setMargins(iSP, iSP, 0, 0);
        viewCreatePAGLogoViewByMaterial.setLayoutParams(layoutParams10);
        relativeLayout.addView(viewCreatePAGLogoViewByMaterial);
        return new C0265Sj(uvd, viewCreatePAGLogoViewByMaterial, textView2, textView, ym2, zq2, frameLayout);
    }

    private C0265Sj vS() {
        int iSP = FPG.sP(this.sP, 8.0f);
        aa aaVar = new aa(this.sP);
        aaVar.setId(520093736);
        aaVar.setScaleType(ImageView.ScaleType.FIT_CENTER);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(aaVar, layoutParams);
        View viewCreatePAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(this.sP, this.TKC);
        viewCreatePAGLogoViewByMaterial.setId(520093739);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(iSP, iSP, 0, 0);
        layoutParams2.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START;
        viewCreatePAGLogoViewByMaterial.setLayoutParams(layoutParams2);
        addView(viewCreatePAGLogoViewByMaterial);
        return new C0265Sj(viewCreatePAGLogoViewByMaterial, aaVar);
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
            TTDelegateActivity.Sj(this.TKC, this.Zq);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.Sj
    protected void Sj(View view, int i11, sef sefVar) {
        RiZ riZ = this.sef;
        if (riZ != null) {
            riZ.Sj(view, i11, sefVar);
        }
    }

    void Sj(sU sUVar, RiZ riZ, com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS vSVar) {
        setBackgroundColor(-1);
        this.TKC = sUVar;
        this.sef = riZ;
        this.vS = "banner_ad";
        riZ.addView(this, new ViewGroup.LayoutParams(-2, -2));
        sP();
    }

    public void setAdInteractionListener(PAGBannerAdWrapperListener pAGBannerAdWrapperListener) {
        this.uvD = pAGBannerAdWrapperListener;
    }

    public void setClosedListenerKey(String str) {
        this.Zq = str;
    }
}
