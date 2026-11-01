package com.transsion.ad.ps.installed;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.transsion.ad.db.pslink.AppInstalledBean;
import com.transsion.baselib.db.download.DownloadException;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import oi.a;

/* JADX INFO: loaded from: classes5.dex */
public final class AppInstallManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AppInstallManager f42196a = new AppInstallManager();

    private AppInstallManager() {
    }

    public static /* synthetic */ Object c(AppInstallManager appInstallManager, Context context, long j11, Continuation continuation, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            j11 = 7200000;
        }
        return appInstallManager.b(context, j11, continuation);
    }

    public final AppInstalledBean a(String pkg) {
        Intrinsics.h(pkg, "pkg");
        AppInstalledBean appInstalledBean = new AppInstalledBean(pkg, null, null, null, null, null, null, null, null, DownloadException.EXCEPTION_IO_SSL_HANDSHAKE, null);
        appInstalledBean.setInstallTime(Long.valueOf(SystemClock.elapsedRealtime()));
        return appInstalledBean;
    }

    public final Object b(Context context, long j11, Continuation continuation) {
        return i.g(y0.b(), new AppInstallManager$getRecentHoursOpenEvent$2(j11, context, null), continuation);
    }

    public final Object d(Context context, String str, Continuation continuation) {
        return i.g(y0.b(), new AppInstallManager$isMbTriggerApp$2(context, str, null), continuation);
    }

    public final void e(Context context, AppInstalledBean appInfo) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appInfo, "appInfo");
        if (!TextUtils.isEmpty(appInfo.getPackageName())) {
            k.d(o0.a(y0.b()), null, null, new AppInstallManager$onInstallEvent$1(context, appInfo, null), 3, null);
            return;
        }
        a.m(a.f71022a, "AppInstallManager --> onInstallEvent(包名为空) --> appInfo = " + appInfo, 0, false, 6, null);
    }

    public final void f(Context context, String packageName) {
        Intrinsics.h(context, "context");
        Intrinsics.h(packageName, "packageName");
        if (!TextUtils.isEmpty(packageName)) {
            k.d(o0.a(y0.b()), null, null, new AppInstallManager$onOpenEvent$1(context, packageName, null), 3, null);
            return;
        }
        a.m(a.f71022a, "AppInstallManager --> onOpenEvent(包名为空) --> packageName = " + packageName, 0, false, 6, null);
    }
}
