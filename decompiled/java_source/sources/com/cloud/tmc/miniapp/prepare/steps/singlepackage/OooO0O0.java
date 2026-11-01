package com.cloud.tmc.miniapp.prepare.steps.singlepackage;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.callback.PackageInstallCallback;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.JsonUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.steps.OooO;
import com.cloud.tmc.miniapp.prepare.steps.OooOO0;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;

/* JADX INFO: loaded from: classes3.dex */
public class OooO0O0 extends com.cloud.tmc.miniapp.prepare.steps.structure.OooO00o {
    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void OooO00o(AppModel appModel, Context context, PrepareController prepareController, PrepareContext prepareContext, boolean z10, String str) {
        String str2;
        String str3;
        String str4 = "manifest error";
        String str5 = PrepareException.ERROR_MANIFEST_INFO;
        String str6 = TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID;
        if (!z10) {
            TmcLogger.d(this.OooO00o, "Step_LoadStep: tar 包解压失败，删除数据");
            MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
            String miniAppVersion = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), prepareContext.getAppId()));
            String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), prepareContext.getAppId()));
            if (!TextUtils.isEmpty(miniAppVersion) && !TextUtils.isEmpty(miniAppVersion2) && miniAppLaunch.compareVersion(miniAppVersion2, miniAppVersion)) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2).putData(TmcConstants.TRACK_MPU_RESULT, "INSTALL_APP_FAIL"), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
            }
            AppPrepareUtils.INSTANCE.clearAllFilesForVersion(context, appModel);
            StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("unzip error");
            sbOooO00o.append(appModel.getPackageUrl());
            prepareController.moveToError(new PrepareException("5", sbOooO00o.toString()));
            return;
        }
        TmcLogger.d(this.OooO00o, "Step_LoadStep: tar 包解压完成");
        try {
            AppPrepareUtils appPrepareUtils = AppPrepareUtils.INSTANCE;
            try {
                try {
                    if (JsonUtil.INSTANCE.getValueFromJson(appPrepareUtils.getManifestJson(appModel), "appId").equals(appModel.getAppId())) {
                        MiniAppLaunch miniAppLaunch2 = MiniAppLaunch.INSTANCE;
                        String miniAppVersion3 = miniAppLaunch2.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), prepareContext.getAppId()));
                        String miniAppVersion4 = miniAppLaunch2.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), prepareContext.getAppId()));
                        if (!TextUtils.isEmpty(miniAppVersion3) && !TextUtils.isEmpty(miniAppVersion4) && miniAppLaunch2.compareVersion(miniAppVersion4, miniAppVersion3)) {
                            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_UPDATE_SUCCESS, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion3).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion4), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
                        }
                        TmcLogger.d(this.OooO00o, "Step_LoadStep: manifest 内容校验成功");
                        appPrepareUtils.changeTarUnCompressStatus(context, appModel, true);
                        this.OooO0o0.delectDownloadFileForVersion(appModel);
                        this.OooO0O0.delectOldVersionFilesAndUpdate(context, appModel);
                        prepareController.unlock(prepareController);
                        prepareController.moveToNext();
                        return;
                    }
                    try {
                        appPrepareUtils.clearAllFilesForVersion(context, appModel);
                        prepareController.moveToError(new PrepareException(PrepareException.ERROR_MANIFEST_INFO, "manifest error"));
                        MiniAppLaunch miniAppLaunch3 = MiniAppLaunch.INSTANCE;
                        String miniAppVersion5 = miniAppLaunch3.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), prepareContext.getAppId()));
                        str4 = "manifest error";
                        try {
                            String miniAppVersion6 = miniAppLaunch3.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), prepareContext.getAppId()));
                            if (TextUtils.isEmpty(miniAppVersion5) || TextUtils.isEmpty(miniAppVersion6) || !miniAppLaunch3.compareVersion(miniAppVersion6, miniAppVersion5)) {
                                return;
                            }
                            PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                            String appId = prepareContext.getAppId();
                            PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL;
                            str5 = PrepareException.ERROR_MANIFEST_INFO;
                            try {
                                PointAnalyseType pointAnalyseTypePutData = pointAnalyseType.putData(TmcConstants.TRACK_MPU_APPID, appModel.getAppId()).putData(TmcConstants.TRACK_MPU_OLD_V, miniAppVersion5).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion6).putData(TmcConstants.TRACK_MPU_RESULT, "MANIFEST_FAIL");
                                Bundle startParams = prepareContext.getStartParams();
                                str2 = TmcConstants.COLD_OPEN_TYPE;
                                try {
                                    String string = startParams.getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, str2);
                                    str6 = TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID;
                                    try {
                                        PointAnalyseType pointAnalyseTypePutData2 = pointAnalyseTypePutData.putData(str6, string);
                                        str3 = "";
                                        try {
                                            performanceAnalyseProxy.record(appId, pointAnalyseTypePutData2, str3);
                                            return;
                                        } catch (Throwable unused) {
                                        }
                                    } catch (Throwable unused2) {
                                        str3 = "";
                                    }
                                } catch (Throwable unused3) {
                                    str3 = "";
                                    str6 = TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID;
                                }
                            } catch (Throwable unused4) {
                                str3 = "";
                                str6 = TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID;
                                str2 = TmcConstants.COLD_OPEN_TYPE;
                            }
                        } catch (Throwable unused5) {
                            str5 = PrepareException.ERROR_MANIFEST_INFO;
                            str6 = TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID;
                            str2 = TmcConstants.COLD_OPEN_TYPE;
                        }
                    } catch (Throwable unused6) {
                        str4 = "manifest error";
                    }
                    str3 = "";
                    MiniAppLaunch miniAppLaunch4 = MiniAppLaunch.INSTANCE;
                    String miniAppVersion7 = miniAppLaunch4.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), prepareContext.getAppId()));
                    String miniAppVersion8 = miniAppLaunch4.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), prepareContext.getAppId()));
                    if (!TextUtils.isEmpty(miniAppVersion7) && !TextUtils.isEmpty(miniAppVersion8) && miniAppLaunch4.compareVersion(miniAppVersion8, miniAppVersion7)) {
                        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, str2, OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion7).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion8).putData(TmcConstants.TRACK_MPU_RESULT, "MANIFEST_FAIL"), str6), str3);
                    }
                    AppPrepareUtils.INSTANCE.clearAllFilesForVersion(context, appModel);
                    prepareController.moveToError(new PrepareException(str5, str4));
                } catch (Throwable unused7) {
                    str6 = TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID;
                    str2 = TmcConstants.COLD_OPEN_TYPE;
                    str3 = "";
                }
            } catch (Throwable unused8) {
                str2 = TmcConstants.COLD_OPEN_TYPE;
                str6 = TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID;
            }
        } catch (Throwable unused9) {
            str2 = TmcConstants.COLD_OPEN_TYPE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void OooO00o(PrepareController prepareController, PrepareContext prepareContext, AppModel appModel, boolean z10, String str) {
        if (z10) {
            TmcLogger.d(this.OooO00o, "Step_LoadStep: zip 包解压完成");
            OooO00o(prepareController, prepareContext, appModel);
            return;
        }
        TmcLogger.d(this.OooO00o, "Step_LoadStep: zip 包解压失败");
        MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
        String miniAppVersion = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), prepareContext.getAppId()));
        String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), prepareContext.getAppId()));
        if (!TextUtils.isEmpty(miniAppVersion) && !TextUtils.isEmpty(miniAppVersion2) && miniAppLaunch.compareVersion(miniAppVersion2, miniAppVersion)) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2).putData(TmcConstants.TRACK_MPU_RESULT, "INSTALL_ZIP_FAIL"), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        }
        AppPrepareUtils.INSTANCE.clearAllFilesForVersion(prepareContext.getStartContext(), appModel);
        StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("unzip error");
        sbOooO00o.append(appModel.getPackageUrl());
        prepareController.moveToError(new PrepareException("5", sbOooO00o.toString()));
    }

    public final void OooO00o(final PrepareContext prepareContext, final PrepareController prepareController, final AppModel appModel) {
        Bundle bundle = new Bundle();
        bundle.putString(ChainPoint.TYPE, "app");
        com.cloud.tmc.miniapp.prepare.steps.OooO0O0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, bundle, ChainPoint.CHAIN_ID);
        bundle.putInt(ChainPoint.ZIP_APP_MODE, 2);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_INSERT, "", bundle);
        this.OooO0OO.installZip(prepareContext.getStartContext(), appModel, new PackageInstallCallback() { // from class: com.cloud.tmc.miniapp.prepare.steps.singlepackage.b
            @Override // com.cloud.tmc.integration.callback.PackageInstallCallback
            public final void onResult(boolean z10, String str) {
                this.f23668a.OooO00o(prepareController, prepareContext, appModel, z10, str);
            }
        });
    }

    public final void OooO00o(final PrepareController prepareController, final PrepareContext prepareContext, final AppModel appModel) {
        final Context startContext = prepareContext.getStartContext();
        TmcLogger.d(this.OooO00o, "Step_LoadStep: sha256 校验");
        AppPrepareUtils appPrepareUtils = AppPrepareUtils.INSTANCE;
        if (appPrepareUtils.checkSHA256(appModel)) {
            TmcLogger.d(this.OooO00o, "Step_LoadStep: sha256 校验正确，解压 tar 包");
            this.OooO0OO.installApp(appModel, new PackageInstallCallback() { // from class: com.cloud.tmc.miniapp.prepare.steps.singlepackage.a
                @Override // com.cloud.tmc.integration.callback.PackageInstallCallback
                public final void onResult(boolean z10, String str) {
                    this.f23663a.OooO00o(appModel, startContext, prepareController, prepareContext, z10, str);
                }
            });
            return;
        }
        MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
        String miniAppVersion = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), prepareContext.getAppId()));
        String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), prepareContext.getAppId()));
        if (!TextUtils.isEmpty(miniAppVersion) && !TextUtils.isEmpty(miniAppVersion2) && miniAppLaunch.compareVersion(miniAppVersion2, miniAppVersion)) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2).putData(TmcConstants.TRACK_MPU_RESULT, "SIGN_FAIL"), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        }
        TmcLogger.d(this.OooO00o, "Step_LoadStep: sha256 校验不一致，删除所有缓存");
        appPrepareUtils.clearAllFilesForVersion(startContext, appModel);
        StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("sign error");
        sbOooO00o.append(appModel.getAppId());
        sbOooO00o.append("   ");
        sbOooO00o.append(appModel.getPackageUrl());
        prepareController.moveToError(new PrepareException("7", sbOooO00o.toString()));
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.structure.OooO00o
    public void OooO0OO(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) {
        AppModel appModel = prepareContext.getAppModel();
        if (AppPrepareUtils.INSTANCE.checkTarUnCompressStatus(prepareContext.getStartContext(), appModel)) {
            MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
            String miniAppVersion = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), prepareContext.getAppId()));
            String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), prepareContext.getAppId()));
            if (!TextUtils.isEmpty(miniAppVersion) && !TextUtils.isEmpty(miniAppVersion2) && miniAppLaunch.compareVersion(miniAppVersion2, miniAppVersion)) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_UPDATE_SUCCESS, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
            }
            TmcLogger.d(this.OooO00o, "Step_LoadStep:tar包已解压，跳转到 startStep");
            prepareController.unlock(prepareController);
            prepareController.moveToNext();
            return;
        }
        TmcLogger.d(this.OooO00o, "Step_LoadStep:删除旧的已解压文件");
        this.OooO0o0.deleteFile(this.OooO0Oo.getZipUnCompressPath(appModel));
        TmcLogger.d(this.OooO00o, "Step_LoadStep:解压 zip 包");
        try {
            OooO00o(prepareContext, prepareController, appModel);
            o000oooo.updateStepProgress(LoadStepAction.STEP_FINISH_DECOMPRESS);
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, th2);
            StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("unzip error");
            sbOooO00o.append(th2.getMessage());
            prepareController.moveToError(new PrepareException("5", sbOooO00o.toString()));
        }
    }
}
