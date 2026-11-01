package com.bytedance.sdk.openadsdk.core;

import android.app.Application;
import android.content.Context;
import com.bytedance.sdk.openadsdk.ApmHelper;

/* JADX INFO: loaded from: classes3.dex */
public class Zq {
    private final com.bytedance.sdk.openadsdk.utils.Sj Sj = new com.bytedance.sdk.openadsdk.utils.Sj();
    private boolean sP;

    private static class Sj {
        private static final Zq Sj = new Zq();
    }

    public static Zq Sj() {
        return Sj.Sj;
    }

    public boolean EjP() {
        return this.Sj.Sj();
    }

    public com.bytedance.sdk.openadsdk.utils.Sj HiB() {
        return this.Sj;
    }

    public boolean Sj(boolean z10) {
        return this.Sj.Sj(z10);
    }

    public boolean TKC() {
        return this.sP;
    }

    public void sP() {
        try {
            Context contextSj = dNu.Sj();
            if (contextSj instanceof Application) {
                ((Application) contextSj).registerActivityLifecycleCallbacks(this.Sj);
                this.sP = true;
            } else {
                if (contextSj == null || contextSj.getApplicationContext() == null) {
                    return;
                }
                ((Application) contextSj.getApplicationContext()).registerActivityLifecycleCallbacks(this.Sj);
                this.sP = true;
            }
        } catch (Throwable th2) {
            ApmHelper.reportCustomError("registerActivityLifecycleError", "registerActivityLifecycle", th2);
        }
    }
}
