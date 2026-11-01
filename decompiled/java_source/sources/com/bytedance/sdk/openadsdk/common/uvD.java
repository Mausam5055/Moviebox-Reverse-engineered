package com.bytedance.sdk.openadsdk.common;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebBackForwardList;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class uvD {
    private com.bytedance.sdk.openadsdk.core.widget.Sj.vS.Sj Dq;
    private final String EjP;
    private final Context HiB;
    private ImageView Jcg;
    private final LinearLayout Sj;
    private final sU TKC;
    private final com.bytedance.sdk.component.uA.vS sP;
    private ImageView vS;

    public uvD(Context context, LinearLayout linearLayout, com.bytedance.sdk.component.uA.vS vSVar, sU sUVar, String str) {
        this.HiB = context;
        this.Sj = linearLayout;
        this.sP = vSVar;
        this.TKC = sUVar;
        this.EjP = str;
        TKC();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(String str) {
        WebBackForwardList webBackForwardListCopyBackForwardList;
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.sP.getWebView() != null && (webBackForwardListCopyBackForwardList = this.sP.getWebView().copyBackForwardList()) != null) {
                int currentIndex = webBackForwardListCopyBackForwardList.getCurrentIndex();
                String url = webBackForwardListCopyBackForwardList.getItemAtIndex(currentIndex).getUrl();
                if (TextUtils.isEmpty(url)) {
                    url = this.sP.getUrl();
                }
                String url2 = str.equals(ToolBar.BACKWARD) ? webBackForwardListCopyBackForwardList.getItemAtIndex(currentIndex - 1).getUrl() : "";
                int i11 = 1;
                if (str.equals(ToolBar.FORWARD)) {
                    url2 = webBackForwardListCopyBackForwardList.getItemAtIndex(currentIndex + 1).getUrl();
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("url", url);
                jSONObject2.putOpt("next_url", url2);
                if (webBackForwardListCopyBackForwardList.getCurrentIndex() != 0) {
                    i11 = 0;
                }
                jSONObject2.putOpt("first_page", Integer.valueOf(i11));
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            }
        } catch (Exception unused) {
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), this.TKC, this.EjP, str, jSONObject, (com.bytedance.sdk.openadsdk.EjP.Jcg) null, (com.bytedance.sdk.openadsdk.EjP.sP.Sj) null);
    }

    private void TKC() {
        this.vS = (ImageView) this.Sj.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.aZ);
        this.Jcg = (ImageView) this.Sj.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.HS);
        ImageView imageView = (ImageView) this.Sj.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.f21136tz);
        ImageView imageView2 = (ImageView) this.Sj.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.TFd);
        this.vS.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.uvD.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (uvD.this.sP == null || !uvD.this.sP.uA()) {
                    return;
                }
                if (uvD.this.Dq != null) {
                    uvD.this.Dq.Sj();
                }
                uvD.this.Sj(ToolBar.BACKWARD);
                uvD.this.sP.TEQ();
            }
        });
        this.Jcg.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.uvD.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (uvD.this.sP == null || !uvD.this.sP.Ym()) {
                    return;
                }
                uvD.this.Sj(ToolBar.FORWARD);
                uvD.this.sP.aa();
            }
        });
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.uvD.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (uvD.this.sP != null) {
                    uvD.this.sP(ToolBar.REFRESH);
                    uvD.this.sP.Dq();
                }
            }
        });
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.uvD.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (uvD.this.sP != null) {
                    uvD.this.sP("external_btn_click");
                    Intent intent = new Intent("android.intent.action.VIEW");
                    String url = uvD.this.sP.getUrl();
                    if (TextUtils.isEmpty(url)) {
                        return;
                    }
                    intent.setData(Uri.parse(url));
                    com.bytedance.sdk.component.utils.sP.Sj(uvD.this.HiB, intent, null);
                }
            }
        });
        this.Sj.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.uvD.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.vS.setClickable(false);
        this.Jcg.setClickable(false);
        ImageView imageView3 = this.vS;
        int color = Color.parseColor("#A8FFFFFF");
        PorterDuff.Mode mode = PorterDuff.Mode.ADD;
        imageView3.setColorFilter(color, mode);
        this.Jcg.setColorFilter(Color.parseColor("#A8FFFFFF"), mode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(String str) {
        WebBackForwardList webBackForwardListCopyBackForwardList;
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.sP.getWebView() != null && (webBackForwardListCopyBackForwardList = this.sP.getWebView().copyBackForwardList()) != null) {
                String url = webBackForwardListCopyBackForwardList.getItemAtIndex(webBackForwardListCopyBackForwardList.getCurrentIndex()).getUrl();
                if (TextUtils.isEmpty(url)) {
                    url = this.sP.getUrl();
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("url", url);
                jSONObject2.putOpt("first_page", Integer.valueOf(webBackForwardListCopyBackForwardList.getCurrentIndex() == 0 ? 1 : 0));
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            }
        } catch (Exception unused) {
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), this.TKC, this.EjP, str, jSONObject, (com.bytedance.sdk.openadsdk.EjP.Jcg) null, (com.bytedance.sdk.openadsdk.EjP.sP.Sj) null);
    }

    public void Sj() {
        if (this.Sj.getAlpha() == 0.0f) {
            ObjectAnimator.ofFloat(this.Sj, "alpha", 0.0f, 1.0f).setDuration(300L).start();
        }
    }

    public void Sj(WebView webView, com.bytedance.sdk.openadsdk.core.widget.Sj.vS.Sj sj2) {
        this.Dq = sj2;
        try {
            if (this.vS != null) {
                if (webView.canGoBack()) {
                    this.vS.setClickable(true);
                    this.vS.clearColorFilter();
                } else {
                    this.vS.setClickable(false);
                    this.vS.setColorFilter(Color.parseColor("#A8FFFFFF"), PorterDuff.Mode.ADD);
                }
            }
            if (this.Jcg != null) {
                if (webView.canGoForward()) {
                    this.Jcg.setClickable(true);
                    this.Jcg.clearColorFilter();
                } else {
                    this.Jcg.setClickable(false);
                    this.Jcg.setColorFilter(Color.parseColor("#A8FFFFFF"), PorterDuff.Mode.ADD);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void sP() {
        if (this.Sj.getAlpha() == 1.0f) {
            ObjectAnimator.ofFloat(this.Sj, "alpha", 1.0f, 0.0f).setDuration(300L).start();
        }
    }
}
