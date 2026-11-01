package com.bytedance.sdk.openadsdk.core.widget.Sj;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.EjP.Ym;
import com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.model.TEQ;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.dx;
import com.cloud.tmc.ad.Constants;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Stack;
import org.json.JSONObject;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public class HiB extends com.bytedance.sdk.component.uA.vS.Sj {
    private static final HashSet<String> sU;
    protected boolean Dq;
    protected final Context EjP;
    private com.bytedance.sdk.openadsdk.common.EjP Fmk;
    protected final String HiB;
    protected boolean Jcg;
    private sU RiZ;
    private final boolean Sj;
    private TEQ TEQ;
    protected final Yf TKC;
    private JSONObject TzV;
    private Map<String, Object> Ym;
    private final Stack<String> Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f21104aa;
    private TTCeilingLandingPageActivity.Sj dNu;
    private String sP;
    private String sef;
    protected boolean uA;
    private boolean uvD;
    protected Ym vS;

    static {
        HashSet<String> hashSet = new HashSet<>();
        sU = hashSet;
        hashSet.add("png");
        hashSet.add("ico");
        hashSet.add("jpg");
        hashSet.add("gif");
        hashSet.add("svg");
        hashSet.add("jpeg");
    }

    public HiB(Context context, Yf yf2, String str, Ym ym2, boolean z10) {
        this.Jcg = true;
        this.Dq = true;
        this.uA = false;
        this.EjP = context;
        this.TKC = yf2;
        this.HiB = str;
        this.vS = ym2;
        this.Sj = z10;
        this.Zq = new Stack<>();
    }

    public HiB(Context context, Yf yf2, String str, com.bytedance.sdk.openadsdk.common.EjP ejP, Ym ym2, boolean z10) {
        this(context, yf2, str, ym2, z10);
        this.Fmk = ejP;
    }

    public HiB(Context context, Yf yf2, String str, com.bytedance.sdk.openadsdk.common.EjP ejP, Ym ym2, boolean z10, boolean z11, TTCeilingLandingPageActivity.Sj sj2) {
        this(context, yf2, str, ejP, ym2, z10);
        this.uvD = z11;
        this.dNu = sj2;
    }

    public static String EjP(String str) {
        int iLastIndexOf;
        String strSubstring;
        if (str == null || (iLastIndexOf = str.lastIndexOf(46)) < 0 || iLastIndexOf == str.length() - 1 || (strSubstring = str.substring(iLastIndexOf)) == null || !sU.contains(strSubstring.toLowerCase(Locale.getDefault()))) {
            return null;
        }
        return "image/".concat(strSubstring);
    }

    private boolean HiB(String str) {
        if (TzV.Dq(this.RiZ)) {
            return TextUtils.equals(this.RiZ.ron(), str);
        }
        return false;
    }

    private void Sj(String str, String str2) {
        if ((HiB(str) || "market".equals(str)) && ((this.TEQ != null || this.TzV != null) && sP(str2))) {
            TKC();
        }
        this.TEQ = null;
        this.TzV = null;
    }

    private boolean Sj(WebView webView, String str) {
        if (!Mts.EjP(this.RiZ) || this.RiZ.Zq() == null || webView == null) {
            return false;
        }
        int iSj = this.RiZ.Zq().Sj();
        int size = this.Zq.size();
        if (this.uvD) {
            size++;
        }
        if (size + 1 != iSj) {
            return false;
        }
        dx.Sj(this.EjP, str, this.RiZ, com.bytedance.sdk.openadsdk.EjP.sP.Sj.EjP);
        TTCeilingLandingPageActivity.Sj sj2 = this.dNu;
        if (sj2 != null) {
            sj2.Sj();
        }
        return true;
    }

    public void Sj(TEQ teq) {
        this.TEQ = teq;
    }

    public void Sj(sU sUVar) {
        this.RiZ = sUVar;
    }

    public void Sj(String str) {
        this.sP = str;
    }

    public void Sj(Map<String, Object> map) {
        this.Ym = map;
    }

    public void Sj(JSONObject jSONObject) {
        this.TzV = jSONObject;
    }

    public void TKC() {
        if (TextUtils.isEmpty(this.sP) || !TzV.Jcg(this.RiZ) || this.f21104aa) {
            return;
        }
        TEQ teq = this.TEQ;
        if (teq != null) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", this.RiZ, teq, this.sP, true, this.Ym, 1);
            this.f21104aa = true;
            return;
        }
        JSONObject jSONObject = this.TzV;
        if (jSONObject != null) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.RiZ, this.sP, "click", jSONObject);
            this.f21104aa = true;
        }
    }

    public boolean TKC(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Uri uri = Uri.parse(str);
            if (Constants.GP_DEEPLINK.equals(uri.getHost())) {
                if (TzV.Dq(this.RiZ) && this.TzV == null && this.TEQ == null) {
                    return true;
                }
                Intent intent = new Intent("android.intent.action.VIEW");
                if (!(this.EjP instanceof Activity)) {
                    intent.addFlags(ASTNode.DEOP);
                }
                intent.setData(uri);
                intent.setPackage("com.android.vending");
                this.EjP.startActivity(intent);
                TKC();
                this.TzV = null;
                this.TEQ = null;
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        Ym ym2 = this.vS;
        if (ym2 != null) {
            ym2.Sj(webView, str, this.Sj);
        }
        com.bytedance.sdk.openadsdk.common.EjP ejP = this.Fmk;
        if (ejP != null) {
            ejP.sP(webView, str, this.Sj);
        }
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        sU sUVar;
        super.onPageStarted(webView, str, bitmap);
        sU sUVar2 = this.RiZ;
        int iSj = (sUVar2 != null && sUVar2.IOh() && com.bytedance.sdk.openadsdk.dx.Sj.Sj("opt_web_index", false)) ? Mts.Sj(webView) : -1;
        Ym ym2 = this.vS;
        if (ym2 != null) {
            ym2.Sj(webView, str, bitmap, this.Sj, iSj);
        }
        com.bytedance.sdk.openadsdk.common.EjP ejP = this.Fmk;
        if (ejP != null) {
            ejP.TKC(webView, str, this.Sj);
        }
        if (this.Sj && (sUVar = this.RiZ) != null && sUVar.IOh() && this.RiZ.Zq().Sj() >= 2) {
            if (!TextUtils.isEmpty(str) && !str.equals(this.sef)) {
                if (this.Zq.contains(str)) {
                    while (!str.equals(this.Zq.peek())) {
                        this.Zq.pop();
                    }
                } else {
                    this.Zq.push(str);
                }
            }
            this.sef = str;
        }
        if (!this.Dq || this.uA) {
            return;
        }
        this.uA = true;
        TKC.Sj(this.EjP).Sj(true).sP(webView.getSettings().getBuiltInZoomControls()).Sj(webView);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i11, String str, String str2) {
        super.onReceivedError(webView, i11, str, str2);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(23)
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (this.vS == null || webResourceError == null) {
            return;
        }
        Uri url = webResourceRequest.getUrl();
        String string = url != null ? url.toString() : "";
        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
        String str = requestHeaders.containsKey("accept") ? requestHeaders.get("accept") : "";
        this.vS.Sj(webView, webResourceError.getErrorCode(), String.valueOf(webResourceError.getDescription()), string, str, webResourceRequest.isForMainFrame());
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(21)
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (this.vS == null || webResourceResponse == null) {
            return;
        }
        Uri url = webResourceRequest.getUrl();
        String string = url != null ? url.toString() : "";
        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
        String str = requestHeaders.containsKey("accept") ? requestHeaders.get("accept") : "";
        this.vS.Sj(webView, webResourceResponse.getStatusCode(), String.valueOf(webResourceResponse.getReasonPhrase()), string, str, webResourceRequest.isForMainFrame());
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslErrorHandler != null) {
            try {
                sslErrorHandler.cancel();
            } catch (Throwable unused) {
            }
        }
        if (this.vS != null) {
            int primaryError = 0;
            String strConcat = "SslError: unknown";
            String url = null;
            if (sslError != null) {
                try {
                    primaryError = sslError.getPrimaryError();
                    strConcat = "SslError: ".concat(String.valueOf(sslError));
                    url = sslError.getUrl();
                } catch (Throwable unused2) {
                }
            }
            String str = url;
            this.vS.Sj(webView, primaryError, strConcat, str, EjP(str), true);
        }
    }

    @Override // com.bytedance.sdk.component.uA.vS.Sj, android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        try {
            com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().sP();
        } catch (Exception unused) {
        }
        return super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    public Ym sP() {
        return this.vS;
    }

    public boolean sP(String str) {
        String strTKC;
        String strSj;
        if (this.EjP == null) {
            return false;
        }
        sU sUVar = this.RiZ;
        if (sUVar == null || sUVar.tz() == null) {
            strTKC = "";
            strSj = "";
        } else {
            strTKC = this.RiZ.tz().TKC();
            strSj = this.RiZ.tz().Sj();
        }
        if (!com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.TKC.Sj()) {
            return com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Sj.Sj(str, this.EjP, this.sP, this.RiZ, (Map<String, Object>) null) || com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Sj.Sj(this.RiZ, strTKC, this.EjP, this.sP, (Map<String, Object>) null) || com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.EjP.Sj(this.EjP, strSj, strTKC, this.sP, this.RiZ);
        }
        Context context = this.EjP;
        sU sUVar2 = this.RiZ;
        return com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.TKC.Sj(context, str, sUVar2, Mts.sP(sUVar2), null, true) || com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.HiB.Sj(this.RiZ, strTKC, this.EjP, this.sP, (Map<String, Object>) null) || com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.HiB.Sj(this.EjP, strSj, strTKC, this.sP, this.RiZ);
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        Ym ym2 = this.vS;
        if (ym2 != null) {
            ym2.sP(webView, str, this.Sj);
        }
        com.bytedance.sdk.openadsdk.common.EjP ejP = this.Fmk;
        if (ejP != null) {
            ejP.Sj(webView, str);
        }
        return super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Ym ym2 = this.vS;
        if (ym2 != null) {
            ym2.Sj(str, this.Sj);
        }
        com.bytedance.sdk.openadsdk.common.EjP ejP = this.Fmk;
        if (ejP != null) {
            ejP.Sj(webView, str, this.Sj);
        }
        if (Sj(webView, str)) {
            return true;
        }
        sU sUVar = this.RiZ;
        if (sUVar != null && sUVar.Jcg() == 1 && ((com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.HiB.Sj(str, this.RiZ) || com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.HiB.Sj(this.RiZ, str)) && com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.HiB.sP(this.RiZ, this.EjP, true))) {
            return true;
        }
        try {
            Uri uri = Uri.parse(str);
            String lowerCase = uri.getScheme().toLowerCase();
            if ("bytedance".equals(lowerCase)) {
                com.bytedance.sdk.openadsdk.utils.TzV.Sj(uri, this.TKC);
                return true;
            }
            if (TKC(str)) {
                return true;
            }
            if (!com.bytedance.sdk.component.utils.TzV.Sj(str)) {
                if (TzV.Dq(this.RiZ)) {
                    Sj(lowerCase, str);
                    return true;
                }
                try {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(uri);
                    intent.addFlags(ASTNode.DEOP);
                    com.bytedance.sdk.component.utils.sP.Sj(this.EjP, intent, null);
                } catch (Throwable unused) {
                }
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, str);
        } catch (Throwable unused2) {
            Yf yf2 = this.TKC;
            if (yf2 != null && yf2.HiB()) {
                return true;
            }
        }
    }
}
