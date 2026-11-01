package com.vungle.ads.internal.util;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class u {
    public static final u INSTANCE = new u();
    private static final Handler UI_HANDLER = new Handler(Looper.getMainLooper());
    private static Executor uiExecutor;

    private u() {
    }

    public static /* synthetic */ void getUiExecutor$vungle_ads_release$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: runOnUiThread$lambda-0, reason: not valid java name */
    public static final void m450runOnUiThread$lambda0(Function0 tmp0) {
        Intrinsics.h(tmp0, "$tmp0");
        tmp0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: runOnUiThread$lambda-1, reason: not valid java name */
    public static final void m451runOnUiThread$lambda1(Function0 tmp0) {
        Intrinsics.h(tmp0, "$tmp0");
        tmp0.invoke();
    }

    public final Executor getUiExecutor$vungle_ads_release() {
        return uiExecutor;
    }

    public final boolean isMainThread() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper == null) {
            return false;
        }
        return mainLooper.isCurrentThread();
    }

    public final void runOnUiThread(final Function0<Unit> block) {
        Intrinsics.h(block, "block");
        if (isMainThread()) {
            block.invoke();
            return;
        }
        Executor executor = uiExecutor;
        if (executor == null) {
            UI_HANDLER.post(new Runnable() { // from class: com.vungle.ads.internal.util.t
                @Override // java.lang.Runnable
                public final void run() {
                    u.m451runOnUiThread$lambda1(block);
                }
            });
        } else if (executor != null) {
            executor.execute(new Runnable() { // from class: com.vungle.ads.internal.util.s
                @Override // java.lang.Runnable
                public final void run() {
                    u.m450runOnUiThread$lambda0(block);
                }
            });
        }
    }

    public final void setUiExecutor$vungle_ads_release(Executor executor) {
        uiExecutor = executor;
    }
}
