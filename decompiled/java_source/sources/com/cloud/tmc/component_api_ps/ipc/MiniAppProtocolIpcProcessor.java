package com.cloud.tmc.component_api_ps.ipc;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.SystemClock;
import com.cloud.tmc.component_api_ps.BuildConfig;
import com.cloud.tmc.component_api_ps.MiniAppIpcCommonUtils;
import com.cloud.tmc.component_api_ps.MiniAppProtocolModuleLogger;
import com.cloud.tmc.component_api_ps.async.MiniAppIpcAsyncManager;
import com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcErrorResponseInfo;
import com.cloud.tmc.miniapp.IIpcMiniPSChannel;
import com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u0007H\u0002J\u001a\u0010\u0010\u001a\u00020\u00112\b\u0010\u000e\u001a\u0004\u0018\u00010\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013JR\u0010\u0014\u001a\u00020\r2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u00072 \b\u0002\u0010\u0018\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\r\u0018\u00010\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0013JH\u0010\u001c\u001a\u00020\r2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u00072 \b\u0002\u0010\u0018\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\r\u0018\u00010\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0013J\u0016\u0010\u001e\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R'\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\u001f"}, d2 = {"Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;", "", "()V", "TAG", "", "callbackMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;", "getCallbackMap", "()Ljava/util/concurrent/ConcurrentHashMap;", "callbackMap$delegate", "Lkotlin/Lazy;", "exceptionCallback", "", "callbackId", "callback", "executeCallback", "", "bundle", "Landroid/os/Bundle;", "startIpcMainProcessInvoke", "context", "Landroid/content/Context;", "pkgName", "block", "Lkotlin/Function2;", "Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;", "params", "startIpcPSInvoke", "Lcom/cloud/tmc/miniapp/IIpcMiniPSChannel;", "stickyCallback", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MiniAppProtocolIpcProcessor {
    private static final String TAG = "MiniAppProtocolIpcProcessor";
    public static final MiniAppProtocolIpcProcessor INSTANCE = new MiniAppProtocolIpcProcessor();

    /* JADX INFO: renamed from: callbackMap$delegate, reason: from kotlin metadata */
    private static final Lazy callbackMap = LazyKt.b(new Function0<ConcurrentHashMap<String, MiniAppProtocolInvokeCallback>>() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolIpcProcessor$callbackMap$2
        @Override // kotlin.jvm.functions.Function0
        public final ConcurrentHashMap<String, MiniAppProtocolInvokeCallback> invoke() {
            return new ConcurrentHashMap<>();
        }
    });

    private MiniAppProtocolIpcProcessor() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void exceptionCallback(String callbackId, final MiniAppProtocolInvokeCallback callback) {
        try {
            MiniAppProtocolModuleLogger.d(TAG, "exceptionCallback,callbackId:" + callbackId);
            MiniAppIpcAsyncManager.INSTANCE.runOnMain(new Runnable() { // from class: com.cloud.tmc.component_api_ps.ipc.b
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppProtocolIpcProcessor.exceptionCallback$lambda$4(callback);
                }
            });
            if (callbackId == null || callbackId.length() == 0 || !getCallbackMap().containsKey(callbackId)) {
                return;
            }
            getCallbackMap().remove(callbackId);
            MiniAppProtocolModuleLogger.d(TAG, "exceptionCallback,removed callbackId:" + callbackId);
        } catch (Throwable th2) {
            MiniAppProtocolModuleLogger.e(TAG, "", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void exceptionCallback$lambda$4(MiniAppProtocolInvokeCallback miniAppProtocolInvokeCallback) {
        if (miniAppProtocolInvokeCallback != null) {
            miniAppProtocolInvokeCallback.onFailed(Integer.valueOf(MiniAppIpcErrorResponseInfo.ERROR_CODE_HAPPENED_EXCEPTION), "happened exception");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void executeCallback$lambda$5(MiniAppProtocolInvokeCallback miniAppProtocolInvokeCallback, Bundle bundle) {
        if (miniAppProtocolInvokeCallback != null) {
            miniAppProtocolInvokeCallback.onSuccess(bundle);
        }
    }

    private final ConcurrentHashMap<String, MiniAppProtocolInvokeCallback> getCallbackMap() {
        return (ConcurrentHashMap) callbackMap.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.String] */
    public static final void startIpcMainProcessInvoke$lambda$3(final MiniAppProtocolInvokeCallback miniAppProtocolInvokeCallback, final Context context, String str, Bundle bundle, final Function2 function2) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (miniAppProtocolInvokeCallback != null) {
            try {
                objectRef.element = String.valueOf(SystemClock.elapsedRealtime());
                INSTANCE.getCallbackMap().put(objectRef.element, miniAppProtocolInvokeCallback);
            } catch (Throwable th2) {
                INSTANCE.exceptionCallback((String) objectRef.element, miniAppProtocolInvokeCallback);
                MiniAppProtocolModuleLogger.e(TAG, "", th2);
                return;
            }
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(str, MiniAppIpcConfig.MINI_APP_MAIN_CHANNEL_SERVICE_CLS_NAME));
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        CharSequence charSequence = (CharSequence) objectRef.element;
        if (charSequence != null && charSequence.length() != 0) {
            intent.putExtra(MiniAppIpcConfig.MINI_APP_PS_CHANNEL_PARAM_CALLBACK_ID, (String) objectRef.element);
        }
        intent.putExtra(MiniAppIpcConfig.MINI_APP_PS_CHANNEL_PARAM_PKG, context.getPackageName());
        MiniAppProtocolModuleLogger.d(TAG, "startIpcInvoke,intent:" + MiniAppIpcCommonUtils.INSTANCE.getIntentLoggerFormat(intent) + ",callbackId:" + objectRef.element);
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        context.bindService(intent, new ServiceConnection() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName name, IBinder service) {
                try {
                    MiniAppProtocolModuleLogger.d("MiniAppProtocolIpcProcessor", "onServiceConnected,callbackId:" + ((Object) objectRef.element));
                    IIpcMiniProtocolMainChannel iIpcMiniProtocolMainChannelAsInterface = IIpcMiniProtocolMainChannel.Stub.asInterface(service);
                    try {
                        Function2<IIpcMiniProtocolMainChannel, String, Unit> function3 = function2;
                        if (function3 != null) {
                            function3.invoke(iIpcMiniProtocolMainChannelAsInterface, objectRef.element);
                        }
                    } catch (Throwable th3) {
                        MiniAppProtocolModuleLogger.e("MiniAppProtocolIpcProcessor", "", th3);
                    }
                    try {
                        MiniAppProtocolModuleLogger.d("MiniAppProtocolIpcProcessor", "ipc used time:" + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
                    } catch (Throwable th4) {
                        MiniAppProtocolModuleLogger.e("MiniAppProtocolIpcProcessor", "", th4);
                    }
                    try {
                        context.unbindService(this);
                    } catch (Throwable th5) {
                        MiniAppProtocolModuleLogger.e("MiniAppProtocolIpcProcessor", "", th5);
                    }
                } catch (Throwable th6) {
                    MiniAppProtocolIpcProcessor.INSTANCE.exceptionCallback(objectRef.element, miniAppProtocolInvokeCallback);
                    MiniAppProtocolModuleLogger.e("MiniAppProtocolIpcProcessor", "Exception startService", th6);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName name) {
                System.out.println((Object) "connect fail");
                MiniAppProtocolModuleLogger.d("MiniAppProtocolIpcProcessor", "onServiceDisconnected,callbackId:" + ((Object) objectRef.element));
            }
        }, 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void startIpcPSInvoke$default(MiniAppProtocolIpcProcessor miniAppProtocolIpcProcessor, Context context, MiniAppProtocolInvokeCallback miniAppProtocolInvokeCallback, Function2 function2, Bundle bundle, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            function2 = null;
        }
        if ((i11 & 8) != 0) {
            bundle = null;
        }
        miniAppProtocolIpcProcessor.startIpcPSInvoke(context, miniAppProtocolInvokeCallback, function2, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.String] */
    public static final void startIpcPSInvoke$lambda$1(final MiniAppProtocolInvokeCallback miniAppProtocolInvokeCallback, final Context context, String ipcPkgName, Bundle bundle, final Function2 function2) {
        Intrinsics.h(ipcPkgName, "$ipcPkgName");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (miniAppProtocolInvokeCallback != null) {
            try {
                objectRef.element = String.valueOf(SystemClock.elapsedRealtime());
                INSTANCE.getCallbackMap().put(objectRef.element, miniAppProtocolInvokeCallback);
            } catch (Throwable th2) {
                INSTANCE.exceptionCallback((String) objectRef.element, miniAppProtocolInvokeCallback);
                MiniAppProtocolModuleLogger.e(TAG, "", th2);
                return;
            }
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(ipcPkgName, MiniAppIpcConfig.MINI_APP_PS_CHANNEL_SERVICE_CLS_NAME));
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        CharSequence charSequence = (CharSequence) objectRef.element;
        if (charSequence != null && charSequence.length() != 0) {
            intent.putExtra(MiniAppIpcConfig.MINI_APP_PS_CHANNEL_PARAM_CALLBACK_ID, (String) objectRef.element);
        }
        intent.putExtra(MiniAppIpcConfig.MINI_APP_PS_CHANNEL_PARAM_PKG, context.getPackageName());
        MiniAppProtocolModuleLogger.d(TAG, "startIpcInvoke,intent:" + MiniAppIpcCommonUtils.INSTANCE.getIntentLoggerFormat(intent) + ",callbackId:" + objectRef.element);
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        context.bindService(intent, new ServiceConnection() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName name, IBinder service) {
                try {
                    MiniAppProtocolModuleLogger.d("MiniAppProtocolIpcProcessor", "onServiceConnected,callbackId:" + ((Object) objectRef.element));
                    IIpcMiniPSChannel iIpcMiniPSChannelAsInterface = IIpcMiniPSChannel.Stub.asInterface(service);
                    try {
                        Function2<IIpcMiniPSChannel, String, Unit> function3 = function2;
                        if (function3 != null) {
                            function3.invoke(iIpcMiniPSChannelAsInterface, objectRef.element);
                        }
                    } catch (Throwable th3) {
                        MiniAppProtocolModuleLogger.e("MiniAppProtocolIpcProcessor", "", th3);
                    }
                    try {
                        MiniAppProtocolModuleLogger.d("MiniAppProtocolIpcProcessor", "ipc used time:" + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
                    } catch (Throwable th4) {
                        MiniAppProtocolModuleLogger.e("MiniAppProtocolIpcProcessor", "", th4);
                    }
                    try {
                        context.unbindService(this);
                    } catch (Throwable th5) {
                        MiniAppProtocolModuleLogger.e("MiniAppProtocolIpcProcessor", "", th5);
                    }
                } catch (Throwable th6) {
                    MiniAppProtocolIpcProcessor.INSTANCE.exceptionCallback(objectRef.element, miniAppProtocolInvokeCallback);
                    MiniAppProtocolModuleLogger.e("MiniAppProtocolIpcProcessor", "Exception startService", th6);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName name) {
                MiniAppProtocolModuleLogger.d("MiniAppProtocolIpcProcessor", "onServiceDisconnected,callbackId:" + ((Object) objectRef.element));
            }
        }, 1);
    }

    public final boolean executeCallback(String callbackId, final Bundle bundle) {
        try {
            MiniAppProtocolModuleLogger.d(TAG, "executeCallback,callbackId:" + callbackId);
            if (callbackId != null && callbackId.length() != 0 && getCallbackMap().containsKey(callbackId)) {
                final MiniAppProtocolInvokeCallback miniAppProtocolInvokeCallback = getCallbackMap().get(callbackId);
                MiniAppIpcAsyncManager.INSTANCE.runOnMain(new Runnable() { // from class: com.cloud.tmc.component_api_ps.ipc.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        MiniAppProtocolIpcProcessor.executeCallback$lambda$5(miniAppProtocolInvokeCallback, bundle);
                    }
                });
                getCallbackMap().remove(callbackId);
                MiniAppProtocolModuleLogger.d(TAG, "executeCallback,removed callbackId:" + callbackId);
                return true;
            }
            return false;
        } catch (Throwable th2) {
            MiniAppProtocolModuleLogger.e(TAG, "", th2);
            return false;
        }
    }

    public final void startIpcMainProcessInvoke(Context context, String pkgName, final MiniAppProtocolInvokeCallback callback, final Function2<? super IIpcMiniProtocolMainChannel, ? super String, Unit> block, final Bundle params) {
        try {
            if (context == null) {
                MiniAppProtocolModuleLogger.d(TAG, "startIpcInvoke context is empty");
                return;
            }
            final Context applicationContext = context.getApplicationContext();
            final String packageName = applicationContext.getPackageName();
            if (packageName == null || packageName.length() != 0) {
                MiniAppIpcAsyncManager.INSTANCE.runOnBackground(new Runnable() { // from class: com.cloud.tmc.component_api_ps.ipc.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        MiniAppProtocolIpcProcessor.startIpcMainProcessInvoke$lambda$3(callback, applicationContext, packageName, params, block);
                    }
                });
            } else {
                MiniAppProtocolModuleLogger.d(TAG, "startIpcInvoke negativeScreenPkgName is empty");
            }
        } catch (Throwable th2) {
            MiniAppProtocolModuleLogger.e(TAG, "", th2);
        }
    }

    public final void startIpcPSInvoke(Context context, final MiniAppProtocolInvokeCallback callback, final Function2<? super IIpcMiniPSChannel, ? super String, Unit> block, final Bundle params) {
        try {
            if (context == null) {
                MiniAppProtocolModuleLogger.d(TAG, "startIpcInvoke context is empty");
                return;
            }
            final Context innerContext = context.getApplicationContext();
            MiniAppIpcCommonUtils miniAppIpcCommonUtils = MiniAppIpcCommonUtils.INSTANCE;
            Intrinsics.g(innerContext, "innerContext");
            final String iPCPkgName = miniAppIpcCommonUtils.getIPCPkgName(innerContext);
            if (iPCPkgName.length() == 0) {
                MiniAppProtocolModuleLogger.d(TAG, "startIpcInvoke negativeScreenPkgName is empty");
            } else {
                MiniAppIpcAsyncManager.INSTANCE.runOnBackground(new Runnable() { // from class: com.cloud.tmc.component_api_ps.ipc.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        MiniAppProtocolIpcProcessor.startIpcPSInvoke$lambda$1(callback, innerContext, iPCPkgName, params, block);
                    }
                });
            }
        } catch (Throwable th2) {
            MiniAppProtocolModuleLogger.e(TAG, "", th2);
        }
    }

    public final void stickyCallback(String callbackId, MiniAppProtocolInvokeCallback callback) {
        Intrinsics.h(callbackId, "callbackId");
        Intrinsics.h(callback, "callback");
        try {
            getCallbackMap().put(callbackId, callback);
        } catch (Throwable th2) {
            MiniAppProtocolModuleLogger.e(TAG, "", th2);
        }
    }
}
