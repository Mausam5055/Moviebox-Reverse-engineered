package com.cloud.tmc.miniapp.utils.athena.strategy.steps;

import com.cloud.tmc.integration.utils.MiniForceAddHomeManager;
import com.cloud.tmc.kernel.log.TmcLogger;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0O0 implements OooOO0 {
    @Override // com.cloud.tmc.miniapp.utils.athena.strategy.steps.OooOO0
    public com.cloud.tmc.miniapp.utils.athena.strategy.OooO00o OooO00o(OooOO0.OooO00o chain) {
        Intrinsics.h(chain, "chain");
        com.cloud.tmc.miniapp.utils.athena.strategy.OooO0O0 oooO0O0 = (com.cloud.tmc.miniapp.utils.athena.strategy.OooO0O0) chain;
        boolean zCheckInterectMFAHWithBookPrivacy = oooO0O0.OooO00o != null ? MiniForceAddHomeManager.INSTANCE.checkInterectMFAHWithBookPrivacy(oooO0O0.OooO0O0) : false;
        TmcLogger.d("AthenaUtil", oooO0O0.OooO0O0 + ": -> report AthenaMfahStep -> AthenaMfahStep:" + zCheckInterectMFAHWithBookPrivacy);
        com.cloud.tmc.miniapp.utils.athena.strategy.OooO00o oooO00o = oooO0O0.OooO0o0;
        oooO00o.OooO00o = zCheckInterectMFAHWithBookPrivacy;
        oooO00o.OooO0O0 = true;
        oooO00o.OooO0OO = true;
        oooO0O0.OooO00o(zCheckInterectMFAHWithBookPrivacy);
        return oooO0O0.OooO0o0;
    }
}
