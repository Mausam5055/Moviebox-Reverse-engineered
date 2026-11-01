package com.cloud.tmc.miniapp.defaultimpl;

import android.content.Context;
import com.cloud.tmc.integration.proxy.AuthorityProxy;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.utils.ScopeUtils;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AuthorityProxyImpl implements AuthorityProxy {
    @Override // com.cloud.tmc.integration.proxy.AuthorityProxy
    public boolean checkFullScreenAuthority(Page page) {
        return com.cloud.tmc.miniapp.utils.OooO00o.OooO00o.OooO00o(page);
    }

    @Override // com.cloud.tmc.integration.proxy.AuthorityProxy
    public void clearPermissionData(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        try {
            ScopeUtils.OooO00o.OooO0OO(context, appId);
        } catch (Throwable th2) {
            TmcLogger.e("AuthorityProxyImpl", "clearPermissionData", th2);
        }
    }
}
