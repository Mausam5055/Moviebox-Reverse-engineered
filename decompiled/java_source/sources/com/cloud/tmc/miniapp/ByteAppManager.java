package com.cloud.tmc.miniapp;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.webkit.WebView;
import androidx.annotation.Keep;
import com.cloud.tmc.component_api_ps.MiniAppProtocolModuleLogger;
import com.cloud.tmc.component_api_ps.async.MiniAppIpcAsyncManager;
import com.cloud.tmc.component_api_ps.ipc.MiniAppProtocolHelper;
import com.cloud.tmc.component_api_ps.ipc.callbcak.IMiniAppDataSyncCallback;
import com.cloud.tmc.debugtools.DebugManager;
import com.cloud.tmc.fps.FpsManager;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.athena.Constants;
import com.cloud.tmc.integration.defaultImpl.ConfigServiceImpl;
import com.cloud.tmc.integration.defaultImpl.TmcKVStorageImpl;
import com.cloud.tmc.integration.defaultImpl.TmcNetworkImpl;
import com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool;
import com.cloud.tmc.integration.performance.innerwebview.IInnerH5WebviewPool;
import com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool;
import com.cloud.tmc.integration.proxy.IRequestConfigProxy;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.integration.utils.MiniRequestUtils;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.IChangeUrlProxy;
import com.cloud.tmc.kernel.proxy.network.IConfigStrategyProxy;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.service.EnvironmentService;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.kernel.utils.CustomizedObjectTypeAdapter;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.cloud.tmc.launcherlib.LauncherFrameworkConstants;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.defaultimpl.EnvironmentServiceImpl;
import com.cloud.tmc.miniapp.offlineapps.download.OooO0O0;
import com.cloud.tmc.miniapp.ui.MiniAppActivity;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniapp.utils.OooOO0;
import com.cloud.tmc.miniapp.utils.athena.AthenaConstants;
import com.cloud.tmc.miniapp.utils.athena.OooO0OO;
import com.cloud.tmc.miniapp.utils.toast.ToastUtils;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.cloud.tmc.miniutils.util.Utils;
import com.cloud.tmc.offline.download.OfflineManager;
import com.cloud.tmc.reporttrack.ReportForExternal;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.transsion.ga.AthenaAnalytics;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Deprecated;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Keep
public final class ByteAppManager {
    public static final String BYTEAPP_PKG_NAME = "com.cloud.tmc.byteapp";
    private static final String TAG = "TmcApp:ByteAppManager";
    private static Function0<Unit> complete;
    private static boolean isConfigInit;
    private static boolean isInit;
    private static boolean isMainProcessPreInit;
    private static boolean isPreInit;
    private static MiniAppLifecycleListener miniAppLifecycleListener;
    private static com.cloud.tmc.miniapp.ipc.broadcast.OooO00o miniBroadcastReceiver;
    private static long miniProcessTimeStamp;
    public static Application sApplication;
    private static boolean schemeInitStatus;
    private static Boolean tctpStatus;
    public static final ByteAppManager INSTANCE = new ByteAppManager();
    private static final LinkedHashMap<Integer, Activity> activityStack = new LinkedHashMap<>();
    private static AtomicBoolean isMainProcessGetInitAthenaStatus = new AtomicBoolean(false);

    public interface MiniAppLifecycleListener {

        public static final class DefaultImpls {
            public static void onCreate(MiniAppLifecycleListener miniAppLifecycleListener) {
            }

            public static void onDestroy(MiniAppLifecycleListener miniAppLifecycleListener) {
            }

            public static void onPause(MiniAppLifecycleListener miniAppLifecycleListener) {
            }

            public static void onResume(MiniAppLifecycleListener miniAppLifecycleListener) {
            }

            public static void onStart(MiniAppLifecycleListener miniAppLifecycleListener) {
            }

            public static void onStop(MiniAppLifecycleListener miniAppLifecycleListener) {
            }
        }

        void onCreate();

        void onDestroy();

        void onPause();

        void onResume();

        void onStart();

        void onStop();
    }

