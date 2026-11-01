package com.bytedance.sdk.openadsdk.core.widget.Sj;

import android.content.MutableContextWrapper;
import android.net.Uri;
import android.os.MessageQueue;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.utils.TzV;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class sP implements Sj {
    private final MessageQueue EjP;
    private final boolean HiB;
    Yf Sj;
    private final AtomicInteger TKC;
    private com.bytedance.sdk.component.uA.vS sP;

    public sP(int i11, boolean z10, MessageQueue messageQueue) {
        this.TKC = new AtomicInteger(i11);
        this.HiB = z10;
        this.EjP = messageQueue;
    }

    private void Sj(com.bytedance.sdk.component.uA.vS vSVar) {
        if (vSVar == null || vSVar.getWebView() == null) {
            return;
        }
        try {
            TKC.Sj(dNu.Sj()).Sj(false).Sj(vSVar.getWebView());
            vSVar.setVerticalScrollBarEnabled(false);
            vSVar.setHorizontalScrollBarEnabled(false);
            TKC.Sj(vSVar);
            vSVar.sef();
            vSVar.setUserAgentString(TzV.Sj(vSVar.getWebView(), BuildConfig.VERSION_CODE));
            vSVar.setMixedContentMode(0);
            vSVar.setJavaScriptEnabled(true);
            vSVar.setJavaScriptCanOpenWindowsAutomatically(true);
            vSVar.setDomStorageEnabled(true);
            vSVar.setDatabaseEnabled(true);
            vSVar.setCacheMode(-1);
            vSVar.setAllowFileAccess(false);
            vSVar.setSupportZoom(true);
            vSVar.setBuiltInZoomControls(true);
            vSVar.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
            vSVar.setUseWideViewPort(true);
        } catch (Throwable th2) {
            sU.sP("WebViewPool", th2.toString());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.Sj
    public void Sj() {
        MessageQueue messageQueue;
        if (this.HiB) {
            com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().sP(this.sP);
        } else {
            com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().TKC(this.sP);
        }
        try {
            this.TKC.get();
            this.TKC.decrementAndGet();
            if (this.TKC.get() <= 0 || (messageQueue = this.EjP) == null) {
                return;
            }
            messageQueue.addIdleHandler(new MessageQueue.IdleHandler() { // from class: com.bytedance.sdk.openadsdk.core.widget.Sj.sP.2
                @Override // android.os.MessageQueue.IdleHandler
                public boolean queueIdle() {
                    new sP(sP.this.TKC.get(), sP.this.HiB, sP.this.EjP).sP();
                    return false;
                }
            });
        } catch (Exception e11) {
            e11.getMessage();
        }
    }

    public void sP() {
        if (this.TKC.get() <= 0) {
            return;
        }
        Objects.toString(this.TKC);
        String strEjP = com.bytedance.sdk.component.adexpress.Sj.sP.sP.EjP(null);
        if (this.HiB) {
            String strEjP2 = com.bytedance.sdk.component.adexpress.Sj.sP.sP.EjP("v3");
            if (strEjP != null && strEjP.equals(strEjP2)) {
                return;
            } else {
                strEjP = strEjP2;
            }
        }
        if (TextUtils.isEmpty(strEjP)) {
            return;
        }
        try {
            com.bytedance.sdk.component.uA.vS vSVar = new com.bytedance.sdk.component.uA.vS(new MutableContextWrapper(dNu.Sj()));
            this.sP = vSVar;
            if (vSVar.getWebView() == null) {
                return;
            }
            this.sP.setWebViewClient(new WebViewClient() { // from class: com.bytedance.sdk.openadsdk.core.widget.Sj.sP.1
                @Override // android.webkit.WebViewClient
                public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
                    return true;
                }
            });
            Sj(this.sP);
            Uri uriBuild = Uri.parse(strEjP).buildUpon().appendQueryParameter("isPreLoad", "1").build();
            Yf yf2 = new Yf(this.sP.getContext());
            this.Sj = yf2;
            yf2.sP(this.sP).Sj(this).Sj(this.sP);
            com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().Sj(this.sP, this.Sj);
            this.sP.a_(uriBuild.toString());
        } catch (Exception unused) {
        }
    }
}
