package com.bytedance.sdk.component.adexpress.HiB;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.Sj.uP;
import com.bytedance.sdk.component.uA.vS;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class HiB {
    private static int Dq = 10;
    private static final byte[] HiB = new byte[0];
    private static volatile HiB uA = null;
    private static int vS = 10;
    private final AtomicBoolean Jcg = new AtomicBoolean(false);
    private List<vS> Sj = new ArrayList();
    private List<vS> sP = new ArrayList();
    private Map<Integer, TKC> TKC = new HashMap();
    private Map<Integer, EjP> EjP = new HashMap();

    private HiB() {
        com.bytedance.sdk.component.adexpress.Sj.Sj.TKC TKC = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC();
        if (TKC != null) {
            vS = TKC.TEQ();
            Dq = TKC.Ym();
        }
    }

    private void Jcg(vS vSVar) {
        try {
            vSVar.removeAllViews();
            vSVar.Jcg();
            vSVar.setWebChromeClient(null);
            vSVar.setWebViewClient(null);
            vSVar.setDownloadListener(null);
            vSVar.setJavaScriptEnabled(true);
            vSVar.setCacheMode(-1);
            vSVar.setSupportZoom(false);
            vSVar.setUseWideViewPort(true);
            vSVar.setJavaScriptCanOpenWindowsAutomatically(true);
            vSVar.setDomStorageEnabled(true);
            vSVar.setBuiltInZoomControls(false);
            vSVar.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
            vSVar.setLoadWithOverviewMode(false);
            vSVar.setDefaultTextEncodingName("UTF-8");
            vSVar.setDefaultFontSize(16);
        } catch (Throwable unused) {
        }
    }

    public static HiB Sj() {
        if (uA == null) {
            synchronized (HiB.class) {
                try {
                    if (uA == null) {
                        uA = new HiB();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return uA;
    }

    public int EjP() {
        return this.sP.size();
    }

    public void EjP(vS vSVar) {
        if (vSVar == null) {
            return;
        }
        if (this.Sj.size() >= vS) {
            try {
                Context context = vSVar.getContext();
                if (context instanceof MutableContextWrapper) {
                    ((MutableContextWrapper) context).setBaseContext(context.getApplicationContext());
                }
                vSVar.uvD();
                return;
            } catch (Throwable th2) {
                th2.getMessage();
                return;
            }
        }
        if (this.Sj.contains(vSVar)) {
            return;
        }
        try {
            Context context2 = vSVar.getContext();
            if (context2 instanceof MutableContextWrapper) {
                ((MutableContextWrapper) context2).setBaseContext(context2.getApplicationContext());
                vSVar.setRecycler(true);
                this.Sj.add(vSVar);
                TKC();
            }
        } catch (Throwable th3) {
            TKC();
            th3.getMessage();
        }
    }

    public boolean HiB(vS vSVar) {
        if (vSVar == null) {
            return false;
        }
        try {
            Context context = vSVar.getContext();
            if (context instanceof MutableContextWrapper) {
                ((MutableContextWrapper) context).setBaseContext(context.getApplicationContext());
            }
            vSVar.uvD();
            return true;
        } catch (Throwable th2) {
            th2.getMessage();
            return true;
        }
    }

    @Nullable
    public vS Sj(Context context, String str) {
        if (EjP() <= 0) {
            return null;
        }
        if (com.bytedance.sdk.component.adexpress.EjP.HiB.Sj(str) && EjP() <= 1) {
            EjP();
            return null;
        }
        vS vSVarRemove = this.sP.remove(0);
        if (vSVarRemove == null) {
            return null;
        }
        try {
            Context context2 = vSVarRemove.getContext();
            if (context2 instanceof MutableContextWrapper) {
                ((MutableContextWrapper) context2).setBaseContext(context.getApplicationContext());
                vSVarRemove.setRecycler(false);
                EjP();
            }
            return vSVarRemove;
        } catch (Throwable unused) {
            EjP();
            return null;
        }
    }

    public void Sj(int i11) {
        synchronized (HiB) {
            vS = i11;
        }
    }

    @SuppressLint({"JavascriptInterface"})
    public void Sj(WebView webView, uP uPVar, String str) {
        if (webView == null || uPVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        EjP ejP = this.EjP.get(Integer.valueOf(webView.hashCode()));
        if (ejP != null) {
            ejP.Sj(uPVar);
        } else {
            ejP = new EjP(uPVar);
            this.EjP.put(Integer.valueOf(webView.hashCode()), ejP);
        }
        webView.addJavascriptInterface(ejP, str);
    }

    public void Sj(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return;
        }
        EjP ejP = this.EjP.get(Integer.valueOf(webView.hashCode()));
        if (ejP != null) {
            ejP.Sj(null);
        }
        webView.removeJavascriptInterface(str);
    }

    public void Sj(vS vSVar) {
        if (vSVar == null) {
            return;
        }
        if (this.sP.size() >= Dq) {
            try {
                Context context = vSVar.getContext();
                if (context instanceof MutableContextWrapper) {
                    ((MutableContextWrapper) context).setBaseContext(context.getApplicationContext());
                }
                vSVar.uvD();
                return;
            } catch (Throwable th2) {
                th2.getMessage();
                return;
            }
        }
        if (this.sP.contains(vSVar)) {
            return;
        }
        try {
            Context context2 = vSVar.getContext();
            if (context2 instanceof MutableContextWrapper) {
                ((MutableContextWrapper) context2).setBaseContext(context2.getApplicationContext());
                vSVar.setRecycler(true);
                this.sP.add(vSVar);
                EjP();
            }
        } catch (Throwable th3) {
            EjP();
            th3.getMessage();
        }
    }

    @SuppressLint({"JavascriptInterface"})
    public void Sj(vS vSVar, sP sPVar) {
        if (vSVar == null || sPVar == null) {
            return;
        }
        TKC tkc = this.TKC.get(Integer.valueOf(vSVar.hashCode()));
        if (tkc != null) {
            tkc.Sj(sPVar);
        } else {
            tkc = new TKC(sPVar);
            this.TKC.put(Integer.valueOf(vSVar.hashCode()), tkc);
        }
        vSVar.Sj(tkc, "SDK_INJECT_GLOBAL");
    }

    public int TKC() {
        return this.Sj.size();
    }

    public void TKC(vS vSVar) {
        if (vSVar == null) {
            return;
        }
        Jcg(vSVar);
        vSVar.b_("SDK_INJECT_GLOBAL");
        vS(vSVar);
        EjP(vSVar);
    }

    @Nullable
    public vS sP(Context context, String str) {
        if (TKC() <= 0) {
            return null;
        }
        if (com.bytedance.sdk.component.adexpress.EjP.HiB.Sj(str) && TKC() <= 1) {
            TKC();
            return null;
        }
        vS vSVarRemove = this.Sj.remove(0);
        if (vSVarRemove == null) {
            return null;
        }
        try {
            Context context2 = vSVarRemove.getContext();
            if (context2 instanceof MutableContextWrapper) {
                ((MutableContextWrapper) context2).setBaseContext(context.getApplicationContext());
                vSVarRemove.setRecycler(false);
                TKC();
            }
            return vSVarRemove;
        } catch (Throwable unused) {
            TKC();
            return null;
        }
    }

    public void sP() {
        for (vS vSVar : this.Sj) {
            if (vSVar != null) {
                try {
                    Context context = vSVar.getContext();
                    if (context instanceof MutableContextWrapper) {
                        ((MutableContextWrapper) context).setBaseContext(context.getApplicationContext());
                    }
                    vSVar.uvD();
                } catch (Throwable th2) {
                    th2.getMessage();
                }
            }
        }
        this.Sj.clear();
        for (vS vSVar2 : this.sP) {
            if (vSVar2 != null) {
                try {
                    Context context2 = vSVar2.getContext();
                    if (context2 instanceof MutableContextWrapper) {
                        ((MutableContextWrapper) context2).setBaseContext(context2.getApplicationContext());
                    }
                    vSVar2.uvD();
                } catch (Throwable th3) {
                    th3.getMessage();
                }
            }
        }
        this.sP.clear();
    }

    public void sP(int i11) {
        synchronized (HiB) {
            Dq = i11;
        }
    }

    public void sP(vS vSVar) {
        if (vSVar == null) {
            return;
        }
        Jcg(vSVar);
        vSVar.b_("SDK_INJECT_GLOBAL");
        vS(vSVar);
        Sj(vSVar);
    }

    public void vS(vS vSVar) {
        if (vSVar == null) {
            return;
        }
        TKC tkc = this.TKC.get(Integer.valueOf(vSVar.hashCode()));
        if (tkc != null) {
            tkc.Sj(null);
        }
        vSVar.b_("SDK_INJECT_GLOBAL");
    }
}
