package com.cloud.tmc.component_api_ps.ipc.impl;

import android.os.Bundle;
import com.cloud.tmc.component_api_ps.BuildConfig;
import com.cloud.tmc.component_api_ps.MiniAppProtocolModuleLogger;
import com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolIpcProcessor;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00042\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J&\u0010\u000b\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00042\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J&\u0010\f\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00042\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J&\u0010\r\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00042\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/cloud/tmc/component_api_ps/ipc/impl/IIPCMiniProtocolMainServerImpl;", "Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel$Stub;", "()V", "TAG", "", "onMiniAppAbility", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "callbackId", "bundle", "Landroid/os/Bundle;", "onMiniAppDataSync", "onMiniAppExtra", "onMiniAppPerformance", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class IIPCMiniProtocolMainServerImpl extends IIpcMiniProtocolMainChannel.Stub {
    private final String TAG = "IIPCMiniProtocolMainServerImpl";

    @Override // com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel
    public boolean onMiniAppAbility(String type, String callbackId, Bundle bundle) {
        try {
            MiniAppProtocolIpcProcessor.INSTANCE.executeCallback(callbackId, bundle);
            return true;
        } catch (Throwable th2) {
            MiniAppProtocolModuleLogger.e(this.TAG, "onQueryAppBitmapSuccess", th2);
            return true;
        }
    }

    @Override // com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel
    public boolean onMiniAppDataSync(String type, String callbackId, Bundle bundle) {
        try {
            MiniAppProtocolIpcProcessor.INSTANCE.executeCallback(callbackId, bundle);
            return true;
        } catch (Throwable th2) {
            MiniAppProtocolModuleLogger.e(this.TAG, "onQueryAppBitmapSuccess", th2);
            return true;
        }
    }

    @Override // com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel
    public boolean onMiniAppExtra(String type, String callbackId, Bundle bundle) {
        try {
            MiniAppProtocolIpcProcessor.INSTANCE.executeCallback(callbackId, bundle);
            return true;
        } catch (Throwable th2) {
            MiniAppProtocolModuleLogger.e(this.TAG, "onQueryAppBitmapSuccess", th2);
            return true;
        }
    }

    @Override // com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel
    public boolean onMiniAppPerformance(String type, String callbackId, Bundle bundle) {
        try {
            MiniAppProtocolIpcProcessor.INSTANCE.executeCallback(callbackId, bundle);
            return true;
        } catch (Throwable th2) {
            MiniAppProtocolModuleLogger.e(this.TAG, "onQueryAppBitmapSuccess", th2);
            return true;
        }
    }
}
