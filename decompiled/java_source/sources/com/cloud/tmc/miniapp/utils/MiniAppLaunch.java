package com.cloud.tmc.miniapp.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.cloud.tmc.integration.ActivityHelper;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.activity.StartClientBundle;
import com.cloud.tmc.integration.athena.Constants;
import com.cloud.tmc.integration.model.AppInfoModel;
import com.cloud.tmc.integration.model.AppInfoQuery;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.CDNConfigBean;
import com.cloud.tmc.integration.model.EntryInfo;
import com.cloud.tmc.integration.model.ExtendModel;
import com.cloud.tmc.integration.model.ForceUpdateModel;
import com.cloud.tmc.integration.model.PrepareCallbackParam;
import com.cloud.tmc.integration.model.SubPackageInfo;
import com.cloud.tmc.integration.model.WarmUpEntranceConfigBean;
import com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool;
import com.cloud.tmc.integration.performance.innerwebview.IInnerH5WebviewPool;
import com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.integration.utils.UrlUtil;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.intf.ISDKConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.IConfigStrategyProxy;
import com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.kernel.utils.BundleUtils;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.KUrlUtils;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniapp.GlobalPackageConfig;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.ad.WebviewAdFormActivity;
import com.cloud.tmc.miniapp.dialog.Oooo0;
import com.cloud.tmc.miniapp.dialog.Oooo000;
import com.cloud.tmc.miniapp.dialog.o000oOoO;
import com.cloud.tmc.miniapp.dialog.o0OoOo0;
import com.cloud.tmc.miniapp.ipc.IpcMiniLauncherService;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniapp.prepare.manager.TmcResourceManager;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prestrategy.PreStrategyManager;
import com.cloud.tmc.miniapp.proxy.IClientStarter;
import com.cloud.tmc.miniapp.proxy.platform.IUpgradeProxy;
import com.cloud.tmc.miniapp.ui.MiniAppActivity;
import com.cloud.tmc.miniapp.ui.multiprogress.MiniAppMainProcessActivity;
import com.cloud.tmc.miniapp.ui.multiprogress.MiniAppMiniProcessActivity;
import com.cloud.tmc.miniutils.util.AppUtils;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.cloud.tmc.offline.download.OfflineManager;
import com.cloud.tmc.offline.download.model.OfflinePkgCachePath;
import com.cloud.tmc.offline.download.model.ZipFileInfo;
import com.cloud.tmc.offline.download.utils.Utils;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import java.io.IOException;
import java.lang.reflect.Type;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class MiniAppLaunch {
    public static final MiniAppLaunch INSTANCE = new MiniAppLaunch();
    private static final String TAG = "MiniAppLaunch";
    private static final Map<String, Map<String, Long>> commonResLaunchList = new LinkedHashMap();
    private static final Map<String, Boolean> commonResIdList = new LinkedHashMap();

    public static final class OooO implements o0OoOo0 {
        public final /* synthetic */ Context OooO00o;
        public final /* synthetic */ o000oOoO OooO0O0;
        public final /* synthetic */ com.cloud.tmc.miniapp.prepare.callback.OooO00o OooO0OO;

        public OooO(Context context, o000oOoO o000oooo, com.cloud.tmc.miniapp.prepare.callback.OooO00o oooO00o) {
            this.OooO00o = context;
            this.OooO0O0 = o000oooo;
            this.OooO0OO = oooO00o;
        }

        @Override // com.cloud.tmc.miniapp.dialog.o0OoOo0
        public void OooO00o(View view) {
            Intrinsics.h(view, "view");
            Context context = this.OooO00o;
            MiniAppActivity miniAppActivity = context instanceof MiniAppActivity ? (MiniAppActivity) context : null;
            if (miniAppActivity != null) {
                miniAppActivity.killActivity();
            }
        }

        @Override // com.cloud.tmc.miniapp.dialog.o0OoOo0
        public void OooO0O0(View view) {
            Intrinsics.h(view, "view");
            this.OooO0O0.dismiss();
            MiniAppLaunch.INSTANCE.showProgressDialog(this.OooO00o, this.OooO0OO);
        }
    }

    public static final class OooO00o implements PackageDownloadCallback {
        public final /* synthetic */ Function0<Unit> OooO00o;
        public final /* synthetic */ TmcResourceManager OooO0O0;
        public final /* synthetic */ AppModel OooO0OO;
        public final /* synthetic */ Context OooO0Oo;
        public final /* synthetic */ Function3<String, String, IOException, Unit> OooO0o;
        public final /* synthetic */ Function0<Unit> OooO0o0;

        /* JADX WARN: Multi-variable type inference failed */
        public OooO00o(Function0<Unit> function0, TmcResourceManager tmcResourceManager, AppModel appModel, Context context, Function0<Unit> function1, Function3<? super String, ? super String, ? super IOException, Unit> function3) {
            this.OooO00o = function0;
            this.OooO0O0 = tmcResourceManager;
            this.OooO0OO = appModel;
            this.OooO0Oo = context;
            this.OooO0o0 = function1;
            this.OooO0o = function3;
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onCancel(String str, String str2) {
            Function0<Unit> function0 = this.OooO00o;
            if (function0 != null) {
                function0.invoke();
            }
            try {
                this.OooO0O0.removeDownloadAppMap(this.OooO0OO.getPackageUrl_MD5());
            } catch (Throwable th2) {
                TmcLogger.e(MiniAppLaunch.TAG, th2);
            }
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onFailed(String str, String errorCode, String str2, IOException e11, String str3) {
            Intrinsics.h(errorCode, "errorCode");
            Intrinsics.h(e11, "e");
            TmcLogger.d(MiniAppLaunch.TAG, "Step_APP_Download_资源包后台下载失败，" + str2);
            Function3<String, String, IOException, Unit> function3 = this.OooO0o;
            if (function3 != null) {
                function3.invoke(errorCode, str2, e11);
            }
            try {
                this.OooO0O0.removeDownloadAppMap(this.OooO0OO.getPackageUrl_MD5());
            } catch (Throwable th2) {
                TmcLogger.e(MiniAppLaunch.TAG, th2);
            }
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onFinish(String str, String str2) {
            TmcLogger.d(MiniAppLaunch.TAG, "Step_APP_Download_资源包后台下载完成，进行解压");
            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "backgroundDownFullPkgZip Finish:changeZipDownloadStatus:true downloadUrl:" + str + ";appInfo:appId:" + this.OooO0OO.getAppId() + ";deployVersion:" + this.OooO0OO.getDeployVersion() + ";mainPkgUrl:" + this.OooO0OO.getMainPackageUrl() + ";fullPkgUrl:" + this.OooO0OO.getPackageUrl());
            AppPrepareUtils.INSTANCE.changeZipDownloadStatus(this.OooO0Oo, this.OooO0OO, true);
            Function0<Unit> function0 = this.OooO0o0;
            if (function0 != null) {
                function0.invoke();
            }
            if (MiniAppLaunch.INSTANCE.checkEnableBackgroundUnzip()) {
                com.cloud.tmc.miniapp.utils.OooOO0.OooO00o(com.cloud.tmc.miniapp.utils.OooOO0.OooO00o, this.OooO0Oo, this.OooO0OO, false, false, 8);
            }
            try {
                this.OooO0O0.removeDownloadAppMap(this.OooO0OO.getPackageUrl_MD5());
            } catch (Throwable th2) {
                TmcLogger.e(MiniAppLaunch.TAG, th2);
            }
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onPrepare(String str, String str2) {
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onProgress(String str, int i11, String str2) {
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public /* synthetic */ void progressUpdate(String str, int i11, String str2, long j11, long j12) {
            com.cloud.tmc.kernel.proxy.network.a.a(this, str, i11, str2, j11, j12);
        }
    }

    public static final class OooO0O0 implements PackageDownloadCallback {
        public final /* synthetic */ Function0<Unit> OooO00o;
        public final /* synthetic */ TmcResourceManager OooO0O0;
        public final /* synthetic */ String OooO0OO;
        public final /* synthetic */ AppModel OooO0Oo;
        public final /* synthetic */ Function0<Unit> OooO0o;
        public final /* synthetic */ Context OooO0o0;
        public final /* synthetic */ Function3<String, String, IOException, Unit> OooO0oO;

        /* JADX WARN: Multi-variable type inference failed */
        public OooO0O0(Function0<Unit> function0, TmcResourceManager tmcResourceManager, String str, AppModel appModel, Context context, Function0<Unit> function1, Function3<? super String, ? super String, ? super IOException, Unit> function3) {
            this.OooO00o = function0;
            this.OooO0O0 = tmcResourceManager;
            this.OooO0OO = str;
            this.OooO0Oo = appModel;
            this.OooO0o0 = context;
            this.OooO0o = function1;
            this.OooO0oO = function3;
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onCancel(String str, String str2) {
            Function0<Unit> function0 = this.OooO00o;
            if (function0 != null) {
                function0.invoke();
            }
            try {
                this.OooO0O0.removeDownloadAppMap(this.OooO0OO);
            } catch (Throwable th2) {
                TmcLogger.e(MiniAppLaunch.TAG, th2);
            }
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onFailed(String str, String errorCode, String str2, IOException e11, String str3) {
            Intrinsics.h(errorCode, "errorCode");
            Intrinsics.h(e11, "e");
            TmcLogger.d(MiniAppLaunch.TAG, "Step_APP_Download_资源包后台下载失败，" + str2);
            Function3<String, String, IOException, Unit> function3 = this.OooO0oO;
            if (function3 != null) {
                function3.invoke(errorCode, str2, e11);
            }
            try {
                this.OooO0O0.removeDownloadAppMap(this.OooO0OO);
            } catch (Throwable th2) {
                TmcLogger.e(MiniAppLaunch.TAG, th2);
            }
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onFinish(String str, String str2) {
            TmcLogger.d(MiniAppLaunch.TAG, "Step_APP_Download_资源包后台下载完成，进行解压");
            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "backgroundDownSubPkgZip Finish:downloadUrl:" + str + ";appInfo:appId:" + this.OooO0Oo.getAppId() + ";deployVersion:" + this.OooO0Oo.getDeployVersion() + ";mainPkgUrl:" + this.OooO0Oo.getMainPackageUrl() + ";fullPkgUrl:" + this.OooO0Oo.getPackageUrl());
            try {
                AppPrepareUtils.INSTANCE.changeZipDownloadStatus(this.OooO0o0, this.OooO0Oo.getAppId(), this.OooO0OO, true);
            } catch (Throwable th2) {
                TmcLogger.e(MiniAppLaunch.TAG, "", th2);
            }
            Function0<Unit> function0 = this.OooO0o;
            if (function0 != null) {
                function0.invoke();
            }
            if (MiniAppLaunch.INSTANCE.checkEnableBackgroundUnzip()) {
                TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "backgroundDownSubPkgZip startUnZip:downloadUrl:" + str + ";appInfo:appId:" + this.OooO0Oo.getAppId() + ";deployVersion:" + this.OooO0Oo.getDeployVersion() + ";mainPkgUrl:" + this.OooO0Oo.getMainPackageUrl() + ";fullPkgUrl:" + this.OooO0Oo.getPackageUrl());
                OooOOO0.OooO00o.OooO0Oo(this.OooO0o0, this.OooO0Oo, null, false, true);
            }
            try {
                this.OooO0O0.removeDownloadAppMap(this.OooO0OO);
            } catch (Throwable th3) {
                TmcLogger.e(MiniAppLaunch.TAG, th3);
            }
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onPrepare(String str, String str2) {
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onProgress(String str, int i11, String str2) {
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public /* synthetic */ void progressUpdate(String str, int i11, String str2, long j11, long j12) {
            com.cloud.tmc.kernel.proxy.network.a.a(this, str, i11, str2, j11, j12);
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<Unit> {
        public static final OooO0OO OooO00o = new OooO0OO();

        public OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            ByteAppManager.setAppId("launcher");
            TmcProxy.set(ISDKConfig.class, new ISDKConfig() { // from class: com.cloud.tmc.miniapp.utils.MiniAppLaunch$byteAppInit$1$1
                @Override // com.cloud.tmc.kernel.intf.ISDKConfig
                public String getAppVersion() {
                    return "0.0.0";
                }

                @Override // com.cloud.tmc.kernel.intf.ISDKConfig
                public boolean openShareTarget() {
                    return false;
                }
            });
            return Unit.f67061a;
        }
    }

    public static final class OooO0o implements com.cloud.tmc.miniapp.ipc.OooO0O0 {
        public final /* synthetic */ Context OooO00o;
        public final /* synthetic */ String OooO0O0;
        public final /* synthetic */ Bundle OooO0OO;

        public OooO0o(Context context, String str, Bundle bundle) {
            this.OooO00o = context;
            this.OooO0O0 = str;
            this.OooO0OO = bundle;
        }

        @Override // com.cloud.tmc.miniapp.ipc.OooO0O0
        public void OooO00o(Integer num, Throwable th2) {
            TmcLogger.e(MiniAppLaunch.TAG, th2);
            ByteAppManager.INSTANCE.setSchemeInitStatus(false);
        }

        public void OooO00o(boolean z10) {
            if (z10) {
                return;
            }
            boolean configBoolean = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigBoolean(LauncherMiniAppConfigHelper.KEY_CLOSE_MINI_APP_SDK, false);
            TmcLogger.e("app will launch mini app, closeSDK = " + configBoolean);
            if (configBoolean) {
                ByteAppManager.INSTANCE.preLoadConfig$com_cloud_tmc_miniapp_sdk(ByteAppManager.getSApplication());
                return;
            }
            MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
            if (miniAppLaunch.checkOpenBrowser(this.OooO00o, this.OooO0O0, this.OooO0OO)) {
                return;
            }
            miniAppLaunch.launchMiniActivity(this.OooO0OO, this.OooO0O0, this.OooO00o);
            ByteAppManager.INSTANCE.setSchemeInitStatus(false);
        }
    }

    public static final class OooOO0 implements com.cloud.tmc.miniapp.ipc.OooO0O0 {
        public final /* synthetic */ boolean OooO00o;

        public OooOO0(boolean z10) {
            this.OooO00o = z10;
        }

        public static final void OooO0O0(boolean z10) {
            if (z10) {
                try {
                    TmcLogger.d(MiniAppLaunch.TAG, "warmupWebView");
                    ((IInnerH5WebviewPool) TmcProxy.get(IInnerH5WebviewPool.class)).createWebview();
                } catch (Throwable th2) {
                    TmcLogger.e(MiniAppLaunch.TAG, th2);
                    return;
                }
            }
            MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
            miniAppLaunch.warmUpWorker();
            miniAppLaunch.warmupRender();
        }

        @Override // com.cloud.tmc.miniapp.ipc.OooO0O0
        public void OooO00o(Integer num, Throwable th2) {
            TmcLogger.e(MiniAppLaunch.TAG, th2);
        }

        public void OooO00o(boolean z10) {
            if (z10) {
                return;
            }
            try {
                final boolean z11 = this.OooO00o;
                ExecutorUtils.post(new Runnable() { // from class: com.cloud.tmc.miniapp.utils.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        MiniAppLaunch.OooOO0.OooO0O0(z11);
                    }
                });
            } catch (Throwable th2) {
                TmcLogger.e(MiniAppLaunch.TAG, th2);
            }
        }
    }

    private MiniAppLaunch() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void backgroundDownZip$default(MiniAppLaunch miniAppLaunch, Context context, AppModel appModel, int i11, Function0 function0, Function3 function3, Function0 function1, int i12, Object obj) {
        miniAppLaunch.backgroundDownZip(context, appModel, i11, (i12 & 8) != 0 ? null : function0, (i12 & 16) != 0 ? null : function3, (i12 & 32) != 0 ? null : function1);
    }

    private final boolean backgroundDownloadOfflineCheck(AppModel appModel, Context context, Function0<Unit> function0) {
        if (!checkOfflinePkg(appModel)) {
            return false;
        }
        ((TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class)).updateAppModel(context, appModel, appModel.getAppId() + "_pre");
        TmcLogger.d(TAG, "Step_APP_Download_资源包后台从离线框架获取成功，进行解压");
        AppPrepareUtils.INSTANCE.changeZipDownloadStatus(context, appModel, true);
        TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "backgroundDownloadOfflineCheck:changeZipDownloadStatus true:appInfo:appId:" + appModel.getAppId() + ";deployVersion:" + appModel.getDeployVersion() + ";mainPkgUrl:" + appModel.getMainPackageUrl() + ";fullPkgUrl:" + appModel.getPackageUrl());
        if (function0 != null) {
            function0.invoke();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void backgroundDownloadSinglePackageZip$default(MiniAppLaunch miniAppLaunch, Context context, AppModel appModel, int i11, Function0 function0, Function3 function3, Function0 function1, int i12, Object obj) {
        miniAppLaunch.backgroundDownloadSinglePackageZip(context, appModel, i11, (i12 & 8) != 0 ? null : function0, (i12 & 16) != 0 ? null : function3, (i12 & 32) != 0 ? null : function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void backgroundDownloadSubPackageZip$default(MiniAppLaunch miniAppLaunch, Context context, AppModel appModel, int i11, Function0 function0, Function3 function3, Function0 function1, int i12, Object obj) {
        miniAppLaunch.backgroundDownloadSubPackageZip(context, appModel, i11, (i12 & 8) != 0 ? null : function0, (i12 & 16) != 0 ? null : function3, (i12 & 32) != 0 ? null : function1);
    }

    public static /* synthetic */ String buildShareUrl$default(MiniAppLaunch miniAppLaunch, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = "";
        }
        return miniAppLaunch.buildShareUrl(str, str2);
    }

    private final boolean checkEnableAppQuickModel(boolean z10, String str) {
        boolean configBoolean = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigBoolean(LauncherMiniAppConfigHelper.KEY_MINI_ENABLE_QUICK_MODE, true);
        if (!configBoolean) {
            TmcLogger.d(TAG, "checkEnableAppQuickModel->" + configBoolean);
            return false;
        }
        if ((!StringsKt.W(str, "https://", false, 2, null) && !StringsKt.W(str, "http://", false, 2, null)) || !z10) {
            return false;
        }
        TmcLogger.d(TAG, "checkEnableAppQuickModel extQuickMode->" + z10);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0052  */
    @JvmStatic
    public static final boolean checkOfflinePkg(AppModel appModel) {
        String appId;
        OfflinePkgCachePath offlinePkgFwCachePath;
        String appVersionFromOfflinePkgCache;
        boolean z10;
        List<ZipFileInfo> zipFileInfo;
        Intrinsics.h(appModel, "appModel");
        if (!OfflineManager.isEnabled() || !ProcessUtils.isMiniProcess() || (appId = appModel.getAppId()) == null || Intrinsics.c(appId, "100000") || (offlinePkgFwCachePath = OfflineManager.getOfflinePkgFwCachePath(appId)) == null || (appVersionFromOfflinePkgCache = Utils.INSTANCE.getAppVersionFromOfflinePkgCache(offlinePkgFwCachePath)) == null) {
            return false;
        }
        MiniAppLaunch miniAppLaunch = INSTANCE;
        if (Intrinsics.c(miniAppLaunch.getMiniAppVersion(appModel), appVersionFromOfflinePkgCache)) {
            z10 = true;
        } else {
            String miniAppVersion = miniAppLaunch.getMiniAppVersion(appModel);
            if (miniAppVersion == null) {
                miniAppVersion = "0";
            }
            if (miniAppLaunch.compareVersion(appVersionFromOfflinePkgCache, miniAppVersion)) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        TmcLogger.d(TAG, "isUpdate->" + z10 + ",offlineVersion-> " + appVersionFromOfflinePkgCache + ",appVersion:" + miniAppLaunch.getMiniAppVersion(appModel));
        if (z10 && (zipFileInfo = offlinePkgFwCachePath.getZipFileInfo()) != null && !zipFileInfo.isEmpty()) {
            String str = ((ZipFileInfo) CollectionsKt.i0(zipFileInfo)).getZipUnCompressPath() + "/" + appModel.getAppId() + ".zip";
            if (FileUtils.isFileExists(str)) {
                appModel.setZipPath(str);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean checkOpenBrowser(Context context, String str, Bundle bundle) {
        AppModel appModel;
        if (str == null || str.length() == 0) {
            TmcLogger.e(TAG, "checkOpenBrowser failed. appId is null.");
            return false;
        }
        try {
            if (!ProcessUtils.isMiniProcess() || (appModel = ((TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class)).getAppModel(context, AppInfoQuery.INSTANCE.make(str))) == null) {
                return false;
            }
            if (!PreStrategyManager.OooO00o.OooO00o(context, str, bundle != null ? bundle.getString("scene_id") : null)) {
                TmcLogger.e(TAG, "checkOpenBrowser failed. PreStrategyManager.checkEnableOpenBrowser is false.");
                return false;
            }
            ExtendModel extend = appModel.getExtend();
            String strGenerateShellUrl = KUrlUtils.generateShellUrl(extend != null ? extend.getH5Url() : null, bundle);
            if (strGenerateShellUrl.length() == 0) {
                TmcLogger.e(TAG, "checkOpenBrowser failed. url is null.");
                return false;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(strGenerateShellUrl));
            intent.addFlags(ASTNode.DEOP);
            context.startActivity(intent);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(str, PointAnalyseType.POINT_OPEN_BROWSER, "");
            return true;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return false;
        }
    }

    private final boolean checkTarget(Uri uri, String str) {
        String queryParameter;
        if (uri != null && (queryParameter = uri.getQueryParameter("target")) != null) {
            if (queryParameter.length() <= 0) {
                queryParameter = null;
            }
            if (queryParameter != null) {
                HashMap<String, String> shareTargetMap = getShareTargetMap();
                String str2 = shareTargetMap != null ? shareTargetMap.get(com.cloud.tmc.miniutils.util.Utils.getApp().getPackageName()) : null;
                if (Intrinsics.c(str2, queryParameter) || str2 == null) {
                    return false;
                }
                try {
                    String query = uri.getQuery();
                    String queryParameter2 = uri.getQueryParameter(TmcConstants.EXTRA_SHARE_SUPPORT_VERSION);
                    String str3 = "dlt";
                    if (!Intrinsics.c(queryParameter2, "0") && queryParameter2 != null) {
                        str3 = "dlt" + queryParameter2;
                    }
                    String key = getKey(shareTargetMap, queryParameter);
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.VIEW");
                    intent.addFlags(ASTNode.DEOP);
                    intent.setData(Uri.parse(str3 + "://miniapp?" + query));
                    intent.setPackage(key);
                    com.cloud.tmc.miniutils.util.Utils.getApp().startActivity(intent);
                    return true;
                } catch (Exception e11) {
                    TmcLogger.e(e11.getMessage());
                    Intent intent2 = new Intent();
                    intent2.setAction("android.intent.action.VIEW");
                    intent2.addFlags(ASTNode.DEOP);
                    intent2.setData(Uri.parse(str));
                    intent2.addCategory("android.intent.category.BROWSABLE");
                    com.cloud.tmc.miniutils.util.Utils.getApp().startActivity(intent2);
                    return true;
                }
            }
        }
        return false;
    }

    private final String getAllOfDigit(String str) {
        StringBuilder sb2 = new StringBuilder();
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            if (Character.isDigit(str.charAt(i11))) {
                sb2.append(str.charAt(i11));
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "builder.toString()");
        return string;
    }

    @JvmStatic
    public static final boolean getCloseSdkSwitch() {
        try {
            ConfigService configService = (ConfigService) TmcProxy.get(ConfigService.class);
            if (configService != null) {
                return configService.getConfigBoolean(LauncherMiniAppConfigHelper.KEY_CLOSE_MINI_APP_SDK, false);
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    private final String getKey(HashMap<String, String> map, String str) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            if (Intrinsics.c(entry.getValue(), str)) {
                return key;
            }
        }
        return null;
    }

    @JvmStatic
    public static final Class<? extends Activity> getMiniAppLaunchActivity(Intent intent) {
        Intrinsics.h(intent, "intent");
        Bundle bundle = ((StartClientBundle) BundleUtils.getParcelable(intent.getExtras(), TmcConstants.EXTRA_START_BUNDLE)).startParams;
        String string = bundle != null ? bundle.getString(TmcConstants.EXTRA_TARGET_PROCESS) : null;
        MiniAppConfigHelper miniAppConfigHelper = MiniAppConfigHelper.INSTANCE;
        if (!Intrinsics.c(string, miniAppConfigHelper.getDEFAULT_TARGET_PROCESS()) && !ProcessUtils.isMiniProcess() && ByteAppManager.isPreInit()) {
            ByteAppManager.otherProcessInit();
        }
        return Intrinsics.c(string, miniAppConfigHelper.getDEFAULT_TARGET_PROCESS()) ? MiniAppMiniProcessActivity.class : MiniAppMainProcessActivity.class;
    }

    private final HashMap<String, String> getShareTargetMap() {
        try {
            return (HashMap) GsonUtils.fromJson(((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_SHARE_TARGET, MiniAppConfigHelper.DEFAULT_SHARE_TARGET), (Type) HashMap.class);
        } catch (Exception e11) {
            TmcLogger.e(e11.getMessage());
            return null;
        }
    }

    @JvmStatic
    public static final String getTargetProcess() {
        return ":mini";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void jumpGooglePlayStore$lambda$35(Context context) {
        Intrinsics.h(context, "$context");
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_JUMP_STORE_DEEPLINK, MiniAppConfigHelper.DEFAULT_JUMP_STORE_DEEPLINK) + context.getPackageName()));
        intent.addFlags(ASTNode.DEOP);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void jumpPalmStore$lambda$36(Context context) {
        Intrinsics.h(context, "$context");
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("palmplay://thirdlauncher.com/?entryType=AppDetail&detailType=SOFT&utm_source=pushsdk&_source=miniApp&packageName=" + context.getPackageName() + "&name=" + AppUtils.getAppName()));
        intent.addFlags(ASTNode.DEOP);
        context.startActivity(intent);
    }

    @JvmStatic
    public static final void killActivity(Context context) {
        try {
            MiniAppActivity miniAppActivity = context instanceof MiniAppActivity ? (MiniAppActivity) context : null;
            if (miniAppActivity != null) {
                miniAppActivity.killActivity();
            }
        } catch (Exception e11) {
            TmcLogger.e(e11.getMessage());
        }
    }

    @JvmStatic
    public static final void launchAdLandingPage(Context context, String url, Bundle bundle) {
        Intrinsics.h(context, "context");
        Intrinsics.h(url, "url");
        Intent intent = new Intent();
        WebviewAdFormActivity.OooO00o oooO00o = WebviewAdFormActivity.OooOOo0;
        intent.putExtra("ad_web_form_url", url);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(ASTNode.DEOP);
        }
        intent.setClass(context, WebviewAdFormActivity.class);
        AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, context);
        context.startActivity(intent);
    }

    public static /* synthetic */ void launchAdLandingPage$default(Context context, String str, Bundle bundle, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            bundle = null;
        }
        launchAdLandingPage(context, str, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void launchMiniActivity(Bundle bundle, String str, Context context) {
        String string;
        String string2;
        String string3;
        String string4;
        if (!ProcessUtils.isMiniProcess()) {
            TmcLogger.d(TAG, "current process not allowed to start! processName:" + ProcessUtils.getProcessName());
            return;
        }
        Intent intent = new Intent();
        boolean z10 = bundle != null ? bundle.getBoolean("quickMode") : false;
        String str2 = "";
        if (bundle == null || (string = bundle.getString("page")) == null) {
            string = "";
        }
        boolean zCheckEnableAppQuickModel = checkEnableAppQuickModel(z10, string);
        intent.putExtra(TmcConstants.EXTRA_APP_ENABLE_QUICK_MODE, zCheckEnableAppQuickModel);
        StartClientBundle startClientBundleCreateFastStartClient = ActivityHelper.createFastStartClient(new PrepareCallbackParam(), 0);
        Bundle bundle2 = startClientBundleCreateFastStartClient.startParams;
        if (bundle2 != null) {
            bundle2.putBoolean(TmcConstants.EXTRA_APP_ENABLE_QUICK_MODE, zCheckEnableAppQuickModel);
        }
        Bundle bundle3 = startClientBundleCreateFastStartClient.sceneParams;
        if (bundle3 != null) {
            bundle3.putBoolean(TmcConstants.EXTRA_APP_ENABLE_QUICK_MODE, zCheckEnableAppQuickModel);
        }
        String targetProcess = getTargetProcess();
        Bundle bundle4 = startClientBundleCreateFastStartClient.startParams;
        if (bundle4 != null) {
            bundle4.putString(TmcConstants.EXTRA_TARGET_PROCESS, targetProcess);
        }
        Bundle bundle5 = startClientBundleCreateFastStartClient.sceneParams;
        if (bundle5 != null) {
            bundle5.putString(TmcConstants.EXTRA_TARGET_PROCESS, targetProcess);
        }
        if (bundle != null) {
            Bundle bundle6 = startClientBundleCreateFastStartClient.startParams;
            if (bundle6 != null) {
                bundle6.putAll(bundle);
            }
            Bundle bundle7 = startClientBundleCreateFastStartClient.sceneParams;
            if (bundle7 != null) {
                bundle7.putAll(bundle);
            }
        }
        Unit unit = Unit.f67061a;
        intent.putExtra(TmcConstants.EXTRA_START_BUNDLE, startClientBundleCreateFastStartClient);
        intent.putExtra(TmcConstants.EXTRA_APP_ID, str);
        if (bundle == null || (string2 = bundle.getString("mode")) == null) {
            string2 = "";
        }
        intent.putExtra("mode", string2);
        if (bundle == null || (string3 = bundle.getString(TmcConstants.EXTRA_APP_DEV_TOKEN)) == null) {
            string3 = "";
        }
        intent.putExtra(TmcConstants.EXTRA_APP_DEV_TOKEN, string3);
        if (bundle != null && (string4 = bundle.getString("version")) != null) {
            str2 = string4;
        }
        intent.putExtra("version", str2);
        if (!(context instanceof Activity)) {
            intent.addFlags(ASTNode.DEOP);
        }
        ((IClientStarter) TmcProxy.get(IClientStarter.class)).startClient(context, intent, bundle);
    }

    public static /* synthetic */ void launchMiniApp$default(MiniAppLaunch miniAppLaunch, Context context, String str, String str2, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str2 = "";
        }
        miniAppLaunch.launchMiniApp(context, str, str2);
    }

    @JvmStatic
    public static final void launchMiniAppForId(Context context, String str, Bundle bundle) {
        Intrinsics.h(context, "context");
        TmcLogger.d(TAG, "launchMiniAppForId:appid:" + str);
        if (bundle == null) {
            bundle = new Bundle();
        }
        String strOrDefaultAndCheckEmpty = StringExtKt.orDefaultAndCheckEmpty(bundle.getString("massid"), String.valueOf(System.currentTimeMillis()));
        if (strOrDefaultAndCheckEmpty.length() == 0) {
            bundle.putString("massid", strOrDefaultAndCheckEmpty);
        }
        try {
            if (ProcessUtils.isMiniProcess()) {
                if (bundle.getLong(TmcConstants.KEY_APP_START_FIRST_TIME, 0L) == 0) {
                    bundle.putLong(TmcConstants.KEY_APP_START_FIRST_TIME, 0L);
                }
                bundle.putLong(TmcConstants.KEY_APP_START_MINI_FIRST_TIME, System.currentTimeMillis());
                if (System.currentTimeMillis() - ByteAppManager.INSTANCE.getMiniProcessTimeStamp() > MBInterstitialActivity.WEB_LOAD_TIME) {
                    bundle.putBoolean(TmcConstants.KEY_APP_MINI_PROCESS_ALIVE, true);
                }
                com.cloud.tmc.miniapp.utils.athena.OooO0OO oooO0OO = com.cloud.tmc.miniapp.utils.athena.OooO0OO.OooO00o;
                Bundle bundle2 = new Bundle();
                bundle2.putString("massid", strOrDefaultAndCheckEmpty);
                bundle2.putString(TmcConstants.KEY_MINI_APPID, str);
                Unit unit = Unit.f67061a;
                oooO0OO.OooO0O0("miniapp_mini_start", Constants.MINI_APPID, bundle2);
            } else {
                bundle.putLong(TmcConstants.KEY_APP_START_FIRST_TIME, System.currentTimeMillis());
                com.cloud.tmc.miniapp.utils.athena.OooO0OO oooO0OO2 = com.cloud.tmc.miniapp.utils.athena.OooO0OO.OooO00o;
                Bundle bundle3 = new Bundle();
                bundle3.putString("massid", strOrDefaultAndCheckEmpty);
                bundle3.putString(TmcConstants.KEY_MINI_APPID, str);
                Unit unit2 = Unit.f67061a;
                oooO0OO2.OooO0O0("miniapp_main_start", Constants.MINI_APPID, bundle3);
            }
        } catch (Throwable unused) {
        }
        IpcMiniLauncherService.OooO00o.OooO00o(context, str, bundle, new OooO0o(context, str, bundle));
    }

    public static /* synthetic */ void launchMiniAppForId$default(Context context, String str, Bundle bundle, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            bundle = null;
        }
        launchMiniAppForId(context, str, bundle);
    }

    private final void openBrowser(Context context, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(ASTNode.DEOP);
            context.startActivity(intent);
        } catch (Exception unused) {
            TmcLogger.e("openBrowser failed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showErrorDialog$lambda$37(Context context) {
        new Oooo000(context).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showProgressDialog(Context context, com.cloud.tmc.miniapp.prepare.callback.OooO00o oooO00o) {
        if (context == null) {
            return;
        }
        final Oooo0 oooo0 = new Oooo0(context);
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.utils.b
            @Override // java.lang.Runnable
            public final void run() {
                MiniAppLaunch.showProgressDialog$lambda$39(oooo0);
            }
        });
        if (oooO00o != null) {
            oooO00o.OooO00o(oooo0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showProgressDialog$lambda$39(Oooo0 dialog) {
        Intrinsics.h(dialog, "$dialog");
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showUpdateFwZipDialog$lambda$38(Context context, String str, com.cloud.tmc.miniapp.prepare.callback.OooO00o oooO00o) {
        Long lValueOf;
        String string;
        TextView textView;
        o000oOoO o000oooo = new o000oOoO(context);
        TextView textViewOooO0Oo = o000oooo.OooO0Oo();
        if (textViewOooO0Oo != null) {
            textViewOooO0Oo.setText(o000oooo.getString(R.string.mini_dialog_update_title));
        }
        TextView textViewOooO0OO = o000oooo.OooO0OO();
        if (textViewOooO0OO != null) {
            textViewOooO0OO.setText(o000oooo.getString(R.string.mini_dialog_fw_update_content));
        }
        TextView textViewOooO00o = o000oooo.OooO00o();
        if (textViewOooO00o != null) {
            textViewOooO00o.setText(o000oooo.getString(R.string.mini_dialog_update_cancel));
        }
        TextView textViewOooO0O0 = o000oooo.OooO0O0();
        if (textViewOooO0O0 != null) {
            textViewOooO0O0.setText(o000oooo.getString(R.string.mini_dialog_fw_update_now));
        }
        if (str != null) {
            try {
                lValueOf = Long.valueOf(Long.parseLong(str));
            } catch (Exception e11) {
                TmcLogger.e(e11.getMessage());
            }
        } else {
            lValueOf = null;
        }
        TextView textView2 = (TextView) o000oooo.OooO0o0.getValue();
        if (textView2 != null) {
            textView2.setVisibility(0);
        }
        if (lValueOf != null && (string = o000oooo.getString(R.string.mini_dialog_download_size)) != null && (textView = (TextView) o000oooo.OooO0o0.getValue()) != null) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str2 = String.format(string, Arrays.copyOf(new Object[]{o000oooo.OooO00o(lValueOf.longValue())}, 1));
            Intrinsics.g(str2, "format(format, *args)");
            textView.setText(str2);
        }
        OooO listener = new OooO(context, o000oooo, oooO00o);
        Intrinsics.h(listener, "listener");
        o000oooo.OooO0o = listener;
        o000oooo.show();
    }

    @JvmStatic
    public static final PrepareException showUpdateStepErrorMsg(String str, int i11, String str2) {
        if (i11 == 30004) {
            return new PrepareException("30004", "appid:" + str + ", AppInfo not exist");
        }
        if (i11 == 30005) {
            return new PrepareException("30005", "appid:" + str + ",  AppInfo Version not exist");
        }
        if (i11 == 30009) {
            return new PrepareException("30009", "appid:" + str + ", The byteapp version has expired");
        }
        if (i11 == 30022) {
            return new PrepareException("30022", "appid:" + str + ", Version error");
        }
        return new PrepareException("4", "appid:" + str + ", " + str2);
    }

    private final void updateCDNConfig(CDNConfigBean cDNConfigBean, Context context) {
        try {
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, TmcConstants.KEY_MINI_SDK_STORAGE, LauncherMiniAppConfigHelper.KEY_MINI_APPINFO_CDN_CONFIG, GsonUtils.toJson(cDNConfigBean));
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    private final void updateWarmUpConfig(WarmUpEntranceConfigBean warmUpEntranceConfigBean, Context context) {
        try {
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, TmcConstants.KEY_MINI_SDK_STORAGE, LauncherMiniAppConfigHelper.KEY_MINI_WARM_UP_ENTRANCE, GsonUtils.toJson(warmUpEntranceConfigBean));
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    private final boolean useCDNCloudStorage(CDNConfigBean cDNConfigBean, Context context) {
        Float grayScale;
        Boolean enableCdnRequest = cDNConfigBean != null ? cDNConfigBean.getEnableCdnRequest() : null;
        Boolean bool = Boolean.FALSE;
        if (Intrinsics.c(bool, enableCdnRequest)) {
            TmcLogger.d(TAG, "cdn request is closed");
            return false;
        }
        float fNextFloat = new SecureRandom().nextFloat();
        float fFloatValue = (cDNConfigBean == null || (grayScale = cDNConfigBean.getGrayScale()) == null) ? 1.0f : grayScale.floatValue();
        if (fFloatValue < fNextFloat) {
            TmcLogger.d(TAG, "not in the gray range: [grayScale]->" + fFloatValue + ",[randomFloat]->" + fNextFloat);
            if (cDNConfigBean != null) {
                cDNConfigBean.setEnableCdnRequest(bool);
            }
            updateCDNConfig(cDNConfigBean, context);
            return false;
        }
        TmcLogger.d(TAG, "in the gray range: [grayScale]->" + fFloatValue + ",[randomFloat]->" + fNextFloat);
        if (cDNConfigBean != null) {
            cDNConfigBean.setEnableCdnRequest(Boolean.TRUE);
        }
        updateCDNConfig(cDNConfigBean, context);
        return true;
    }

    private final boolean useWarmUpCloudStorage(WarmUpEntranceConfigBean warmUpEntranceConfigBean, Context context) {
        Float grayScale;
        Boolean enableWarmUp = warmUpEntranceConfigBean != null ? warmUpEntranceConfigBean.getEnableWarmUp() : null;
        Boolean bool = Boolean.FALSE;
        if (Intrinsics.c(bool, enableWarmUp)) {
            TmcLogger.d(TAG, "warmup entrance is closed");
            warmUpEntranceConfigBean.setEnableWarmUp(bool);
            updateWarmUpConfig(warmUpEntranceConfigBean, context);
            return false;
        }
        float fNextFloat = new SecureRandom().nextFloat();
        float fFloatValue = (warmUpEntranceConfigBean == null || (grayScale = warmUpEntranceConfigBean.getGrayScale()) == null) ? 1.0f : grayScale.floatValue();
        if (fFloatValue < fNextFloat) {
            TmcLogger.d(TAG, "warmup entrance not in the gray range: [grayScale]->" + fFloatValue + ",[randomFloat]->" + fNextFloat);
            if (warmUpEntranceConfigBean != null) {
                warmUpEntranceConfigBean.setEnableWarmUp(bool);
            }
            updateWarmUpConfig(warmUpEntranceConfigBean, context);
            return false;
        }
        TmcLogger.d(TAG, "warmup entrance in the gray range: [grayScale]->" + fFloatValue + ",[randomFloat]->" + fNextFloat);
        if (warmUpEntranceConfigBean != null) {
            warmUpEntranceConfigBean.setEnableWarmUp(Boolean.TRUE);
        }
        updateWarmUpConfig(warmUpEntranceConfigBean, context);
        return true;
    }

    @JvmOverloads
    public final void backgroundDownZip(Context context, AppModel appModel, int i11) {
        Intrinsics.h(appModel, "appModel");
        backgroundDownZip$default(this, context, appModel, i11, null, null, null, 56, null);
    }

    @JvmOverloads
    public final void backgroundDownZip(Context context, AppModel appModel, int i11, Function0<Unit> function0) {
        Intrinsics.h(appModel, "appModel");
        backgroundDownZip$default(this, context, appModel, i11, function0, null, null, 48, null);
    }

    @JvmOverloads
    public final void backgroundDownZip(Context context, AppModel appModel, int i11, Function0<Unit> function0, Function3<? super String, ? super String, ? super IOException, Unit> function3) {
        Intrinsics.h(appModel, "appModel");
        backgroundDownZip$default(this, context, appModel, i11, function0, function3, null, 32, null);
    }

    @JvmOverloads
    public final void backgroundDownZip(Context context, AppModel appModel, int i11, Function0<Unit> function0, Function3<? super String, ? super String, ? super IOException, Unit> function3, Function0<Unit> function1) {
        Intrinsics.h(appModel, "appModel");
        if (context == null) {
            return;
        }
        if (OooOOO.OooO00o(appModel)) {
            backgroundDownloadSubPackageZip(context, appModel, i11, function0, function3, function1);
            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "backgroundDownSubPkgZip:appInfo:appId:" + appModel.getAppId() + ";deployVersion:" + appModel.getDeployVersion());
            return;
        }
        backgroundDownloadSinglePackageZip(context, appModel, i11, function0, function3, function1);
        TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "backgroundDownWholePkgZip:appInfo:appId:" + appModel.getAppId() + ";deployVersion:" + appModel.getDeployVersion());
    }

    @JvmOverloads
    public final void backgroundDownloadSinglePackageZip(Context context, AppModel appModel, int i11) {
        Intrinsics.h(appModel, "appModel");
        backgroundDownloadSinglePackageZip$default(this, context, appModel, i11, null, null, null, 56, null);
    }

    @JvmOverloads
    public final void backgroundDownloadSinglePackageZip(Context context, AppModel appModel, int i11, Function0<Unit> function0) {
        Intrinsics.h(appModel, "appModel");
        backgroundDownloadSinglePackageZip$default(this, context, appModel, i11, function0, null, null, 48, null);
    }

    @JvmOverloads
    public final void backgroundDownloadSinglePackageZip(Context context, AppModel appModel, int i11, Function0<Unit> function0, Function3<? super String, ? super String, ? super IOException, Unit> function3) {
        Intrinsics.h(appModel, "appModel");
        backgroundDownloadSinglePackageZip$default(this, context, appModel, i11, function0, function3, null, 32, null);
    }

    @JvmOverloads
    public final void backgroundDownloadSinglePackageZip(Context context, AppModel appModel, int i11, Function0<Unit> function0, Function3<? super String, ? super String, ? super IOException, Unit> function3, Function0<Unit> function1) {
        Intrinsics.h(appModel, "appModel");
        if (context == null || backgroundDownloadOfflineCheck(appModel, context, function0)) {
            return;
        }
        TmcResourceManager tmcResourceManager = (TmcResourceManager) TmcProxy.get(TmcResourceManager.class);
        tmcResourceManager.downloadApp(appModel, i11, true, new OooO00o(function1, tmcResourceManager, appModel, context, function0, function3));
    }

    @JvmOverloads
    public final void backgroundDownloadSubPackageZip(Context context, AppModel appModel, int i11) {
        Intrinsics.h(appModel, "appModel");
        backgroundDownloadSubPackageZip$default(this, context, appModel, i11, null, null, null, 56, null);
    }

    @JvmOverloads
    public final void backgroundDownloadSubPackageZip(Context context, AppModel appModel, int i11, Function0<Unit> function0) {
        Intrinsics.h(appModel, "appModel");
        backgroundDownloadSubPackageZip$default(this, context, appModel, i11, function0, null, null, 48, null);
    }

    @JvmOverloads
    public final void backgroundDownloadSubPackageZip(Context context, AppModel appModel, int i11, Function0<Unit> function0, Function3<? super String, ? super String, ? super IOException, Unit> function3) {
        Intrinsics.h(appModel, "appModel");
        backgroundDownloadSubPackageZip$default(this, context, appModel, i11, function0, function3, null, 32, null);
    }

    @JvmOverloads
    public final void backgroundDownloadSubPackageZip(Context context, AppModel appModel, int i11, Function0<Unit> function0, Function3<? super String, ? super String, ? super IOException, Unit> function3, Function0<Unit> function1) {
        Intrinsics.h(appModel, "appModel");
        if (context == null) {
            return;
        }
        try {
            if (backgroundDownloadOfflineCheck(appModel, context, function0)) {
                return;
            }
            TmcResourceManager tmcResourceManager = (TmcResourceManager) TmcProxy.get(TmcResourceManager.class);
            String mainPackageUrlEncryption = appModel.getMainPackageUrlEncryption();
            tmcResourceManager.downloadApp(appModel.getAppId(), appModel.getMainPackageUrl(), mainPackageUrlEncryption, appModel.getMainPackageZipPath(), i11, true, new OooO0O0(function1, tmcResourceManager, mainPackageUrlEncryption, appModel, context, function0, function3));
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "", th2);
        }
    }

    public final void buildDownloadPath(AppModel appmodel) {
        Intrinsics.h(appmodel, "appmodel");
        PathProxy pathProxy = (PathProxy) TmcProxy.get(PathProxy.class);
        TmcResourceManager tmcResourceManager = (TmcResourceManager) TmcProxy.get(TmcResourceManager.class);
        appmodel.setPackageUrl_MD5(AppPrepareUtils.INSTANCE.urlToSHA256(com.cloud.tmc.integration.utils.AppUtils.INSTANCE.getPackageDownloadUrl(appmodel)));
        tmcResourceManager.creatBaseDirectory(appmodel);
        appmodel.setZipPath(pathProxy.getZipPath(appmodel));
        appmodel.setUnzipFilePath(pathProxy.getZipUnCompressPath(appmodel));
    }

    public final String buildShareUrl(String str, String str2) {
        String str3;
        String str4;
        String configString = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_SHARE_PREFIX_URL, MiniAppConfigHelper.DEFAULT_SHARE_PREFIX_URL);
        HashMap<String, String> shareTargetMap = getShareTargetMap();
        if (shareTargetMap == null || (str3 = shareTargetMap.get(com.cloud.tmc.miniutils.util.Utils.getApp().getPackageName())) == null) {
            str3 = "";
        }
        if (str3.length() > 0) {
            str4 = "&target=" + str3;
        } else {
            str4 = "";
        }
        if (str2 == null || str2.length() == 0) {
            str2 = "";
        }
        String str5 = configString + "?appId=" + str + str2;
        if (!((ISDKConfig) TmcProxy.get(ISDKConfig.class)).openShareTarget()) {
            return str5;
        }
        return str5 + str4;
    }

    public final void byteAppInit$com_cloud_tmc_miniapp_sdk(Application application) {
        Intrinsics.h(application, "application");
        ByteAppManager.init(application, OooO0OO.OooO00o);
    }

    public final boolean checkAppInfoEnableCDNRequest(Context context) {
        CDNConfigBean cDNConfigBean;
        CDNConfigBean cDNConfigBean2;
        Intrinsics.h(context, "context");
        try {
            cDNConfigBean = (CDNConfigBean) GsonUtils.getGson().fromJson(((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_MINI_APPINFO_CDN_CONFIG, MiniAppConfigHelper.DEFAULT_MINI_APPINFO_CDN_CONFIG), CDNConfigBean.class);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            cDNConfigBean = null;
        }
        try {
            String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, TmcConstants.KEY_MINI_SDK_STORAGE, LauncherMiniAppConfigHelper.KEY_MINI_APPINFO_CDN_CONFIG);
            cDNConfigBean2 = string != null ? (CDNConfigBean) GsonUtils.getGson().fromJson(string, CDNConfigBean.class) : null;
        } catch (Throwable th3) {
            TmcLogger.e(TAG, th3);
        }
        if (cDNConfigBean2 == null) {
            return INSTANCE.useCDNCloudStorage(cDNConfigBean, context);
        }
        if (Intrinsics.c(cDNConfigBean2.getCdnConfigToken(), cDNConfigBean != null ? cDNConfigBean.getCdnConfigToken() : null)) {
            TmcLogger.d(TAG, "storage cdn request status:" + cDNConfigBean2.getEnableCdnRequest());
            Boolean enableCdnRequest = cDNConfigBean2.getEnableCdnRequest();
            if (enableCdnRequest != null) {
                return enableCdnRequest.booleanValue();
            }
            return true;
        }
        TmcLogger.d(TAG, "cdn request token changed:[nativeToken]->" + cDNConfigBean2.getCdnConfigToken() + ",[cloudToken]->" + (cDNConfigBean != null ? cDNConfigBean.getCdnConfigToken() : null));
        return INSTANCE.useCDNCloudStorage(cDNConfigBean, context);
    }

    public final boolean checkEnableBackgroundUnzip() {
        try {
            return MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ENABLE_BACKGROUND_UNZIP, true);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return false;
        }
    }

    public final boolean checkFocusUpdateMyByteApp(AppModel appModel, int i11) {
        List arrayList;
        Intrinsics.h(appModel, "appModel");
        try {
            String appId = appModel.getAppId();
            if (appId == null) {
                return false;
            }
            String configString = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_MINI_ENABLE_FORCE_UPDATE_LIST, "[]");
            Object obj = null;
            if (configString != null) {
                Object objFromJson = GsonUtils.fromJson(configString, new TypeToken<ArrayList<ForceUpdateModel>>() { // from class: com.cloud.tmc.miniapp.utils.MiniAppLaunch$checkFocusUpdateMyByteApp$enableForceUpdateList$1$1
                }.getType());
                arrayList = objFromJson instanceof List ? (List) objFromJson : null;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
            } else {
                arrayList = new ArrayList();
            }
            for (Object obj2 : arrayList) {
                if (Intrinsics.c(appId, ((ForceUpdateModel) obj2).getAppId())) {
                    obj = obj2;
                    break;
                }
            }
            ForceUpdateModel forceUpdateModel = (ForceUpdateModel) obj;
            if (forceUpdateModel == null) {
                return false;
            }
            if (i11 != 1) {
                return i11 == 2;
            }
            MiniAppLaunch miniAppLaunch = INSTANCE;
            String version = forceUpdateModel.getVersion();
            String str = "";
            if (version == null) {
                version = "";
            }
            String miniAppVersion = miniAppLaunch.getMiniAppVersion(appModel);
            if (miniAppVersion != null) {
                str = miniAppVersion;
            }
            boolean zCompareVersion = miniAppLaunch.compareVersion(version, str);
            TmcLogger.d(TAG, "appinfo 需要强制更新" + zCompareVersion);
            return zCompareVersion;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return false;
        }
    }

    public final boolean checkFwVersionUpdate(String oldFwVersion, String newFwVersion) {
        Intrinsics.h(oldFwVersion, "oldFwVersion");
        Intrinsics.h(newFwVersion, "newFwVersion");
        if (!((ConfigService) TmcProxy.get(ConfigService.class)).getConfigBoolean(LauncherMiniAppConfigHelper.KEY_FW_UPDATE_COMPARE, true)) {
            return true;
        }
        try {
            List listS0 = StringsKt.S0(oldFwVersion, new String[]{"."}, false, 0, 6, null);
            Intrinsics.f(listS0, "null cannot be cast to non-null type kotlin.collections.MutableList<kotlin.String>");
            List listC = TypeIntrinsics.c(listS0);
            List listS1 = StringsKt.S0(newFwVersion, new String[]{"."}, false, 0, 6, null);
            Intrinsics.f(listS1, "null cannot be cast to non-null type kotlin.collections.MutableList<kotlin.String>");
            List listC2 = TypeIntrinsics.c(listS1);
            if (listC.size() > 3) {
                CollectionsKt.J(listC);
            }
            if (listC2.size() > 3) {
                CollectionsKt.J(listC2);
            }
            return Integer.parseInt((String) listC2.get(0)) > Integer.parseInt((String) listC.get(0)) || Integer.parseInt((String) listC2.get(1)) > Integer.parseInt((String) listC.get(1));
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return true;
        }
    }

    public final String checkH5UrlInBlackList(String url) {
        Intrinsics.h(url, "url");
        try {
            Object objFromJson = GsonUtils.fromJson(ProcessUtils.isMiniProcess() ? MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_HYBRID_URL_BLACK_LIST, "[]") : MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_HYBRID_URL_BLACK_LIST, "[]"), new TypeToken<ArrayList<String>>() { // from class: com.cloud.tmc.miniapp.utils.MiniAppLaunch$checkH5UrlInBlackList$blackList$1
            }.getType());
            List<String> arrayList = objFromJson instanceof List ? (List) objFromJson : null;
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            String host = UrlUtils.getHost(url);
            for (String str : arrayList) {
                Intrinsics.g(host, "host");
                if (StringsKt.c0(host, str, false, 2, null)) {
                    TmcLogger.e(TAG, "url in blackList return " + url);
                    return null;
                }
            }
            return url;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return url;
        }
    }

    public final boolean checkLowSupportVersion(String str) {
        if (str == null || str.length() == 0) {
            return true;
        }
        try {
            int i11 = Integer.parseInt(getVersionPrefix(GlobalPackageConfig.Companion.getSDK_DEV_VERSION()));
            int i12 = Integer.parseInt(getVersionPrefix(str));
            TmcLogger.d("nec", "<checkLowSupportVersion> currentV:" + i11 + ",lowV:" + i12);
            return i11 >= i12;
        } catch (Throwable unused) {
            return false;
        }
    }

    @SuppressLint({"MissingPermission"})
    public final boolean checkShowDownloadTips(String str) {
        Long lX;
        if (str == null || str.length() == 0 || (lX = StringsKt.x(str)) == null) {
            return false;
        }
        return !NetworkUtils.isWifiConnected() && lX.longValue() / ((long) 1000) > ((long) ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigInt(LauncherMiniAppConfigHelper.KEY_UPDATE_PACKAGE_SIZE, MiniAppConfigHelper.DEFAULT_UPDATE_PACKAGE_SIZE));
    }

    public final void clearLaunchMap(String str) {
        try {
            TypeIntrinsics.d(commonResLaunchList).remove(str);
            TypeIntrinsics.d(commonResIdList).remove(str);
        } catch (Throwable unused) {
        }
    }

    public final void commonResTrack(String str, String type) {
        Intrinsics.h(type, "type");
        if (str != null) {
            try {
                if (type.equals("u_s")) {
                    commonResIdList.put(str, Boolean.TRUE);
                }
                Map<String, Long> commonResLaunch = INSTANCE.getCommonResLaunch(str);
                if (commonResLaunch != null) {
                    commonResLaunch.put(type, Long.valueOf(System.currentTimeMillis()));
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final boolean compareVersion(String nativePackageVersion, String networkVersion) {
        int iCharAt;
        int iCharAt2;
        Intrinsics.h(nativePackageVersion, "nativePackageVersion");
        Intrinsics.h(networkVersion, "networkVersion");
        try {
            if (TextUtils.isEmpty(networkVersion)) {
                return true;
            }
            String miniAppVersion = ((IConfigStrategyProxy) TmcProxy.get(IConfigStrategyProxy.class)).getMiniAppVersion(nativePackageVersion);
            String miniAppVersion2 = ((IConfigStrategyProxy) TmcProxy.get(IConfigStrategyProxy.class)).getMiniAppVersion(networkVersion);
            int length = miniAppVersion.length();
            int length2 = miniAppVersion2.length();
            int i11 = 0;
            int i12 = 0;
            do {
                if (i11 < length || i12 < length2) {
                    iCharAt = 0;
                    while (i11 < length && miniAppVersion.charAt(i11) != '.') {
                        iCharAt = ((iCharAt * 10) + miniAppVersion.charAt(i11)) - 48;
                        i11++;
                    }
                    i11++;
                    iCharAt2 = 0;
                    while (i12 < length2 && miniAppVersion2.charAt(i12) != '.') {
                        iCharAt2 = ((iCharAt2 * 10) + miniAppVersion2.charAt(i12)) - 48;
                        i12++;
                    }
                    i12++;
                }
            } while (iCharAt == iCharAt2);
            return iCharAt > iCharAt2;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
        return false;
    }

    public final boolean enableCheckBackgroundDownloadZipStatus() {
        try {
            return MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_CHECK_DOWNLOAD_ZIP, true);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return false;
        }
    }

    public final boolean enableWebViewMask() {
        try {
            return MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_WEBVIEW_MASK_ENABLE, true);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return false;
        }
    }

    public final AppModel generateAppModel(AppInfoModel appInfoModel) {
        Intrinsics.h(appInfoModel, "appInfoModel");
        AppModel appModel = new AppModel();
        appModel.setAppId(appInfoModel.getAppId());
        appModel.setLogo(appInfoModel.getLogo());
        appModel.setDesc(appInfoModel.getDesc());
        appModel.setName(appInfoModel.getName());
        appModel.setDeveloper(appInfoModel.getDeveloper());
        appModel.setPackageUrl(appInfoModel.getPackageUrl());
        appModel.setDeployVersion(appInfoModel.getDeployVersion());
        appModel.setDeveloperVersion(appInfoModel.getDeveloperVersion());
        appModel.setMiniappSubtype(appInfoModel.getMiniappSubtype());
        appModel.setTemplateMiniappId(appInfoModel.getTemplateMiniappId());
        appModel.setTemplatePackageUrl(appInfoModel.getTemplatePackageUrl());
        appModel.setTemplateDeployVersion(appInfoModel.getTemplateDeployVersion());
        appModel.setLowestSupportTemplateVersion(appInfoModel.getLowestSupportTemplateVersion());
        appModel.setCompatiblePackageUrl(appInfoModel.getCompatiblePackageUrl());
        appModel.setPermissions(appInfoModel.getPermissions());
        appModel.setExpiresTime(appInfoModel.getExpiresTime());
        appModel.setReleaseTime(appInfoModel.getReleaseTime());
        appModel.setLowestSupportVersion(appInfoModel.getLowestSupportVersion());
        appModel.setPackageSize(appInfoModel.getPackageSize());
        appModel.setClassificationNames(appInfoModel.getClassificationNames());
        appModel.setRegisterType(appInfoModel.getRegisterType());
        appModel.setExtend(appInfoModel.getExtend());
        appModel.setAppinfoCategoryType(appInfoModel.getAppinfoCategoryType());
        appModel.setLowestOpenedVersion(appInfoModel.getLowestOpenedVersion());
        appModel.setForceUpdate(appInfoModel.getForceUpdate());
        appModel.setTestVersion(appInfoModel.getIsTestVersion());
        appModel.setMainPackageUrl(appInfoModel.getMainPackageUrl());
        appModel.setSubPackageUrls(appInfoModel.getSubPackageUrls());
        appModel.setSubPackagePages(appInfoModel.getSubPackagePages());
        appModel.setMainPackagePages(appInfoModel.getMainPackagePages());
        appModel.setClassification(appInfoModel.getClassification());
        appModel.setUserAgreement(appInfoModel.getUserAgreement());
        appModel.setUserAgreementVersion(appInfoModel.getUserAgreementVersion());
        appModel.setUserAgreementUrl(appInfoModel.getUserAgreementUrl());
        appModel.setPrivacyPolicyUrl(appInfoModel.getPrivacyPolicyUrl());
        appModel.setLinkAndButtonColor(appInfoModel.getLinkAndButtonColor());
        appModel.setProcessingMethod(appInfoModel.getProcessingMethod());
        appModel.setPopupStyle(appInfoModel.getPopupStyle());
        PathProxy pathProxy = (PathProxy) TmcProxy.get(PathProxy.class);
        String mainPackageUrl = appModel.getMainPackageUrl();
        if (mainPackageUrl != null && mainPackageUrl.length() != 0) {
            appModel.setMainPackageUrlEncryption(AppPrepareUtils.INSTANCE.urlToSHA256(appModel.getMainPackageUrl()));
            appModel.setMainPackageZipPath(pathProxy.getAppBaseDownloadPath(appModel.getAppId()) + "/" + appModel.getMainPackageUrlEncryption() + "/" + appModel.getMainPackageUrlEncryption() + ".zip");
            appModel.setMainPackageUnZipFilePath(pathProxy.getAppBaseDownloadPath(appModel.getAppId()) + "/" + appModel.getMainPackageUrlEncryption() + "/unzip");
        }
        List<SubPackageInfo> subPackagePages = appModel.getSubPackagePages();
        if (subPackagePages != null) {
            for (SubPackageInfo subPackageInfo : subPackagePages) {
                HashMap subPackageUrls = appModel.getSubPackageUrls();
                String str = subPackageUrls != null ? (String) subPackageUrls.get(subPackageInfo.getRoot()) : null;
                if (str != null && str.length() != 0) {
                    subPackageInfo.setSubPackageUrl(str);
                    subPackageInfo.setSubPackageUrlMD5(AppPrepareUtils.INSTANCE.urlToSHA256(str));
                    TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "root:" + subPackageInfo.getRoot() + ",encUrl:" + subPackageInfo.getSubPackageUrlMD5());
                    subPackageInfo.setSubZipPath(pathProxy.getAppBaseDownloadPath(appModel.getAppId()) + "/" + subPackageInfo.getSubPackageUrlMD5() + "/" + subPackageInfo.getSubPackageUrlMD5() + ".zip");
                    subPackageInfo.setSubUnzipFilePath(pathProxy.getAppBaseDownloadPath(appModel.getAppId()) + "/" + subPackageInfo.getSubPackageUrlMD5() + "/unzip");
                }
            }
        }
        INSTANCE.buildDownloadPath(appModel);
        return appModel;
    }

    public final EntryInfo generateEntryInfo(AppInfoModel appInfoModel) {
        Intrinsics.h(appInfoModel, "appInfoModel");
        EntryInfo entryInfo = new EntryInfo();
        entryInfo.appId = appInfoModel.getAppId();
        entryInfo.desc = appInfoModel.getDesc();
        entryInfo.iconUrl = appInfoModel.getLogo();
        entryInfo.title = appInfoModel.getName();
        entryInfo.desc = appInfoModel.getDesc();
        entryInfo.slogan = appInfoModel.getSlogan();
        entryInfo.developer = appInfoModel.getDeveloper();
        entryInfo.setClassificationNames(appInfoModel.getClassificationNames());
        ExtendModel extend = appInfoModel.getExtend();
        entryInfo.setExclusiveLogoUrl(extend != null ? extend.getExclusiveLogoUrl() : null);
        return entryInfo;
    }

    public final String getAppInfoCDNPath(String str) {
        return AppDynamicBuildConfig.getMINI_APPINFO_CDN_URL() + "platform/appinfo/releaseInfo/" + str + ".json";
    }

    public final Map<String, Long> getCommonResLaunch(String appId) {
        Intrinsics.h(appId, "appId");
        try {
            Map<String, Map<String, Long>> map = commonResLaunchList;
            Map<String, Long> map2 = map.get(appId);
            if (map2 != null) {
                return map2;
            }
            HashMap map3 = new HashMap();
            map.put(appId, map3);
            return map3;
        } catch (Throwable unused) {
            return null;
        }
    }

    public final String getConfigCdnUrl(String defaultUrl) {
        Intrinsics.h(defaultUrl, "defaultUrl");
        return MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_PRE_MANAGER_CONFIG_URL, defaultUrl);
    }

    public final Context getLaunchContext(String str, Context context) {
        String configString = MiniAppConfigHelper.DEFAULT_MINI_FEEDBACK_ID;
        Intrinsics.h(context, "context");
        try {
            configString = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_MINI_FEEDBACK_ID, MiniAppConfigHelper.DEFAULT_MINI_FEEDBACK_ID);
        } catch (Throwable unused) {
        }
        if (Intrinsics.c(configString, str)) {
            return context;
        }
        Context applicationContext = context.getApplicationContext();
        Intrinsics.g(applicationContext, "{\n            context.applicationContext\n        }");
        return applicationContext;
    }

    public final String getMiniAppVersion(AppModel appModel) {
        if (appModel == null) {
            return "";
        }
        String developerVersion = appModel.getDeveloperVersion();
        return !TextUtils.isEmpty(developerVersion) ? developerVersion : appModel.getDeployVersion();
    }

    public final long getStartLoadingH5AnimDelayTime() {
        try {
            return MiniAppConfigHelper.INSTANCE.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_AUTO_HIDE_LOADING_H5_ANIM_TIME, 5000);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return 5000L;
        }
    }

    public final long getStartLoadingNativeAnimDelayTime() {
        try {
            return MiniAppConfigHelper.INSTANCE.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_AUTO_HIDE_LOADING_NATIVE_ANIM_TIME, 5000);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return 5000L;
        }
    }

    public final String getVersionPrefix(String str) {
        String strH1;
        return (str == null || (strH1 = StringsKt.h1(str, ".", null, 2, null)) == null) ? "" : strH1;
    }

    public final boolean isNeedUpdate(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        try {
            TmcAppInfoManager tmcAppInfoManager = (TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class);
            String miniAppVersion = getMiniAppVersion(tmcAppInfoManager.getAppModelFromUsed(context, appId));
            String miniAppVersion2 = getMiniAppVersion(tmcAppInfoManager.getAppModelFromPre(context, appId));
            if (miniAppVersion != null && miniAppVersion.length() != 0 && miniAppVersion2 != null && miniAppVersion2.length() != 0) {
                boolean zCompareVersion = compareVersion(miniAppVersion2, miniAppVersion);
                TmcLogger.d(TAG, "It's need update? update: " + zCompareVersion);
                return zCompareVersion;
            }
            return false;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return false;
        }
    }

    public final void jumpGooglePlayStore(final Context context, String str) {
        Intrinsics.h(context, "context");
        try {
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.utils.d
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppLaunch.jumpGooglePlayStore$lambda$35(context);
                }
            });
        } catch (Exception unused) {
            TmcLogger.e("jump GooglePlay failed");
            jumpPalmStore(context, str);
        }
    }

    public final void jumpPalmStore(final Context context, String str) {
        Intrinsics.h(context, "context");
        try {
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.utils.f
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppLaunch.jumpPalmStore$lambda$36(context);
                }
            });
        } catch (Exception unused) {
            TmcLogger.e("jump jumpPalmStore failed");
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01f1 A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:3:0x0035, B:13:0x007f, B:16:0x00a1, B:22:0x00b5, B:24:0x00bf, B:28:0x00d0, B:30:0x00de, B:34:0x00e7, B:37:0x00ef, B:39:0x00f5, B:51:0x0120, B:53:0x0126, B:55:0x0132, B:68:0x0158, B:70:0x015e, B:72:0x0168, B:89:0x019b, B:91:0x01ca, B:94:0x01d6, B:96:0x01df, B:98:0x01e8, B:100:0x01f1, B:102:0x01fa, B:104:0x0203, B:106:0x020c, B:108:0x0211, B:109:0x0214, B:111:0x0221, B:112:0x0226, B:114:0x022f, B:116:0x0236, B:117:0x023b, B:119:0x0245, B:120:0x024a, B:74:0x016e, B:81:0x0184, B:57:0x0138, B:64:0x014d, B:46:0x010a, B:75:0x0172, B:77:0x0178, B:79:0x017e, B:40:0x00f9, B:42:0x00ff, B:44:0x0105, B:58:0x013c, B:60:0x0142, B:62:0x0148), top: B:126:0x0035, inners: #1, #2, #4 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x01fa A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:3:0x0035, B:13:0x007f, B:16:0x00a1, B:22:0x00b5, B:24:0x00bf, B:28:0x00d0, B:30:0x00de, B:34:0x00e7, B:37:0x00ef, B:39:0x00f5, B:51:0x0120, B:53:0x0126, B:55:0x0132, B:68:0x0158, B:70:0x015e, B:72:0x0168, B:89:0x019b, B:91:0x01ca, B:94:0x01d6, B:96:0x01df, B:98:0x01e8, B:100:0x01f1, B:102:0x01fa, B:104:0x0203, B:106:0x020c, B:108:0x0211, B:109:0x0214, B:111:0x0221, B:112:0x0226, B:114:0x022f, B:116:0x0236, B:117:0x023b, B:119:0x0245, B:120:0x024a, B:74:0x016e, B:81:0x0184, B:57:0x0138, B:64:0x014d, B:46:0x010a, B:75:0x0172, B:77:0x0178, B:79:0x017e, B:40:0x00f9, B:42:0x00ff, B:44:0x0105, B:58:0x013c, B:60:0x0142, B:62:0x0148), top: B:126:0x0035, inners: #1, #2, #4 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0203 A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:3:0x0035, B:13:0x007f, B:16:0x00a1, B:22:0x00b5, B:24:0x00bf, B:28:0x00d0, B:30:0x00de, B:34:0x00e7, B:37:0x00ef, B:39:0x00f5, B:51:0x0120, B:53:0x0126, B:55:0x0132, B:68:0x0158, B:70:0x015e, B:72:0x0168, B:89:0x019b, B:91:0x01ca, B:94:0x01d6, B:96:0x01df, B:98:0x01e8, B:100:0x01f1, B:102:0x01fa, B:104:0x0203, B:106:0x020c, B:108:0x0211, B:109:0x0214, B:111:0x0221, B:112:0x0226, B:114:0x022f, B:116:0x0236, B:117:0x023b, B:119:0x0245, B:120:0x024a, B:74:0x016e, B:81:0x0184, B:57:0x0138, B:64:0x014d, B:46:0x010a, B:75:0x0172, B:77:0x0178, B:79:0x017e, B:40:0x00f9, B:42:0x00ff, B:44:0x0105, B:58:0x013c, B:60:0x0142, B:62:0x0148), top: B:126:0x0035, inners: #1, #2, #4 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x020c A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:3:0x0035, B:13:0x007f, B:16:0x00a1, B:22:0x00b5, B:24:0x00bf, B:28:0x00d0, B:30:0x00de, B:34:0x00e7, B:37:0x00ef, B:39:0x00f5, B:51:0x0120, B:53:0x0126, B:55:0x0132, B:68:0x0158, B:70:0x015e, B:72:0x0168, B:89:0x019b, B:91:0x01ca, B:94:0x01d6, B:96:0x01df, B:98:0x01e8, B:100:0x01f1, B:102:0x01fa, B:104:0x0203, B:106:0x020c, B:108:0x0211, B:109:0x0214, B:111:0x0221, B:112:0x0226, B:114:0x022f, B:116:0x0236, B:117:0x023b, B:119:0x0245, B:120:0x024a, B:74:0x016e, B:81:0x0184, B:57:0x0138, B:64:0x014d, B:46:0x010a, B:75:0x0172, B:77:0x0178, B:79:0x017e, B:40:0x00f9, B:42:0x00ff, B:44:0x0105, B:58:0x013c, B:60:0x0142, B:62:0x0148), top: B:126:0x0035, inners: #1, #2, #4 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x0211 A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:3:0x0035, B:13:0x007f, B:16:0x00a1, B:22:0x00b5, B:24:0x00bf, B:28:0x00d0, B:30:0x00de, B:34:0x00e7, B:37:0x00ef, B:39:0x00f5, B:51:0x0120, B:53:0x0126, B:55:0x0132, B:68:0x0158, B:70:0x015e, B:72:0x0168, B:89:0x019b, B:91:0x01ca, B:94:0x01d6, B:96:0x01df, B:98:0x01e8, B:100:0x01f1, B:102:0x01fa, B:104:0x0203, B:106:0x020c, B:108:0x0211, B:109:0x0214, B:111:0x0221, B:112:0x0226, B:114:0x022f, B:116:0x0236, B:117:0x023b, B:119:0x0245, B:120:0x024a, B:74:0x016e, B:81:0x0184, B:57:0x0138, B:64:0x014d, B:46:0x010a, B:75:0x0172, B:77:0x0178, B:79:0x017e, B:40:0x00f9, B:42:0x00ff, B:44:0x0105, B:58:0x013c, B:60:0x0142, B:62:0x0148), top: B:126:0x0035, inners: #1, #2, #4 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x0221 A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:3:0x0035, B:13:0x007f, B:16:0x00a1, B:22:0x00b5, B:24:0x00bf, B:28:0x00d0, B:30:0x00de, B:34:0x00e7, B:37:0x00ef, B:39:0x00f5, B:51:0x0120, B:53:0x0126, B:55:0x0132, B:68:0x0158, B:70:0x015e, B:72:0x0168, B:89:0x019b, B:91:0x01ca, B:94:0x01d6, B:96:0x01df, B:98:0x01e8, B:100:0x01f1, B:102:0x01fa, B:104:0x0203, B:106:0x020c, B:108:0x0211, B:109:0x0214, B:111:0x0221, B:112:0x0226, B:114:0x022f, B:116:0x0236, B:117:0x023b, B:119:0x0245, B:120:0x024a, B:74:0x016e, B:81:0x0184, B:57:0x0138, B:64:0x014d, B:46:0x010a, B:75:0x0172, B:77:0x0178, B:79:0x017e, B:40:0x00f9, B:42:0x00ff, B:44:0x0105, B:58:0x013c, B:60:0x0142, B:62:0x0148), top: B:126:0x0035, inners: #1, #2, #4 }] */
    /* JADX WARN: Code duplicated, block: B:114:0x022f A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:3:0x0035, B:13:0x007f, B:16:0x00a1, B:22:0x00b5, B:24:0x00bf, B:28:0x00d0, B:30:0x00de, B:34:0x00e7, B:37:0x00ef, B:39:0x00f5, B:51:0x0120, B:53:0x0126, B:55:0x0132, B:68:0x0158, B:70:0x015e, B:72:0x0168, B:89:0x019b, B:91:0x01ca, B:94:0x01d6, B:96:0x01df, B:98:0x01e8, B:100:0x01f1, B:102:0x01fa, B:104:0x0203, B:106:0x020c, B:108:0x0211, B:109:0x0214, B:111:0x0221, B:112:0x0226, B:114:0x022f, B:116:0x0236, B:117:0x023b, B:119:0x0245, B:120:0x024a, B:74:0x016e, B:81:0x0184, B:57:0x0138, B:64:0x014d, B:46:0x010a, B:75:0x0172, B:77:0x0178, B:79:0x017e, B:40:0x00f9, B:42:0x00ff, B:44:0x0105, B:58:0x013c, B:60:0x0142, B:62:0x0148), top: B:126:0x0035, inners: #1, #2, #4 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x0236 A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:3:0x0035, B:13:0x007f, B:16:0x00a1, B:22:0x00b5, B:24:0x00bf, B:28:0x00d0, B:30:0x00de, B:34:0x00e7, B:37:0x00ef, B:39:0x00f5, B:51:0x0120, B:53:0x0126, B:55:0x0132, B:68:0x0158, B:70:0x015e, B:72:0x0168, B:89:0x019b, B:91:0x01ca, B:94:0x01d6, B:96:0x01df, B:98:0x01e8, B:100:0x01f1, B:102:0x01fa, B:104:0x0203, B:106:0x020c, B:108:0x0211, B:109:0x0214, B:111:0x0221, B:112:0x0226, B:114:0x022f, B:116:0x0236, B:117:0x023b, B:119:0x0245, B:120:0x024a, B:74:0x016e, B:81:0x0184, B:57:0x0138, B:64:0x014d, B:46:0x010a, B:75:0x0172, B:77:0x0178, B:79:0x017e, B:40:0x00f9, B:42:0x00ff, B:44:0x0105, B:58:0x013c, B:60:0x0142, B:62:0x0148), top: B:126:0x0035, inners: #1, #2, #4 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x0245 A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:3:0x0035, B:13:0x007f, B:16:0x00a1, B:22:0x00b5, B:24:0x00bf, B:28:0x00d0, B:30:0x00de, B:34:0x00e7, B:37:0x00ef, B:39:0x00f5, B:51:0x0120, B:53:0x0126, B:55:0x0132, B:68:0x0158, B:70:0x015e, B:72:0x0168, B:89:0x019b, B:91:0x01ca, B:94:0x01d6, B:96:0x01df, B:98:0x01e8, B:100:0x01f1, B:102:0x01fa, B:104:0x0203, B:106:0x020c, B:108:0x0211, B:109:0x0214, B:111:0x0221, B:112:0x0226, B:114:0x022f, B:116:0x0236, B:117:0x023b, B:119:0x0245, B:120:0x024a, B:74:0x016e, B:81:0x0184, B:57:0x0138, B:64:0x014d, B:46:0x010a, B:75:0x0172, B:77:0x0178, B:79:0x017e, B:40:0x00f9, B:42:0x00ff, B:44:0x0105, B:58:0x013c, B:60:0x0142, B:62:0x0148), top: B:126:0x0035, inners: #1, #2, #4 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0187  */
    /* JADX WARN: Code duplicated, block: B:87:0x0192 A[Catch: all -> 0x019b, TRY_LEAVE, TryCatch #3 {all -> 0x019b, blocks: (B:85:0x018c, B:87:0x0192), top: B:132:0x018c }] */
    /* JADX WARN: Code duplicated, block: B:91:0x01ca A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:3:0x0035, B:13:0x007f, B:16:0x00a1, B:22:0x00b5, B:24:0x00bf, B:28:0x00d0, B:30:0x00de, B:34:0x00e7, B:37:0x00ef, B:39:0x00f5, B:51:0x0120, B:53:0x0126, B:55:0x0132, B:68:0x0158, B:70:0x015e, B:72:0x0168, B:89:0x019b, B:91:0x01ca, B:94:0x01d6, B:96:0x01df, B:98:0x01e8, B:100:0x01f1, B:102:0x01fa, B:104:0x0203, B:106:0x020c, B:108:0x0211, B:109:0x0214, B:111:0x0221, B:112:0x0226, B:114:0x022f, B:116:0x0236, B:117:0x023b, B:119:0x0245, B:120:0x024a, B:74:0x016e, B:81:0x0184, B:57:0x0138, B:64:0x014d, B:46:0x010a, B:75:0x0172, B:77:0x0178, B:79:0x017e, B:40:0x00f9, B:42:0x00ff, B:44:0x0105, B:58:0x013c, B:60:0x0142, B:62:0x0148), top: B:126:0x0035, inners: #1, #2, #4 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:94:0x01d6 A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:3:0x0035, B:13:0x007f, B:16:0x00a1, B:22:0x00b5, B:24:0x00bf, B:28:0x00d0, B:30:0x00de, B:34:0x00e7, B:37:0x00ef, B:39:0x00f5, B:51:0x0120, B:53:0x0126, B:55:0x0132, B:68:0x0158, B:70:0x015e, B:72:0x0168, B:89:0x019b, B:91:0x01ca, B:94:0x01d6, B:96:0x01df, B:98:0x01e8, B:100:0x01f1, B:102:0x01fa, B:104:0x0203, B:106:0x020c, B:108:0x0211, B:109:0x0214, B:111:0x0221, B:112:0x0226, B:114:0x022f, B:116:0x0236, B:117:0x023b, B:119:0x0245, B:120:0x024a, B:74:0x016e, B:81:0x0184, B:57:0x0138, B:64:0x014d, B:46:0x010a, B:75:0x0172, B:77:0x0178, B:79:0x017e, B:40:0x00f9, B:42:0x00ff, B:44:0x0105, B:58:0x013c, B:60:0x0142, B:62:0x0148), top: B:126:0x0035, inners: #1, #2, #4 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x01df A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:3:0x0035, B:13:0x007f, B:16:0x00a1, B:22:0x00b5, B:24:0x00bf, B:28:0x00d0, B:30:0x00de, B:34:0x00e7, B:37:0x00ef, B:39:0x00f5, B:51:0x0120, B:53:0x0126, B:55:0x0132, B:68:0x0158, B:70:0x015e, B:72:0x0168, B:89:0x019b, B:91:0x01ca, B:94:0x01d6, B:96:0x01df, B:98:0x01e8, B:100:0x01f1, B:102:0x01fa, B:104:0x0203, B:106:0x020c, B:108:0x0211, B:109:0x0214, B:111:0x0221, B:112:0x0226, B:114:0x022f, B:116:0x0236, B:117:0x023b, B:119:0x0245, B:120:0x024a, B:74:0x016e, B:81:0x0184, B:57:0x0138, B:64:0x014d, B:46:0x010a, B:75:0x0172, B:77:0x0178, B:79:0x017e, B:40:0x00f9, B:42:0x00ff, B:44:0x0105, B:58:0x013c, B:60:0x0142, B:62:0x0148), top: B:126:0x0035, inners: #1, #2, #4 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x01e8 A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:3:0x0035, B:13:0x007f, B:16:0x00a1, B:22:0x00b5, B:24:0x00bf, B:28:0x00d0, B:30:0x00de, B:34:0x00e7, B:37:0x00ef, B:39:0x00f5, B:51:0x0120, B:53:0x0126, B:55:0x0132, B:68:0x0158, B:70:0x015e, B:72:0x0168, B:89:0x019b, B:91:0x01ca, B:94:0x01d6, B:96:0x01df, B:98:0x01e8, B:100:0x01f1, B:102:0x01fa, B:104:0x0203, B:106:0x020c, B:108:0x0211, B:109:0x0214, B:111:0x0221, B:112:0x0226, B:114:0x022f, B:116:0x0236, B:117:0x023b, B:119:0x0245, B:120:0x024a, B:74:0x016e, B:81:0x0184, B:57:0x0138, B:64:0x014d, B:46:0x010a, B:75:0x0172, B:77:0x0178, B:79:0x017e, B:40:0x00f9, B:42:0x00ff, B:44:0x0105, B:58:0x013c, B:60:0x0142, B:62:0x0148), top: B:126:0x0035, inners: #1, #2, #4 }] */
    public final void launchMiniApp(Context context, String url, String from) {
        String queryParameter;
        String strDecode;
        String strCheckH5UrlInBlackList;
        Boolean bool;
        String str;
        String str2;
        Boolean boolValueOf;
        Boolean boolValueOf2;
        Boolean bool2;
        String queryParameter2;
        String queryParameter3;
        String queryParameter4;
        String queryParameter5;
        String queryParameter6;
        Bundle bundle;
        String queryParameter7;
        Boolean boolValueOf3;
        Boolean boolValueOf4;
        String strDecode2;
        String strDecode3;
        Intrinsics.h(context, "context");
        Intrinsics.h(url, "url");
        Intrinsics.h(from, "from");
        try {
            TmcLogger.d(TAG, "Step_解析url->" + url);
            boolean configTargetBool = MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_FIX_ENCODE_URL, true);
            String strFixEncodeUrl = UrlUtil.INSTANCE.fixEncodeUrl(url, configTargetBool);
            Uri uri = Uri.parse(strFixEncodeUrl);
            if (checkTarget(uri, strFixEncodeUrl)) {
                return;
            }
            if (uri != null) {
                try {
                    queryParameter = uri.getQueryParameter(TmcConstants.EXTRA_BACK_TO_MINIAPP_DEEPLINK);
                } catch (Throwable unused) {
                }
            } else {
                queryParameter = null;
            }
            if (queryParameter != null && queryParameter.length() > 0) {
                uri = Uri.parse(UrlUtils.decode(queryParameter));
            }
            String queryParameter8 = uri.getQueryParameter("appId");
            String queryParameter9 = uri.getQueryParameter("version");
            String queryParameter10 = uri.getQueryParameter("page");
            String queryParameter11 = uri.getQueryParameter("mode");
            UrlUtil urlUtil = UrlUtil.INSTANCE;
            String queryParameter12 = uri.getQueryParameter("query");
            String fixDecodeUrl = urlUtil.getFixDecodeUrl((queryParameter12 == null || (strDecode3 = UrlUtils.decode(queryParameter12)) == null) ? "" : strDecode3, configTargetBool);
            String queryParameter13 = uri.getQueryParameter("h5Path");
            String fixDecodeUrl2 = urlUtil.getFixDecodeUrl((queryParameter13 == null || (strDecode2 = UrlUtils.decode(queryParameter13)) == null) ? "" : strDecode2, configTargetBool);
            String queryParameter14 = uri.getQueryParameter("hybridPath");
            if (queryParameter14 == null || (strDecode = UrlUtils.decode(queryParameter14)) == null) {
                strDecode = "";
            }
            String fixDecodeUrl3 = urlUtil.getFixDecodeUrl(strDecode, configTargetBool);
            if (fixDecodeUrl3 == null || fixDecodeUrl3.length() <= 0) {
                strCheckH5UrlInBlackList = queryParameter10;
                bool = null;
            } else {
                String strCheckH5UrlInBlackList2 = checkH5UrlInBlackList(fixDecodeUrl3);
                try {
                    String queryParameter15 = uri.getQueryParameter("quickMode");
                    boolValueOf4 = Boolean.valueOf(queryParameter15 != null ? Boolean.parseBoolean(queryParameter15) : true);
                } catch (Throwable unused2) {
                    boolValueOf4 = Boolean.TRUE;
                }
                strCheckH5UrlInBlackList = strCheckH5UrlInBlackList2;
                bool = boolValueOf4;
            }
            try {
                if (strCheckH5UrlInBlackList != null && strCheckH5UrlInBlackList.length() > 0) {
                    str = queryParameter11;
                    str2 = "page";
                    if (StringsKt.W(strCheckH5UrlInBlackList, "https://", false, 2, null) || StringsKt.W(strCheckH5UrlInBlackList, "http://", false, 2, null)) {
                        strCheckH5UrlInBlackList = checkH5UrlInBlackList(strCheckH5UrlInBlackList);
                        try {
                            String queryParameter16 = uri.getQueryParameter("quickMode");
                            boolValueOf = Boolean.valueOf(queryParameter16 != null ? Boolean.parseBoolean(queryParameter16) : true);
                        } catch (Throwable unused3) {
                            boolValueOf = Boolean.TRUE;
                        }
                    }
                    if (strCheckH5UrlInBlackList == null && strCheckH5UrlInBlackList.length() > 0) {
                        boolValueOf2 = null;
                        if (StringsKt.W(strCheckH5UrlInBlackList, "https://", false, 2, null) || StringsKt.W(strCheckH5UrlInBlackList, "http://", false, 2, null)) {
                            strCheckH5UrlInBlackList = checkH5UrlInBlackList(strCheckH5UrlInBlackList);
                            try {
                                String queryParameter17 = uri.getQueryParameter("quickMode");
                                boolValueOf3 = Boolean.valueOf(queryParameter17 != null ? Boolean.parseBoolean(queryParameter17) : true);
                            } catch (Throwable unused4) {
                                boolValueOf3 = Boolean.TRUE;
                            }
                            bool2 = boolValueOf3;
                        }
                        queryParameter7 = uri.getQueryParameter("extraMiniClearAllPages");
                        if (queryParameter7 != null) {
                            boolValueOf2 = Boolean.valueOf(Boolean.parseBoolean(queryParameter7));
                        }
                        queryParameter2 = uri.getQueryParameter("extraMiniBackToUrl");
                        queryParameter3 = uri.getQueryParameter(TmcConstants.EXTRA_APP_DEV_TOKEN);
                        String queryParameter18 = uri.getQueryParameter("scene_id");
                        queryParameter4 = uri.getQueryParameter("fis_type");
                        queryParameter5 = uri.getQueryParameter("mfah");
                        queryParameter6 = uri.getQueryParameter("massid");
                        Context launchContext = getLaunchContext(queryParameter8, context);
                        bundle = new Bundle();
                        if (strCheckH5UrlInBlackList != null) {
                            bundle.putString(str2, strCheckH5UrlInBlackList);
                        }
                        if (str != null) {
                            bundle.putString("mode", str);
                        }
                        if (fixDecodeUrl != null) {
                            bundle.putString("query", fixDecodeUrl);
                        }
                        if (fixDecodeUrl2 != null) {
                            bundle.putString("h5Path", fixDecodeUrl2);
                        }
                        if (bool2 != null) {
                            bundle.putBoolean("quickMode", bool2.booleanValue());
                        }
                        if (queryParameter9 != null) {
                            bundle.putString("version", queryParameter9);
                        }
                        if (boolValueOf2 != null) {
                            bundle.putBoolean("extraMiniClearAllPages", boolValueOf2.booleanValue());
                        }
                        if (queryParameter2 != null) {
                            bundle.putString("extraMiniBackToUrl", queryParameter2);
                        }
                        if (queryParameter3 != null) {
                            bundle.putString(TmcConstants.EXTRA_APP_DEV_TOKEN, queryParameter3);
                        }
                        bundle.putString("scene_id", StringExtKt.orDefault(queryParameter18, "100000"));
                        if (queryParameter4 != null) {
                            bundle.putString("fis_type", queryParameter4);
                        }
                        bundle.putString("entranceUrl", strFixEncodeUrl);
                        if (queryParameter5 != null) {
                            bundle.putString("mfah", queryParameter5);
                        }
                        if (queryParameter6 != null) {
                            bundle.putString("massid", queryParameter6);
                        }
                        if (Intrinsics.c(from, "ps")) {
                            bundle.putString(TmcConstants.KEY_MINIAPP_FROM_START, "ps");
                        }
                        Unit unit = Unit.f67061a;
                        launchMiniAppForId(launchContext, queryParameter8, bundle);
                    }
                    boolValueOf2 = null;
                    bool2 = boolValueOf;
                    queryParameter7 = uri.getQueryParameter("extraMiniClearAllPages");
                    if (queryParameter7 != null) {
                        boolValueOf2 = Boolean.valueOf(Boolean.parseBoolean(queryParameter7));
                    }
                    queryParameter2 = uri.getQueryParameter("extraMiniBackToUrl");
                    queryParameter3 = uri.getQueryParameter(TmcConstants.EXTRA_APP_DEV_TOKEN);
                    String queryParameter19 = uri.getQueryParameter("scene_id");
                    queryParameter4 = uri.getQueryParameter("fis_type");
                    queryParameter5 = uri.getQueryParameter("mfah");
                    queryParameter6 = uri.getQueryParameter("massid");
                    Context launchContext2 = getLaunchContext(queryParameter8, context);
                    bundle = new Bundle();
                    if (strCheckH5UrlInBlackList != null) {
                        bundle.putString(str2, strCheckH5UrlInBlackList);
                    }
                    if (str != null) {
                        bundle.putString("mode", str);
                    }
                    if (fixDecodeUrl != null) {
                        bundle.putString("query", fixDecodeUrl);
                    }
                    if (fixDecodeUrl2 != null) {
                        bundle.putString("h5Path", fixDecodeUrl2);
                    }
                    if (bool2 != null) {
                        bundle.putBoolean("quickMode", bool2.booleanValue());
                    }
                    if (queryParameter9 != null) {
                        bundle.putString("version", queryParameter9);
                    }
                    if (boolValueOf2 != null) {
                        bundle.putBoolean("extraMiniClearAllPages", boolValueOf2.booleanValue());
                    }
                    if (queryParameter2 != null) {
                        bundle.putString("extraMiniBackToUrl", queryParameter2);
                    }
                    if (queryParameter3 != null) {
                        bundle.putString(TmcConstants.EXTRA_APP_DEV_TOKEN, queryParameter3);
                    }
                    bundle.putString("scene_id", StringExtKt.orDefault(queryParameter19, "100000"));
                    if (queryParameter4 != null) {
                        bundle.putString("fis_type", queryParameter4);
                    }
                    bundle.putString("entranceUrl", strFixEncodeUrl);
                    if (queryParameter5 != null) {
                        bundle.putString("mfah", queryParameter5);
                    }
                    if (queryParameter6 != null) {
                        bundle.putString("massid", queryParameter6);
                    }
                    if (Intrinsics.c(from, "ps")) {
                        bundle.putString(TmcConstants.KEY_MINIAPP_FROM_START, "ps");
                    }
                    Unit unit2 = Unit.f67061a;
                    launchMiniAppForId(launchContext2, queryParameter8, bundle);
                }
                str = queryParameter11;
                str2 = "page";
                queryParameter7 = uri.getQueryParameter("extraMiniClearAllPages");
                if (queryParameter7 != null) {
                    boolValueOf2 = Boolean.valueOf(Boolean.parseBoolean(queryParameter7));
                }
            } catch (Throwable unused5) {
            }
            boolValueOf = bool;
            if (strCheckH5UrlInBlackList == null) {
                boolValueOf2 = null;
                bool2 = boolValueOf;
            } else {
                boolValueOf2 = null;
                bool2 = boolValueOf;
            }
            queryParameter2 = uri.getQueryParameter("extraMiniBackToUrl");
            queryParameter3 = uri.getQueryParameter(TmcConstants.EXTRA_APP_DEV_TOKEN);
            String queryParameter110 = uri.getQueryParameter("scene_id");
            queryParameter4 = uri.getQueryParameter("fis_type");
            queryParameter5 = uri.getQueryParameter("mfah");
            queryParameter6 = uri.getQueryParameter("massid");
            Context launchContext3 = getLaunchContext(queryParameter8, context);
            bundle = new Bundle();
            if (strCheckH5UrlInBlackList != null) {
                bundle.putString(str2, strCheckH5UrlInBlackList);
            }
            if (str != null) {
                bundle.putString("mode", str);
            }
            if (fixDecodeUrl != null) {
                bundle.putString("query", fixDecodeUrl);
            }
            if (fixDecodeUrl2 != null) {
                bundle.putString("h5Path", fixDecodeUrl2);
            }
            if (bool2 != null) {
                bundle.putBoolean("quickMode", bool2.booleanValue());
            }
            if (queryParameter9 != null) {
                bundle.putString("version", queryParameter9);
            }
            if (boolValueOf2 != null) {
                bundle.putBoolean("extraMiniClearAllPages", boolValueOf2.booleanValue());
            }
            if (queryParameter2 != null) {
                bundle.putString("extraMiniBackToUrl", queryParameter2);
            }
            if (queryParameter3 != null) {
                bundle.putString(TmcConstants.EXTRA_APP_DEV_TOKEN, queryParameter3);
            }
            bundle.putString("scene_id", StringExtKt.orDefault(queryParameter110, "100000"));
            if (queryParameter4 != null) {
                bundle.putString("fis_type", queryParameter4);
            }
            bundle.putString("entranceUrl", strFixEncodeUrl);
            if (queryParameter5 != null) {
                bundle.putString("mfah", queryParameter5);
            }
            if (queryParameter6 != null) {
                bundle.putString("massid", queryParameter6);
            }
            if (Intrinsics.c(from, "ps")) {
                bundle.putString(TmcConstants.KEY_MINIAPP_FROM_START, "ps");
            }
            Unit unit3 = Unit.f67061a;
            launchMiniAppForId(launchContext3, queryParameter8, bundle);
        } catch (Exception e11) {
            TmcLogger.e(e11.getMessage());
        }
    }

    public final void reportMiniAppLauncherFailedTrack(String str, String type) {
        Intrinsics.h(type, "type");
        try {
            Bundle bundle = new Bundle();
            bundle.putString("close_type", type);
            bundle.putBoolean("auto_close_app_status", com.cloud.tmc.miniapp.performanceanalyse.app.OooO0O0.OooO00o.OooO00o(str));
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).recordForCommon(str, "miniapp_auto_close_record", bundle);
            TmcLogger.d(TAG, "miniappLauncherFailed->" + type);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public final void showErrorDialog(final Context context) {
        if (context == null) {
            return;
        }
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.utils.e
            @Override // java.lang.Runnable
            public final void run() {
                MiniAppLaunch.showErrorDialog$lambda$37(context);
            }
        });
    }

    public final void showFwUpdateTipsDialog(Context context, String str, com.cloud.tmc.miniapp.prepare.steps.o000oOoO prepareCallback) {
        Intrinsics.h(prepareCallback, "prepareCallback");
        ((IUpgradeProxy) TmcProxy.get(IUpgradeProxy.class)).showFwUpdateTipsDialog(context, str, prepareCallback);
    }

    public final void showUpdateFwZipDialog(final Context context, final String str, final com.cloud.tmc.miniapp.prepare.callback.OooO00o oooO00o) {
        if (context == null) {
            return;
        }
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.utils.c
            @Override // java.lang.Runnable
            public final void run() {
                MiniAppLaunch.showUpdateFwZipDialog$lambda$38(context, str, oooO00o);
            }
        });
    }

    public final void trackCommonResPoint(String str, Bundle bundle) {
        Long l11;
        Long l12;
        Long l13;
        Long l14;
        Long l15;
        Long l16;
        try {
            if (Intrinsics.c(commonResIdList.get(str), Boolean.TRUE)) {
                Map<String, Long> map = commonResLaunchList.get(str);
                long jLongValue = ((map == null || (l16 = map.get("u_e")) == null) ? 0L : l16.longValue()) - ((map == null || (l15 = map.get("u_s")) == null) ? 0L : l15.longValue());
                long j11 = -1;
                if (jLongValue < 0) {
                    jLongValue = -1;
                }
                long jLongValue2 = ((map == null || (l14 = map.get("d_e")) == null) ? 0L : l14.longValue()) - ((map == null || (l13 = map.get("d_s")) == null) ? 0L : l13.longValue());
                if (jLongValue2 < 0) {
                    jLongValue2 = -1;
                }
                long jLongValue3 = ((map == null || (l12 = map.get("l_e")) == null) ? 0L : l12.longValue()) - ((map == null || (l11 = map.get("l_s")) == null) ? 0L : l11.longValue());
                if (jLongValue3 >= 0) {
                    j11 = jLongValue3;
                }
                JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty("u_t", Long.valueOf(jLongValue)).addProperty("d_t", Long.valueOf(jLongValue2)).addProperty("l_t", Long.valueOf(j11)).build();
                Intrinsics.g(jsonObjectBuild, "create().addProperty(\"u_…rty(\"l_t\", step3).build()");
                String json = TmcGsonUtilsKt.toJson(jsonObjectBuild);
                if (bundle != null) {
                    bundle.putString("m_c_p", json);
                }
                clearLaunchMap(str);
            }
        } catch (Throwable unused) {
        }
    }

    public final void warmUpWorker() {
        TmcLogger.d(TAG, "warmUpWorker");
        ((IInnerWorkerPool) TmcProxy.get(IInnerWorkerPool.class)).createWorker(false);
    }

    public final void warmupEntrance(Context context, boolean z10) {
        Intrinsics.h(context, "context");
        try {
            IpcMiniLauncherService.OooO00o.OooO00o(context.getApplicationContext(), z10, new OooOO0(z10));
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public final void warmupRender() {
        TmcLogger.d(TAG, "warmupRender");
        ((IInnerRenderPool) TmcProxy.get(IInnerRenderPool.class)).createRender(false);
    }
}
