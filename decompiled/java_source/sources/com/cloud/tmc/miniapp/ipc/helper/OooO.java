package com.cloud.tmc.miniapp.ipc.helper;

import android.os.Bundle;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.performance.innerwebview.IInnerH5WebviewPool;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO {
    public static final OooO OooO00o = new OooO();

    public static final void OooO0O0(String str, String str2, Bundle bundle) {
        int i11;
        try {
            if (Intrinsics.c(str, MiniAppIpcConfig.TYPE_IPC_PERF_MINI_APPWARM_UP)) {
                if (bundle != null) {
                    try {
                        i11 = bundle.getInt("warmupType");
                    } catch (Throwable th2) {
                        TmcLogger.e("MiniAppPerformanceHelper", th2);
                        return;
                    }
                } else {
                    i11 = 0;
                }
                try {
                    if (i11 == 0) {
                        MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
                        miniAppLaunch.warmUpWorker();
                        miniAppLaunch.warmupRender();
                    } else if (i11 != 1) {
                    } else {
                        ((IInnerH5WebviewPool) TmcProxy.get(IInnerH5WebviewPool.class)).createWebview();
                    }
                } catch (Throwable th3) {
                    TmcLogger.e("MiniAppPerformanceHelper", th3);
                }
            }
        } catch (Throwable th4) {
            TmcLogger.e("MiniAppPerformanceHelper", "protocolInvoke", th4);
        }
    }

    public void OooO00o(final String str, final String str2, final Bundle bundle) {
        try {
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.ipc.helper.a
                @Override // java.lang.Runnable
                public final void run() {
                    OooO.OooO0O0(str, str2, bundle);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e("MiniAppPerformanceHelper", "protocolInvoke", th2);
        }
    }
}
