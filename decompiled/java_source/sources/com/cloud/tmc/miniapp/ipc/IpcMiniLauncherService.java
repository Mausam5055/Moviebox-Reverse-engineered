package com.cloud.tmc.miniapp.ipc;

import android.app.Application;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.cloud.tmc.component_api_ps.async.MiniAppIpcAsyncManager;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniapp.IIpcMiniLauncherChannel;
import com.cloud.tmc.miniapp.IMiniAppLifecycleInterface;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniutils.util.Utils;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes3.dex */
public class IpcMiniLauncherService extends Service {
    public static final OooO00o OooO00o = new OooO00o();

    public static final class OooO00o {

        /* JADX INFO: renamed from: com.cloud.tmc.miniapp.ipc.IpcMiniLauncherService$OooO00o$OooO00o, reason: collision with other inner class name */
        public static final class ServiceConnectionC0329OooO00o implements ServiceConnection {
            public final /* synthetic */ String OooO00o;
            public final /* synthetic */ Bundle OooO0O0;
            public final /* synthetic */ com.cloud.tmc.miniapp.ipc.OooO0O0 OooO0OO;

            /* JADX INFO: renamed from: com.cloud.tmc.miniapp.ipc.IpcMiniLauncherService$OooO00o$OooO00o$OooO00o, reason: collision with other inner class name */
            public static final class BinderC0330OooO00o extends IMiniAppLifecycleInterface.Stub {
                @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
                public void onCreate() {
                    ByteAppManager.MiniAppLifecycleListener miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getMiniAppLifecycleListener$com_cloud_tmc_miniapp_sdk();
                    if (miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk != null) {
                        miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk.onCreate();
                    }
                }

                @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
                public void onDestroy() {
                    ByteAppManager.MiniAppLifecycleListener miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getMiniAppLifecycleListener$com_cloud_tmc_miniapp_sdk();
                    if (miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk != null) {
                        miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk.onDestroy();
                    }
                }

                @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
                public void onPause() {
                    ByteAppManager.MiniAppLifecycleListener miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getMiniAppLifecycleListener$com_cloud_tmc_miniapp_sdk();
                    if (miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk != null) {
                        miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk.onPause();
                    }
                }

                @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
                public void onResume() {
                    ByteAppManager.MiniAppLifecycleListener miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getMiniAppLifecycleListener$com_cloud_tmc_miniapp_sdk();
                    if (miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk != null) {
                        miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk.onResume();
                    }
                }

                @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
                public void onStart() {
                    ByteAppManager.MiniAppLifecycleListener miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getMiniAppLifecycleListener$com_cloud_tmc_miniapp_sdk();
                    if (miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk != null) {
                        miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk.onStart();
                    }
                }

                @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
                public void onStop() {
                    ByteAppManager.MiniAppLifecycleListener miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getMiniAppLifecycleListener$com_cloud_tmc_miniapp_sdk();
                    if (miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk != null) {
                        miniAppLifecycleListener$com_cloud_tmc_miniapp_sdk.onStop();
                    }
                }
            }

            public ServiceConnectionC0329OooO00o(String str, Bundle bundle, com.cloud.tmc.miniapp.ipc.OooO0O0 oooO0O0) {
                this.OooO00o = str;
                this.OooO0O0 = bundle;
                this.OooO0OO = oooO0O0;
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                try {
                    IIpcMiniLauncherChannel iIpcMiniLauncherChannelAsInterface = IIpcMiniLauncherChannel.Stub.asInterface(iBinder);
                    if (iIpcMiniLauncherChannelAsInterface != null) {
                        String str = this.OooO00o;
                        Bundle bundle = this.OooO0O0;
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        iIpcMiniLauncherChannelAsInterface.launcherMiniApp(str, bundle);
                    }
                    if (iIpcMiniLauncherChannelAsInterface != null) {
                        iIpcMiniLauncherChannelAsInterface.registerMiniAppLifecycleListener(new BinderC0330OooO00o());
                    }
                } catch (Throwable th2) {
                    TmcLogger.e(":IpcTaskManagerService", "Exception startService", th2);
                    com.cloud.tmc.miniapp.ipc.OooO0O0 oooO0O0 = this.OooO0OO;
                    if (oooO0O0 != null) {
                        oooO0O0.OooO00o(0, th2);
                    }
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                System.out.println((Object) "connect fail");
            }
        }

        public static final class OooO0O0 implements ServiceConnection {
            public final /* synthetic */ boolean OooO00o;
            public final /* synthetic */ Context OooO0O0;
            public final /* synthetic */ com.cloud.tmc.miniapp.ipc.OooO0O0 OooO0OO;

