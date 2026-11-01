package com.bytedance.sdk.openadsdk.activity;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.EjP.Ym;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.common.Zq;
import com.bytedance.sdk.openadsdk.common.aa;
import com.bytedance.sdk.openadsdk.common.uvD;
import com.bytedance.sdk.openadsdk.core.HiB.Dq;
import com.bytedance.sdk.openadsdk.core.HiB.Jcg;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.widget.Fmk;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.sef;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.TEQ;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import u5.b;

/* JADX INFO: loaded from: classes2.dex */
public class TTVideoLandingPageLink2Activity extends TTVideoLandingPageActivity implements com.bytedance.sdk.openadsdk.TEQ.EjP {
    private long Chv;
    private TextView EZ;
    private View IOh;
    private View MuB;
    private com.bytedance.sdk.openadsdk.common.EjP Uc;
    private boolean aNB;
    private uvD cX;
    private com.bytedance.sdk.openadsdk.core.widget.Sj.HiB gR;
    private TextView gY;

    /* JADX INFO: renamed from: kb, reason: collision with root package name */
    private LinearLayout f20974kb;
    Zq ndK;
    private boolean pfr;
    TTAdDislikeToast qRN;
    private aa sdp;

    /* JADX INFO: renamed from: xu, reason: collision with root package name */
    private PAGLogoView f20975xu;
    private boolean Bml = false;
    final AtomicBoolean UHs = new AtomicBoolean(false);
    final AtomicBoolean dwU = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: private */
    public void Fmk() {
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.uvD, "landingpage_split_screen", "click_video", (JSONObject) null);
    }

    private void Zq() {
        TTAdDislikeToast tTAdDislikeToast = this.qRN;
        if (tTAdDislikeToast == null) {
            return;
        }
        tTAdDislikeToast.show(TTAdDislikeToast.getDislikeTip());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dNu() {
        TTAdDislikeToast tTAdDislikeToast;
        if (isFinishing() || (tTAdDislikeToast = this.qRN) == null) {
            return;
        }
        tTAdDislikeToast.show(TTAdDislikeToast.getDislikeSendTip());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sef() {
        aa aaVar = this.sdp;
        if (aaVar != null) {
            aaVar.sP();
        }
    }

    private void uvD() {
        try {
            if (this.ndK == null) {
                Zq zq2 = new Zq(this.HiB, this.uvD);
                this.ndK = zq2;
                zq2.setDislikeSource("landing_page");
                this.ndK.setCallback(new Zq.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.6
                    @Override // com.bytedance.sdk.openadsdk.common.Zq.Sj
                    public void Sj(View view) {
                        TTVideoLandingPageLink2Activity.this.UHs.set(true);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.Zq.Sj
                    public void Sj(FilterWord filterWord) {
                        if (TTVideoLandingPageLink2Activity.this.dwU.get() || filterWord == null || filterWord.hasSecondOptions()) {
                            return;
                        }
                        TTVideoLandingPageLink2Activity.this.dwU.set(true);
                        TTVideoLandingPageLink2Activity.this.dNu();
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.Zq.Sj
                    public void sP(View view) {
                        TTVideoLandingPageLink2Activity.this.UHs.set(false);
                    }
                });
            }
            FrameLayout frameLayout = (FrameLayout) findViewById(R.id.content);
            frameLayout.addView(this.ndK);
            if (this.qRN == null) {
                TTAdDislikeToast tTAdDislikeToast = new TTAdDislikeToast(this.HiB);
                this.qRN = tTAdDislikeToast;
                frameLayout.addView(tTAdDislikeToast);
            }
        } catch (Throwable th2) {
            ApmHelper.reportCustomError("initDislike error", "TTVideoLandingPageLink2Activity", th2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity
    @SuppressLint({"ClickableViewAccessibility"})
    protected void EjP() {
        if (!HiB()) {
            try {
                ImageView imageView = new ImageView(this);
                imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.uvD.Bml().get(0), imageView, this.uvD);
                this.f20969aa.setVisibility(0);
                this.f20969aa.removeAllViews();
                this.f20969aa.addView(imageView);
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        com.bytedance.sdk.openadsdk.EjP.TKC.sP(TTVideoLandingPageLink2Activity.this.uvD, "landingpage_split_screen");
                    }
                });
                return;
            } catch (Exception unused) {
                return;
            }
        }
        super.EjP();
        com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar = this.sef;
        if (vSVar != null) {
            if (vSVar.getNativeVideoController() != null) {
                this.sef.getNativeVideoController().Sj(false);
                ((com.bytedance.sdk.openadsdk.core.aa.sP.TKC) this.sef.getNativeVideoController()).vS(false);
                this.f20969aa.setClickable(true);
                this.f20969aa.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.3
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() != 0) {
                            return false;
                        }
                        TTVideoLandingPageLink2Activity.this.Fmk();
                        return false;
                    }
                });
            }
            this.sef.getNativeVideoController().Sj(new b.InterfaceC0935b() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.4
                @Override // u5.b.InterfaceC0935b
                public void Sj() {
                }

                @Override // u5.b.InterfaceC0935b
                public void Sj(long j11, int i11) {
                }

                @Override // u5.b.InterfaceC0935b
                public void Sj(long j11, long j12) {
                    if (TTVideoLandingPageLink2Activity.this.EZ != null) {
                        int iMax = (int) Math.max(0L, (j12 - j11) / 1000);
                        TTVideoLandingPageLink2Activity.this.EZ.setText(String.valueOf(iMax));
                        if (iMax <= 0) {
                            TTVideoLandingPageLink2Activity.this.EZ.setVisibility(8);
                        }
                    }
                }

                @Override // u5.b.InterfaceC0935b
                public void sP(long j11, int i11) {
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity
    protected boolean HiB() {
        int i11 = this.Fmk;
        return i11 == 5 || i11 == 15 || i11 == 50;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity
    protected View Sj() {
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(this);
        if (Build.VERSION.SDK_INT >= 35) {
            hiB.setFitsSystemWindows(true);
        }
        hiB.setOrientation(1);
        hiB.setBackgroundColor(-1);
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.HiB.TKC(this);
        hiB.addView(tkc, new LinearLayout.LayoutParams(-1, FPG.sP(this, 220.0f)));
        View tkc2 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(this);
        tkc2.setId(com.bytedance.sdk.openadsdk.utils.Zq.Wjd);
        tkc.addView(tkc2, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB2 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(this);
        hiB2.setOrientation(0);
        hiB2.setPadding(0, FPG.sP(this, 20.0f), 0, 0);
        tkc.addView(hiB2, new FrameLayout.LayoutParams(-1, -2));
        View view = new View(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, 0);
        layoutParams.weight = 1.0f;
        hiB2.addView(view, layoutParams);
        sef sefVar = new sef(this);
        sefVar.setId(520093713);
        sefVar.setGravity(17);
        sefVar.setText(ib.Sj(this, "tt_reward_feedback"));
        sefVar.setTextColor(-1);
        sefVar.setTextSize(2, 14.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, FPG.sP(this, 28.0f));
        int iSP = FPG.sP(this, 16.0f);
        layoutParams2.rightMargin = iSP;
        layoutParams2.leftMargin = iSP;
        hiB2.addView(sefVar, layoutParams2);
        Fmk fmk = new Fmk(this);
        fmk.setId(com.bytedance.sdk.openadsdk.utils.Zq.xD);
        fmk.setPadding(FPG.sP(this, 7.0f), FPG.sP(this, 7.0f), FPG.sP(this, 7.0f), FPG.sP(this, 7.0f));
        fmk.setImageResource(ib.EjP(this, "tt_video_close_drawable"));
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(FPG.sP(this, 28.0f), FPG.sP(this, 28.0f));
        layoutParams3.rightMargin = FPG.sP(this, 12.0f);
        hiB2.addView(fmk, layoutParams3);
        Jcg jcg = new Jcg(this);
        jcg.setVisibility(8);
        jcg.setId(com.bytedance.sdk.openadsdk.utils.Zq.Fm);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams4.topMargin = FPG.sP(this, 10.0f);
        hiB.addView(jcg, layoutParams4);
        com.bytedance.sdk.openadsdk.core.widget.Sj sj2 = new com.bytedance.sdk.openadsdk.core.widget.Sj(this);
        sj2.setId(com.bytedance.sdk.openadsdk.utils.Zq.f21133jb);
        sj2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        sj2.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(FPG.sP(this, 44.0f), FPG.sP(this, 44.0f));
        layoutParams5.addRule(9);
        layoutParams5.leftMargin = FPG.sP(this, 5.0f);
        jcg.addView(sj2, layoutParams5);
        Dq dq2 = new Dq(this);
        int i11 = com.bytedance.sdk.openadsdk.utils.Zq.Ei;
        dq2.setId(i11);
        dq2.setBackground(TEQ.Sj(this, "tt_circle_solid_mian"));
        dq2.setGravity(17);
        dq2.setTextColor(-1);
        dq2.setTextSize(2, 19.0f);
        dq2.setTypeface(Typeface.DEFAULT_BOLD);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(FPG.sP(this, 44.0f), FPG.sP(this, 44.0f));
        layoutParams6.addRule(9);
        layoutParams6.leftMargin = FPG.sP(this, 5.0f);
        jcg.addView(dq2, layoutParams6);
        Dq dq3 = new Dq(this);
        dq3.setId(com.bytedance.sdk.openadsdk.utils.Zq.HpB);
        dq3.setMaxLines(1);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        dq3.setEllipsize(truncateAt);
        dq3.setTextColor(Color.parseColor("#e5000000"));
        dq3.setTextSize(2, 12.0f);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.addRule(15);
        layoutParams7.leftMargin = FPG.sP(this, 5.0f);
        layoutParams7.rightMargin = FPG.sP(this, 80.0f);
        layoutParams7.addRule(1, i11);
        jcg.addView(dq3, layoutParams7);
        Dq dq4 = new Dq(this);
        dq4.setId(com.bytedance.sdk.openadsdk.utils.Zq.xhi);
        dq4.setClickable(true);
        dq4.setMaxLines(1);
        dq4.setEllipsize(truncateAt);
        dq4.setFocusable(true);
        dq4.setGravity(17);
        dq4.setText(ib.Sj(this, "tt_video_mobile_go_detail"));
        dq4.setTextColor(-1);
        dq4.setTextSize(2, 14.0f);
        dq4.setPadding(FPG.sP(this, 2.0f), FPG.sP(this, 2.0f), FPG.sP(this, 2.0f), FPG.sP(this, 2.0f));
        dq4.setBackground(TEQ.Sj(this, "tt_ad_cover_btn_begin_bg"));
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(FPG.sP(this, 90.0f), FPG.sP(this, 36.0f));
        layoutParams8.addRule(11);
        layoutParams8.addRule(15);
        layoutParams8.rightMargin = FPG.sP(this, 5.0f);
        jcg.addView(dq4, layoutParams8);
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc3 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(this);
        hiB.addView(tkc3, new LinearLayout.LayoutParams(-1, -1));
        View vSVar = new com.bytedance.sdk.component.uA.vS(this);
        vSVar.setId(com.bytedance.sdk.openadsdk.utils.Zq.f21129db);
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams9.topMargin = FPG.sP(this, 2.0f);
        tkc3.addView(vSVar, layoutParams9);
        Jcg jcg2 = new Jcg(this);
        jcg2.setId(com.bytedance.sdk.openadsdk.utils.Zq.ndK);
        jcg2.setBackgroundColor(Color.parseColor("#F8F8F8"));
        tkc3.addView(jcg2, new FrameLayout.LayoutParams(-1, -1));
        View aaVar = new aa(this);
        aaVar.setId(com.bytedance.sdk.openadsdk.utils.Zq.qRN);
        jcg2.addView(aaVar, new RelativeLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB3 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(this);
        hiB3.setId(com.bytedance.sdk.openadsdk.utils.Zq.FPG);
        hiB3.setOrientation(1);
        hiB3.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams10.addRule(13);
        jcg2.addView(hiB3, layoutParams10);
        com.bytedance.sdk.openadsdk.core.widget.uvD uvd = new com.bytedance.sdk.openadsdk.core.widget.uvD(this);
        uvd.setId(com.bytedance.sdk.openadsdk.utils.Zq.UHs);
        LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(FPG.sP(this, 80.0f), FPG.sP(this, 80.0f));
        layoutParams11.gravity = 17;
        hiB3.addView(uvd, layoutParams11);
        Dq dq5 = new Dq(this);
        dq5.setId(com.bytedance.sdk.openadsdk.utils.Zq.dwU);
        dq5.setTextColor(Color.parseColor("#161823"));
        dq5.setTextSize(0, FPG.sP(this, 24.0f));
        LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams12.gravity = 17;
        layoutParams12.topMargin = FPG.sP(this, 12.0f);
        hiB3.addView(dq5, layoutParams12);
        Dq dq6 = new Dq(this);
        dq6.setId(com.bytedance.sdk.openadsdk.utils.Zq.sdp);
        dq6.setTextColor(Color.parseColor("#80161823"));
        dq6.setTextSize(0, FPG.sP(this, 16.0f));
        dq6.setTextAlignment(4);
        LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams13.gravity = 17;
        int iSP2 = FPG.sP(this, 60.0f);
        layoutParams13.rightMargin = iSP2;
        layoutParams13.leftMargin = iSP2;
        layoutParams13.topMargin = FPG.sP(this, 8.0f);
        hiB3.addView(dq6, layoutParams13);
        Dq dq7 = new Dq(this);
        dq7.setId(com.bytedance.sdk.openadsdk.utils.Zq.MuB);
        dq7.setGravity(17);
        dq7.setTextColor(-1);
        dq7.setText(ib.Sj(this, "tt_video_mobile_go_detail"));
        dq7.setBackground(TEQ.Sj(this, "tt_reward_video_download_btn_bg"));
        LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams(FPG.sP(this, 255.0f), FPG.sP(this, 44.0f));
        layoutParams14.gravity = 17;
        layoutParams14.topMargin = FPG.sP(this, 32.0f);
        hiB3.addView(dq7, layoutParams14);
        PAGLogoView pAGLogoView = new PAGLogoView(this);
        this.f20975xu = pAGLogoView;
        pAGLogoView.setId(com.bytedance.sdk.openadsdk.utils.Zq.IOh);
        this.f20975xu.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams15 = new RelativeLayout.LayoutParams(-2, FPG.sP(this, 14.0f));
        layoutParams15.addRule(12);
        layoutParams15.leftMargin = FPG.sP(this, 18.0f);
        layoutParams15.bottomMargin = FPG.sP(this, 61.0f);
        jcg2.addView(this.f20975xu, layoutParams15);
        View sefVar2 = new com.bytedance.sdk.openadsdk.common.sef(this, new com.bytedance.sdk.openadsdk.common.sef.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.10
            @Override // com.bytedance.sdk.openadsdk.common.sef.Sj
            public View Sj(Context context) {
                return new com.bytedance.sdk.openadsdk.common.Jcg(context);
            }
        });
        sefVar2.setId(com.bytedance.sdk.openadsdk.utils.Zq.pfr);
        FrameLayout.LayoutParams layoutParams16 = new FrameLayout.LayoutParams(-1, FPG.sP(this, 48.0f));
        layoutParams16.gravity = 81;
        tkc3.addView(sefVar2, layoutParams16);
        View sefVar3 = new com.bytedance.sdk.openadsdk.common.sef(this, new com.bytedance.sdk.openadsdk.common.sef.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.11
            @Override // com.bytedance.sdk.openadsdk.common.sef.Sj
            public View Sj(Context context) {
                return new com.bytedance.sdk.openadsdk.common.Dq(context);
            }
        });
        sefVar3.setId(com.bytedance.sdk.openadsdk.utils.Zq.EZ);
        FrameLayout.LayoutParams layoutParams17 = new FrameLayout.LayoutParams(-1, FPG.sP(this, 44.0f));
        layoutParams17.gravity = 80;
        tkc3.addView(sefVar3, layoutParams17);
        return hiB;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity
    @SuppressLint({"ClickableViewAccessibility"})
    protected void TKC() {
        super.TKC();
        TextView textView = (TextView) findViewById(520093713);
        if (textView != null) {
            textView.setText(ib.Sj(dNu.Sj(), "tt_reward_feedback"));
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.12
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTVideoLandingPageLink2Activity.this.aa();
                }
            });
        }
        this.EZ = (TextView) findViewById(520093714);
        this.sdp = (aa) findViewById(com.bytedance.sdk.openadsdk.utils.Zq.qRN);
        this.MuB = findViewById(com.bytedance.sdk.openadsdk.utils.Zq.ndK);
        this.IOh = findViewById(com.bytedance.sdk.openadsdk.utils.Zq.FPG);
        TextView textView2 = (TextView) findViewById(com.bytedance.sdk.openadsdk.utils.Zq.dwU);
        TextView textView3 = (TextView) findViewById(com.bytedance.sdk.openadsdk.utils.Zq.sdp);
        com.bytedance.sdk.openadsdk.core.widget.uvD uvd = (com.bytedance.sdk.openadsdk.core.widget.uvD) findViewById(com.bytedance.sdk.openadsdk.utils.Zq.UHs);
        this.gY = (TextView) findViewById(com.bytedance.sdk.openadsdk.utils.Zq.MuB);
        if (this.uvD.EZ() != null && !TextUtils.isEmpty(this.uvD.EZ().Sj())) {
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.uvD.EZ(), uvd, this.uvD);
        }
        textView2.setText(this.uvD.dwU());
        textView3.setText(this.uvD.gR());
        View viewFindViewById = findViewById(com.bytedance.sdk.openadsdk.utils.Zq.IOh);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTVideoLandingPageLink2Activity tTVideoLandingPageLink2Activity = TTVideoLandingPageLink2Activity.this;
                TTWebsiteActivity.Sj(tTVideoLandingPageLink2Activity.HiB, tTVideoLandingPageLink2Activity.uvD, tTVideoLandingPageLink2Activity.fF);
            }
        });
        if (viewFindViewById instanceof PAGLogoView) {
            ((PAGLogoView) viewFindViewById).initData(this.uvD);
        }
        com.bytedance.sdk.component.uA.vS vSVar = this.Sj;
        if (vSVar != null && vSVar.getWebView() != null) {
            Mts.Sj(this.uvD, this.Sj);
        }
        boolean zSU = dNu.EjP().sU();
        this.aNB = zSU;
        if (zSU) {
            ((com.bytedance.sdk.openadsdk.common.sef) findViewById(com.bytedance.sdk.openadsdk.utils.Zq.EZ)).setVisibility(0);
            LinearLayout linearLayout = (LinearLayout) findViewById(com.bytedance.sdk.openadsdk.utils.Zq.Ir);
            this.f20974kb = linearLayout;
            linearLayout.setVisibility(8);
            this.cX = new uvD(this, this.f20974kb, this.Sj, this.uvD, "landingpage_split_screen");
            if (this.Sj.getWebView() != null) {
                this.Sj.getWebView().setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.14
                    float Sj = 0.0f;

                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() == 0) {
                            this.Sj = motionEvent.getY();
                        }
                        Ym ym2 = TTVideoLandingPageLink2Activity.this.Fm;
                        if (ym2 != null) {
                            ym2.Sj(motionEvent);
                        }
                        if (TTVideoLandingPageLink2Activity.this.Uc != null) {
                            TTVideoLandingPageLink2Activity.this.Uc.Sj(motionEvent);
                        }
                        if (motionEvent.getAction() == 2) {
                            float y10 = motionEvent.getY();
                            float f11 = this.Sj;
                            if (y10 - f11 > 8.0f) {
                                if (TTVideoLandingPageLink2Activity.this.cX != null) {
                                    TTVideoLandingPageLink2Activity.this.cX.Sj();
                                }
                                return false;
                            }
                            if (y10 - f11 < -8.0f && TTVideoLandingPageLink2Activity.this.cX != null) {
                                TTVideoLandingPageLink2Activity.this.cX.sP();
                            }
                        }
                        return false;
                    }
                });
            }
        } else if (this.Sj.getWebView() != null) {
            this.Sj.getWebView().setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.2
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    Ym ym2 = TTVideoLandingPageLink2Activity.this.Fm;
                    if (ym2 != null) {
                        ym2.Sj(motionEvent);
                    }
                    if (TTVideoLandingPageLink2Activity.this.Uc == null) {
                        return false;
                    }
                    TTVideoLandingPageLink2Activity.this.Uc.Sj(motionEvent);
                    return false;
                }
            });
        }
        aa aaVar = this.sdp;
        if (aaVar != null) {
            aaVar.Sj(this.uvD);
        }
    }

    protected void aa() {
        if (isFinishing()) {
            return;
        }
        if (this.dwU.get()) {
            Zq();
            return;
        }
        if (this.ndK == null) {
            uvD();
        }
        Zq zq2 = this.ndK;
        if (zq2 != null) {
            zq2.Sj();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        aa aaVar = this.sdp;
        if (aaVar != null) {
            aaVar.Sj();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        sU sUVar;
        com.bytedance.sdk.component.uA.vS vSVar;
        super.onCreate(bundle);
        if (!com.bytedance.sdk.openadsdk.core.sef.HiB() || (sUVar = this.uvD) == null || (vSVar = this.Sj) == null) {
            finish();
            return;
        }
        com.bytedance.sdk.openadsdk.common.EjP ejPSj = Mts.Sj(sUVar, vSVar, this.HiB, this.fF);
        this.Uc = ejPSj;
        if (ejPSj != null) {
            ejPSj.Sj("landingpage_split_screen");
        }
        this.aNB = dNu.EjP().sU();
        if (this.Sj.getWebView() != null) {
            this.Sj.getWebView().setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.1
                @Override // android.view.View.OnScrollChangeListener
                public void onScrollChange(View view, int i11, int i12, int i13, int i14) {
                    Ym ym2 = TTVideoLandingPageLink2Activity.this.Fm;
                    if (ym2 != null) {
                        ym2.sP(i12);
                    }
                }
            });
        }
        com.bytedance.sdk.openadsdk.core.widget.Sj.HiB hiB = new com.bytedance.sdk.openadsdk.core.widget.Sj.HiB(this.HiB, this.TEQ, this.Dq, this.Uc, this.Fm, true) { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.7
            @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                try {
                    if (TTVideoLandingPageLink2Activity.this.MuB != null && !TTVideoLandingPageLink2Activity.this.pfr) {
                        TTVideoLandingPageLink2Activity.this.MuB.setVisibility(8);
                    }
                    if (TTVideoLandingPageLink2Activity.this.f20974kb != null) {
                        TTVideoLandingPageLink2Activity.this.f20974kb.setVisibility(0);
                    }
                    TTVideoLandingPageLink2Activity.this.Bml = true;
                    TTVideoLandingPageLink2Activity.this.sef();
                    TTVideoLandingPageLink2Activity tTVideoLandingPageLink2Activity = TTVideoLandingPageLink2Activity.this;
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(tTVideoLandingPageLink2Activity.uvD, tTVideoLandingPageLink2Activity.fF, System.currentTimeMillis() - TTVideoLandingPageLink2Activity.this.Chv, true);
                } catch (Throwable unused) {
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                TTVideoLandingPageLink2Activity.this.Chv = System.currentTimeMillis();
            }
        };
        this.gR = hiB;
        hiB.Sj(this.uvD);
        this.Sj.setWebViewClient(this.gR);
        this.Sj.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Sj.EjP(this.TEQ, this.Fm, this.Uc) { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.8
            @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.EjP, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i11) {
                super.onProgressChanged(webView, i11);
                if (TTVideoLandingPageLink2Activity.this.aNB && TTVideoLandingPageLink2Activity.this.cX != null && i11 == 100) {
                    TTVideoLandingPageLink2Activity.this.cX.Sj(webView, TTVideoLandingPageLink2Activity.this.xhi);
                }
                if (TTVideoLandingPageLink2Activity.this.sdp != null) {
                    TTVideoLandingPageLink2Activity.this.sdp.Sj(i11);
                }
            }
        });
        TextView textView = (TextView) findViewById(com.bytedance.sdk.openadsdk.utils.Zq.f21139yr);
        if (textView != null && this.uvD.Fmk() != null) {
            textView.setText(this.uvD.Fmk().HiB());
        }
        sU sUVar2 = this.uvD;
        com.bytedance.sdk.openadsdk.core.sef.TKC().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTVideoLandingPageLink2Activity.this.pfr = true;
                    if (TTVideoLandingPageLink2Activity.this.sdp != null) {
                        TTVideoLandingPageLink2Activity.this.sdp.sP();
                    }
                    TTVideoLandingPageLink2Activity.this.IOh.setVisibility(0);
                    if (TTVideoLandingPageLink2Activity.this.f20975xu != null) {
                        TTVideoLandingPageLink2Activity.this.f20975xu.setVisibility(0);
                    }
                    if (TTVideoLandingPageLink2Activity.this.Bml) {
                        return;
                    }
                    TTVideoLandingPageLink2Activity tTVideoLandingPageLink2Activity = TTVideoLandingPageLink2Activity.this;
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(tTVideoLandingPageLink2Activity.uvD, tTVideoLandingPageLink2Activity.fF, System.currentTimeMillis() - TTVideoLandingPageLink2Activity.this.Chv, false);
                } catch (Exception unused) {
                }
            }
        }, (sUVar2 == null || sUVar2.Fmk() == null) ? 10000L : this.uvD.Fmk().Sj() * 1000);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity, android.app.Activity
    protected void onDestroy() {
        sef();
        if (!this.pfr && this.Fm != null && this.Sj != null && this.sdp.getVisibility() == 8) {
            this.Fm.Sj(this.Sj);
        }
        super.onDestroy();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity
    @SuppressLint({"ClickableViewAccessibility"})
    public void uA() {
        super.uA();
        sU sUVar = this.uvD;
        if (sUVar != null) {
            sUVar.vS(true);
        }
        TextView textView = this.gY;
        if (textView != null) {
            textView.setText(sP());
            this.gY.setClickable(true);
            this.gY.setOnClickListener(this.f20970db);
            this.gY.setOnTouchListener(this.f20970db);
        }
    }
}
