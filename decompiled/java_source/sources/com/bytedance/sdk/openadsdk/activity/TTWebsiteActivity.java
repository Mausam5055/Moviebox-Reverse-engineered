package com.bytedance.sdk.openadsdk.activity;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.TzV;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.common.dNu;
import com.bytedance.sdk.openadsdk.core.HiB.Dq;
import com.bytedance.sdk.openadsdk.core.HiB.Jcg;
import com.bytedance.sdk.openadsdk.core.JcM;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.TEQ;
import com.bytedance.sdk.openadsdk.utils.Zq;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Objects;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public class TTWebsiteActivity extends TTBaseActivity {
    private String Sj = null;
    private WebView TKC;
    private dNu sP;

    public static void Sj(Context context, sU sUVar, String str) {
        if (context == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), sUVar, str, "open_policy");
        if (TextUtils.isEmpty(sUVar.fAj().TKC())) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) TTWebsiteActivity.class);
        intent.putExtra("_extra_meta", sUVar.dLt().toString());
        intent.putExtra("_extra_glo_d", sUVar.IPx());
        intent.putExtra("_privacy_url", sUVar.fAj().TKC());
        intent.putExtra("_privacy_title", sUVar.fAj().EjP());
        com.bytedance.sdk.component.utils.sP.Sj(context, intent, null);
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        com.bytedance.sdk.openadsdk.core.dNu.sP(getApplicationContext());
        if (!sef.HiB()) {
            finish();
            return;
        }
        final String stringExtra = getIntent().getStringExtra("_extra_meta");
        String stringExtra2 = getIntent().getStringExtra("_extra_glo_d");
        String stringExtra3 = getIntent().getStringExtra("_privacy_url");
        String stringExtra4 = getIntent().getStringExtra("_privacy_title");
        if (TextUtils.isEmpty(stringExtra3)) {
            finish();
            return;
        }
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(this);
        if (Build.VERSION.SDK_INT >= 35) {
            hiB.setFitsSystemWindows(true);
        }
        hiB.setBackgroundColor(-1);
        hiB.setId(520093726);
        hiB.setOrientation(1);
        hiB.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        try {
            setContentView(hiB);
            int iSP = FPG.sP(this, 5.0f);
            int iSP2 = FPG.sP(this, 8.0f);
            int iSP3 = FPG.sP(this, 10.0f);
            int iSP4 = FPG.sP(this, 12.0f);
            int iSP5 = FPG.sP(this, 14.0f);
            int iSP6 = FPG.sP(this, 20.0f);
            int iSP7 = FPG.sP(this, 24.0f);
            int iSP8 = FPG.sP(this, 40.0f);
            int iSP9 = FPG.sP(this, 44.0f);
            int iSP10 = FPG.sP(this, 191.0f);
            Jcg jcg = new Jcg(this);
            jcg.setGravity(15);
            jcg.setLayoutParams(new LinearLayout.LayoutParams(-1, iSP9));
            com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(this);
            ejP.setId(520093720);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iSP8, iSP9);
            layoutParams.setMarginStart(iSP2);
            ejP.setLayoutParams(layoutParams);
            ejP.setClickable(true);
            ejP.setFocusable(true);
            ejP.setPadding(iSP5, iSP4, iSP5, iSP4);
            ejP.setImageDrawable(ib.TKC(this, "tt_ad_arrow_backward"));
            final com.bytedance.sdk.openadsdk.core.HiB.EjP ejP2 = new com.bytedance.sdk.openadsdk.core.HiB.EjP(this);
            ejP2.setId(520093716);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iSP8, iSP9);
            layoutParams2.addRule(17, 520093720);
            ejP2.setLayoutParams(layoutParams2);
            ejP2.setClickable(true);
            ejP2.setFocusable(true);
            ejP2.setPadding(iSP4, iSP5, iSP4, iSP5);
            ejP2.setImageDrawable(ib.TKC(this, "tt_ad_xmark"));
            Dq dq2 = new Dq(this);
            dq2.setId(Zq.nru);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(iSP10, iSP7);
            layoutParams3.setMarginStart(iSP);
            layoutParams3.addRule(15);
            layoutParams3.addRule(16, 520093741);
            layoutParams3.addRule(17, 520093716);
            dq2.setLayoutParams(layoutParams3);
            dq2.setEllipsize(TextUtils.TruncateAt.MARQUEE);
            dq2.setGravity(17);
            dq2.setSingleLine(true);
            dq2.setTextColor(Color.parseColor("#222222"));
            dq2.setTextSize(17.0f);
            com.bytedance.sdk.openadsdk.core.HiB.EjP ejP3 = new com.bytedance.sdk.openadsdk.core.HiB.EjP(this);
            ejP3.setId(520093741);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(iSP8, iSP9);
            layoutParams4.addRule(16, 520093742);
            ejP3.setLayoutParams(layoutParams4);
            ejP3.setPadding(iSP3, iSP4, iSP3, iSP4);
            ejP3.setImageDrawable(ib.TKC(this, "tt_ad_link"));
            com.bytedance.sdk.openadsdk.core.HiB.EjP ejP4 = new com.bytedance.sdk.openadsdk.core.HiB.EjP(this);
            ejP4.setId(520093742);
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(iSP8, iSP9);
            layoutParams5.addRule(21);
            layoutParams5.setMarginEnd(iSP2);
            ejP4.setLayoutParams(layoutParams5);
            ejP4.setPadding(iSP4, iSP6, iSP4, iSP6);
            ejP4.setImageDrawable(ib.TKC(this, "tt_ad_threedots"));
            final com.bytedance.sdk.openadsdk.core.HiB.vS vSVar = new com.bytedance.sdk.openadsdk.core.HiB.vS(this, null, R.style.Widget.ProgressBar.Horizontal);
            vSVar.setId(520093743);
            RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, FPG.sP(this, 2.0f));
            layoutParams6.addRule(12);
            vSVar.setLayoutParams(layoutParams6);
            vSVar.setProgress(1);
            vSVar.setProgressDrawable(TEQ.Sj(this, "tt_privacy_progress_style"));
            View view = new View(this);
            RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, FPG.sP(this, 1.0f));
            layoutParams7.addRule(12);
            view.setLayoutParams(layoutParams7);
            jcg.addView(ejP);
            jcg.addView(ejP2);
            jcg.addView(dq2);
            jcg.addView(ejP3);
            jcg.addView(ejP4);
            jcg.addView(vSVar);
            jcg.addView(view);
            hiB.addView(jcg);
            try {
                WebView webView = new WebView(getApplicationContext());
                this.TKC = webView;
                webView.setBackgroundColor(-1);
                hiB.addView(this.TKC, new ViewGroup.LayoutParams(-1, -1));
                ejP.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (TTWebsiteActivity.this.TKC.canGoBack()) {
                            TTWebsiteActivity.this.TKC.goBack();
                        } else {
                            TTWebsiteActivity.this.finish();
                        }
                    }
                });
                ejP2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        TTWebsiteActivity.this.finish();
                    }
                });
                ejP2.setVisibility(4);
                ejP2.setClickable(false);
                if (!TextUtils.isEmpty(stringExtra4)) {
                    dq2.setText(stringExtra4);
                }
                ejP3.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        Intent intent = new Intent("android.intent.action.VIEW");
                        String url = TTWebsiteActivity.this.TKC.getUrl();
                        if (TextUtils.isEmpty(url)) {
                            return;
                        }
                        intent.setData(Uri.parse(url));
                        com.bytedance.sdk.component.utils.sP.Sj(TTWebsiteActivity.this, intent, null);
                    }
                });
                ejP4.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (TTWebsiteActivity.this.sP == null) {
                            TTWebsiteActivity.this.sP = new dNu(TTWebsiteActivity.this);
                            TTWebsiteActivity.this.sP.Sj(stringExtra);
                            TTWebsiteActivity.this.sP.setCanceledOnTouchOutside(false);
                        }
                        TTWebsiteActivity.this.sP.show();
                    }
                });
                this.Sj = stringExtra3;
                if (!TextUtils.isEmpty(stringExtra2)) {
                    String strEncode = URLEncoder.encode(stringExtra2);
                    if (this.Sj.contains(UrlUtils.QUESTION_MARK)) {
                        this.Sj += "&gdid_encrypted=" + strEncode;
                    } else {
                        this.Sj += "?gdid_encrypted=" + strEncode;
                    }
                }
                if (this.Sj == null) {
                    finish();
                    return;
                }
                WebSettings settings = this.TKC.getSettings();
                settings.setMixedContentMode(0);
                try {
                    settings.setJavaScriptEnabled(true);
                    settings.setDomStorageEnabled(true);
                    settings.setSavePassword(false);
                    settings.setAllowFileAccess(false);
                } catch (Throwable unused) {
                }
                HashMap map = new HashMap();
                map.put("Referer", TTAdConstant.REQUEST_HEAD_REFERER);
                try {
                    this.TKC.loadUrl(this.Sj, map);
                } catch (Throwable unused2) {
                    this.TKC.loadUrl(this.Sj);
                }
                this.TKC.setWebChromeClient(new WebChromeClient() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.5
                    @Override // android.webkit.WebChromeClient
                    public void onProgressChanged(WebView webView2, int i11) {
                        super.onProgressChanged(webView2, i11);
                        if (vSVar == null || TTWebsiteActivity.this.isFinishing()) {
                            return;
                        }
                        if (i11 != 100) {
                            vSVar.setVisibility(0);
                            vSVar.setProgress(i11);
                            return;
                        }
                        vSVar.setVisibility(8);
                        if (webView2.canGoBack()) {
                            ejP2.setVisibility(0);
                            ejP2.setClickable(true);
                        } else {
                            ejP2.setVisibility(4);
                            ejP2.setClickable(false);
                        }
                    }
                });
                this.TKC.setWebViewClient(new com.bytedance.sdk.component.uA.vS.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.6
                    @Override // android.webkit.WebViewClient
                    public void onPageFinished(WebView webView2, String str) {
                        super.onPageFinished(webView2, str);
                    }

                    @Override // android.webkit.WebViewClient
                    public void onReceivedError(WebView webView2, int i11, String str, String str2) {
                        super.onReceivedError(webView2, i11, str, str2);
                    }

                    @Override // android.webkit.WebViewClient
                    public void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                        super.onReceivedError(webView2, webResourceRequest, webResourceError);
                        webResourceError.getErrorCode();
                    }

                    @Override // android.webkit.WebViewClient
                    public void onReceivedHttpError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                        super.onReceivedHttpError(webView2, webResourceRequest, webResourceResponse);
                        Objects.toString(webResourceResponse);
                    }

                    @Override // android.webkit.WebViewClient
                    public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                        try {
                            Uri uri = Uri.parse(str);
                            if (!TzV.Sj(str)) {
                                try {
                                    Intent intent = new Intent("android.intent.action.VIEW");
                                    intent.setData(uri);
                                    intent.addFlags(ASTNode.DEOP);
                                    com.bytedance.sdk.component.utils.sP.Sj(TTWebsiteActivity.this, intent, null);
                                    return true;
                                } catch (Throwable unused3) {
                                    return true;
                                }
                            }
                        } catch (Throwable unused4) {
                        }
                        return super.shouldOverrideUrlLoading(webView2, str);
                    }
                });
                com.bytedance.sdk.openadsdk.core.widget.Sj.TKC.sP(this.TKC);
            } catch (Exception e11) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.TTWebsiteActivity", "onCreate: ", e11);
                finish();
            }
        } catch (Throwable unused3) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        JcM.Sj(this.TKC);
        super.onDestroy();
    }
}
