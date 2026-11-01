package com.cloud.tmc.miniapp.prepare.impl;

import android.content.Context;
import com.cloud.config.utils.XLogUtil;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.AppInfoModel;
import com.cloud.tmc.integration.model.AppInfoQuery;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.proxy.IAppInfoManagerProxy;
import com.cloud.tmc.integration.structure.AppConstants;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.JsonUtil;
import com.cloud.tmc.integration.utils.SubpackageAppPrepareUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceImprovesProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.GlobalPackageConfig;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniapp.utils.OooOOO;
import com.cloud.tmc.miniutils.util.ResourceUtils;
import com.cloud.tmc.offline.download.OfflineManager;
import com.cloud.tmc.offline.download.model.OffPkgConfig;
import com.cloud.tmc.offline.download.model.OfflinePkgCachePath;
import com.cloud.tmc.offline.download.model.ZipFileInfo;
import com.cloud.tmc.offline.download.utils.Utils;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class TmcAppInfoManagerImpl implements TmcAppInfoManager, IAppInfoManagerProxy {
    public static final OooO00o Companion = new OooO00o();

    public static final class OooO00o {
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0021 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:19:0x0022 A[Catch: all -> 0x001b, TryCatch #1 {all -> 0x001b, blocks: (B:11:0x0014, B:19:0x0022, B:21:0x0028, B:24:0x0032, B:27:0x003e, B:30:0x0047, B:33:0x004e, B:37:0x0056, B:39:0x0076, B:41:0x007c, B:42:0x0094, B:43:0x009a, B:46:0x00a1, B:50:0x00a9, B:52:0x00c9), top: B:59:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x003e A[Catch: all -> 0x001b, TRY_ENTER, TryCatch #1 {all -> 0x001b, blocks: (B:11:0x0014, B:19:0x0022, B:21:0x0028, B:24:0x0032, B:27:0x003e, B:30:0x0047, B:33:0x004e, B:37:0x0056, B:39:0x0076, B:41:0x007c, B:42:0x0094, B:43:0x009a, B:46:0x00a1, B:50:0x00a9, B:52:0x00c9), top: B:59:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x009a A[Catch: all -> 0x001b, TryCatch #1 {all -> 0x001b, blocks: (B:11:0x0014, B:19:0x0022, B:21:0x0028, B:24:0x0032, B:27:0x003e, B:30:0x0047, B:33:0x004e, B:37:0x0056, B:39:0x0076, B:41:0x007c, B:42:0x0094, B:43:0x009a, B:46:0x00a1, B:50:0x00a9, B:52:0x00c9), top: B:59:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:52:0x00c9 A[Catch: all -> 0x001b, TRY_LEAVE, TryCatch #1 {all -> 0x001b, blocks: (B:11:0x0014, B:19:0x0022, B:21:0x0028, B:24:0x0032, B:27:0x003e, B:30:0x0047, B:33:0x004e, B:37:0x0056, B:39:0x0076, B:41:0x007c, B:42:0x0094, B:43:0x009a, B:46:0x00a1, B:50:0x00a9, B:52:0x00c9), top: B:59:0x0014 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:52:0x00c9, please report this as an issue */
    public final AppModel OooO00o(Context context, String str, AppModel appModel) {
        boolean configTargetBool;
        AppInfoModel appModelFromCDN;
        MiniAppLaunch miniAppLaunch;
        AppModel appModelGenerateAppModel;
        String str2;
        String miniAppVersion;
        String miniAppVersion2;
        boolean zCompareVersion;
        boolean z10 = false;
        try {
            configTargetBool = MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_APPINFO_ENABLE_CDN, false);
        } catch (Throwable unused) {
            configTargetBool = false;
        }
        if (!configTargetBool) {
            return null;
        }
        if (str != null) {
            try {
                if (str.length() == 0) {
                    z10 = true;
                    if (z10 && (appModelFromCDN = getAppModelFromCDN(context, str)) != null && (appModelGenerateAppModel = (miniAppLaunch = MiniAppLaunch.INSTANCE).generateAppModel(appModelFromCDN)) != null) {
                        appModelGenerateAppModel.setFromCacheType(6);
                        str2 = "";
                        if (appModel != null || AppPrepareUtils.INSTANCE.isShellType(appModelGenerateAppModel)) {
                            miniAppVersion = miniAppLaunch.getMiniAppVersion(appModelGenerateAppModel);
                            if (miniAppVersion == null) {
                                miniAppVersion = "";
                            }
                            miniAppVersion2 = miniAppLaunch.getMiniAppVersion(appModel);
                            if (miniAppVersion2 != null) {
                                str2 = miniAppVersion2;
                            }
                            zCompareVersion = miniAppLaunch.compareVersion(miniAppVersion, str2);
                            TmcLogger.d("TmcAppInfoManagerImpl", "appModel is null,appId ->" + str + ",cdn appinfo compare result " + zCompareVersion);
                            if (zCompareVersion) {
                                updateAppModel(context, appModelGenerateAppModel, str + "_pre");
                                ((PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class)).addPeroformanceImprove(str, TmcConstants.CHANNEL_REQUEST_CDN);
                                return appModelGenerateAppModel;
                            }
                        } else {
                            String miniAppVersion3 = miniAppLaunch.getMiniAppVersion(appModelGenerateAppModel);
                            if (miniAppVersion3 == null) {
                                miniAppVersion3 = "";
                            }
                            String miniAppVersion4 = miniAppLaunch.getMiniAppVersion(appModel);
                            if (miniAppVersion4 != null) {
                                str2 = miniAppVersion4;
                            }
                            boolean zCompareVersion2 = miniAppLaunch.compareVersion(miniAppVersion3, str2);
                            TmcLogger.d("TmcAppInfoManagerImpl", "appId ->" + str + ",cdn appinfo compare result " + zCompareVersion2);
                            if (zCompareVersion2) {
                                if (appModel.getFromCacheType() != 1) {
                                    TmcLogger.d("TmcAppInfoManagerImpl", "update pre appinfo use cdn");
                                    updateAppModel(context, appModelGenerateAppModel, str + "_pre");
                                } else {
                                    TmcLogger.d("TmcAppInfoManagerImpl", "current appinfo from pre,not update cdn appinfo ");
                                }
                            }
                        }
                    }
                    return null;
                }
                if (z10) {
                    return null;
                }
                appModelGenerateAppModel.setFromCacheType(6);
                str2 = "";
                if (appModel != null) {
                    miniAppVersion = miniAppLaunch.getMiniAppVersion(appModelGenerateAppModel);
                    if (miniAppVersion == null) {
                        miniAppVersion = "";
                    }
                    miniAppVersion2 = miniAppLaunch.getMiniAppVersion(appModel);
                    if (miniAppVersion2 != null) {
                        str2 = miniAppVersion2;
                    }
                    zCompareVersion = miniAppLaunch.compareVersion(miniAppVersion, str2);
                    TmcLogger.d("TmcAppInfoManagerImpl", "appModel is null,appId ->" + str + ",cdn appinfo compare result " + zCompareVersion);
                    if (zCompareVersion) {
                        updateAppModel(context, appModelGenerateAppModel, str + "_pre");
                        ((PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class)).addPeroformanceImprove(str, TmcConstants.CHANNEL_REQUEST_CDN);
                        return appModelGenerateAppModel;
                    }
                } else {
                    miniAppVersion = miniAppLaunch.getMiniAppVersion(appModelGenerateAppModel);
                    if (miniAppVersion == null) {
                        miniAppVersion = "";
                    }
                    miniAppVersion2 = miniAppLaunch.getMiniAppVersion(appModel);
                    if (miniAppVersion2 != null) {
                        str2 = miniAppVersion2;
                    }
                    zCompareVersion = miniAppLaunch.compareVersion(miniAppVersion, str2);
                    TmcLogger.d("TmcAppInfoManagerImpl", "appModel is null,appId ->" + str + ",cdn appinfo compare result " + zCompareVersion);
                    if (zCompareVersion) {
                        updateAppModel(context, appModelGenerateAppModel, str + "_pre");
                        ((PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class)).addPeroformanceImprove(str, TmcConstants.CHANNEL_REQUEST_CDN);
                        return appModelGenerateAppModel;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e("TmcAppInfoManagerImpl", th2);
            }
        } else {
            z10 = true;
            if (z10) {
                return null;
            }
            appModelGenerateAppModel.setFromCacheType(6);
            str2 = "";
            if (appModel != null) {
                miniAppVersion = miniAppLaunch.getMiniAppVersion(appModelGenerateAppModel);
                if (miniAppVersion == null) {
                    miniAppVersion = "";
                }
                miniAppVersion2 = miniAppLaunch.getMiniAppVersion(appModel);
                if (miniAppVersion2 != null) {
                    str2 = miniAppVersion2;
                }
                zCompareVersion = miniAppLaunch.compareVersion(miniAppVersion, str2);
                TmcLogger.d("TmcAppInfoManagerImpl", "appModel is null,appId ->" + str + ",cdn appinfo compare result " + zCompareVersion);
                if (zCompareVersion) {
                    updateAppModel(context, appModelGenerateAppModel, str + "_pre");
                    ((PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class)).addPeroformanceImprove(str, TmcConstants.CHANNEL_REQUEST_CDN);
                    return appModelGenerateAppModel;
                }
            } else {
                miniAppVersion = miniAppLaunch.getMiniAppVersion(appModelGenerateAppModel);
                if (miniAppVersion == null) {
                    miniAppVersion = "";
                }
                miniAppVersion2 = miniAppLaunch.getMiniAppVersion(appModel);
                if (miniAppVersion2 != null) {
                    str2 = miniAppVersion2;
                }
                zCompareVersion = miniAppLaunch.compareVersion(miniAppVersion, str2);
                TmcLogger.d("TmcAppInfoManagerImpl", "appModel is null,appId ->" + str + ",cdn appinfo compare result " + zCompareVersion);
                if (zCompareVersion) {
                    updateAppModel(context, appModelGenerateAppModel, str + "_pre");
                    ((PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class)).addPeroformanceImprove(str, TmcConstants.CHANNEL_REQUEST_CDN);
                    return appModelGenerateAppModel;
                }
            }
        }
        return null;
    }

    public final String OooO00o(Context context, String str, String str2) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, str, str2);
    }

    public final void OooO00o(AppModel appModel, AppModel appModel2, Context context, AppModel appModel3) {
        if (Intrinsics.c(appModel.getPackageUrl_MD5(), appModel2 != null ? appModel2.getPackageUrl_MD5() : null)) {
            TmcLogger.d("TmcAppInfoManagerImpl", "url 地址一致，不删除旧版本包");
            return;
        }
        TmcLogger.d("TmcAppInfoManagerImpl", "packageUrl_MD5 old -> " + appModel.getPackageUrl_MD5() + ",current-> " + appModel3.getPackageUrl_MD5() + ",used -> " + (appModel2 != null ? appModel2.getPackageUrl_MD5() : null));
        TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "删除全部" + appModel.getPackageUrl_MD5() + ",currentAppVersion:" + appModel3.getDeployVersion() + "，oldAppVersion：" + appModel.getDeployVersion() + ",usedAppVersion:" + (appModel2 != null ? appModel2.getDeployVersion() : null));
        SubpackageAppPrepareUtils.clearAllFilesForVersion$default(SubpackageAppPrepareUtils.INSTANCE, context, appModel, null, 4, null);
    }

    public final AppModel OooO0O0(Context context, String str, AppModel appModel) {
        AppInfoModel appModelFromConfig;
        MiniAppLaunch miniAppLaunch;
        AppModel appModelGenerateAppModel;
        if (str != null) {
            try {
                if (str.length() != 0 && (appModelFromConfig = getAppModelFromConfig(context, str)) != null && (appModelGenerateAppModel = (miniAppLaunch = MiniAppLaunch.INSTANCE).generateAppModel(appModelFromConfig)) != null) {
                    appModelGenerateAppModel.setFromCacheType(5);
                    String str2 = "";
                    if (appModel == null || AppPrepareUtils.INSTANCE.isShellType(appModelGenerateAppModel)) {
                        TmcLogger.d("TmcAppInfoManagerImpl", "appmodel is null ,use config appinfo");
                        String miniAppVersion = miniAppLaunch.getMiniAppVersion(appModelGenerateAppModel);
                        if (miniAppVersion == null) {
                            miniAppVersion = "";
                        }
                        String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(appModel);
                        if (miniAppVersion2 != null) {
                            str2 = miniAppVersion2;
                        }
                        boolean zCompareVersion = miniAppLaunch.compareVersion(miniAppVersion, str2);
                        TmcLogger.d("TmcAppInfoManagerImpl", "appmodel == null,appid ->" + str + ",config appinfo compare result " + zCompareVersion);
                        if (zCompareVersion) {
                            updateAppModel(context, appModelGenerateAppModel, str + "_pre");
                            ((PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class)).addPeroformanceImprove(str, XLogUtil.TAG);
                            return appModelGenerateAppModel;
                        }
                    } else {
                        String miniAppVersion3 = miniAppLaunch.getMiniAppVersion(appModelGenerateAppModel);
                        if (miniAppVersion3 == null) {
                            miniAppVersion3 = "";
                        }
                        String miniAppVersion4 = miniAppLaunch.getMiniAppVersion(appModel);
                        if (miniAppVersion4 != null) {
                            str2 = miniAppVersion4;
                        }
                        boolean zCompareVersion2 = miniAppLaunch.compareVersion(miniAppVersion3, str2);
                        TmcLogger.d("TmcAppInfoManagerImpl", "appid ->" + str + ",config appinfo compare result " + zCompareVersion2);
                        if (zCompareVersion2) {
                            if (appModel.getFromCacheType() != 1) {
                                TmcLogger.d("TmcAppInfoManagerImpl", "update pre appinfo use config");
                                updateAppModel(context, appModelGenerateAppModel, str + "_pre");
                            } else {
                                TmcLogger.d("TmcAppInfoManagerImpl", "current appinfo from pre,not update config");
                            }
                        }
                    }
                }
                return null;
            } catch (Throwable th2) {
                TmcLogger.e("TmcAppInfoManagerImpl", "getAppModelFromConfig", th2);
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x012d  */
    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public void delectOldVersionFilesAndUpdate(Context context, AppModel appModel) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        String appId = appModel.getAppId();
        if (appId == null) {
            appId = "";
        }
        MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
        TmcLogger.d("TmcAppInfoManagerImpl", "当次->" + appId + "," + miniAppLaunch.getMiniAppVersion(appModel));
        String appId2 = appModel.getAppId();
        if (appId2 == null) {
            appId2 = "";
        }
        AppModel appModelFromOld = getAppModelFromOld(context, appId2);
        if (appModelFromOld != null) {
            TmcLogger.d("TmcAppInfoManagerImpl", "删除_" + miniAppLaunch.getMiniAppVersion(appModelFromOld));
            String appId3 = appModel.getAppId();
            if (appId3 == null) {
                appId3 = "";
            }
            AppModel appModelFromUsed = getAppModelFromUsed(context, appId3);
            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "delectOldVersionFilesAndUpdate,oldVersion:" + appModelFromOld.getDeployVersion() + ",oldUrl:" + appModelFromOld.getPackageUrl_MD5() + "，currentAppVersion：" + appModel.getDeployVersion() + ",currentUrl:" + appModel.getPackageUrl_MD5() + ",usedAppVersion:" + (appModelFromUsed != null ? appModelFromUsed.getDeployVersion() : null) + ",usedUrl:" + (appModelFromUsed != null ? appModelFromUsed.getPackageUrl_MD5() : null));
            if (Intrinsics.c(appModelFromOld.getPackageUrl_MD5(), appModel.getPackageUrl_MD5())) {
                TmcLogger.d("TmcAppInfoManagerImpl", "全量包 url 版本一致,不删除");
            } else {
                if (Intrinsics.c(appModelFromOld.getPackageUrl_MD5(), appModelFromUsed != null ? appModelFromUsed.getPackageUrl_MD5() : null)) {
                    TmcLogger.d("TmcAppInfoManagerImpl", "全量包 url 版本一致,不删除");
                } else {
                    AppPrepareUtils.INSTANCE.clearAllFilesForVersion(context, appModelFromOld);
                    TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "删除旧版本全量包:" + appModelFromOld.getPackageUrl_MD5() + "，currentAppVersion：" + appModel.getDeployVersion() + ",oldAppVersion:" + appModelFromOld.getDeployVersion() + ",usedAppVersion:" + (appModelFromUsed != null ? appModelFromUsed.getDeployVersion() : null));
                }
            }
        }
        String appId4 = appModel.getAppId();
        AppModel appModelFromUsed2 = getAppModelFromUsed(context, appId4 != null ? appId4 : "");
        if (appModelFromUsed2 != null) {
            updateAppModel(context, appModelFromUsed2, appModelFromUsed2.getAppId() + "_old");
            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "appID:" + appModelFromUsed2.getAppId() + " updateAppModel version:" + miniAppLaunch.getMiniAppVersion(appModelFromUsed2) + " to old");
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public void deleteOldVersionFiles(Context context, AppModel appModel, boolean z10) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        String appId = appModel.getAppId();
        if (appId == null) {
            appId = "";
        }
        MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
        TmcLogger.d("TmcAppInfoManagerImpl", "当次->" + appId + "," + miniAppLaunch.getMiniAppVersion(appModel));
        String appId2 = appModel.getAppId();
        if (appId2 == null) {
            appId2 = "";
        }
        AppModel appModelFromOld = getAppModelFromOld(context, appId2);
        if (appModelFromOld != null) {
            TmcLogger.d("TmcAppInfoManagerImpl", "删除_" + miniAppLaunch.getMiniAppVersion(appModelFromOld));
            String appId3 = appModel.getAppId();
            AppModel subpackageAppModelFromUsed = getSubpackageAppModelFromUsed(context, appId3 != null ? appId3 : "");
            OooO00o(appModelFromOld, subpackageAppModelFromUsed, context, appModel);
            String miniAppVersion = miniAppLaunch.getMiniAppVersion(appModel);
            String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(subpackageAppModelFromUsed);
            if (subpackageAppModelFromUsed == null || miniAppVersion == null || miniAppVersion.length() == 0 || miniAppVersion2 == null || miniAppVersion2.length() == 0 || !z10 || !miniAppLaunch.compareVersion(miniAppVersion, miniAppVersion2)) {
                return;
            }
            OooO00o(subpackageAppModelFromUsed, appModel, context, appModel);
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public String findUrlMappedAppId(Context context, String str) {
        Intrinsics.h(context, "context");
        return "";
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public AppInfoModel getAppInfoModel(Context context, AppInfoQuery query) {
        Intrinsics.h(context, "context");
        Intrinsics.h(query, "query");
        String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, query.getAppId(), AppConstants.APP_INFO_MODEL);
        if (string == null || string.length() == 0) {
            return null;
        }
        return (AppInfoModel) JsonUtil.INSTANCE.fromJson(string, AppInfoModel.class);
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public AppModel getAppModel(Context context, AppInfoQuery query) {
        boolean zCheckZipDownloadStatus;
        Intrinsics.h(context, "context");
        Intrinsics.h(query, "query");
        AppModel appModelOooO00o = com.cloud.tmc.miniapp.prestrategy.strategy.OooO00o.OooO00o.OooO00o(query.getAppId());
        if (appModelOooO00o != null) {
            TmcLogger.d("TmcAppInfoManagerImpl", "getPreAppinfoModel from memory");
            return appModelOooO00o;
        }
        AppModel appModelFromPre = getAppModelFromPre(context, query.getAppId());
        TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "get preAppModel,appVersion:" + (appModelFromPre != null ? appModelFromPre.getDeployVersion() : null));
        if (appModelFromPre != null) {
            AppPrepareUtils appPrepareUtils = AppPrepareUtils.INSTANCE;
            if (!appPrepareUtils.isShellType(appModelFromPre) && !(zCheckZipDownloadStatus = appPrepareUtils.checkZipDownloadStatus(context, appModelFromPre))) {
                if (OooOOO.OooO00o(appModelFromPre)) {
                    zCheckZipDownloadStatus = appPrepareUtils.checkZipDownloadStatus(context, appModelFromPre.getAppId(), appModelFromPre.getMainPackageUrlEncryption());
                    TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "get preAppModel,appVersion:" + appModelFromPre.getDeployVersion() + ",downloaded");
                }
                if (!zCheckZipDownloadStatus) {
                    appModelFromPre = null;
                }
            }
        }
        if (appModelFromPre == null) {
            appModelFromPre = getAppModelFromUsed(context, query.getAppId());
            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "get usedAppModel,appVersion:" + (appModelFromPre != null ? appModelFromPre.getDeployVersion() : null));
        }
        if (appModelFromPre != null && appModelFromPre.isTestVersion()) {
            TmcLogger.e("TmcAppInfoManagerImpl", "当前使用的非正式版本，不启用替换内置和 cdn、config 能力");
            return appModelFromPre;
        }
        AppModel appModelFromPackage = getAppModelFromPackage(context, query.getAppId());
        if (appModelFromPackage != null) {
            MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
            String miniAppVersion = miniAppLaunch.getMiniAppVersion(appModelFromPackage);
            if (miniAppVersion == null) {
                miniAppVersion = "0";
            }
            String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(appModelFromPre);
            if (miniAppVersion2 == null) {
                miniAppVersion2 = "0";
            }
            boolean zCompareVersion = miniAppLaunch.compareVersion(miniAppVersion, miniAppVersion2);
            if (appModelFromPre == null || zCompareVersion) {
                resetAppPreModel(context, query.getAppId());
                appModelFromPre = appModelFromPackage;
            }
        }
        if (!Intrinsics.c(query.getAppId(), "100000")) {
            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "getAppModel,appVersion:" + (appModelFromPre != null ? appModelFromPre.getDeployVersion() : null));
            String appId = query.getAppId();
            String miniAppVersion3 = MiniAppLaunch.INSTANCE.getMiniAppVersion(appModelFromPre);
            AppModel appModelFromOffline = getAppModelFromOffline(context, appId, miniAppVersion3 != null ? miniAppVersion3 : "0");
            if (appModelFromOffline != null) {
                appModelFromPre = appModelFromOffline;
            }
        }
        AppModel appModelOooO0O0 = OooO0O0(context, query.getAppId(), appModelFromPre);
        if (appModelOooO0O0 != null) {
            appModelFromPre = appModelOooO0O0;
        }
        AppModel appModelOooO00o2 = OooO00o(context, query.getAppId(), appModelFromPre);
        return appModelOooO00o2 != null ? appModelOooO00o2 : appModelFromPre;
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public AppInfoModel getAppModelFromCDN(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        String strOooO00o = OooO00o(context, appId, appId + "_cdn");
        if (strOooO00o == null || strOooO00o.length() == 0) {
            return null;
        }
        try {
            return (AppInfoModel) JsonUtil.INSTANCE.fromJson(strOooO00o, AppInfoModel.class);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public AppInfoModel getAppModelFromConfig(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        String strOooO00o = OooO00o(context, appId, appId + "_config");
        if (strOooO00o == null || strOooO00o.length() == 0) {
            return null;
        }
        try {
            return (AppInfoModel) JsonUtil.INSTANCE.fromJson(strOooO00o, AppInfoModel.class);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public AppModel getAppModelFromDev(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        if (!AppDynamicBuildConfig.getDEV_MODE()) {
            return null;
        }
        String strOooO00o = OooO00o(context, appId, appId + "_dev");
        if (strOooO00o == null || strOooO00o.length() == 0) {
            return null;
        }
        try {
            AppModel appModel = (AppModel) JsonUtil.INSTANCE.fromJson(strOooO00o, AppModel.class);
            appModel.setFromCacheType(1);
            return appModel;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public AppModel getAppModelFromOffline(Context context, String appId, String currentVersion) {
        String appVersionFromOfflinePkgCache;
        OffPkgConfig manifest;
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        Intrinsics.h(currentVersion, "currentVersion");
        if (!ProcessUtils.isMiniProcess()) {
            TmcLogger.d("TmcAppInfoManagerImpl", "getAppModelFromOffline failed! current process is not miniProcess");
            return null;
        }
        TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "getAppModelFromOffline,appVersion:" + currentVersion);
        OfflinePkgCachePath offlinePkgFwCachePath = OfflineManager.getOfflinePkgFwCachePath(appId);
        if (offlinePkgFwCachePath == null || (appVersionFromOfflinePkgCache = Utils.INSTANCE.getAppVersionFromOfflinePkgCache(offlinePkgFwCachePath)) == null) {
            return null;
        }
        TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "getAppModelFromOffline,appVersion:" + currentVersion + ",offlineAppVersion:" + appVersionFromOfflinePkgCache);
        if (Intrinsics.c(appVersionFromOfflinePkgCache, currentVersion) || MiniAppLaunch.INSTANCE.compareVersion(appVersionFromOfflinePkgCache, currentVersion)) {
            List<ZipFileInfo> zipFileInfo = offlinePkgFwCachePath.getZipFileInfo();
            ZipFileInfo zipFileInfo2 = zipFileInfo != null ? (ZipFileInfo) CollectionsKt.i0(zipFileInfo) : null;
            AppInfoModel appInfo = (zipFileInfo2 == null || (manifest = zipFileInfo2.getManifest()) == null) ? null : manifest.getAppInfo();
            AppModel appModelGenerateAppModel = appInfo != null ? MiniAppLaunch.INSTANCE.generateAppModel(appInfo) : null;
            if (appModelGenerateAppModel != null) {
                appModelGenerateAppModel.setZipPath((zipFileInfo2 != null ? zipFileInfo2.getZipUnCompressPath() : null) + "/" + appId + ".zip");
            }
            if (appModelGenerateAppModel != null) {
                appModelGenerateAppModel.setFromCacheType(4);
                TmcLogger.d("TmcAppInfoManagerImpl", appId + ":" + appVersionFromOfflinePkgCache + " -> 命中离线包");
                return appModelGenerateAppModel;
            }
            TmcLogger.d("TmcAppInfoManagerImpl", appId + ":" + appVersionFromOfflinePkgCache + " -> offlineModel 为空,不使用离线包");
        } else {
            TmcLogger.d("TmcAppInfoManagerImpl", appId + ":" + appVersionFromOfflinePkgCache + " 离线包版本号未大于或等于当前资源包 " + currentVersion + " ,不使用离线包");
        }
        return null;
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public AppModel getAppModelFromOld(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        if (appId.length() == 0) {
            return null;
        }
        String strOooO00o = OooO00o(context, appId, appId + "_old");
        if (strOooO00o == null || strOooO00o.length() == 0) {
            return null;
        }
        try {
            AppModel appModel = (AppModel) JsonUtil.INSTANCE.fromJson(strOooO00o, AppModel.class);
            appModel.setFromCacheType(2);
            return appModel;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public AppModel getAppModelFromPackage(Context context, String appId) {
        AppModel appModel;
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        String assets2String = "";
        try {
            assets2String = OooO00o(context, appId, appId + "_native_" + GlobalPackageConfig.Companion.getSDK_DEV_VERSION());
            if (assets2String == null || assets2String.length() <= 0) {
                appModel = null;
            } else {
                appModel = (AppModel) JsonUtil.INSTANCE.fromJson(assets2String, AppModel.class);
                appModel.setFromCacheType(3);
            }
            if (appModel != null) {
                return appModel;
            }
        } catch (Throwable th2) {
            TmcLogger.e("TmcAppInfoManagerImpl", "getAppModelFromPackage", th2);
        }
        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
        GlobalPackageConfig.Companion companion = GlobalPackageConfig.Companion;
        boolean z10 = false;
        if (kVStorageProxy.getBoolean(context, appId, "isReadAssets_" + appId + "_" + companion.getSDK_DEV_VERSION(), false)) {
            return null;
        }
        if (assets2String == null || assets2String.length() == 0) {
            assets2String = ResourceUtils.readAssets2String("mini_offline/" + appId + "/" + appId + ".json");
            z10 = true;
        }
        try {
            AppModel appModel2 = (AppModel) JsonUtil.INSTANCE.fromJson(assets2String, AppModel.class);
            appModel2.setFromCacheType(3);
            if (z10) {
                updateAppModel(context, appModel2, appId + "_native_" + companion.getSDK_DEV_VERSION());
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(context, appId, "isReadAssets_" + appId + "_" + companion.getSDK_DEV_VERSION(), true);
            }
            return appModel2;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public AppModel getAppModelFromPre(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        String strOooO00o = OooO00o(context, appId, appId + "_pre");
        if (strOooO00o == null || strOooO00o.length() == 0) {
            return null;
        }
        try {
            AppModel appModel = (AppModel) JsonUtil.INSTANCE.fromJson(strOooO00o, AppModel.class);
            appModel.setFromCacheType(1);
            return appModel;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public AppModel getAppModelFromUsed(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        if (appId.length() == 0) {
            return null;
        }
        String strOooO00o = OooO00o(context, appId, appId + "_used");
        if (strOooO00o == null || strOooO00o.length() == 0) {
            return null;
        }
        try {
            AppModel appModel = (AppModel) JsonUtil.INSTANCE.fromJson(strOooO00o, AppModel.class);
            appModel.setFromCacheType(2);
            AppPrepareUtils appPrepareUtils = AppPrepareUtils.INSTANCE;
            boolean zCheckZipDownloadStatus = appPrepareUtils.checkZipDownloadStatus(context, appId, appModel.getPackageUrl_MD5());
            if (!zCheckZipDownloadStatus && OooOOO.OooO00o(appModel)) {
                zCheckZipDownloadStatus = appPrepareUtils.checkZipDownloadStatus(context, appModel.getAppId(), appModel.getMainPackageUrlEncryption());
                TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "get AppModelFromUsed,appVersion:" + appModel.getDeployVersion() + ",downloaded:" + zCheckZipDownloadStatus);
            }
            if (zCheckZipDownloadStatus || appPrepareUtils.isShellType(appModel)) {
                return appModel;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.cloud.tmc.integration.proxy.IAppInfoManagerProxy
    public AppModel getAppModelHasNotOffline(Context context, AppInfoQuery query) {
        Intrinsics.h(context, "context");
        Intrinsics.h(query, "query");
        AppModel appModelFromPre = getAppModelFromPre(context, query.getAppId());
        if (appModelFromPre != null) {
            AppPrepareUtils appPrepareUtils = AppPrepareUtils.INSTANCE;
            if (!appPrepareUtils.isShellType(appModelFromPre) && !appPrepareUtils.checkZipDownloadStatus(context, appModelFromPre)) {
                appModelFromPre = null;
            }
        }
        if (appModelFromPre == null) {
            appModelFromPre = getAppModelFromUsed(context, query.getAppId());
        }
        AppModel appModelFromPackage = getAppModelFromPackage(context, query.getAppId());
        if (appModelFromPackage == null) {
            return appModelFromPre;
        }
        MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
        String miniAppVersion = miniAppLaunch.getMiniAppVersion(appModelFromPackage);
        if (miniAppVersion == null) {
            miniAppVersion = "0";
        }
        String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(appModelFromPre);
        boolean zCompareVersion = miniAppLaunch.compareVersion(miniAppVersion, miniAppVersion2 != null ? miniAppVersion2 : "0");
        if (appModelFromPre != null && !zCompareVersion) {
            return appModelFromPre;
        }
        resetAppPreModel(context, query.getAppId());
        return appModelFromPackage;
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public AppModel getAppWarmupModel(Context context, AppInfoQuery query) {
        Intrinsics.h(context, "context");
        Intrinsics.h(query, "query");
        String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, query.getAppId(), query.getAppId() + "_warmup");
        if (string == null || string.length() == 0) {
            return null;
        }
        try {
            return (AppModel) JsonUtil.INSTANCE.fromJson(string, AppModel.class);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public long getLastUpdateTime(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        return ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, appId, "APP_LAST_UPDATE_TIME_" + GlobalPackageConfig.Companion.getSDK_DEV_VERSION());
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public boolean getPreUnzipStatus(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        return ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getBoolean(context, appId, appId + "_preunzip", false);
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public AppModel getSubpackageAppModelFromUsed(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        if (appId.length() == 0) {
            return null;
        }
        String strOooO00o = OooO00o(context, appId, appId + "_used");
        if (strOooO00o == null || strOooO00o.length() == 0) {
            return null;
        }
        try {
            AppModel appModel = (AppModel) JsonUtil.INSTANCE.fromJson(strOooO00o, AppModel.class);
            appModel.setFromCacheType(2);
            return appModel;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public void refreshUpdateTime(Context context, String appId, long j11) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, appId, "APP_LAST_UPDATE_TIME_" + GlobalPackageConfig.Companion.getSDK_DEV_VERSION(), j11);
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public void resetAppPreModel(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, appId, appId + "_pre", "");
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public void updateAppModel(Context context, AppModel appModel, String key) {
        String appId;
        Intrinsics.h(context, "context");
        Intrinsics.h(key, "key");
        if (appModel == null || (appId = appModel.getAppId()) == null) {
            return;
        }
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, appId, key, JsonUtil.INSTANCE.toJsonStr(appModel));
    }

    @Override // com.cloud.tmc.integration.proxy.IAppInfoManagerProxy
    public void updateAppModelByOffline(Context context, AppModel appModel, String key) {
        Intrinsics.h(context, "context");
        Intrinsics.h(key, "key");
        updateAppModel(context, appModel, key);
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public void updateAppWarmupModel(Context context, AppModel appModel) {
        String appId;
        Intrinsics.h(context, "context");
        if (appModel == null || (appId = appModel.getAppId()) == null) {
            return;
        }
        String jsonStr = JsonUtil.INSTANCE.toJsonStr(appModel);
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, appId, appModel.getAppId() + "_warmup", jsonStr);
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public void updateOldVersion(Context context, AppModel appModel, String str) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        if (str == null || str.length() == 0) {
            String appId = appModel.getAppId();
            if (appId == null) {
                appId = "";
            }
            AppModel subpackageAppModelFromUsed = getSubpackageAppModelFromUsed(context, appId);
            if (subpackageAppModelFromUsed != null) {
                updateAppModel(context, subpackageAppModelFromUsed, subpackageAppModelFromUsed.getAppId() + "_old");
                String appId2 = subpackageAppModelFromUsed.getAppId();
                MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
                TmcLogger.d("TmcAppInfoManagerImpl", "appID:" + appId2 + " updateAppModel version:" + miniAppLaunch.getMiniAppVersion(subpackageAppModelFromUsed) + " to old");
                TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "appID:" + subpackageAppModelFromUsed.getAppId() + " updateAppModel version:" + miniAppLaunch.getMiniAppVersion(subpackageAppModelFromUsed) + " to old");
            }
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager
    public void updatePreUnzipStatus(Context context, String appId, boolean z10) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(context, appId, appId + "_preunzip", z10);
    }
}
