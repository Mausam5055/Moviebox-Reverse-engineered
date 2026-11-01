package com.bytedance.sdk.component.adexpress.HiB;

import android.webkit.JavascriptInterface;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class TKC {
    private WeakReference<sP> Sj;

    public TKC(sP sPVar) {
        this.Sj = new WeakReference<>(sPVar);
    }

    public void Sj(sP sPVar) {
        this.Sj = new WeakReference<>(sPVar);
    }

    @JavascriptInterface
    public void adAnalysisData(String str) {
        WeakReference<sP> weakReference = this.Sj;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.Sj.get();
    }

    @JavascriptInterface
    public String adInfo() {
        WeakReference<sP> weakReference = this.Sj;
        return (weakReference == null || weakReference.get() == null) ? "" : this.Sj.get().adInfo();
    }

    @JavascriptInterface
    public String appInfo() {
        WeakReference<sP> weakReference = this.Sj;
        return (weakReference == null || weakReference.get() == null) ? "" : this.Sj.get().appInfo();
    }

    @JavascriptInterface
    public void changeVideoState(String str) {
        WeakReference<sP> weakReference = this.Sj;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.Sj.get().changeVideoState(str);
    }

    @JavascriptInterface
    public void chooseAdResult(String str) {
        WeakReference<sP> weakReference = this.Sj;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.Sj.get().chooseAdResult(str);
    }

    @JavascriptInterface
    public void clickEvent(String str) {
        WeakReference<sP> weakReference = this.Sj;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.Sj.get().clickEvent(str);
    }

    @JavascriptInterface
    public void dynamicTrack(String str) {
        WeakReference<sP> weakReference = this.Sj;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.Sj.get().dynamicTrack(str);
    }

    @JavascriptInterface
    public String getCurrentVideoState() {
        WeakReference<sP> weakReference = this.Sj;
        return (weakReference == null || weakReference.get() == null) ? "" : this.Sj.get().getCurrentVideoState();
    }

    @JavascriptInterface
    public String getData(String str) {
        WeakReference<sP> weakReference = this.Sj;
        return (weakReference == null || weakReference.get() == null) ? "" : this.Sj.get().getData(str);
    }

    @JavascriptInterface
    public String getTemplateInfo() {
        WeakReference<sP> weakReference = this.Sj;
        return (weakReference == null || weakReference.get() == null) ? "" : this.Sj.get().getTemplateInfo();
    }

    @JavascriptInterface
    public void initRenderFinish() {
        WeakReference<sP> weakReference = this.Sj;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.Sj.get().initRenderFinish();
    }

    @JavascriptInterface
    public void muteVideo(String str) {
        WeakReference<sP> weakReference = this.Sj;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.Sj.get().muteVideo(str);
    }

    @JavascriptInterface
    public void renderDidFinish(String str) {
        WeakReference<sP> weakReference = this.Sj;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.Sj.get().renderDidFinish(str);
    }

    @JavascriptInterface
    public void requestPauseVideo(String str) {
        WeakReference<sP> weakReference = this.Sj;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.Sj.get().Sj(str);
    }

    @JavascriptInterface
    public void skipVideo() {
        WeakReference<sP> weakReference = this.Sj;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.Sj.get().skipVideo();
    }

    @JavascriptInterface
    public void videoFrameChanged(String str) {
        WeakReference<sP> weakReference = this.Sj;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.Sj.get().videoFrameChanged(str);
    }
}
