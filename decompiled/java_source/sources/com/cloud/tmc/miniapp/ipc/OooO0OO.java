package com.cloud.tmc.miniapp.ipc;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.IIpcMiniLauncherChannel;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0OO implements ServiceConnection {
    public final /* synthetic */ String OooO00o;
    public final /* synthetic */ Context OooO0O0;
    public final /* synthetic */ OooO0O0 OooO0OO;
    public final /* synthetic */ String OooO0Oo;

    public OooO0OO(String str, Context context, OooO0O0 oooO0O0, String str2) {
        this.OooO00o = str;
        this.OooO0O0 = context;
        this.OooO0OO = oooO0O0;
        this.OooO0Oo = str2;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            TmcLogger.d(":IpcTaskManagerService", "warmupWebview iMiniLauncherChannel");
            IIpcMiniLauncherChannel iIpcMiniLauncherChannelAsInterface = IIpcMiniLauncherChannel.Stub.asInterface(iBinder);
            Bundle bundle = new Bundle();
            String str = this.OooO0Oo;
            if (str == null) {
                str = "";
            }
            bundle.putString(TmcConstants.KEY_MINIAPP_SYNC_DATA, str);
            if (iIpcMiniLauncherChannelAsInterface != null) {
                iIpcMiniLauncherChannelAsInterface.preLauncherData(this.OooO00o, bundle);
            }
            try {
                this.OooO0O0.unbindService(this);
            } catch (Throwable th2) {
                TmcLogger.e(":IpcTaskManagerService", th2);
            }
        } catch (Throwable th3) {
            TmcLogger.e(":IpcTaskManagerService", "Exception startService", th3);
            OooO0O0 oooO0O0 = this.OooO0OO;
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
