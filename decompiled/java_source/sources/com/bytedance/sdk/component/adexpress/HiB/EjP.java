package com.bytedance.sdk.component.adexpress.HiB;

import android.webkit.JavascriptInterface;
import com.bytedance.sdk.component.Sj.uP;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class EjP {
    private WeakReference<uP> Sj;

    public EjP(uP uPVar) {
        this.Sj = new WeakReference<>(uPVar);
    }

    public void Sj(uP uPVar) {
        this.Sj = new WeakReference<>(uPVar);
    }

    @JavascriptInterface
    public void invokeMethod(String str) {
        WeakReference<uP> weakReference = this.Sj;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.Sj.get().invokeMethod(str);
    }
}
