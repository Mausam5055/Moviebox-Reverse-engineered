package com.cloud.tmc.component_api_ps.ipc.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.cloud.tmc.component_api_ps.BuildConfig;
import com.cloud.tmc.component_api_ps.MiniAppProtocolModuleLogger;
import com.cloud.tmc.component_api_ps.ipc.impl.IIPCMiniProtocolMainServerImpl;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\"\u0010\n\u001a\u00020\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0016J\u0012\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\u0011"}, d2 = {"Lcom/cloud/tmc/component_api_ps/ipc/service/MiniAppProtocolMainService;", "Landroid/app/Service;", "()V", "onBind", "Landroid/os/IBinder;", "intent", "Landroid/content/Intent;", "onCreate", "", "onDestroy", "onStartCommand", "", "flags", "startId", "onUnbind", "", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MiniAppProtocolMainService extends Service {
    public static final String TAG = "MiniAppCrossProcessServerService";

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Intrinsics.h(intent, "intent");
        MiniAppProtocolModuleLogger.d(TAG, "Lifecycle:onBind");
        return new IIPCMiniProtocolMainServerImpl();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        MiniAppProtocolModuleLogger.d(TAG, "Lifecycle:onCreate");
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        MiniAppProtocolModuleLogger.d(TAG, "Lifecycle:onDestroy");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        MiniAppProtocolModuleLogger.d(TAG, "Lifecycle:onStartCommand");
        return super.onStartCommand(intent, flags, startId);
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        MiniAppProtocolModuleLogger.d(TAG, "Lifecycle:onUnbind");
        return super.onUnbind(intent);
    }
}
