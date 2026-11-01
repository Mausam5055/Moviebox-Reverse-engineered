package com.cloud.tmc.miniapp.utils;

import android.content.Context;
import com.cloud.tmc.integration.callback.PackageInstallCallback;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.SubPackageInfo;
import com.cloud.tmc.integration.proxy.FileProxy;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.JsonUtil;
import com.cloud.tmc.integration.utils.SubpackageAppPrepareUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniapp.prepare.manager.TmcResourceManager;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.cloud.tmc.miniutils.util.Utils;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooOOO0 {
    public static final OooOOO0 OooO00o = new OooOOO0();
    public static final CopyOnWriteArrayList<String> OooO0O0 = new CopyOnWriteArrayList<>();
    public static final PathProxy OooO0OO = (PathProxy) TmcProxy.get(PathProxy.class);
    public static final FileProxy OooO0Oo = (FileProxy) TmcProxy.get(FileProxy.class);
    public static final TmcAppInfoManager OooO0o0 = (TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class);

    public static final void OooO00o(AppModel appModel, Context context, SubPackageInfo subPackageInfo, boolean z10, boolean z11, boolean z12, String str) {
        Intrinsics.h(appModel, "$appModel");
        Intrinsics.h(context, "$context");
        if (z12) {
            TmcLogger.d("SubpackagePreUnzipUtil", "pre unzip :" + appModel.getAppId() + " zip 包解压完成");
            OooO00o.OooO00o(context, appModel, subPackageInfo, z10, z11);
            return;
        }
        TmcLogger.d("SubpackagePreUnzipUtil", appModel.getAppId() + " unzip error ");
        if (z10) {
            return;
        }
        TmcLogger.d("SubpackagePreUnzipUtil", appModel.getAppId() + " unzip retry");
        OooO0O0.add(AppUtils.getPackageUniqueSign$default(AppUtils.INSTANCE, appModel, subPackageInfo, null, 4, null));
        OooO00o.OooO00o(context, appModel, subPackageInfo);
    }

    public static final void OooO00o(AppModel appModel, SubPackageInfo subPackageInfo, Context context, boolean z10, boolean z11, boolean z12, String str) {
        Intrinsics.h(appModel, "$appModel");
        Intrinsics.h(context, "$context");
        AppUtils appUtils = AppUtils.INSTANCE;
        String currentPackageUniqueName$default = AppUtils.getCurrentPackageUniqueName$default(appUtils, appModel, subPackageInfo, null, 4, null);
        String currentPackageEncryptionUrl$default = AppUtils.getCurrentPackageEncryptionUrl$default(appUtils, appModel, subPackageInfo, null, 4, null);
        String packageUniqueSign$default = AppUtils.getPackageUniqueSign$default(appUtils, appModel, subPackageInfo, null, 4, null);
        if (!z12) {
            if (!z10) {
                OooO0O0.add(packageUniqueSign$default);
            }
            if (z11) {
                OooO00o.OooO00o(context, appModel, subPackageInfo);
                return;
            }
            return;
        }
        TmcLogger.d("SubpackagePreUnzipUtil", ":" + currentPackageUniqueName$default + ": tar 包解压完成");
        try {
            SubpackageAppPrepareUtils subpackageAppPrepareUtils = SubpackageAppPrepareUtils.INSTANCE;
            if (!Intrinsics.c(JsonUtil.INSTANCE.getValueFromJson(subpackageAppPrepareUtils.getManifestJson(appModel, currentPackageEncryptionUrl$default), "appId"), appModel.getAppId())) {
                OooO00o.OooO00o(context, appModel, subPackageInfo);
                return;
            }
            TmcLogger.d("SubpackagePreUnzipUtil", ":" + appModel.getAppId() + ": manifest 内容校验成功");
            subpackageAppPrepareUtils.changeTarUnCompressStatus(context, appModel.getAppId(), currentPackageEncryptionUrl$default, true);
            OooO0Oo.deleteDownloadFileForVersion(appModel, currentPackageEncryptionUrl$default);
            TmcAppInfoManager tmcAppInfoManager = OooO0o0;
            tmcAppInfoManager.deleteOldVersionFiles(context, appModel, false);
            tmcAppInfoManager.updateOldVersion(context, appModel, subPackageInfo != null ? subPackageInfo.getRoot() : null);
            TmcLogger.d("SubpackagePreUnzipUtil", "存入 的 used" + MiniAppLaunch.INSTANCE.getMiniAppVersion(appModel));
            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "backgroundUnZip:finish update used;deployVersion:" + appModel.getDeployVersion() + ";mainPkgUrl:" + appModel.getMainPackageUrl() + ";fullPkgUrl:" + appModel.getPackageUrl());
            String appId = appModel.getAppId();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(appId);
            sb2.append("_used");
            tmcAppInfoManager.updateAppModel(context, appModel, sb2.toString());
            if (appModel.getAppId() != null) {
                tmcAppInfoManager.updatePreUnzipStatus(context, packageUniqueSign$default, true);
            }
            OooO0O0.remove(packageUniqueSign$default);
            subpackageAppPrepareUtils.changeLatestBackgroundDownloadStatus(context, appModel.getAppId(), currentPackageEncryptionUrl$default, true);
        } catch (Throwable unused) {
            OooO00o.OooO00o(context, appModel, subPackageInfo);
        }
    }

    public static final void OooO0O0(AppModel appModel, Context context, SubPackageInfo subPackageInfo, boolean z10, boolean z11, boolean z12, String str) {
        Intrinsics.h(appModel, "$appModel");
        Intrinsics.h(context, "$context");
        if (z12) {
            TmcLogger.d("SubpackagePreUnzipUtil", "pre unzip :" + appModel.getAppId() + " zip 包解压完成");
            OooO00o.OooO00o(context, appModel, subPackageInfo, z10, z11);
            return;
        }
        TmcLogger.d("SubpackagePreUnzipUtil", appModel.getAppId() + " unzip error ");
        if (z10) {
            return;
        }
        TmcLogger.d("SubpackagePreUnzipUtil", appModel.getAppId() + " unzip retry");
        OooO0O0.add(AppUtils.getPackageUniqueSign$default(AppUtils.INSTANCE, appModel, subPackageInfo, null, 4, null));
        OooO00o.OooO00o(context, appModel, subPackageInfo);
    }

    public final void OooO00o(Context context, AppModel appModel, SubPackageInfo subPackageInfo) {
        String appId = appModel.getAppId();
        if (appId != null) {
            try {
                String currentPackageEncryptionUrl$default = AppUtils.getCurrentPackageEncryptionUrl$default(AppUtils.INSTANCE, appModel, subPackageInfo, null, 4, null);
                if (appModel.getFromCacheType() == 3) {
                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(Utils.getApp(), appId, "isReadAssets_" + appId + "_" + AppDynamicBuildConfig.getSDK_VERSION(), false);
                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(Utils.getApp(), appId, appId + "_native_" + AppDynamicBuildConfig.getSDK_VERSION(), "");
                }
                SubpackageAppPrepareUtils subpackageAppPrepareUtils = SubpackageAppPrepareUtils.INSTANCE;
                subpackageAppPrepareUtils.changeZipUnCompressStatus(context, appId, currentPackageEncryptionUrl$default, false);
                subpackageAppPrepareUtils.changeTarUnCompressStatus(context, appId, currentPackageEncryptionUrl$default, false);
                PathProxy pathProxy = OooO0OO;
                FileUtils.delete(pathProxy.getTarUnCompressPath(appModel, currentPackageEncryptionUrl$default));
                FileUtils.delete(pathProxy.getZipUnCompressPath(appId, currentPackageEncryptionUrl$default));
            } catch (Throwable unused) {
                TmcLogger.e("SubpackagePreUnzipUtil", "native assets remove error " + appId);
                Unit unit = Unit.f67061a;
            }
        }
    }

    public final void OooO00o(Context context, AppModel appModel, SubPackageInfo subPackageInfo, boolean z10, boolean z11) {
        SubpackageAppPrepareUtils subpackageAppPrepareUtils = SubpackageAppPrepareUtils.INSTANCE;
        if (subpackageAppPrepareUtils.checkSHA256(appModel, subPackageInfo)) {
            TmcLogger.d("SubpackagePreUnzipUtil", ":" + appModel.getAppId() + " sha256 校验正确，解压 tar 包");
            OooO0OO(context, appModel, subPackageInfo, z10, z11);
            return;
        }
        TmcLogger.d("SubpackagePreUnzipUtil", " :" + appModel.getAppId() + " sha256 校验不一致，删除所有缓存");
        subpackageAppPrepareUtils.clearAllFilesForVersion(context, appModel, AppUtils.getCurrentPackageEncryptionUrl$default(AppUtils.INSTANCE, appModel, subPackageInfo, null, 4, null));
    }

    @JvmOverloads
    public final void OooO0O0(final Context context, final AppModel appModel, final SubPackageInfo subPackageInfo, final boolean z10, final boolean z11) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        ((TmcResourceManager) TmcProxy.get(TmcResourceManager.class)).installZip(context, appModel, false, subPackageInfo, new PackageInstallCallback() { // from class: com.cloud.tmc.miniapp.utils.p
            @Override // com.cloud.tmc.integration.callback.PackageInstallCallback
            public final void onResult(boolean z12, String str) {
                OooOOO0.OooO00o(appModel, context, subPackageInfo, z10, z11, z12, str);
            }
        });
    }

    public final void OooO0OO(final Context context, final AppModel appModel, final SubPackageInfo subPackageInfo, final boolean z10, final boolean z11) {
        ((TmcResourceManager) TmcProxy.get(TmcResourceManager.class)).installApp(appModel, false, subPackageInfo, new PackageInstallCallback() { // from class: com.cloud.tmc.miniapp.utils.o
            @Override // com.cloud.tmc.integration.callback.PackageInstallCallback
            public final void onResult(boolean z12, String str) {
                OooOOO0.OooO00o(appModel, subPackageInfo, context, z10, z11, z12, str);
            }
        });
    }

    @JvmOverloads
    public final void OooO0Oo(final Context context, final AppModel appModel, final SubPackageInfo subPackageInfo, final boolean z10, final boolean z11) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        ((TmcResourceManager) TmcProxy.get(TmcResourceManager.class)).installZip(context, appModel, false, subPackageInfo, new PackageInstallCallback() { // from class: com.cloud.tmc.miniapp.utils.n
            @Override // com.cloud.tmc.integration.callback.PackageInstallCallback
            public final void onResult(boolean z12, String str) {
                OooOOO0.OooO0O0(appModel, context, subPackageInfo, z10, z11, z12, str);
            }
        });
    }
}
