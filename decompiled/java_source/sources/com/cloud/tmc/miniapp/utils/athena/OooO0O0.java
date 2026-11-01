package com.cloud.tmc.miniapp.utils.athena;

import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0O0 {
    public static int OooO0O0 = -1;
    public static final OooO0O0 OooO00o = new OooO0O0();
    public static final ConcurrentLinkedQueue<OooO00o> OooO0OO = new ConcurrentLinkedQueue<>();
    public static final ConcurrentHashMap<String, ConcurrentLinkedQueue<OooO00o>> OooO0Oo = new ConcurrentHashMap<>();

    public final void OooO00o() {
        try {
            ConcurrentLinkedQueue<OooO00o> concurrentLinkedQueue = OooO0OO;
            if (concurrentLinkedQueue.size() >= OooO0O0()) {
                concurrentLinkedQueue.poll();
                OooO00o();
            }
        } catch (Throwable th2) {
            TmcLogger.e("AthenaUtil", "checkOverFlow Fail:", th2);
        }
    }

    public final int OooO0O0() {
        if (OooO0O0 == -1) {
            OooO0O0 = MiniAppConfigHelper.INSTANCE.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_ATHENA_CACHE_SIZE, 300);
        }
        TmcLogger.d("AthenaUtil", "CACHE_MAX_COUNT:" + OooO0O0);
        return OooO0O0;
    }
}
