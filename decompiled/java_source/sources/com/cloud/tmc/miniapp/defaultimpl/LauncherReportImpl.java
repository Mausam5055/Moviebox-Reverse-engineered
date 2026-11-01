package com.cloud.tmc.miniapp.defaultimpl;

import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import com.cloud.tmc.integration.model.CacheReportBean;
import com.cloud.tmc.integration.proxy.LauncherReportProxy;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.integration.utils.MiniForceAddHomeManager;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.ByteAppManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class LauncherReportImpl implements LauncherReportProxy {
    public final String OooO00o = "LauncherReport";

    public static final void OooO00o(int i11, LauncherReportImpl this$0) {
        Intrinsics.h(this$0, "this$0");
        try {
            Bundle bundle = new Bundle();
            com.cloud.tmc.miniapp.ipc.broadcast.OooO00o.C0333OooO00o c0333OooO00o = com.cloud.tmc.miniapp.ipc.broadcast.OooO00o.OooO00o;
            bundle.putInt("miniProcessId", i11);
            if (DeviceUtil.INSTANCE.getIsNewUserStatus()) {
                TmcLogger.d(this$0.OooO00o, "reportCache ->reportMiniProcessId");
                com.cloud.tmc.miniapp.utils.OooO0OO.OooO00o.OooO00o(new CacheReportBean("", "com.cloud.tmc.miniapp.process_id", false, bundle));
                return;
            }
            TmcLogger.d(this$0.OooO00o, "reportMiniProcessId -> pid ->" + i11);
            Application application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk();
            if (application$com_cloud_tmc_miniapp_sdk != null) {
                Intent intent = new Intent("com.cloud.tmc.miniapp.process_id");
                bundle.putString("miniGaid", DeviceUtil.getGAId());
                intent.putExtras(bundle);
                intent.setPackage(application$com_cloud_tmc_miniapp_sdk.getPackageName());
                application$com_cloud_tmc_miniapp_sdk.sendBroadcast(intent);
            }
        } catch (Throwable th2) {
            TmcLogger.e(this$0.OooO00o, "reportMiniProcessId", th2);
        }
    }

    public static final void OooO00o(String str, long j11, LauncherReportImpl this$0) {
        Intrinsics.h(this$0, "this$0");
        try {
            Bundle bundle = new Bundle();
            com.cloud.tmc.miniapp.ipc.broadcast.OooO00o.C0333OooO00o c0333OooO00o = com.cloud.tmc.miniapp.ipc.broadcast.OooO00o.OooO00o;
            bundle.putString(TmcConstants.EXTRA_APP_ID, str);
            bundle.putLong("usageTime", j11);
            MiniForceAddHomeManager miniForceAddHomeManager = MiniForceAddHomeManager.INSTANCE;
            boolean zCheckInterectMFAHWithBookPrivacy = miniForceAddHomeManager.checkInterectMFAHWithBookPrivacy(str);
            if (!DeviceUtil.INSTANCE.getIsNewUserStatus() && !zCheckInterectMFAHWithBookPrivacy) {
                TmcLogger.d(this$0.OooO00o, "reportMiniAppUseTime -> usageTime ->" + j11);
                Application application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk();
                if (application$com_cloud_tmc_miniapp_sdk != null) {
                    Intent intent = new Intent("com.cloud.tmc.miniapp.use_time");
                    bundle.putString("miniGaid", DeviceUtil.getGAId());
                    intent.putExtras(bundle);
                    intent.setPackage(application$com_cloud_tmc_miniapp_sdk.getPackageName());
                    application$com_cloud_tmc_miniapp_sdk.sendBroadcast(intent);
                    return;
                }
                return;
            }
            TmcLogger.d(this$0.OooO00o, "reportCache ->reportMiniAppUseTime " + str);
            CacheReportBean cacheReportBean = new CacheReportBean(str == null ? "" : str, "com.cloud.tmc.miniapp.use_time", miniForceAddHomeManager.checkInterectMFAH(str), bundle);
            if (!Intrinsics.c(miniForceAddHomeManager.getInterceptRealMFAHMap().get(str), Boolean.TRUE)) {
                com.cloud.tmc.miniapp.utils.OooO0OO.OooO00o.OooO00o(cacheReportBean);
                return;
            }
            TmcLogger.d(this$0.OooO00o, "reportCache ->mfah reportMiniAppUseTime");
            com.cloud.tmc.miniapp.utils.OooO0OO oooO0OO = com.cloud.tmc.miniapp.utils.OooO0OO.OooO00o;
            if (str == null) {
                str = "";
            }
            oooO0OO.OooO00o(str, cacheReportBean);
        } catch (Throwable th2) {
            TmcLogger.e(this$0.OooO00o, "reportMiniAppUseTime", th2);
        }
    }

    public static final void OooO00o(String appId, LauncherReportImpl this$0) {
        Intrinsics.h(appId, "$appId");
        Intrinsics.h(this$0, "this$0");
        try {
            Bundle bundle = new Bundle();
            com.cloud.tmc.miniapp.ipc.broadcast.OooO00o.C0333OooO00o c0333OooO00o = com.cloud.tmc.miniapp.ipc.broadcast.OooO00o.OooO00o;
            bundle.putString(TmcConstants.EXTRA_APP_ID, appId);
            if (DeviceUtil.INSTANCE.getIsNewUserStatus()) {
                TmcLogger.d(this$0.OooO00o, "reportCache ->reportMiniAddhomeSuccess");
                com.cloud.tmc.miniapp.utils.OooO0OO.OooO00o.OooO00o(new CacheReportBean(appId, "com.cloud.tmc.miniapp.addhome_success", false, bundle));
                return;
            }
            TmcLogger.d(this$0.OooO00o, "reportMiniAddhomeSuccess -> appId ->" + appId);
            Application application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk();
            if (application$com_cloud_tmc_miniapp_sdk != null) {
                Intent intent = new Intent("com.cloud.tmc.miniapp.addhome_success");
                bundle.putString("miniGaid", DeviceUtil.getGAId());
                intent.putExtras(bundle);
                intent.setPackage(application$com_cloud_tmc_miniapp_sdk.getPackageName());
                application$com_cloud_tmc_miniapp_sdk.sendBroadcast(intent);
            }
        } catch (Throwable th2) {
            TmcLogger.e(this$0.OooO00o, "reportMiniAddhomeSuccess", th2);
        }
    }

    @Override // com.cloud.tmc.integration.proxy.LauncherReportProxy
    public void report(String str, Bundle bundle) {
        try {
            TmcLogger.d(this.OooO00o, "tag:" + str + ",bundle:" + (bundle != null ? bundle.toString() : null));
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, th2);
        }
    }

    @Override // com.cloud.tmc.integration.proxy.LauncherReportProxy
    public void reportAllCacheData(String str) {
        try {
            com.cloud.tmc.miniapp.utils.OooO0OO.OooO00o.OooO00o(str);
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.tmc.integration.proxy.LauncherReportProxy
    public void reportCacheData(String str) {
        try {
            com.cloud.tmc.miniapp.utils.OooO0OO.OooO00o.OooO0O0(str);
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.tmc.integration.proxy.LauncherReportProxy
    public void reportMiniAddhomeSuccess(final String appId) {
        Intrinsics.h(appId, "appId");
        try {
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.defaultimpl.h
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherReportImpl.OooO00o(appId, this);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, "reportMiniAddhomeSuccess", th2);
        }
    }

    @Override // com.cloud.tmc.integration.proxy.LauncherReportProxy
    public void reportMiniAppStartRecord(String str, String str2, String str3) {
    }

    @Override // com.cloud.tmc.integration.proxy.LauncherReportProxy
    public void reportMiniAppStartTime(String str, long j11, String startType) {
        Intrinsics.h(startType, "startType");
        try {
            Bundle bundle = new Bundle();
            com.cloud.tmc.miniapp.ipc.broadcast.OooO00o.C0333OooO00o c0333OooO00o = com.cloud.tmc.miniapp.ipc.broadcast.OooO00o.OooO00o;
            bundle.putString(TmcConstants.EXTRA_APP_ID, str);
            bundle.putLong("startTime", j11);
            bundle.putString("startType", startType);
            MiniForceAddHomeManager miniForceAddHomeManager = MiniForceAddHomeManager.INSTANCE;
            boolean zCheckInterectMFAHWithBookPrivacy = miniForceAddHomeManager.checkInterectMFAHWithBookPrivacy(str);
            if (!DeviceUtil.INSTANCE.getIsNewUserStatus() && !zCheckInterectMFAHWithBookPrivacy) {
                TmcLogger.d(this.OooO00o, "reportMiniAppStartTime -> startTime ->" + j11);
                Application application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk();
                if (application$com_cloud_tmc_miniapp_sdk != null) {
                    Intent intent = new Intent("com.cloud.tmc.miniapp.start_time");
                    bundle.putString("miniGaid", DeviceUtil.getGAId());
                    intent.putExtras(bundle);
                    intent.setPackage(application$com_cloud_tmc_miniapp_sdk.getPackageName());
                    application$com_cloud_tmc_miniapp_sdk.sendBroadcast(intent);
                    return;
                }
                return;
            }
            TmcLogger.d(this.OooO00o, "reportCache ->reportMiniAppStartTime " + str);
            CacheReportBean cacheReportBean = new CacheReportBean(str == null ? "" : str, "com.cloud.tmc.miniapp.start_time", false, bundle);
            if (!Intrinsics.c(miniForceAddHomeManager.getInterceptRealMFAHMap().get(str), Boolean.TRUE)) {
                com.cloud.tmc.miniapp.utils.OooO0OO.OooO00o.OooO00o(cacheReportBean);
                return;
            }
            TmcLogger.d(this.OooO00o, "reportCache ->mfah startTime");
            com.cloud.tmc.miniapp.utils.OooO0OO oooO0OO = com.cloud.tmc.miniapp.utils.OooO0OO.OooO00o;
            if (str == null) {
                str = "";
            }
            oooO0OO.OooO00o(str, cacheReportBean);
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, "reportMiniAppStartTime", th2);
        }
    }

    @Override // com.cloud.tmc.integration.proxy.LauncherReportProxy
    public void reportMiniAppUseTime(final String str, final long j11) {
        try {
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.defaultimpl.g
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherReportImpl.OooO00o(str, j11, this);
                }
            });
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.tmc.integration.proxy.LauncherReportProxy
    public void reportMiniProcessId(final int i11) {
        try {
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.defaultimpl.i
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherReportImpl.OooO00o(i11, this);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, "reportMiniProcessId", th2);
        }
    }
}
