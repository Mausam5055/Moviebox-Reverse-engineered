package com.cloud.tmc.miniapp.prestrategy.strategy;

import android.content.Context;
import com.cloud.tmc.integration.model.AppInfoQuery;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniapp.prestrategy.OooO0OO;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o {
    public static final OooO00o OooO00o = new OooO00o();
    public static ConcurrentHashMap<String, AppModel> OooO0O0 = new ConcurrentHashMap<>();
    public static final String OooO0OO = "PreCdnAppinfoStrategy";

    public final AppModel OooO00o(String appId) {
        Intrinsics.h(appId, "appId");
        try {
            if (OooO0OO.OooO00o.OooO0O0()) {
                return null;
            }
            TmcLogger.d(OooO0OO, "getPreAppinfoModel " + appId);
            return OooO0O0.get(appId);
        } catch (Throwable th2) {
            TmcLogger.e(OooO0OO, "getPreAppinfoModel", th2);
            return null;
        }
    }

    public final void OooO00o(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        try {
            if (OooO0O0.contains(appId)) {
                TmcLogger.e(OooO0OO, "preAppinfoCdn appId is exist");
                return;
            }
            AppModel appModel = ((TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class)).getAppModel(context, AppInfoQuery.INSTANCE.make(appId));
            if (appModel != null) {
                TmcLogger.d(OooO0OO, "preAppinfoCdn put " + appId);
                OooO0O0.put(appId, appModel);
            }
        } catch (Throwable th2) {
            TmcLogger.e(OooO0OO, "preAppinfoCdn", th2);
        }
    }
}
