package com.cloud.tmc.miniapp.defaultimpl;

import android.content.Context;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.utils.ScopeUtils;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public class OooO00o implements Runnable {
    public final /* synthetic */ String OooO00o;
    public final /* synthetic */ String OooO0O0;
    public final /* synthetic */ AppModel OooO0OO;
    public final /* synthetic */ OooO0O0 OooO0Oo;

    public OooO00o(OooO0O0 oooO0O0, String str, String str2, AppModel appModel) {
        this.OooO0Oo = oooO0O0;
        this.OooO00o = str;
        this.OooO0O0 = str2;
        this.OooO0OO = appModel;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            ScopeUtils scopeUtils = ScopeUtils.OooO00o;
            if (scopeUtils.OooO00o(this.OooO0Oo.OooO00o, this.OooO00o, this.OooO0O0)) {
                Context context = this.OooO0Oo.OooO00o;
                String scopeName = this.OooO00o;
                String appId = this.OooO0O0;
                String name = this.OooO0OO.getName();
                String logo = this.OooO0OO.getLogo();
                Intrinsics.h(context, "context");
                Intrinsics.h(scopeName, "scopeName");
                Intrinsics.h(appId, "appId");
                scopeUtils.OooO00o(context, scopeName, appId, false, name, logo, false, false);
            }
        } catch (Throwable th2) {
            TmcLogger.e("Tmcintegration:LocalAuthPermissionManager", th2);
        }
    }
}
