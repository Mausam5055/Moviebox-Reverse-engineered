package com.bytedance.sdk.openadsdk.core.Dq;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.alibaba.sdk.android.oss.common.OSSHeaders;
import com.bytedance.sdk.openadsdk.core.Yf;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class TEQ extends com.bytedance.sdk.openadsdk.core.widget.Sj.HiB {
    public ArrayList<Integer> Sj;
    private com.bytedance.sdk.component.adexpress.sP.Fmk TEQ;
    private final com.bytedance.sdk.openadsdk.core.model.sU sP;

    public TEQ(Context context, Yf yf2, com.bytedance.sdk.openadsdk.core.model.sU sUVar, com.bytedance.sdk.openadsdk.EjP.Ym ym2, com.bytedance.sdk.component.adexpress.sP.Fmk fmk) {
        super(context, yf2, sUVar.aZ(), ym2, false);
        this.Sj = new ArrayList<>();
        this.sP = sUVar;
        this.TEQ = fmk;
    }

    private String EjP() {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.sP;
        if (sUVar == null) {
            return null;
        }
        if (sUVar.xhi() != null) {
            return this.sP.xhi().Fmk();
        }
        if (this.sP.ndK() != null) {
            return "v3";
        }
        return null;
    }

    private WebResourceResponse HiB() {
        InputStream inputStreamOpenRawResource;
        int iUA = com.bytedance.sdk.openadsdk.core.uA.sP().uA();
        if (iUA == 0) {
            return null;
        }
        Resources resources = com.bytedance.sdk.openadsdk.core.dNu.Sj().getResources();
        if (resources != null) {
            try {
                inputStreamOpenRawResource = resources.openRawResource(iUA);
            } catch (Resources.NotFoundException e11) {
                com.bytedance.sdk.component.utils.sU.sP("ExpressClient", e11.toString());
                inputStreamOpenRawResource = null;
            }
        } else {
            inputStreamOpenRawResource = null;
        }
        if (inputStreamOpenRawResource != null) {
            return new WebResourceResponse(com.bytedance.sdk.component.adexpress.EjP.uA.Sj.IMAGE.Sj(), "UTF-8", inputStreamOpenRawResource);
        }
        return null;
    }

    private WebResourceResponse HiB(String str) {
        InputStream inputStreamSj;
        if (TextUtils.isEmpty(str) || (inputStreamSj = com.bytedance.sdk.openadsdk.core.EjP.Sj.Sj().Sj(str)) == null) {
            return null;
        }
        WebResourceResponse webResourceResponse = new WebResourceResponse("audio/*", "UTF-8", inputStreamSj);
        Sj(webResourceResponse);
        return webResourceResponse;
    }

    private WebResourceResponse Sj(String str, String str2) {
        WebResourceResponse webResourceResponse = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            InputStream inputStreamSj = com.bytedance.sdk.openadsdk.uA.EjP.Sj(str, str2);
            if (inputStreamSj == null) {
                return null;
            }
            WebResourceResponse webResourceResponse2 = new WebResourceResponse(com.bytedance.sdk.component.adexpress.EjP.uA.Sj.IMAGE.Sj(), "utf-8", inputStreamSj);
            try {
                Sj(webResourceResponse2);
                return webResourceResponse2;
            } catch (Throwable th2) {
                th = th2;
                webResourceResponse = webResourceResponse2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        com.bytedance.sdk.component.utils.sU.Sj("ExpressClient", "get image WebResourceResponse error", th);
        return webResourceResponse;
    }

    private com.bytedance.sdk.component.adexpress.Sj.sP.Sj Sj(WebView webView, String str) {
        com.bytedance.sdk.openadsdk.core.model.uvD uvd = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.equals("local://pag_open_icon_id") || str.equals(com.bytedance.sdk.openadsdk.core.Dq.Sj.sP.Sj)) {
            com.bytedance.sdk.component.adexpress.Sj.sP.Sj sj2 = new com.bytedance.sdk.component.adexpress.Sj.sP.Sj();
            sj2.Sj(5);
            sj2.Sj(HiB());
            return sj2;
        }
        com.bytedance.sdk.openadsdk.core.model.sU.Sj sjXhi = this.sP.xhi();
        if (sjXhi != null && !TextUtils.isEmpty(str) && str.equals(sjXhi.EjP())) {
            com.bytedance.sdk.component.adexpress.Sj.sP.Sj sj3 = new com.bytedance.sdk.component.adexpress.Sj.sP.Sj();
            sj3.Sj(5);
            WebResourceResponse webResourceResponseHiB = HiB(str);
            sj3.Sj(webResourceResponseHiB);
            com.bytedance.sdk.openadsdk.core.EjP.Sj.Sj().Sj(webResourceResponseHiB != null);
            return sj3;
        }
        com.bytedance.sdk.component.adexpress.EjP.uA.Sj Sj = com.bytedance.sdk.component.adexpress.EjP.uA.Sj(str);
        if (Sj != com.bytedance.sdk.component.adexpress.EjP.uA.Sj.IMAGE) {
            for (com.bytedance.sdk.openadsdk.core.model.uvD uvd2 : this.sP.Bml()) {
                if (!TextUtils.isEmpty(uvd2.Sj()) && !TextUtils.isEmpty(str)) {
                    String strSj = uvd2.Sj();
                    if (strSj.startsWith("https")) {
                        strSj = strSj.replaceFirst("https", "http");
                    }
                    if ((str.startsWith("https") ? str.replaceFirst("https", "http") : str).equals(strSj)) {
                        uvd = uvd2;
                        break;
                    }
                }
            }
        }
        if (Sj != com.bytedance.sdk.component.adexpress.EjP.uA.Sj.IMAGE && uvd == null) {
            return com.bytedance.sdk.component.adexpress.Sj.sP.sP.Sj(str, Sj, "", EjP());
        }
        com.bytedance.sdk.component.adexpress.Sj.sP.Sj sj4 = new com.bytedance.sdk.component.adexpress.Sj.sP.Sj();
        sj4.Sj(5);
        sj4.Sj(Sj(str, com.bytedance.sdk.openadsdk.core.Dq.Sj.sP.Sj(this.sP, str)));
        return sj4;
    }

    private void Sj(long j11, long j12, String str, int i11) {
        com.bytedance.sdk.openadsdk.EjP.Ym ym2 = this.vS;
        if (ym2 == null || ym2.sP() == null) {
            return;
        }
        com.bytedance.sdk.component.adexpress.EjP.uA.Sj Sj = com.bytedance.sdk.component.adexpress.EjP.uA.Sj(str);
        if (Sj == com.bytedance.sdk.component.adexpress.EjP.uA.Sj.HTML) {
            this.vS.sP().Sj(str, j11, j12, i11);
        } else if (Sj == com.bytedance.sdk.component.adexpress.EjP.uA.Sj.JS) {
            this.vS.sP().sP(str, j11, j12, i11);
        }
    }

    private void Sj(WebResourceResponse webResourceResponse) {
        if (webResourceResponse == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put(OSSHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, "*");
        webResourceResponse.setResponseHeaders(map);
    }

    public int Sj() {
        for (Integer num : this.Sj) {
            if (num.intValue() == 3 || num.intValue() == 2 || num.intValue() == -1) {
                return num.intValue();
            }
        }
        return TextUtils.isEmpty(EjP()) ? -1 : 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        this.Jcg = false;
        super.onPageFinished(webView, str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.Dq = false;
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
    @TargetApi(21)
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        try {
            return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj("ExpressClient", "shouldInterceptRequest error1", th2);
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            com.bytedance.sdk.component.adexpress.Sj.sP.Sj Sj = Sj(webView, str);
            Sj(jCurrentTimeMillis, System.currentTimeMillis(), str, (Sj == null || Sj.Sj() == null) ? 2 : 1);
            if (Sj != null && Sj.sP() != 5) {
                Sj.sP();
                this.Sj.add(Integer.valueOf(Sj.sP()));
            }
            if (Sj != null && Sj.Sj() != null) {
                return Sj.Sj();
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj("ExpressClient", "shouldInterceptRequest error2", th2);
        }
        return super.shouldInterceptRequest(webView, str);
    }
}
