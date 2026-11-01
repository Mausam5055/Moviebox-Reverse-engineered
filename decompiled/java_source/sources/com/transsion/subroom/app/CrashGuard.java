package com.transsion.subroom.app;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.transsion.baselib.report.launch.b;
import com.transsion.subroom.app.CrashGuard;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u0004H\u0083 ¢\u0006\u0004\b\u0006\u0010\u0003J\u0010\u0010\b\u001a\u00020\u0007H\u0082 ¢\u0006\u0004\b\b\u0010\tJ\r\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u0003R\u0016\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\fR\u0016\u0010\u000f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\fR*\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00078\u0006@BX\u0087\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0011\u0012\u0004\b\u0013\u0010\u0003\u001a\u0004\b\u0012\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/transsion/subroom/app/CrashGuard;", "", "<init>", "()V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "nativeInstall", "", "nCheckEnv", "()I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "", "Z", "libraryLoaded", "c", "installed", AppMeasurementSdk.ConditionalUserProperty.VALUE, "I", "getEnvState", "getEnvState$annotations", "envState", "app_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class CrashGuard {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private static boolean libraryLoaded;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private static boolean installed;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CrashGuard f54666a = new CrashGuard();

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private static int envState = -1;

    private CrashGuard() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c() {
        f54666a.d();
    }

    private final void d() {
        try {
            nativeInstall();
            installed = true;
        } catch (Throwable th2) {
            Log.e("signalGuard", "install error: " + th2);
        }
    }

    private final native int nCheckEnv();

    @JvmStatic
    private static final native void nativeInstall();

    public final void b() {
        if (libraryLoaded) {
            return;
        }
        try {
            System.loadLibrary("or_signal");
            libraryLoaded = true;
            try {
                envState = nCheckEnv();
                b.f43370a.b().putInt("s_env", envState);
            } catch (Throwable th2) {
                Log.e("signalGuard", "nCheckEnv error: " + th2);
            }
            d();
            Handler handler = new Handler(Looper.getMainLooper());
            Iterator it = CollectionsKt.o(300L, 1000L, 5000L, Long.valueOf(MBInterstitialActivity.WEB_LOAD_TIME)).iterator();
            while (it.hasNext()) {
                handler.postDelayed(new Runnable() { // from class: zt.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        CrashGuard.c();
                    }
                }, ((Number) it.next()).longValue());
            }
        } catch (Throwable th3) {
            Log.e("signalGuard", "loadLibrary error: " + th3);
        }
    }
}
