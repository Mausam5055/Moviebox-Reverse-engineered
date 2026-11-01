package com.bytedance.sdk.openadsdk.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.EjP.Ym;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.kF;
import com.bytedance.sdk.openadsdk.core.model.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: loaded from: classes2.dex */
public class TTCeilingLandingPageActivity extends TTBaseActivity {
    private String Dq;
    private String EjP;
    private String HiB;
    Sj Sj;
    private com.bytedance.sdk.openadsdk.common.EjP TEQ;
    private Yf TKC;
    private com.bytedance.sdk.component.uA.vS Ym;
    private sU sP;
    private Ym uA;
    private int vS;

    public interface Sj {
        void Sj();
    }

    private void Sj() {
        Yf yf2 = new Yf(this);
        this.TKC = yf2;
        yf2.sP(this.Ym).TKC(this.EjP).EjP(this.HiB).Sj(this.sP).sP(this.vS).Sj(this.sP.HpB()).HiB(this.sP.Lip()).Sj(this.Ym).sP("landingpage_split_ceiling");
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void Sj(Context context, FrameLayout frameLayout) {
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP;
        this.Ym = new com.bytedance.sdk.component.uA.vS(context);
        frameLayout.addView(this.Ym, new FrameLayout.LayoutParams(-1, -1));
        View viewSP = com.bytedance.sdk.openadsdk.core.widget.vS.sP(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
        layoutParams.topMargin = FPG.sP(context, 18.0f);
        layoutParams.rightMargin = FPG.sP(context, 18.0f);
        frameLayout.addView(viewSP, layoutParams);
        final int iJcg = this.sP.sef().Jcg();
        if (iJcg != 3) {
            ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(FPG.sP(context, 28.0f), FPG.sP(context, 28.0f));
            layoutParams2.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START;
            layoutParams2.topMargin = FPG.sP(context, 18.0f);
            layoutParams2.leftMargin = FPG.sP(context, 18.0f);
            int iSP = FPG.sP(context, 5.0f);
            ejP.setPadding(iSP, iSP, iSP, iSP);
            ejP.setScaleType(ImageView.ScaleType.FIT_XY);
            ejP.setBackground(com.bytedance.sdk.openadsdk.core.widget.EjP.Sj());
            ejP.setImageDrawable(ib.TKC(context, "tt_white_lefterbackicon_titlebar"));
            frameLayout.addView(ejP, layoutParams2);
        } else {
            ejP = null;
        }
        com.bytedance.sdk.openadsdk.utils.sU.Sj(this.Ym, this.Dq);
        final WebView webView = this.Ym.getWebView();
        viewSP.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTCeilingLandingPageActivity.this.finish();
            }
        });
        Ym ym2 = new Ym(this.sP, webView, true);
        this.uA = ym2;
        ym2.Sj("landingpage_split_ceiling");
        final com.bytedance.sdk.openadsdk.core.widget.Sj.vS.Sj sj2 = this.uA.Sj;
        if (ejP != null) {
            ejP.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    int i11 = iJcg;
                    if (i11 == 1) {
                        TTCeilingLandingPageActivity.this.finish();
                    } else if (i11 != 2) {
                        return;
                    }
                    WebView webView2 = webView;
                    if (webView2 == null || !webView2.canGoBack()) {
                        TTCeilingLandingPageActivity.this.finish();
                        return;
                    }
                    webView.goBack();
                    com.bytedance.sdk.openadsdk.core.widget.Sj.vS.Sj sj3 = sj2;
                    if (sj3 != null) {
                        sj3.Sj();
                    }
                }
            });
        }
        com.bytedance.sdk.openadsdk.common.EjP ejPSj = Mts.Sj(this.sP, this.Ym, this, "landingpage_split_ceiling");
        this.TEQ = ejPSj;
        if (ejPSj != null) {
            ejPSj.Sj("landingpage_split_ceiling");
            this.TEQ.Sj();
        }
        Mts.Sj(this.sP, this.Ym, true);
        this.Sj = new Sj() { // from class: com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity.3
            @Override // com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity.Sj
            public void Sj() {
                if (TTCeilingLandingPageActivity.this.sP.sef().Dq() == dNu.sP) {
                    TTCeilingLandingPageActivity.this.finish();
                }
            }
        };
        com.bytedance.sdk.openadsdk.core.widget.Sj.HiB hiB = new com.bytedance.sdk.openadsdk.core.widget.Sj.HiB(this, this.TKC, this.EjP, this.TEQ, this.uA, true, true, this.Sj) { // from class: com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity.4
            @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                super.onPageFinished(webView2, str);
            }
        };
        hiB.Sj(this.sP);
        com.bytedance.sdk.openadsdk.core.widget.Sj.EjP ejP2 = new com.bytedance.sdk.openadsdk.core.widget.Sj.EjP(this.TKC, this.uA, this.TEQ) { // from class: com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity.5
            @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.EjP, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView2, int i11) {
                super.onProgressChanged(webView2, i11);
            }
        };
        com.bytedance.sdk.component.uA.vS vSVar = this.Ym;
        if (vSVar != null) {
            vSVar.setWebViewClient(hiB);
            this.Ym.setWebChromeClient(ejP2);
        }
        if (webView != null) {
            webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity.6
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (TTCeilingLandingPageActivity.this.uA == null) {
                        return false;
                    }
                    TTCeilingLandingPageActivity.this.uA.Sj(motionEvent);
                    return false;
                }
            });
            webView.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity.7
                @Override // android.view.View.OnScrollChangeListener
                public void onScrollChange(View view, int i11, int i12, int i13, int i14) {
                    if (TTCeilingLandingPageActivity.this.uA != null) {
                        TTCeilingLandingPageActivity.this.uA.sP(i12);
                    }
                }
            });
        }
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (!sef.HiB()) {
            finish();
            return;
        }
        Intent intent = getIntent();
        this.Dq = intent.getStringExtra("second_url");
        this.vS = intent.getIntExtra(EventConstants.KEY_SOURCE, -1);
        this.sP = kF.Sj().sP();
        kF.Sj().vS();
        sU sUVar = this.sP;
        if (sUVar == null) {
            finish();
            return;
        }
        this.EjP = sUVar.aZ();
        this.HiB = this.sP.mZN();
        this.vS = this.sP.xD().getDurationSlotType() != 7 ? 5 : 7;
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.HiB.TKC(this);
        Sj(this, tkc);
        setContentView(tkc);
        Sj();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        Ym ym2 = this.uA;
        if (ym2 != null) {
            ym2.Dq();
        }
    }
}
