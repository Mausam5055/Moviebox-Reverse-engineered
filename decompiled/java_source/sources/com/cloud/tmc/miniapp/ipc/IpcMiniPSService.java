package com.cloud.tmc.miniapp.ipc;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.cloud.tmc.kernel.log.TmcLogger;

/* JADX INFO: loaded from: classes3.dex */
public final class IpcMiniPSService extends Service {
    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        TmcLogger.d(":IpcTaskManagerService", "onBind");
        return new com.cloud.tmc.miniapp.ipc.binderimpl.OooO0O0();
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
