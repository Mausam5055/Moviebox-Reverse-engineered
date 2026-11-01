package com.cloud.tmc.miniapp.ipc;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.cloud.tmc.miniapp.ipc.multiprogress.IpcMiniProcessClientService;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public class OooO00o extends Service {
    public static final C0331OooO00o OooO00o = new C0331OooO00o();

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.ipc.OooO00o$OooO00o, reason: collision with other inner class name */
    public static final class C0331OooO00o {
        @JvmStatic
        public final void OooO00o(Context context) {
            Intrinsics.h(context, "context");
            TmcLogger.d("Tmcintegration:IpcMiniClientService", "startService: " + Log.getStackTraceString(new Throwable("Just print")));
            try {
                Intent intent = new Intent(context, (Class<?>) IpcMiniProcessClientService.class);
                AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, context);
                context.startService(intent);
            } catch (Throwable th2) {
                TmcLogger.e("Tmcintegration:IpcMiniClientService", "Exception startService", th2);
            }
        }
    }

    public String OooO00o() {
        return "Tmcintegration:IpcMiniClientService";
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        TmcLogger.d(OooO00o(), "onBind");
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        TmcLogger.d(OooO00o(), "onCreate, processName: " + ProcessUtils.getProcessName());
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        TmcLogger.d(OooO00o(), "onDestroy");
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        TmcLogger.d(OooO00o(), "onLowMemory");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i11, int i12) {
        TmcLogger.d(OooO00o(), "onStartCommand");
        return 2;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks2
    public void onTrimMemory(int i11) {
        super.onTrimMemory(i11);
        TmcLogger.d(OooO00o(), "onTrimMemory: " + i11);
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        TmcLogger.d(OooO00o(), "onUnbind");
        return super.onUnbind(intent);
    }
}
