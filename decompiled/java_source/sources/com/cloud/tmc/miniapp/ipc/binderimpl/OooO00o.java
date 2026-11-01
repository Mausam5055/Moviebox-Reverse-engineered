package com.cloud.tmc.miniapp.ipc.binderimpl;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.env.IApplicationContextGetter;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniapp.IIpcMiniLauncherChannel;
import com.cloud.tmc.miniapp.IMiniAppLifecycleInterface;
import com.cloud.tmc.miniapp.ipc.multiprogress.IpcMainProcessClientService;
import com.cloud.tmc.miniapp.prestrategy.PreStrategyManager;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o extends IIpcMiniLauncherChannel.Stub {
    public static final C0332OooO00o OooO0O0 = new C0332OooO00o();
    public static IMiniAppLifecycleInterface OooO0OO;
    public final String OooO00o = "IpcMiniLauncherChannelImpl";

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.ipc.binderimpl.OooO00o$OooO00o, reason: collision with other inner class name */
    public static final class C0332OooO00o {
    }

    @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
    public boolean launchHostProcess() {
        try {
            IpcMainProcessClientService.OooO00o oooO00o = IpcMainProcessClientService.OooO0O0;
            Context applicationContext = ((IApplicationContextGetter) TmcProxy.get(IApplicationContextGetter.class)).getApplicationContext();
            if (applicationContext == null) {
                return true;
            }
            try {
                Intent intent = new Intent(applicationContext, (Class<?>) IpcMainProcessClientService.class);
                AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, applicationContext);
                applicationContext.startService(intent);
                return true;
            } catch (Throwable th2) {
                TmcLogger.e("IpcMainProcessClientService", "Exception startService", th2);
                return true;
            }
        } catch (Throwable th3) {
            TmcLogger.e(this.OooO00o, "", th3);
            return true;
        }
    }

    @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
    public boolean launcherMiniApp(String str, Bundle bundle) {
        Unit unit;
        Application application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk();
        if (application$com_cloud_tmc_miniapp_sdk != null) {
            MiniAppLaunch.launchMiniAppForId(application$com_cloud_tmc_miniapp_sdk, str, bundle);
            unit = Unit.f67061a;
        } else {
            unit = null;
        }
        if (unit != null) {
            return true;
        }
        TmcLogger.e("IpcMiniLauncherChannelImpl", "Launcher Failed Application is null");
        return true;
    }

    @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
    public boolean preLauncherData(String type, Bundle bundle) {
        Intrinsics.h(type, "type");
        Intrinsics.h(bundle, "bundle");
        try {
            TmcLogger.d("IpcMiniLauncherChannelImpl", "preLauncherData");
            Application application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk();
            if (application$com_cloud_tmc_miniapp_sdk == null) {
                return true;
            }
            PreStrategyManager.OooO00o.OooO0O0(application$com_cloud_tmc_miniapp_sdk, type, bundle.getString(TmcConstants.KEY_MINIAPP_SYNC_DATA), null);
            return true;
        } catch (Throwable th2) {
            TmcLogger.e("IpcMiniLauncherChannelImpl", th2);
            return true;
        }
    }

    @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
    public boolean registerMiniAppLifecycleListener(IMiniAppLifecycleInterface iMiniAppLifecycleInterface) {
        OooO0OO = iMiniAppLifecycleInterface;
        return true;
    }

    @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
    public boolean syncLauncherLifecycletoMiniapp(int i11, int i12) {
        try {
            TmcLogger.d(this.OooO00o, "syncLauncherLifecycletoMiniapp type=" + i11 + " requestSize=" + i12);
            return true;
        } catch (Throwable th2) {
            TmcLogger.e("IpcMiniLauncherChannelImpl", th2);
            return true;
        }
    }

    @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
    public boolean syncLauncherNewsData(String str, Bundle bundle) {
        try {
            TmcLogger.d(this.OooO00o, "syncLauncherNewsData");
            return true;
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, th2);
            return true;
        }
    }

    @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
    public boolean updateLauncherData(String str, String str2) {
        if (str != null) {
            try {
                if (str.length() != 0 && str2 != null && str2.length() != 0) {
                    TmcLogger.d(this.OooO00o, "updateLauncherData key=" + str + " data=" + str2);
                    Application application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk();
                    if (application$com_cloud_tmc_miniapp_sdk != null) {
                        PreStrategyManager.OooO00o.OooO0Oo(application$com_cloud_tmc_miniapp_sdk, str, str2, null);
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e("IpcMiniLauncherChannelImpl", th2);
            }
        }
        return true;
    }

    @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
    public boolean warmupWebview(boolean z10) {
        TmcLogger.d("IpcMiniLauncherChannelImpl", "warmupWebview");
        try {
            Application application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk();
            if (application$com_cloud_tmc_miniapp_sdk == null) {
                return true;
            }
            MiniAppLaunch.INSTANCE.warmupEntrance(application$com_cloud_tmc_miniapp_sdk, z10);
            return true;
        } catch (Throwable th2) {
            TmcLogger.e("IpcMiniLauncherChannelImpl", th2);
            return true;
        }
    }
}
