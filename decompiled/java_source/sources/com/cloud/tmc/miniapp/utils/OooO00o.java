package com.cloud.tmc.miniapp.utils;

import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.model.permission.ScopesV2Bean;
import com.transsion.al.ka.KaManager;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o {
    public static final OooO00o OooO00o = new OooO00o();

    public final boolean OooO00o(Page page) {
        ScopeUtils scopeUtils = ScopeUtils.OooO00o;
        ScopesV2Bean scopesV2BeanOooO00o = scopeUtils.OooO00o(KaManager.NOTIFICATION_GROUP_FULLSCREEN, scopeUtils.OooO00o(page));
        TmcLogger.d("AuthorityUtils", "checkFullScreenAuthority: " + scopesV2BeanOooO00o);
        return scopesV2BeanOooO00o != null;
    }
}
