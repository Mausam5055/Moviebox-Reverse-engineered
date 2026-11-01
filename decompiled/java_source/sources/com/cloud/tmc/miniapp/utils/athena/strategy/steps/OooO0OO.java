package com.cloud.tmc.miniapp.utils.athena.strategy.steps;

import android.content.Context;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0OO implements OooOO0 {
    @Override // com.cloud.tmc.miniapp.utils.athena.strategy.steps.OooOO0
    public com.cloud.tmc.miniapp.utils.athena.strategy.OooO00o OooO00o(OooOO0.OooO00o chain) {
        Intrinsics.h(chain, "chain");
        com.cloud.tmc.miniapp.utils.athena.strategy.OooO0O0 oooO0O0 = (com.cloud.tmc.miniapp.utils.athena.strategy.OooO0O0) chain;
        Context context = oooO0O0.OooO00o;
        boolean z10 = context != null ? !((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getBoolean(context, "100000", TmcConstants.KEY_IS_NEW_USER, true) : false;
        TmcLogger.d("AthenaUtil", "report OldUserStep -> oldUser:" + z10);
        com.cloud.tmc.miniapp.utils.athena.strategy.OooO00o oooO00o = oooO0O0.OooO0o0;
        oooO00o.OooO00o = z10 ^ true;
        oooO00o.OooO0O0 = true;
        oooO00o.OooO0OO = false;
        oooO0O0.OooO00o(z10);
        return oooO0O0.OooO0o0;
    }
}
