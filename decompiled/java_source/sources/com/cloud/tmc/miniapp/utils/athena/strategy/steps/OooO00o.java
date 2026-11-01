package com.cloud.tmc.miniapp.utils.athena.strategy.steps;

import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o implements OooOO0 {
    @Override // com.cloud.tmc.miniapp.utils.athena.strategy.steps.OooOO0
    public com.cloud.tmc.miniapp.utils.athena.strategy.OooO00o OooO00o(OooOO0.OooO00o chain) {
        Intrinsics.h(chain, "chain");
        boolean configBoolean = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigBoolean(LauncherMiniAppConfigHelper.KEY_FORCE_ATHENA_REPORT_MODE, false);
        TmcLogger.d("AthenaUtil", "report AthenaForceReportModeStep -> forceMode:" + configBoolean);
        com.cloud.tmc.miniapp.utils.athena.strategy.OooO0O0 oooO0O0 = (com.cloud.tmc.miniapp.utils.athena.strategy.OooO0O0) chain;
        com.cloud.tmc.miniapp.utils.athena.strategy.OooO00o oooO00o = oooO0O0.OooO0o0;
        oooO00o.OooO00o = configBoolean ^ true;
        oooO00o.OooO0O0 = true;
        oooO00o.OooO0OO = false;
        oooO0O0.OooO00o(configBoolean);
        return oooO0O0.OooO0o0;
    }
}