            public OooO0O0(boolean z10, Context context, com.cloud.tmc.miniapp.ipc.OooO0O0 oooO0O0) {
                this.OooO00o = z10;
                this.OooO0O0 = context;
                this.OooO0OO = oooO0O0;
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                try {
                    TmcLogger.d(":IpcTaskManagerService", "warmupWebview iMiniLauncherChannel");
                    IIpcMiniLauncherChannel iIpcMiniLauncherChannelAsInterface = IIpcMiniLauncherChannel.Stub.asInterface(iBinder);
                    if (iIpcMiniLauncherChannelAsInterface != null) {
                        iIpcMiniLauncherChannelAsInterface.warmupWebview(this.OooO00o);
                    }
                    try {
                        this.OooO0O0.unbindService(this);
                    } catch (Throwable th2) {
                        TmcLogger.e(":IpcTaskManagerService", th2);
                    }
                } catch (Throwable th3) {
                    TmcLogger.e(":IpcTaskManagerService", "Exception startService", th3);
                    com.cloud.tmc.miniapp.ipc.OooO0O0 oooO0O0 = this.OooO0OO;
                    if (oooO0O0 != null) {
                        oooO0O0.OooO00o(0, th3);
                    }
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                System.out.println((Object) "connect fail");
            }
        }

        public static final void OooO0O0(Context context, String str, Bundle bundle, com.cloud.tmc.miniapp.ipc.OooO0O0 oooO0O0) {
            try {
                OooO00o oooO00o = IpcMiniLauncherService.OooO00o;
                Intent intent = new Intent(context, (Class<?>) IpcMiniLauncherService.class);
                AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, context);
                if (context != null) {
                    context.bindService(intent, new ServiceConnectionC0329OooO00o(str, bundle, oooO0O0), 1);
                }
            } catch (Throwable unused) {
            }
        }

        @JvmStatic
        public final void OooO00o(final Context context, final String str, final Bundle bundle, final com.cloud.tmc.miniapp.ipc.OooO0O0 oooO0O0) {
            TmcLogger.d(":IpcTaskManagerService", "startService: " + Log.getStackTraceString(new Throwable("Just print")));
            try {
                if (!ProcessUtils.isMiniProcess()) {
                    MiniAppIpcAsyncManager.INSTANCE.runOnBackground(new Runnable() { // from class: com.cloud.tmc.miniapp.ipc.a
                        @Override // java.lang.Runnable
                        public final void run() {
                            IpcMiniLauncherService.OooO00o.OooO0O0(context, str, bundle, oooO0O0);
                        }
                    });
                    return;
                }
                Context applicationContext = context != null ? context.getApplicationContext() : null;
                Utils.setAppIfNecessary(applicationContext instanceof Application ? (Application) applicationContext : null);
                ((MiniAppLaunch.OooO0o) oooO0O0).OooO00o(false);
            } catch (Throwable th2) {
                TmcLogger.e(":IpcTaskManagerService", th2);
                ((MiniAppLaunch.OooO0o) oooO0O0).OooO00o(0, th2);
            }
        }

        @JvmStatic
        public final void OooO00o(Context context, boolean z10, com.cloud.tmc.miniapp.ipc.OooO0O0 oooO0O0) {
            try {
                TmcLogger.d(":IpcTaskManagerService", "warmupWebview");
                if (ProcessUtils.isMiniProcess()) {
                    TmcLogger.d(":IpcTaskManagerService", "warmupWebview isMiniProcess");
                    Context applicationContext = context != null ? context.getApplicationContext() : null;
                    Utils.setAppIfNecessary(applicationContext instanceof Application ? (Application) applicationContext : null);
                    ((MiniAppLaunch.OooOO0) oooO0O0).OooO00o(false);
                    return;
                }
                Intent intent = new Intent(context, (Class<?>) IpcMiniLauncherService.class);
                AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, context);
                if (context != null) {
                    context.bindService(intent, new OooO0O0(z10, context, oooO0O0), 1);
                }
            } catch (Throwable th2) {
                TmcLogger.e(":IpcTaskManagerService", th2);
                TmcLogger.e(MiniAppLaunch.TAG, th2);
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        TmcLogger.d(":IpcTaskManagerService", "onBind");
        return new com.cloud.tmc.miniapp.ipc.binderimpl.OooO00o();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        TmcLogger.d(":IpcTaskManagerService", "onCreate");
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        TmcLogger.d(":IpcTaskManagerService", "onDestroy");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i11, int i12) {
        TmcLogger.d(":IpcTaskManagerService", "onStartCommand");
        return super.onStartCommand(intent, i11, i12);
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        TmcLogger.d(":IpcTaskManagerService", "onUnbind");
        return super.onUnbind(intent);
    }
}
