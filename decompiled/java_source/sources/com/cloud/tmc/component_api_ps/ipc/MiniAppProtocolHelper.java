package com.cloud.tmc.component_api_ps.ipc;

import android.content.Context;
import android.os.Bundle;
import android.os.Process;
import android.os.RemoteException;
import com.cloud.tmc.component_api_ps.BuildConfig;
import com.cloud.tmc.component_api_ps.MiniAppProtocolModuleLogger;
import com.cloud.tmc.component_api_ps.ipc.callbcak.IMiniAppDataSyncCallback;
import com.cloud.tmc.component_api_ps.ipc.callbcak.IMiniAppInvokeDataCallback;
import com.cloud.tmc.component_api_ps.ipc.callbcak.IMiniAppVersionCallback;
import com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.IIpcMiniPSChannel;
import com.google.gson.Gson;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0007J0\u0010\u001a\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00042\b\u0010\u001e\u001a\u0004\u0018\u00010\u00042\b\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J+\u0010 \u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0002\u0010$J&\u0010%\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00042\b\u0010#\u001a\u0004\u0018\u00010\nH\u0007J\b\u0010&\u001a\u0004\u0018\u00010\rJ\u001c\u0010'\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0004H\u0007J\u001c\u0010(\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010#\u001a\u0004\u0018\u00010\nH\u0007J&\u0010)\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00042\b\u0010#\u001a\u0004\u0018\u00010\nH\u0007J\u001a\u0010*\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010#\u001a\u00020\u000fH\u0007J&\u0010+\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00042\b\u0010#\u001a\u0004\u0018\u00010\nH\u0007J8\u0010+\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u001a\u0010,\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010-j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`.2\b\u0010#\u001a\u0004\u0018\u00010\nH\u0007J&\u0010/\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00042\b\u0010#\u001a\u0004\u0018\u00010\nH\u0007J6\u0010/\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u001a\u00100\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010-j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`.2\b\u0010#\u001a\u0004\u0018\u00010\nJ\u0012\u00101\u001a\u00020\u00192\b\u0010#\u001a\u0004\u0018\u00010\rH\u0007J\u000e\u00102\u001a\u00020\u00192\u0006\u00103\u001a\u00020\u0011J\u001c\u00104\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\b\u0002\u00105\u001a\u00020\u0011H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;", "", "()V", "SYNC_ADDHOME_SUCCESS", "", "SYNC_MINI_APP_START_TIME", "SYNC_MINI_APP_USE_TIME", "SYNC_MINI_INIT_PROCESS", "TAG", "cleanAllMiniAPPStorageCallback", "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;", "cleanMiniAPPStorageCallback", "dataSyncCallback", "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;", "miniAppVersionCallback", "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppVersionCallback;", "miniPid", "", "miniappAllStoregeCallback", "miniappStoregeCallback", "offlineAppsCallback", "offlineSingleAppCallback", "queryAllShortcutCallback", "querySingleShortcutCallback", "KillMiniProcess", "", "addHomeToScreen", "context", "Landroid/content/Context;", "appId", MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, MiniAppIpcConfig.IPC_ADDHOME_APP_LOGO, "cleanMiniAppStorage", "removeSize", "", "callback", "(Landroid/content/Context;Ljava/lang/Long;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V", "cleanMiniAppStorageByAppId", "getDataSyncCallback", "preloadOfflineMiniApp", "queryAllMiniAppStorage", "queryMiniAppStorage", "queryMiniAppVersion", "queryOfflineApps", "appidList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "queryShortcutExist", "appIdList", "setDataSyncCallback", "updateMiniPid", "id", "warmup", NativeComponentConstants.KEY_COMPONENT_TYPE, BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MiniAppProtocolHelper {
    public static final MiniAppProtocolHelper INSTANCE = new MiniAppProtocolHelper();
    public static final String SYNC_ADDHOME_SUCCESS = "miniAddHomeSuccess";
    public static final String SYNC_MINI_APP_START_TIME = "miniAppStartTime";
    public static final String SYNC_MINI_APP_USE_TIME = "miniAppUseTime";
    public static final String SYNC_MINI_INIT_PROCESS = "miniInitProcess";
    private static final String TAG = "MiniAppProtocolHelper";
    private static IMiniAppInvokeDataCallback cleanAllMiniAPPStorageCallback;
    private static IMiniAppInvokeDataCallback cleanMiniAPPStorageCallback;
    private static IMiniAppDataSyncCallback dataSyncCallback;
    private static IMiniAppVersionCallback miniAppVersionCallback;
    private static int miniPid;
    private static IMiniAppInvokeDataCallback miniappAllStoregeCallback;
    private static IMiniAppInvokeDataCallback miniappStoregeCallback;
    private static IMiniAppInvokeDataCallback offlineAppsCallback;
    private static IMiniAppInvokeDataCallback offlineSingleAppCallback;
    private static IMiniAppInvokeDataCallback queryAllShortcutCallback;
    private static IMiniAppInvokeDataCallback querySingleShortcutCallback;

    private MiniAppProtocolHelper() {
    }

    @JvmStatic
    public static final void KillMiniProcess() {
        try {
            MiniAppProtocolModuleLogger.d(TAG, "KillMiniProcess -> " + miniPid);
            int i11 = miniPid;
            if (i11 != 0) {
                Process.killProcess(i11);
            }
        } catch (Throwable th2) {
            MiniAppProtocolModuleLogger.e(TAG, "KillMiniProcess", th2);
        }
    }

    @JvmStatic
    public static final void addHomeToScreen(Context context, String appId, String appName, String logoUrl) {
        if (context == null) {
            MiniAppProtocolModuleLogger.d(TAG, "addHomeToScreen context is null return");
            return;
        }
        final Bundle bundle = new Bundle();
        bundle.putString(MiniAppIpcConfig.IPC_QUERY_APP_ID, appId);
        bundle.putString(MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, appName);
        bundle.putString(MiniAppIpcConfig.IPC_ADDHOME_APP_LOGO, logoUrl);
        MiniAppProtocolIpcProcessor.startIpcPSInvoke$default(MiniAppProtocolIpcProcessor.INSTANCE, context.getApplicationContext(), null, new Function2<IIpcMiniPSChannel, String, Unit>() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.addHomeToScreen.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws RemoteException {
                invoke((IIpcMiniPSChannel) obj, (String) obj2);
                return Unit.f67061a;
            }

            public final void invoke(IIpcMiniPSChannel iIpcMiniPSChannel, String str) throws RemoteException {
                if (iIpcMiniPSChannel != null) {
                    iIpcMiniPSChannel.miniAppAbility(MiniAppIpcConfig.TYPE_IPC_ABILITY_ADD_SHORTCUT, str, bundle);
                }
            }
        }, null, 8, null);
    }

    @JvmStatic
    public static final void cleanMiniAppStorage(Context context, Long removeSize, IMiniAppInvokeDataCallback callback) {
        if (context == null) {
            MiniAppProtocolModuleLogger.d(TAG, "miniappAllStoregeCallback context is null return");
            return;
        }
        cleanAllMiniAPPStorageCallback = callback;
        final Bundle bundle = new Bundle();
        bundle.putLong(MiniAppIpcConfig.ABILITY_STOREAGE_CLEAN_SIZE, removeSize != null ? removeSize.longValue() : 0L);
        MiniAppProtocolIpcProcessor.startIpcPSInvoke$default(MiniAppProtocolIpcProcessor.INSTANCE, context, new MiniAppProtocolInvokeCallback() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.cleanMiniAppStorage.1
            @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
            public void onFailed(Integer errorCode, String failedMsg) {
                try {
                    IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = MiniAppProtocolHelper.cleanAllMiniAPPStorageCallback;
                    if (iMiniAppInvokeDataCallback != null) {
                        iMiniAppInvokeDataCallback.onSuccess("");
                    }
                    MiniAppProtocolHelper.cleanAllMiniAPPStorageCallback = null;
                } catch (Throwable th2) {
                    MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "cleanMiniAppStorageByAppId Throwable =", th2);
                }
            }

            @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
            public void onSuccess(Bundle bundle2) {
                String string;
                if (bundle2 != null) {
                    try {
                        string = bundle2.getString(MiniAppIpcConfig.IPC_RESULT_JSON_DATA);
                    } catch (Throwable th2) {
                        MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "cleanMiniAppStorageByAppId Throwable =", th2);
                        return;
                    }
                } else {
                    string = null;
                }
                MiniAppProtocolModuleLogger.d(MiniAppProtocolHelper.TAG, "cleanMiniAppStorageByAppId = " + string);
                IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = MiniAppProtocolHelper.cleanAllMiniAPPStorageCallback;
                if (iMiniAppInvokeDataCallback != null) {
                    iMiniAppInvokeDataCallback.onSuccess(string);
                }
                MiniAppProtocolHelper.cleanAllMiniAPPStorageCallback = null;
            }
        }, new Function2<IIpcMiniPSChannel, String, Unit>() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.cleanMiniAppStorage.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws RemoteException {
                invoke((IIpcMiniPSChannel) obj, (String) obj2);
                return Unit.f67061a;
            }

            public final void invoke(IIpcMiniPSChannel iIpcMiniPSChannel, String str) throws RemoteException {
                if (iIpcMiniPSChannel != null) {
                    iIpcMiniPSChannel.miniAppDataSync(MiniAppIpcConfig.TYPE_IPC_DATA_MINI_CLEAN_ALL_STORAGE, str, bundle);
                }
            }
        }, null, 8, null);
    }

    @JvmStatic
    public static final void cleanMiniAppStorageByAppId(Context context, String appId, IMiniAppInvokeDataCallback callback) {
        if (context == null) {
            MiniAppProtocolModuleLogger.d(TAG, "miniappAllStoregeCallback context is null return");
            return;
        }
        cleanMiniAPPStorageCallback = callback;
        if (appId != null && appId.length() != 0) {
            final Bundle bundle = new Bundle();
            bundle.putString(MiniAppIpcConfig.IPC_QUERY_APP_ID, appId);
            MiniAppProtocolIpcProcessor.startIpcPSInvoke$default(MiniAppProtocolIpcProcessor.INSTANCE, context.getApplicationContext(), new MiniAppProtocolInvokeCallback() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.cleanMiniAppStorageByAppId.1
                @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
                public void onFailed(Integer errorCode, String failedMsg) {
                    try {
                        IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = MiniAppProtocolHelper.cleanMiniAPPStorageCallback;
                        if (iMiniAppInvokeDataCallback != null) {
                            iMiniAppInvokeDataCallback.onSuccess("");
                        }
                        MiniAppProtocolHelper.cleanMiniAPPStorageCallback = null;
                    } catch (Throwable th2) {
                        MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "cleanMiniAppStorageByAppId Throwable =", th2);
                    }
                }

                @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
                public void onSuccess(Bundle bundle2) {
                    String string;
                    if (bundle2 != null) {
                        try {
                            string = bundle2.getString(MiniAppIpcConfig.IPC_RESULT_JSON_DATA);
                        } catch (Throwable th2) {
                            MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "cleanMiniAppStorageByAppId Throwable =", th2);
                            return;
                        }
                    } else {
                        string = null;
                    }
                    MiniAppProtocolModuleLogger.d(MiniAppProtocolHelper.TAG, "cleanMiniAppStorageByAppId = " + string);
                    IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = MiniAppProtocolHelper.cleanMiniAPPStorageCallback;
                    if (iMiniAppInvokeDataCallback != null) {
                        iMiniAppInvokeDataCallback.onSuccess(string);
                    }
                    MiniAppProtocolHelper.cleanMiniAPPStorageCallback = null;
                }
            }, new Function2<IIpcMiniPSChannel, String, Unit>() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.cleanMiniAppStorageByAppId.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws RemoteException {
                    invoke((IIpcMiniPSChannel) obj, (String) obj2);
                    return Unit.f67061a;
                }

                public final void invoke(IIpcMiniPSChannel iIpcMiniPSChannel, String str) throws RemoteException {
                    if (iIpcMiniPSChannel != null) {
                        iIpcMiniPSChannel.miniAppDataSync(MiniAppIpcConfig.TYPE_IPC_DATA_MINI_CLEAN_STORAGE, str, bundle);
                    }
                }
            }, null, 8, null);
        } else {
            IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = cleanMiniAPPStorageCallback;
            if (iMiniAppInvokeDataCallback != null) {
                iMiniAppInvokeDataCallback.onSuccess("");
            }
            cleanMiniAPPStorageCallback = null;
        }
    }

    @JvmStatic
    public static final void preloadOfflineMiniApp(Context context, String appId) {
        if (context == null) {
            MiniAppProtocolModuleLogger.d(TAG, "preloadOfflineMiniApp context is null return");
            return;
        }
        final Bundle bundle = new Bundle();
        if (appId == null || appId.length() == 0) {
            return;
        }
        bundle.putString(MiniAppIpcConfig.IPC_QUERY_APP_ID, appId);
        MiniAppProtocolIpcProcessor.startIpcPSInvoke$default(MiniAppProtocolIpcProcessor.INSTANCE, context, null, new Function2<IIpcMiniPSChannel, String, Unit>() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.preloadOfflineMiniApp.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws RemoteException {
                invoke((IIpcMiniPSChannel) obj, (String) obj2);
                return Unit.f67061a;
            }

            public final void invoke(IIpcMiniPSChannel iIpcMiniPSChannel, String str) throws RemoteException {
                if (iIpcMiniPSChannel != null) {
                    iIpcMiniPSChannel.miniAppAbility(MiniAppIpcConfig.TYPE_IPC_ABILITY_PRELOAD_OFFLINE_APP, "", bundle);
                }
            }
        }, null, 8, null);
    }

    @JvmStatic
    public static final void queryAllMiniAppStorage(Context context, IMiniAppInvokeDataCallback callback) {
        if (context == null) {
            MiniAppProtocolModuleLogger.d(TAG, "miniappAllStoregeCallback context is null return");
            return;
        }
        miniappAllStoregeCallback = callback;
        final Bundle bundle = new Bundle();
        MiniAppProtocolIpcProcessor.startIpcPSInvoke$default(MiniAppProtocolIpcProcessor.INSTANCE, context.getApplicationContext(), new MiniAppProtocolInvokeCallback() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.queryAllMiniAppStorage.1
            @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
            public void onFailed(Integer errorCode, String failedMsg) {
                try {
                    IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = MiniAppProtocolHelper.miniappAllStoregeCallback;
                    if (iMiniAppInvokeDataCallback != null) {
                        iMiniAppInvokeDataCallback.onSuccess("");
                    }
                    MiniAppProtocolHelper.miniappAllStoregeCallback = null;
                } catch (Throwable th2) {
                    MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "queryOfflineApps Throwable =", th2);
                }
            }

            @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
            public void onSuccess(Bundle bundle2) {
                String string;
                if (bundle2 != null) {
                    try {
                        string = bundle2.getString(MiniAppIpcConfig.IPC_RESULT_JSON_DATA);
                    } catch (Throwable th2) {
                        MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "queryOfflineApps Throwable =", th2);
                        return;
                    }
                } else {
                    string = null;
                }
                MiniAppProtocolModuleLogger.d(MiniAppProtocolHelper.TAG, "queryAllMiniAppStorage = " + string);
                IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = MiniAppProtocolHelper.miniappAllStoregeCallback;
                if (iMiniAppInvokeDataCallback != null) {
                    iMiniAppInvokeDataCallback.onSuccess(string);
                }
                MiniAppProtocolHelper.miniappAllStoregeCallback = null;
            }
        }, new Function2<IIpcMiniPSChannel, String, Unit>() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.queryAllMiniAppStorage.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws RemoteException {
                invoke((IIpcMiniPSChannel) obj, (String) obj2);
                return Unit.f67061a;
            }

            public final void invoke(IIpcMiniPSChannel iIpcMiniPSChannel, String str) throws RemoteException {
                if (iIpcMiniPSChannel != null) {
                    iIpcMiniPSChannel.miniAppDataSync(MiniAppIpcConfig.TYPE_IPC_DATA_QUERY_MINI_ALL_STORAGE, str, bundle);
                }
            }
        }, null, 8, null);
    }

    @JvmStatic
    public static final void queryMiniAppStorage(Context context, String appId, IMiniAppInvokeDataCallback callback) {
        if (context == null) {
            MiniAppProtocolModuleLogger.d(TAG, "queryMiniAppStorage context is null return");
            return;
        }
        miniappStoregeCallback = callback;
        final Bundle bundle = new Bundle();
        if (appId != null && appId.length() != 0) {
            bundle.putString(MiniAppIpcConfig.IPC_QUERY_APP_ID, appId);
            MiniAppProtocolIpcProcessor.startIpcPSInvoke$default(MiniAppProtocolIpcProcessor.INSTANCE, context.getApplicationContext(), new MiniAppProtocolInvokeCallback() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.queryMiniAppStorage.1
                @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
                public void onFailed(Integer errorCode, String failedMsg) {
                    try {
                        IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = MiniAppProtocolHelper.miniappStoregeCallback;
                        if (iMiniAppInvokeDataCallback != null) {
                            iMiniAppInvokeDataCallback.onSuccess("");
                        }
                        MiniAppProtocolHelper.miniappStoregeCallback = null;
                    } catch (Throwable th2) {
                        MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "queryOfflineApps Throwable =", th2);
                    }
                }

                @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
                public void onSuccess(Bundle bundle2) {
                    String string;
                    if (bundle2 != null) {
                        try {
                            string = bundle2.getString(MiniAppIpcConfig.IPC_RESULT_JSON_DATA);
                        } catch (Throwable th2) {
                            MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "queryOfflineApps Throwable =", th2);
                            return;
                        }
                    } else {
                        string = null;
                    }
                    MiniAppProtocolModuleLogger.d(MiniAppProtocolHelper.TAG, "queryOfflineApps = " + string);
                    IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = MiniAppProtocolHelper.miniappStoregeCallback;
                    if (iMiniAppInvokeDataCallback != null) {
                        iMiniAppInvokeDataCallback.onSuccess(string);
                    }
                    MiniAppProtocolHelper.miniappStoregeCallback = null;
                }
            }, new Function2<IIpcMiniPSChannel, String, Unit>() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.queryMiniAppStorage.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws RemoteException {
                    invoke((IIpcMiniPSChannel) obj, (String) obj2);
                    return Unit.f67061a;
                }

                public final void invoke(IIpcMiniPSChannel iIpcMiniPSChannel, String str) throws RemoteException {
                    if (iIpcMiniPSChannel != null) {
                        iIpcMiniPSChannel.miniAppDataSync(MiniAppIpcConfig.TYPE_IPC_DATA_QUERY_MINI_STORAGE, str, bundle);
                    }
                }
            }, null, 8, null);
        } else {
            IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = miniappStoregeCallback;
            if (iMiniAppInvokeDataCallback != null) {
                iMiniAppInvokeDataCallback.onSuccess("");
            }
            miniappStoregeCallback = null;
        }
    }

    @JvmStatic
    public static final void queryMiniAppVersion(Context context, IMiniAppVersionCallback callback) {
        Intrinsics.h(callback, "callback");
        if (context == null) {
            MiniAppProtocolModuleLogger.d(TAG, "queryMiniAppVersion context is null return");
            return;
        }
        miniAppVersionCallback = callback;
        final Bundle bundle = new Bundle();
        MiniAppProtocolIpcProcessor.startIpcPSInvoke$default(MiniAppProtocolIpcProcessor.INSTANCE, context.getApplicationContext(), new MiniAppProtocolInvokeCallback() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.queryMiniAppVersion.1
            @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
            public void onFailed(Integer errorCode, String failedMsg) {
                try {
                    IMiniAppVersionCallback iMiniAppVersionCallback = MiniAppProtocolHelper.miniAppVersionCallback;
                    if (iMiniAppVersionCallback != null) {
                        iMiniAppVersionCallback.onSuccess("");
                    }
                    MiniAppProtocolHelper.miniAppVersionCallback = null;
                } catch (Throwable th2) {
                    MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "queryMiniAppVersion Throwable =", th2);
                }
            }

            @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
            public void onSuccess(Bundle bundle2) {
                String string;
                if (bundle2 != null) {
                    try {
                        string = bundle2.getString("sdkVersion");
                    } catch (Throwable th2) {
                        MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "queryMiniAppVersion Throwable =", th2);
                        return;
                    }
                } else {
                    string = null;
                }
                MiniAppProtocolModuleLogger.d(MiniAppProtocolHelper.TAG, "queryMiniAppVersion version = " + string);
                IMiniAppVersionCallback iMiniAppVersionCallback = MiniAppProtocolHelper.miniAppVersionCallback;
                if (iMiniAppVersionCallback != null) {
                    iMiniAppVersionCallback.onSuccess(string);
                }
                MiniAppProtocolHelper.miniAppVersionCallback = null;
            }
        }, new Function2<IIpcMiniPSChannel, String, Unit>() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.queryMiniAppVersion.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws RemoteException {
                invoke((IIpcMiniPSChannel) obj, (String) obj2);
                return Unit.f67061a;
            }

            public final void invoke(IIpcMiniPSChannel iIpcMiniPSChannel, String str) throws RemoteException {
                if (iIpcMiniPSChannel != null) {
                    iIpcMiniPSChannel.miniAppAbility(MiniAppIpcConfig.TYPE_IPC_ABILITY_MINI_VERSION, str, bundle);
                }
            }
        }, null, 8, null);
    }

    @JvmStatic
    public static final void queryOfflineApps(Context context, String appId, IMiniAppInvokeDataCallback callback) {
        if (context == null) {
            MiniAppProtocolModuleLogger.d(TAG, "querySingleOfflineApp context is null return");
            return;
        }
        offlineSingleAppCallback = callback;
        final Bundle bundle = new Bundle();
        if (appId != null && appId.length() != 0) {
            bundle.putString(MiniAppIpcConfig.IPC_QUERY_APP_ID, appId);
            MiniAppProtocolIpcProcessor.startIpcPSInvoke$default(MiniAppProtocolIpcProcessor.INSTANCE, context.getApplicationContext(), new MiniAppProtocolInvokeCallback() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.queryOfflineApps.3
                @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
                public void onFailed(Integer errorCode, String failedMsg) {
                    try {
                        IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = MiniAppProtocolHelper.offlineSingleAppCallback;
                        if (iMiniAppInvokeDataCallback != null) {
                            iMiniAppInvokeDataCallback.onSuccess("");
                        }
                        MiniAppProtocolHelper.offlineSingleAppCallback = null;
                    } catch (Throwable th2) {
                        MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "queryOfflineApps Throwable =", th2);
                    }
                }

                @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
                public void onSuccess(Bundle bundle2) {
                    String string;
                    if (bundle2 != null) {
                        try {
                            string = bundle2.getString(MiniAppIpcConfig.IPC_RESULT_JSON_DATA);
                        } catch (Throwable th2) {
                            MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "queryOfflineApps Throwable =", th2);
                            return;
                        }
                    } else {
                        string = null;
                    }
                    MiniAppProtocolModuleLogger.d(MiniAppProtocolHelper.TAG, "queryOfflineApps = " + string);
                    IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = MiniAppProtocolHelper.offlineSingleAppCallback;
                    if (iMiniAppInvokeDataCallback != null) {
                        iMiniAppInvokeDataCallback.onSuccess(string);
                    }
                    MiniAppProtocolHelper.offlineSingleAppCallback = null;
                }
            }, new Function2<IIpcMiniPSChannel, String, Unit>() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.queryOfflineApps.4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws RemoteException {
                    invoke((IIpcMiniPSChannel) obj, (String) obj2);
                    return Unit.f67061a;
                }

                public final void invoke(IIpcMiniPSChannel iIpcMiniPSChannel, String str) throws RemoteException {
                    if (iIpcMiniPSChannel != null) {
                        iIpcMiniPSChannel.miniAppAbility(MiniAppIpcConfig.TYPE_IPC_ABILITY_QUERY_SINGLE_MINI_OFFLINE, str, bundle);
                    }
                }
            }, null, 8, null);
        } else {
            IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = offlineSingleAppCallback;
            if (iMiniAppInvokeDataCallback != null) {
                iMiniAppInvokeDataCallback.onSuccess("");
            }
            offlineSingleAppCallback = null;
        }
    }

    @JvmStatic
    public static final void queryOfflineApps(Context context, ArrayList<String> appidList, IMiniAppInvokeDataCallback callback) {
        if (context == null) {
            MiniAppProtocolModuleLogger.d(TAG, "queryOfflineApps context is null return");
            return;
        }
        offlineAppsCallback = callback;
        final Bundle bundle = new Bundle();
        String json = "";
        if (appidList != null) {
            try {
                if (!appidList.isEmpty()) {
                    json = new Gson().toJson(appidList);
                }
            } catch (Throwable unused) {
            }
        }
        bundle.putString(MiniAppIpcConfig.IPC_QUERY_APP_ID, json);
        MiniAppProtocolIpcProcessor.startIpcPSInvoke$default(MiniAppProtocolIpcProcessor.INSTANCE, context.getApplicationContext(), new MiniAppProtocolInvokeCallback() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.queryOfflineApps.1
            @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
            public void onFailed(Integer errorCode, String failedMsg) {
                try {
                    IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = MiniAppProtocolHelper.offlineAppsCallback;
                    if (iMiniAppInvokeDataCallback != null) {
                        iMiniAppInvokeDataCallback.onSuccess("");
                    }
                    MiniAppProtocolHelper.offlineAppsCallback = null;
                } catch (Throwable th2) {
                    MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "queryOfflineApps Throwable =", th2);
                }
            }

            @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
            public void onSuccess(Bundle bundle2) {
                String string;
                if (bundle2 != null) {
                    try {
                        string = bundle2.getString(MiniAppIpcConfig.IPC_RESULT_JSON_DATA);
                    } catch (Throwable th2) {
                        MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "queryOfflineApps Throwable =", th2);
                        return;
                    }
                } else {
                    string = null;
                }
                MiniAppProtocolModuleLogger.d(MiniAppProtocolHelper.TAG, "queryOfflineApps = " + string);
                IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = MiniAppProtocolHelper.offlineAppsCallback;
                if (iMiniAppInvokeDataCallback != null) {
                    iMiniAppInvokeDataCallback.onSuccess(string);
                }
                MiniAppProtocolHelper.offlineAppsCallback = null;
            }
        }, new Function2<IIpcMiniPSChannel, String, Unit>() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.queryOfflineApps.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws RemoteException {
                invoke((IIpcMiniPSChannel) obj, (String) obj2);
                return Unit.f67061a;
            }

            public final void invoke(IIpcMiniPSChannel iIpcMiniPSChannel, String str) throws RemoteException {
                if (iIpcMiniPSChannel != null) {
                    iIpcMiniPSChannel.miniAppAbility(MiniAppIpcConfig.TYPE_IPC_ABILITY_QUERY_MINI_OFFLINE, str, bundle);
                }
            }
        }, null, 8, null);
    }

    @JvmStatic
    public static final void queryShortcutExist(Context context, String appId, IMiniAppInvokeDataCallback callback) {
        if (context == null) {
            MiniAppProtocolModuleLogger.d(TAG, "queryShortcutExist context is null return");
            return;
        }
        querySingleShortcutCallback = callback;
        final Bundle bundle = new Bundle();
        bundle.putString(MiniAppIpcConfig.IPC_QUERY_APP_ID, appId);
        MiniAppProtocolIpcProcessor.startIpcPSInvoke$default(MiniAppProtocolIpcProcessor.INSTANCE, context.getApplicationContext(), new MiniAppProtocolInvokeCallback() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.queryShortcutExist.1
            @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
            public void onFailed(Integer errorCode, String failedMsg) {
                try {
                    IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = MiniAppProtocolHelper.querySingleShortcutCallback;
                    if (iMiniAppInvokeDataCallback != null) {
                        iMiniAppInvokeDataCallback.onSuccess("");
                    }
                    MiniAppProtocolHelper.querySingleShortcutCallback = null;
                } catch (Throwable th2) {
                    MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "cleanMiniAppStorageByAppId Throwable =", th2);
                }
            }

            @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
            public void onSuccess(Bundle bundle2) {
                String string;
                if (bundle2 != null) {
                    try {
                        string = bundle2.getString(MiniAppIpcConfig.IPC_RESULT_JSON_DATA);
                    } catch (Throwable th2) {
                        MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "cleanMiniAppStorageByAppId Throwable =", th2);
                        return;
                    }
                } else {
                    string = null;
                }
                MiniAppProtocolModuleLogger.d(MiniAppProtocolHelper.TAG, "queryShortcutExist = " + string);
                IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = MiniAppProtocolHelper.querySingleShortcutCallback;
                if (iMiniAppInvokeDataCallback != null) {
                    iMiniAppInvokeDataCallback.onSuccess(string);
                }
                MiniAppProtocolHelper.querySingleShortcutCallback = null;
            }
        }, new Function2<IIpcMiniPSChannel, String, Unit>() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.queryShortcutExist.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws RemoteException {
                invoke((IIpcMiniPSChannel) obj, (String) obj2);
                return Unit.f67061a;
            }

            public final void invoke(IIpcMiniPSChannel iIpcMiniPSChannel, String str) throws RemoteException {
                if (iIpcMiniPSChannel != null) {
                    iIpcMiniPSChannel.miniAppDataSync(MiniAppIpcConfig.TYPE_IPC_DATA_MINI_SHORTCUT, str, bundle);
                }
            }
        }, null, 8, null);
    }

    @JvmStatic
    public static final void setDataSyncCallback(IMiniAppDataSyncCallback callback) {
        MiniAppProtocolModuleLogger.d(TAG, "setDataSyncCallback");
        dataSyncCallback = callback;
    }

    @JvmStatic
    @JvmOverloads
    public static final void warmup(Context context) {
        warmup$default(context, 0, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void warmup(Context context, int type) {
        if (context == null) {
            MiniAppProtocolModuleLogger.d(TAG, "warmup context is null return");
            return;
        }
        final Bundle bundle = new Bundle();
        if (type != 1 && type != 0) {
            type = 0;
        }
        MiniAppProtocolModuleLogger.d(TAG, "warmup type = " + type);
        bundle.putInt("warmupType", type);
        MiniAppProtocolIpcProcessor.startIpcPSInvoke$default(MiniAppProtocolIpcProcessor.INSTANCE, context.getApplicationContext(), null, new Function2<IIpcMiniPSChannel, String, Unit>() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.warmup.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws RemoteException {
                invoke((IIpcMiniPSChannel) obj, (String) obj2);
                return Unit.f67061a;
            }

            public final void invoke(IIpcMiniPSChannel iIpcMiniPSChannel, String str) throws RemoteException {
                if (iIpcMiniPSChannel != null) {
                    iIpcMiniPSChannel.miniAppPerformance(MiniAppIpcConfig.TYPE_IPC_PERF_MINI_APPWARM_UP, "", bundle);
                }
            }
        }, null, 8, null);
    }

    public static /* synthetic */ void warmup$default(Context context, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        warmup(context, i11);
    }

    public final IMiniAppDataSyncCallback getDataSyncCallback() {
        return dataSyncCallback;
    }

    public final void queryShortcutExist(Context context, ArrayList<String> appIdList, IMiniAppInvokeDataCallback callback) {
        if (context == null) {
            MiniAppProtocolModuleLogger.d(TAG, "queryShortcutExist context is null return");
            return;
        }
        queryAllShortcutCallback = callback;
        final Bundle bundle = new Bundle();
        String json = "";
        if (appIdList != null) {
            try {
                if (!appIdList.isEmpty()) {
                    json = new Gson().toJson(appIdList);
                }
            } catch (Throwable unused) {
            }
        }
        if (json != null && json.length() != 0) {
            bundle.putString(MiniAppIpcConfig.IPC_QUERY_APP_ID, json);
            MiniAppProtocolIpcProcessor.startIpcPSInvoke$default(MiniAppProtocolIpcProcessor.INSTANCE, context.getApplicationContext(), new MiniAppProtocolInvokeCallback() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.queryShortcutExist.3
                @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
                public void onFailed(Integer errorCode, String failedMsg) {
                    try {
                        IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = MiniAppProtocolHelper.queryAllShortcutCallback;
                        if (iMiniAppInvokeDataCallback != null) {
                            iMiniAppInvokeDataCallback.onSuccess("");
                        }
                        MiniAppProtocolHelper.queryAllShortcutCallback = null;
                    } catch (Throwable th2) {
                        MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "queryShortcutExist Throwable =", th2);
                    }
                }

                @Override // com.cloud.tmc.component_api_ps.ipc.callbcak.MiniAppProtocolInvokeCallback
                public void onSuccess(Bundle bundle2) {
                    String string;
                    if (bundle2 != null) {
                        try {
                            string = bundle2.getString(MiniAppIpcConfig.IPC_RESULT_JSON_DATA);
                        } catch (Throwable th2) {
                            MiniAppProtocolModuleLogger.e(MiniAppProtocolHelper.TAG, "queryShortcutExist Throwable =", th2);
                            return;
                        }
                    } else {
                        string = null;
                    }
                    MiniAppProtocolModuleLogger.d(MiniAppProtocolHelper.TAG, "queryShortcutExist = " + string);
                    IMiniAppInvokeDataCallback iMiniAppInvokeDataCallback = MiniAppProtocolHelper.queryAllShortcutCallback;
                    if (iMiniAppInvokeDataCallback != null) {
                        iMiniAppInvokeDataCallback.onSuccess(string);
                    }
                    MiniAppProtocolHelper.queryAllShortcutCallback = null;
                }
            }, new Function2<IIpcMiniPSChannel, String, Unit>() { // from class: com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper.queryShortcutExist.4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws RemoteException {
                    invoke((IIpcMiniPSChannel) obj, (String) obj2);
                    return Unit.f67061a;
                }

                public final void invoke(IIpcMiniPSChannel iIpcMiniPSChannel, String str) throws RemoteException {
                    if (iIpcMiniPSChannel != null) {
                        iIpcMiniPSChannel.miniAppDataSync(MiniAppIpcConfig.TYPE_IPC_DATA_ALL_MINI_SHORTCUT, str, bundle);
                    }
                }
            }, null, 8, null);
        } else {
            MiniAppProtocolModuleLogger.d(TAG, "appId is null or empty");
            if (callback != null) {
                callback.onSuccess("[]");
            }
            queryAllShortcutCallback = null;
        }
    }

    public final void updateMiniPid(int id2) {
        miniPid = id2;
        MiniAppProtocolModuleLogger.d(TAG, "current miniapp process id -> " + id2);
    }
}
