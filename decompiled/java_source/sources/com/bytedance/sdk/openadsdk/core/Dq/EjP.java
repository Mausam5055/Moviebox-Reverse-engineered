package com.bytedance.sdk.openadsdk.core.Dq;

import android.annotation.SuppressLint;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class EjP {
    private static volatile EjP TKC;
    private static int sP;
    private final List<HiB> Sj = new ArrayList();

    public static EjP Sj() {
        if (TKC == null) {
            synchronized (EjP.class) {
                try {
                    if (TKC == null) {
                        TKC = new EjP();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return TKC;
    }

    public void Sj(HiB hiB) {
        if (hiB != null) {
            sP(hiB);
        }
    }

    public int TKC() {
        return this.Sj.size();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void TKC(HiB hiB) {
        if (hiB == null || hiB.getWebView() == null) {
            return;
        }
        if (hiB.getParent() != null) {
            ((ViewGroup) hiB.getParent()).removeView(hiB);
        }
        try {
            hiB.removeAllViews();
            hiB.Jcg();
            hiB.setWebChromeClient(null);
            hiB.setWebViewClient(null);
            hiB.setDownloadListener(null);
            hiB.setDefaultTextEncodingName("UTF-8");
            hiB.setAllowFileAccess(false);
            hiB.setJavaScriptEnabled(true);
            hiB.setCacheMode(-1);
            hiB.setDatabaseEnabled(true);
            hiB.setSupportZoom(false);
            hiB.getWebView().setLayerType(0, null);
            hiB.setBackgroundColor(0);
            hiB.getWebView().setHorizontalScrollBarEnabled(false);
            hiB.getWebView().setHorizontalScrollbarOverlay(false);
            hiB.getWebView().setVerticalScrollBarEnabled(false);
            hiB.getWebView().setVerticalScrollbarOverlay(false);
            com.bytedance.sdk.openadsdk.core.widget.Sj.TKC.Sj(hiB);
            hiB.sef();
            hiB.setMixedContentMode(0);
        } catch (Exception unused) {
        }
    }

    @Nullable
    public HiB sP() {
        HiB hiBRemove;
        if (TKC() > 0 && (hiBRemove = this.Sj.remove(0)) != null) {
            return hiBRemove;
        }
        return null;
    }

    public void sP(HiB hiB) {
        if (hiB != null) {
            if (this.Sj.size() >= sP) {
                hiB.uvD();
            } else {
                if (this.Sj.contains(hiB)) {
                    return;
                }
                TKC(hiB);
                this.Sj.add(hiB);
            }
        }
    }
}