    private ByteAppManager() {
    }

    private final void checkIsPreInit(Context context) {
        Context applicationContext;
        Application sApplication2 = null;
        if (context != null) {
            try {
                applicationContext = context.getApplicationContext();
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
            }
        } else {
            applicationContext = null;
        }
        Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
        if (application != null) {
            sApplication2 = application;
        } else if (sApplication != null) {
            sApplication2 = getSApplication();
        }
        if (sApplication2 != null) {
            try {
                preInit(sApplication2);
            } catch (Throwable th3) {
                TmcLogger.e(TAG, th3);
            }
        }
    }

    @JvmStatic
    public static /* synthetic */ void getComplete$com_cloud_tmc_miniapp_sdk$annotations() {
    }

    public static final Application getSApplication() {
        Application application = sApplication;
        if (application != null) {
            return application;
        }
        Intrinsics.z("sApplication");
        return null;
    }

    @JvmStatic
    public static /* synthetic */ void getSApplication$annotations() {
    }

    @JvmStatic
    public static final String getSDKVersion() {
        return GlobalPackageConfig.Companion.getSDK_BRAND_VERSION();
    }

    @JvmStatic
    @JvmOverloads
    public static final int init(Application application) {
        Intrinsics.h(application, "application");
        return init$default(application, false, null, 6, null);
    }

    @JvmStatic
    public static final int init(Application application, Function0<Unit> function0) {
        Intrinsics.h(application, "application");
        return init(application, true, function0);
    }

