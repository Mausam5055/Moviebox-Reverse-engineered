package com.bytedance.sdk.component.uA;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class HiB extends WebView {
    private boolean EjP;
    private boolean HiB;
    public long Sj;
    private boolean TKC;
    private final HashSet<String> sP;
    private TKC vS;

    public HiB(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.sP = new HashSet<>();
        this.Sj = System.currentTimeMillis();
        Sj();
    }

    public HiB(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.sP = new HashSet<>();
        this.Sj = System.currentTimeMillis();
        Sj();
    }

    private void Sj() {
        WebSettings settings = getSettings();
        settings.setSupportZoom(false);
        settings.setDisplayZoomControls(false);
        settings.setBuiltInZoomControls(false);
        settings.setSupportMultipleWindows(false);
        settings.setAllowFileAccess(false);
        settings.setSavePassword(false);
        setWebViewClient(new vS.Sj());
    }

    private void sP() {
        if (this.TKC) {
            return;
        }
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this);
        }
        setOnClickListener(null);
        setOnTouchListener(null);
        Iterator<String> it = this.sP.iterator();
        while (it.hasNext()) {
            super.removeJavascriptInterface(it.next());
        }
    }

    @Override // android.webkit.WebView
    public void addJavascriptInterface(Object obj, String str) {
        toString();
        if (this.TKC || this.HiB) {
            return;
        }
        super.addJavascriptInterface(obj, str);
        this.sP.add(str);
    }

    @Override // android.webkit.WebView
    public void clearCache(boolean z10) {
        if (this.TKC || this.HiB) {
            return;
        }
        super.clearCache(z10);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        toString();
        if (this.TKC) {
            return;
        }
        this.TKC = true;
        sP();
        super.destroy();
    }

    @Override // android.webkit.WebView
    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        if (!this.TKC && !this.HiB) {
            super.evaluateJavascript(str, valueCallback);
        } else if (valueCallback != null) {
            valueCallback.onReceiveValue("");
        }
    }

    @Override // android.webkit.WebView
    public void goBack() {
        if (this.TKC || this.HiB) {
            return;
        }
        super.goBack();
    }

    @Override // android.webkit.WebView
    public void goBackOrForward(int i11) {
        if (this.TKC || this.HiB) {
            return;
        }
        super.goBackOrForward(i11);
    }

    @Override // android.webkit.WebView
    public void goForward() {
        if (this.TKC || this.HiB) {
            return;
        }
        super.goForward();
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (this.TKC || this.HiB) {
            return;
        }
        super.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        if (this.TKC || this.HiB) {
            return;
        }
        try {
            super.loadUrl(str);
        } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError unused) {
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str, Map<String, String> map) {
        if (this.TKC || this.HiB) {
            return;
        }
        try {
            super.loadUrl(str, map);
        } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError unused) {
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        toString();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        toString();
        if (this.EjP) {
            destroy();
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.TKC || this.HiB) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        if (this.TKC || this.HiB) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(i11, i12);
        }
    }

    @Override // android.webkit.WebView
    public void onPause() {
        if (this.TKC || this.HiB) {
            return;
        }
        try {
            super.onPause();
        } catch (Exception unused) {
        }
    }

    @Override // android.webkit.WebView
    public void onResume() {
        if (this.TKC || this.HiB) {
            return;
        }
        try {
            super.onResume();
        } catch (Exception unused) {
        }
    }

    @Override // android.webkit.WebView
    public void pauseTimers() {
        if (this.TKC || this.HiB) {
            return;
        }
        super.pauseTimers();
    }

    @Override // android.webkit.WebView
    public void reload() {
        if (this.TKC || this.HiB) {
            return;
        }
        super.reload();
    }

    @Override // android.webkit.WebView
    public void removeJavascriptInterface(String str) {
        if (this.TKC || this.HiB) {
            return;
        }
        super.removeJavascriptInterface(str);
        this.sP.remove(str);
    }

    @Override // android.webkit.WebView
    public void resumeTimers() {
        if (this.TKC || this.HiB) {
            return;
        }
        super.resumeTimers();
    }

    public void setDestroyOnDetached(boolean z10) {
        this.EjP = z10;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        TKC tkc = this.vS;
        if (tkc == null) {
            super.setOnTouchListener(onTouchListener);
        } else {
            tkc.Sj(onTouchListener);
            super.setOnTouchListener(this.vS);
        }
    }

    public void setRecycler(boolean z10) {
        this.HiB = z10;
    }

    public void setTouchListenerProxy(TKC tkc) {
        this.vS = tkc;
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        if (this.TKC || this.HiB) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception unused) {
        }
    }
}
