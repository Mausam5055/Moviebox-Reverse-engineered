package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bytedance.sdk.openadsdk.ApmHelper;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class Sj implements Application.ActivityLifecycleCallbacks {
    public static boolean Sj;
    public static long TKC;
    public static long sP;
    private volatile WeakReference<Activity> Fmk;
    private final AtomicBoolean EjP = new AtomicBoolean(false);
    private final RunnableC0291Sj HiB = new RunnableC0291Sj();
    private final EjP vS = new EjP();
    private final TKC Jcg = new TKC();
    private final sP Dq = new sP();
    private int uA = 0;
    private volatile CopyOnWriteArrayList<WeakReference<com.bytedance.sdk.component.adexpress.Sj>> TEQ = new CopyOnWriteArrayList<>();
    private HandlerThread Ym = null;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private Handler f21126aa = null;
    private final LinkedList<Activity> sef = new LinkedList<>();

    class EjP implements Runnable {
        EjP() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.openadsdk.core.sef.sP().removeMessages(1001);
            com.bytedance.sdk.openadsdk.core.dNu.Sj();
        }
    }

    public class HiB implements Runnable {
        private boolean EjP;
        private long TKC;
        private long sP;

        public HiB(long j11, long j12, boolean z10) {
            this.sP = j11;
            this.TKC = j12;
            this.EjP = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.EjP) {
                com.bytedance.sdk.openadsdk.Zq.TKC.Sj().Sj(this.sP / 1000, this.TKC / 1000);
            }
            Sj.this.EjP();
        }
    }

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.utils.Sj$Sj, reason: collision with other inner class name */
    static class RunnableC0291Sj implements Runnable {
        RunnableC0291Sj() {
        }

        @Override // java.lang.Runnable
        public void run() {
            JcM.TKC(new com.bytedance.sdk.component.Dq.Dq("reportPvFromBackGround") { // from class: com.bytedance.sdk.openadsdk.utils.Sj.Sj.1
                @Override // java.lang.Runnable
                public void run() {
                    ApmHelper.reportPvFromBackGround();
                }
            });
        }
    }

    class TKC implements Runnable {
        TKC() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ApmHelper.isIsInit()) {
                Handler handlerSP = com.bytedance.sdk.openadsdk.core.sef.sP();
                Message messageObtain = Message.obtain(handlerSP, Sj.this.HiB);
                messageObtain.what = 1001;
                handlerSP.sendMessageDelayed(messageObtain, 30000L);
            }
        }
    }

    private static class sP implements Runnable {
        private sP() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.openadsdk.vS.sP.Sj().sP();
            com.bytedance.sdk.openadsdk.EjP.Sj.sef sefVarTFd = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().TFd();
            if (sefVarTFd == null || sefVarTFd.Sj() || !com.bytedance.sdk.component.utils.TzV.Dq(com.bytedance.sdk.openadsdk.core.dNu.Sj())) {
                return;
            }
            com.bytedance.sdk.openadsdk.EjP.Sj.EjP.Sj(com.bytedance.sdk.openadsdk.core.aa.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj()));
        }
    }

    public Sj() {
        TKC();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void EjP() {
        com.bytedance.sdk.openadsdk.EjP.Sj.Sj.Sj();
    }

    private void Sj(Runnable runnable) {
        if (!this.Ym.isAlive()) {
            TKC();
        }
        this.f21126aa.postDelayed(runnable, 1000L);
    }

    private void TKC() {
        this.Ym = com.bytedance.sdk.component.utils.Dq.Sj(RequestParameters.SUBRESOURCE_LIFECYCLE, 10);
        this.f21126aa = new Handler(this.Ym.getLooper());
    }

    public void Sj(com.bytedance.sdk.component.adexpress.Sj sj2) {
        this.TEQ.add(new WeakReference<>(sj2));
    }

    public boolean Sj() {
        return this.EjP.get();
    }

    public boolean Sj(boolean z10) {
        Activity activity;
        Window window;
        return (this.Fmk == null || (activity = this.Fmk.get()) == null || (window = activity.getWindow()) == null) ? z10 : window.getDecorView().hasWindowFocus();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.sef.addFirst(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (this.TEQ != null && this.TEQ.size() > 0) {
            for (WeakReference<com.bytedance.sdk.component.adexpress.Sj> weakReference : this.TEQ) {
                if (weakReference != null && weakReference.get() != null) {
                    try {
                        weakReference.get().Sj(activity);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        if (this.Fmk != null && this.Fmk.get() == activity) {
            this.Fmk = null;
        }
        this.sef.remove(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        int i11 = this.uA - 1;
        this.uA = i11;
        if (i11 < 0) {
            this.uA = 0;
        }
        if (ApmHelper.isIsInit()) {
            Sj(this.Jcg);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Sj(this.vS);
        if (!Sj) {
            sP = System.currentTimeMillis();
            Sj = true;
        }
        this.Fmk = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(final Activity activity) {
        Window window;
        try {
            if (FPG.sP() && (window = activity.getWindow()) != null) {
                final View decorView = window.getDecorView();
                decorView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.bytedance.sdk.openadsdk.utils.Sj.1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(@NonNull View view) {
                        decorView.removeOnAttachStateChangeListener(this);
                        if (FPG.EjP(activity)) {
                            FPG.Sj(true);
                        }
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(@NonNull View view) {
                        decorView.removeOnAttachStateChangeListener(this);
                    }
                });
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.ActivityLifecycle", th2);
        }
        this.uA++;
        this.f21126aa.removeCallbacks(this.Dq);
        if (this.EjP.get()) {
            Sj(this.Dq);
        }
        this.EjP.set(false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (this.uA <= 0) {
            this.EjP.set(true);
        }
        if (Sj()) {
            Sj = false;
            com.bytedance.sdk.openadsdk.core.sef.sP.set(false);
            TKC = System.currentTimeMillis();
            Sj(this.Dq);
        }
        Sj(new HiB(sP, TKC, Sj()));
    }

    public Activity sP() {
        if (this.sef.isEmpty()) {
            return null;
        }
        return this.sef.getFirst();
    }

    public boolean sP(com.bytedance.sdk.component.adexpress.Sj sj2) {
        return this.TEQ.remove(new WeakReference(sj2));
    }
}