    @JvmStatic
    @JvmOverloads
    public static final int init(Application application, boolean z10) {
        Intrinsics.h(application, "application");
        return init$default(application, z10, null, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final int init(final Application application, boolean z10, final Function0<Unit> function0) {
        Intrinsics.h(application, "application");
        ByteAppManager byteAppManager = INSTANCE;
        complete = function0;
        setSApplication(application);
        Utils.setAppIfNecessary(application);
        preInit(application);
        if (z10 && !ProcessUtils.isMiniProcess()) {
            TmcLogger.d(TAG, "current process not allowed to start! processName:" + ProcessUtils.getProcessName());
            return -1;
        }
        boolean closeSdkSwitch = MiniAppLaunch.getCloseSdkSwitch();
        TmcLogger.e(TAG, "app  init, closeSDK = " + closeSdkSwitch);
        if (closeSdkSwitch) {
            return -1;
        }
        if (isInit) {
            TmcLogger.d(TAG, "already init finished");
            return -1;
        }
        isInit = true;
        if (Build.VERSION.SDK_INT >= 28 && ProcessUtils.isMiniProcess()) {
            String processName = ProcessUtils.getProcessName();
            if (processName == null) {
                processName = String.valueOf(System.currentTimeMillis());
            }
            WebView.setDataDirectorySuffix(TmcConstants.WEBVIEW_PREFIX + processName);
        }
        NetworkUtils.registerNetworkCallback(application);
        byteAppManager.injectActivities();
        qk.a.b(application);
        ToastUtils.init$default(application, null, null, 6, null);
        byteAppManager.intDebugMonitor();
        byteAppManager.initVaid();
        byteAppManager.initInnerWarmup(application);
        byteAppManager.initWebviewWarmup(application);
        Intrinsics.h(application, "application");
        OooO0O0 oooO0O0 = OooO0O0.OooO00o;
        Intrinsics.h(application, "application");
        com.cloud.tmc.miniapp.offlineapps.scan.OooO0O0 oooO0O1 = com.cloud.tmc.miniapp.offlineapps.scan.OooO0O0.OooO00o;
        TmcLogger.d("OooO0O0", "[IconDownloadManager] init");
        OooO0O0.OooO0O0 = application;
        oooO0O1.OooO00o(application);
        if (ProcessUtils.isMiniProcess()) {
            MiniRequestUtils.requestAbilityConfig();
        }
        try {
            DeviceUtil.getGAId();
        } catch (Throwable unused) {
            DeviceUtil.getGAId();
        }
        ((ConfigService) TmcProxy.get(ConfigService.class)).loadService(application, "", new Function1<Boolean, Unit>() { // from class: com.cloud.tmc.miniapp.ByteAppManager.init.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Boolean) obj);
                return Unit.f67061a;
            }

            public final void invoke(Boolean bool) {
                OfflineManager.init(application);
            }
        });
        TmcLogger.d(TAG, "init finished! processName:" + ProcessUtils.getProcessName());
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record("", PointAnalyseType.POINT_SDK_PV, "");
        try {
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.f
                @Override // java.lang.Runnable
                public final void run() {
                    ByteAppManager.init$lambda$2(function0);
                }
            });
            return 0;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return 0;
        }
    }

    public static /* synthetic */ int init$default(Application application, Function0 function0, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function0 = null;
        }
        return init(application, (Function0<Unit>) function0);
    }

    public static /* synthetic */ int init$default(Application application, boolean z10, Function0 function0, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        if ((i11 & 4) != 0) {
            function0 = null;
        }
        return init(application, z10, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void init$lambda$2(Function0 function0) {
        if (function0 != null) {
            try {
                function0.invoke();
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
            }
        }
    }

    private final void initAthena(Application context) {
        OooO0OO oooO0OO = OooO0OO.OooO00o;
        Intrinsics.h(context, "context");
        AthenaConstants.delay.set(false);
        OooO0OO.OooO0OO = context;
        boolean zIsAppDebugAble = AppDynamicBuildConfig.isAppDebugAble();
        AthenaAnalytics.Q(context, context.getPackageName(), Constants.MINI_APPID, zIsAppDebugAble, Intrinsics.c(context.getPackageName(), "com.cloud.tmc.byteapp"));
        AthenaAnalytics.d0(zIsAppDebugAble);
        AthenaAnalytics.b0(zIsAppDebugAble);
        AthenaConstants.currentProcessIsInitAthena.set(true);
    }

    private final void initInnerWarmup(Application application) {
        try {
            if (ProcessUtils.isMiniProcess()) {
                ((IInnerRenderPool) TmcProxy.get(IInnerRenderPool.class)).init(application);
                ((IInnerWorkerPool) TmcProxy.get(IInnerWorkerPool.class)).init(application);
            }
        } catch (Throwable unused) {
        }
    }

    private final void initVaid() {
        try {
            if (ProcessUtils.isMiniProcess()) {
                ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        ByteAppManager.initVaid$lambda$6();
                    }
                });
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initVaid$lambda$6() {
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(getSApplication(), LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, TmcConstants.ATHENA_VAID, AthenaAnalytics.H(getSApplication(), true));
    }

    private final void initWebviewWarmup(Application application) {
        try {
            if (ProcessUtils.isMiniProcess()) {
                ((IInnerH5WebviewPool) TmcProxy.get(IInnerH5WebviewPool.class)).init(application);
            }
        } catch (Throwable unused) {
        }
    }

    private final void injectActivities() {
        getSApplication().registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.cloud.tmc.miniapp.ByteAppManager.injectActivities.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                Intrinsics.h(activity, "activity");
                ByteAppManager.activityStack.put(Integer.valueOf(activity.hashCode()), activity);
                TmcLogger.d(ByteAppManager.TAG, "onActivityCreated: " + activity.getClass().getSimpleName() + ", processName: " + ProcessUtils.getProcessName());
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                Intrinsics.h(activity, "activity");
                ByteAppManager.activityStack.remove(Integer.valueOf(activity.hashCode()));
                TmcLogger.d(ByteAppManager.TAG, "onActivityDestroyed: " + activity.getClass().getSimpleName() + ", processName: " + ProcessUtils.getProcessName());
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                Intrinsics.h(activity, "activity");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                Intrinsics.h(activity, "activity");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                Intrinsics.h(activity, "activity");
                Intrinsics.h(bundle, "bundle");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                Intrinsics.h(activity, "activity");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                Intrinsics.h(activity, "activity");
            }
        });
    }

    private final void intDebugMonitor() {
        DebugManager.INSTANCE.register(getSApplication(), MiniAppActivity.class);
    }

    @JvmStatic
    public static /* synthetic */ void isConfigInit$com_cloud_tmc_miniapp_sdk$annotations() {
    }

    @JvmStatic
    public static final boolean isDev() {
        return AppDynamicBuildConfig.getDEV();
    }

    public static final boolean isInit() {
        return isInit;
    }

    @JvmStatic
    public static /* synthetic */ void isInit$annotations() {
    }

    @JvmStatic
    public static /* synthetic */ void isMainProcessGetInitAthenaStatus$com_cloud_tmc_miniapp_sdk$annotations() {
    }

    @JvmStatic
    public static /* synthetic */ void isMainProcessPreInit$com_cloud_tmc_miniapp_sdk$annotations() {
    }

    public static final boolean isPreInit() {
        return isPreInit;
    }

    @JvmStatic
    public static /* synthetic */ void isPreInit$annotations() {
    }

    @JvmStatic
    @JvmOverloads
    public static final void launchMiniAppDeeplink(Context context, String str) {
        if (context != null) {
            MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "it.applicationContext");
            if (str == null) {
                str = "";
            }
            miniAppLaunch.launchMiniApp(applicationContext, str, CommonAppUtils.INSTANCE.getStartFromChannel());
        }
    }

    @JvmStatic
    @JvmOverloads
    public static final void launchMiniAppForId(Context context, String str) {
        launchMiniAppForId$default(context, str, null, null, 12, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void launchMiniAppForId(Context context, String str, String str2) {
        launchMiniAppForId$default(context, str, str2, null, 8, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void launchMiniAppForId(Context context, String str, String str2, Bundle bundle) {
        if (context != null) {
            Context launchContext = MiniAppLaunch.INSTANCE.getLaunchContext(str, context);
            Bundle bundle2 = new Bundle();
            bundle2.putString("scene_id", StringExtKt.orDefault(str2, "100000"));
            bundle2.putString(TmcConstants.KEY_MINIAPP_FROM_START, CommonAppUtils.INSTANCE.getStartFromChannel());
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            Unit unit = Unit.f67061a;
            MiniAppLaunch.launchMiniAppForId(launchContext, str, bundle2);
        }
    }

    public static /* synthetic */ void launchMiniAppForId$default(Context context, String str, String str2, Bundle bundle, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        if ((i11 & 8) != 0) {
            bundle = null;
        }
        launchMiniAppForId(context, str, str2, bundle);
    }

    @Deprecated
    @JvmStatic
    public static final void onDestroy() {
        onWarmupPoolDestroy();
    }

    @JvmStatic
    public static final void onWarmupPoolDestroy() {
        FpsManager.INSTANCE.stop();
    }

    @JvmStatic
    public static final void otherProcessInit() {
        if (isInit) {
            return;
        }
        init(getSApplication(), false, complete);
        TmcLogger.d(TAG, "other process init finished! processName:" + ProcessUtils.getProcessName());
    }

    @JvmStatic
    public static final void preInit(final Application application) {
        Intrinsics.h(application, "application");
        ByteAppManager byteAppManager = INSTANCE;
        setSApplication(application);
        Utils.setAppIfNecessary(application);
        if (!ProcessUtils.isMiniProcess() && !isMainProcessPreInit) {
            try {
                byteAppManager.initAthena(application);
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
            }
            ByteAppManager byteAppManager2 = INSTANCE;
            Context applicationContext = application.getApplicationContext();
            Intrinsics.g(applicationContext, "application.applicationContext");
            byteAppManager2.registerMiniReceiver(applicationContext);
            isMainProcessPreInit = true;
        }
        if (!ProcessUtils.isMiniProcess()) {
            TmcLogger.d(TAG, "current process not allowed to preInit! processName:" + ProcessUtils.getProcessName());
            return;
        }
        ByteAppManager byteAppManager3 = INSTANCE;
        if (isPreInit) {
            return;
        }
        ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.d
            @Override // java.lang.Runnable
            public final void run() {
                ByteAppManager.preInit$lambda$8(application);
            }
        });
        byteAppManager3.configInit(application);
        boolean closeSdkSwitch = MiniAppLaunch.getCloseSdkSwitch();
        TmcLogger.e(TAG, "app fresh config, preInit closeSDK = " + closeSdkSwitch);
        if (closeSdkSwitch) {
            return;
        }
        byteAppManager3.initAthena(application);
        com.cloud.tmc.worker.utils.Utils.app = application;
        GsonBuilder gsonBuilderDisableHtmlEscaping = new GsonBuilder().disableHtmlEscaping();
        ((IRequestConfigProxy) TmcProxy.get(IRequestConfigProxy.class)).preLoadConfig();
        if (((IRequestConfigProxy) TmcProxy.get(IRequestConfigProxy.class)).repairIntToFloat()) {
            gsonBuilderDisableHtmlEscaping.registerTypeAdapter(new TypeToken<Map<String, ? extends String>>() { // from class: com.cloud.tmc.miniapp.ByteAppManager.preInit.2
            }.getType(), new CustomizedObjectTypeAdapter());
        }
        try {
            miniProcessTimeStamp = System.currentTimeMillis();
            GsonUtils.setGsonDelegate(gsonBuilderDisableHtmlEscaping.create());
            TmcInitializer.init(application);
            isPreInit = true;
        } catch (Throwable th3) {
            TmcLogger.e(TAG, th3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void preInit$lambda$8(Application application) {
        Intrinsics.h(application, "$application");
        try {
            MiniAppConfigHelper.INSTANCE.warmUpConfigMMKV();
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).warmUpMMKVFile(application, LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void preUnzip$lambda$5(Application application) {
        List arrayList;
        boolean configBoolean;
        Intrinsics.h(application, "$application");
        try {
            Object objFromJson = GsonUtils.fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_PRE_UNZIP_APPID_LIST, MiniAppConfigHelper.DEFAULT_MINI_PRE_UNZIP_ID), (Class<Object>) List.class);
            arrayList = objFromJson instanceof List ? (List) objFromJson : null;
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "preUnzipList eror", th2);
            arrayList = new ArrayList();
        }
        try {
            OooOO0 oooOO0 = OooOO0.OooO00o;
            OooOO0.OooO0O0.clear();
            oooOO0.OooO00o(application, arrayList);
        } catch (Throwable th3) {
            TmcLogger.e(TAG, th3);
        }
        try {
            ConfigService configService = (ConfigService) TmcProxy.get(ConfigService.class);
            configBoolean = true;
            if (configService != null) {
                configBoolean = configService.getConfigBoolean(LauncherMiniAppConfigHelper.KEY_ENABLE_PRE_UNZIP_RETRY, true);
            }
        } catch (Throwable unused) {
            configBoolean = false;
        }
        if (configBoolean) {
            OooOO0.OooO00o.OooO00o(application, OooOO0.OooO0O0);
        }
    }

    @JvmStatic
    public static final void renderWarmup(boolean z10, boolean z11, int i11) {
    }

    @JvmStatic
    @JvmOverloads
    public static final void reportForExternal(String target) {
        Intrinsics.h(target, "target");
        reportForExternal$default(target, null, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void reportForExternal(String target, Bundle bundle) {
        Intrinsics.h(target, "target");
        ReportForExternal.INSTANCE.report(target, bundle);
    }

    public static /* synthetic */ void reportForExternal$default(String str, Bundle bundle, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            bundle = null;
        }
        reportForExternal(str, bundle);
    }

    @JvmStatic
    public static final void setAppId(String appId) {
        Intrinsics.h(appId, "appId");
        IPackageConfig iPackageConfig = (IPackageConfig) TmcProxy.get(IPackageConfig.class);
        if (iPackageConfig == null) {
            return;
        }
        iPackageConfig.setAppId(appId);
    }

    @JvmStatic
    public static final void setDataSyncCallback(IMiniAppDataSyncCallback iMiniAppDataSyncCallback) {
        MiniAppProtocolModuleLogger.d(TAG, "setDataSyncCallback");
        MiniAppProtocolHelper.setDataSyncCallback(iMiniAppDataSyncCallback);
    }

    @JvmStatic
    public static final void setDebugLogMode(boolean z10) {
        TmcLogger.enableDebugLog(z10);
    }

    @JvmStatic
    public static final void setLoginHostInfo(String str, int i11) {
    }

    public static final void setMainProcessGetInitAthenaStatus$com_cloud_tmc_miniapp_sdk(AtomicBoolean atomicBoolean) {
        Intrinsics.h(atomicBoolean, "<set-?>");
        isMainProcessGetInitAthenaStatus = atomicBoolean;
    }

    @JvmStatic
    public static final void setMiniAppCustomConfig(String config) {
        Intrinsics.h(config, "config");
        try {
            AppUtils.INSTANCE.updateMiniappCustomConfig(config);
        } catch (Throwable unused) {
        }
    }

    @JvmStatic
    public static final void setOpenMutipleTask(Boolean bool) {
        IPackageConfig iPackageConfig = (IPackageConfig) TmcProxy.get(IPackageConfig.class);
        if (iPackageConfig != null) {
            iPackageConfig.setOpenMutipleTask(bool != null ? bool.booleanValue() : true);
        }
    }

    public static final void setSApplication(Application application) {
        Intrinsics.h(application, "<set-?>");
        sApplication = application;
    }

    @JvmStatic
    public static final void startUpMiniService() {
        if (Intrinsics.c(MiniAppLaunch.getTargetProcess(), MiniAppConfigHelper.INSTANCE.getDEFAULT_TARGET_PROCESS())) {
            com.cloud.tmc.miniapp.ipc.OooO00o.C0331OooO00o c0331OooO00o = com.cloud.tmc.miniapp.ipc.OooO00o.OooO00o;
            Context applicationContext = getSApplication().getApplicationContext();
            Intrinsics.g(applicationContext, "sApplication.applicationContext");
            c0331OooO00o.OooO00o(applicationContext);
        }
    }

    @JvmStatic
    public static final void warmupMiniapp(final Context context) {
        if (context != null) {
            try {
                MiniAppIpcAsyncManager.INSTANCE.runOnBackground(new Runnable() { // from class: com.cloud.tmc.miniapp.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        ByteAppManager.warmupMiniapp$lambda$1$lambda$0(context);
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void warmupMiniapp$lambda$1$lambda$0(Context context) {
        try {
            MiniAppLaunch.INSTANCE.warmupEntrance(context, false);
        } catch (Throwable unused) {
        }
    }

    @JvmStatic
    public static final void workerWarmup(boolean z10, boolean z11, int i11) {
    }

    public final boolean checkPreInitConfig(Context context) {
        if (context == null) {
            return true;
        }
        try {
            Context applicationContext = context.getApplicationContext();
            Utils.setAppIfNecessary(applicationContext instanceof Application ? (Application) applicationContext : null);
            return MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_MINI_ENABLE_PRE_INIT, true);
        } catch (Throwable unused) {
            return true;
        }
    }

    public final void configInit(Application application) {
        Intrinsics.h(application, "application");
        try {
            setSApplication(application);
            if (isConfigInit) {
                preLoadConfig$com_cloud_tmc_miniapp_sdk(application);
                return;
            }
            TmcProxy.set(IChangeUrlProxy.class, new DynamicChangeUrlImpl());
            TmcProxy.set(IConfigStrategyProxy.class, new ConfigImpl());
            TmcProxy.set(KVStorageProxy.class, new TmcKVStorageImpl());
            TmcProxy.set(EnvironmentService.class, new EnvironmentServiceImpl());
            TmcProxy.set(INetWorkProxy.class, new TmcNetworkImpl(application));
            TmcProxy.set(ConfigService.class, new ConfigServiceImpl());
            isConfigInit = true;
            preLoadConfig$com_cloud_tmc_miniapp_sdk(application);
            TmcLogger.d(TAG, "pre config init");
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.app.Application] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public final Application getApplication$com_cloud_tmc_miniapp_sdk() {
        String app = TAG;
        try {
            if (sApplication != null) {
                TmcLogger.d(TAG, "getapplication: sApplication");
                app = getSApplication();
            } else {
                TmcLogger.d(TAG, "Utils.getApp()");
                app = Utils.getApp();
            }
            return app;
        } catch (Throwable th2) {
            TmcLogger.e(app, th2);
            return null;
        }
    }

    public final MiniAppLifecycleListener getMiniAppLifecycleListener$com_cloud_tmc_miniapp_sdk() {
        return miniAppLifecycleListener;
    }

    public final long getMiniProcessTimeStamp() {
        return miniProcessTimeStamp;
    }

    public final boolean getSchemeInitStatus() {
        return schemeInitStatus;
    }

    public final Boolean getTctpStatus() {
        return tctpStatus;
    }

    public final void preLoadConfig$com_cloud_tmc_miniapp_sdk(Application application) {
        Intrinsics.h(application, "application");
        try {
            ((ConfigService) TmcProxy.get(ConfigService.class)).loadPreService(application);
        } catch (Exception e11) {
            TmcLogger.e(TAG, e11);
        }
    }

    public final void preUnzip(final Application application) {
        boolean configBoolean;
        Intrinsics.h(application, "application");
        if (ProcessUtils.isMiniProcess()) {
            try {
                ConfigService configService = (ConfigService) TmcProxy.get(ConfigService.class);
                configBoolean = true;
                if (configService != null) {
                    configBoolean = configService.getConfigBoolean(LauncherMiniAppConfigHelper.KEY_ENABLE_PRE_UNZIP, true);
                }
            } catch (Throwable unused) {
                configBoolean = false;
            }
            if (configBoolean) {
                ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        ByteAppManager.preUnzip$lambda$5(application);
                    }
                });
            } else {
                TmcLogger.d(TAG, "Disable preZip");
            }
        }
    }

    public final void registerMiniAppLifecycleListener(MiniAppLifecycleListener listener) {
        Intrinsics.h(listener, "listener");
        try {
            if (ProcessUtils.isMainProcess()) {
                miniAppLifecycleListener = listener;
            }
        } catch (Throwable unused) {
        }
    }

    public final void registerMiniReceiver(Context context) {
        Intrinsics.h(context, "context");
        try {
            if (miniBroadcastReceiver != null) {
                MiniAppProtocolModuleLogger.e(TAG, "registerMiniReceiver: miniBroadcastReceiver is not null");
                return;
            }
            if (!ProcessUtils.isMainProcess()) {
                TmcLogger.e(TAG, "registerMiniReceiver: not main process");
                return;
            }
            miniBroadcastReceiver = new com.cloud.tmc.miniapp.ipc.broadcast.OooO00o();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.cloud.tmc.miniapp.process_id");
            intentFilter.addAction("com.cloud.tmc.miniapp.addhome_success");
            intentFilter.addAction("com.cloud.tmc.miniapp.start_time");
            intentFilter.addAction("com.cloud.tmc.miniapp.use_time");
            intentFilter.addAction("com.cloud.tmc.miniapp.report_cache");
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(miniBroadcastReceiver, intentFilter, 4);
            } else {
                context.registerReceiver(miniBroadcastReceiver, intentFilter);
            }
            TmcLogger.d(TAG, "registerMiniReceiver:success");
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "registerMiniReceiver Error:", th2);
        }
    }

    public final void setMiniAppLifecycleListener$com_cloud_tmc_miniapp_sdk(MiniAppLifecycleListener miniAppLifecycleListener2) {
        miniAppLifecycleListener = miniAppLifecycleListener2;
    }

    public final void setMiniProcessTimeStamp(long j11) {
        miniProcessTimeStamp = j11;
    }

    public final void setSchemeInitStatus(boolean z10) {
        schemeInitStatus = z10;
    }

    public final void setTctpStatus(Boolean bool) {
        tctpStatus = bool;
    }
}
