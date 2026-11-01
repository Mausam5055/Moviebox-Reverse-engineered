package com.cloud.tmc.miniapp.utils;

import androidx.appcompat.app.w;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\r\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\fR\u0014\u0010\u000e\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR(\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00110\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/cloud/tmc/miniapp/utils/MiniDialogManager;", "", "<init>", "()V", "", "token", "Landroidx/appcompat/app/w;", "dialog", "", "addDialog", "(Ljava/lang/String;Landroidx/appcompat/app/w;)V", "removeDialog", "(Ljava/lang/String;)V", "cancelDialogUI", "TAG", "Ljava/lang/String;", "Ljava/util/concurrent/ConcurrentHashMap;", "Ljava/lang/ref/WeakReference;", "dialogMap", "Ljava/util/concurrent/ConcurrentHashMap;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MiniDialogManager {
    public static final MiniDialogManager INSTANCE = new MiniDialogManager();
    private static final String TAG = "MiniDialogManager";
    private static final ConcurrentHashMap<String, WeakReference<w>> dialogMap = new ConcurrentHashMap<>();

    private MiniDialogManager() {
    }

    public final void addDialog(String token, w dialog) {
        Intrinsics.h(token, "token");
        try {
            cancelDialogUI(token);
            TmcLogger.d(TAG, "addDialog token -> " + token);
            dialogMap.put(token, new WeakReference<>(dialog));
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "addDialog", th2);
        }
    }

    public final void cancelDialogUI(String token) {
        w wVar;
        Intrinsics.h(token, "token");
        try {
            String str = TAG;
            TmcLogger.d(str, "cancelDialogUI??? token -> " + token + " ");
            WeakReference<w> weakReference = dialogMap.get(token);
            if (weakReference != null && (wVar = weakReference.get()) != null) {
                if (wVar.isShowing()) {
                    TmcLogger.d(str, "cancelDialogUI dismiss token->" + token);
                    wVar.dismiss();
                }
                removeDialog(token);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "cancelDialogUI", th2);
        }
    }

    public final void removeDialog(String token) {
        Intrinsics.h(token, "token");
        try {
            TmcLogger.d(TAG, "removeDialog token ->" + token);
            dialogMap.remove(token);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "removeDialog", th2);
        }
    }
}
