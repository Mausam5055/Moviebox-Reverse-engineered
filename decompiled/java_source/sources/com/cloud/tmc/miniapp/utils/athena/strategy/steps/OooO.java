package com.cloud.tmc.miniapp.utils.athena.strategy.steps;

import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO implements OooOO0 {
    @Override // com.cloud.tmc.miniapp.utils.athena.strategy.steps.OooOO0
    public com.cloud.tmc.miniapp.utils.athena.strategy.OooO00o OooO00o(OooOO0.OooO00o chain) {
        Intrinsics.h(chain, "chain");
        com.cloud.tmc.miniapp.utils.athena.strategy.OooO0O0 oooO0O0 = (com.cloud.tmc.miniapp.utils.athena.strategy.OooO0O0) chain;
        String str = oooO0O0.OooO0O0;
        boolean zCheckMiniAppPrivacyAgreementDialogWhiteList = str != null ? AppUtils.INSTANCE.checkMiniAppPrivacyAgreementDialogWhiteList(str) : false;
        TmcLogger.d("AthenaUtil", "report AthenaWhiteListStep -> inWhiteList:" + zCheckMiniAppPrivacyAgreementDialogWhiteList);
        com.cloud.tmc.miniapp.utils.athena.strategy.OooO00o oooO00o = oooO0O0.OooO0o0;
        oooO00o.OooO00o = zCheckMiniAppPrivacyAgreementDialogWhiteList ^ true;
        oooO00o.OooO0O0 = false;
        oooO00o.OooO0OO = false;
        oooO0O0.OooO00o(zCheckMiniAppPrivacyAgreementDialogWhiteList);
        return oooO0O0.OooO0o0;
    }
}
