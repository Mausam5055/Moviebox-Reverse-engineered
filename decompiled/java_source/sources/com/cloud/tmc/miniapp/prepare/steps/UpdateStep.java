package com.cloud.tmc.miniapp.prepare.steps;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.chain.endState.CheckConfigStepEndState;
import com.cloud.tmc.integration.chain.startState.UpdateStepStartState;
import com.cloud.tmc.integration.model.AppInfoModel;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.EntryInfo;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.net.BaseResponse;
import com.cloud.tmc.integration.net.TmcResponseCallback;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.integration.performance.offscreen.webview.OffScreenWebviewPool;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.integration.utils.JsonUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceImprovesProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.google.gson.reflect.TypeToken;
import com.hisavana.common.tracking.TrackingKey;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes3.dex */
public class UpdateStep extends OooO00o {
    public BaseResponse<?> OooOO0o;
    public boolean OooO0oo = false;
    public boolean OooO = false;
    public boolean OooOO0 = false;
    public int OooOO0O = 0;
    public String OooOOO0 = "";
    public long OooOOO = 0;

    public static /* synthetic */ Unit OooO00o(PrepareContext prepareContext, AppModel appModel, String str, String str2) {
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_USER_EXIT.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, TmcConstants.KEY_ASYNC), TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, str).putData(TmcConstants.TRACK_MPU_NEW_V, str2).putData(TmcConstants.TRACK_MPU_RESULT, "IOException").putData(TmcConstants.TRACK_MPU_ERROR_CODE, "D006").putData(TmcConstants.TRACK_MPU_ERROR_MSG, "Canceled"), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        return null;
    }

    public static /* synthetic */ Unit OooO00o(PrepareContext prepareContext, AppModel appModel, String str, String str2, o000oOoO o000oooo) {
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_SUCCESS.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, TmcConstants.KEY_ASYNC), TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, str).putData(TmcConstants.TRACK_MPU_NEW_V, str2), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        o000oooo.backgroundDownloadZipAsync(appModel, true);
        return null;
    }

    public static /* synthetic */ Unit OooO00o(PrepareContext prepareContext, AppModel appModel, String str, String str2, o000oOoO o000oooo, String str3, String str4, IOException iOException) {
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_FAILED.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, TmcConstants.KEY_ASYNC), TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, str).putData(TmcConstants.TRACK_MPU_NEW_V, str2).putData(TmcConstants.TRACK_MPU_RESULT, iOException.getClass().getSimpleName()).putData(TmcConstants.TRACK_MPU_ERROR_CODE, str3).putData(TmcConstants.TRACK_MPU_ERROR_MSG, iOException.getMessage()), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        o000oooo.backgroundDownloadZipAsync(appModel, false);
        return null;
    }

    public final synchronized void OooO00o(@NonNull BaseResponse<?> baseResponse, PrepareController prepareController, AppModel appModel, PrepareContext prepareContext, String str, String str2, Map<String, String> map) {
        if (this.OooO) {
            return;
        }
        if (this.OooOO0) {
            TmcLogger.d(this.OooO00o, "Step_UPDATE_requestAppInfoFailed->" + str + str2);
            int i11 = this.OooOO0O + 1;
            this.OooOO0O = i11;
            if (i11 < 2) {
                if (TmcConstants.CHANNEL_REQUEST_SERVER.equals(str2)) {
                    this.OooOO0o = baseResponse;
                }
                return;
            } else {
                BaseResponse<?> baseResponse2 = this.OooOO0o;
                if (baseResponse2 != null) {
                    this.OooOO0O = 0;
                    baseResponse = baseResponse2;
                }
            }
        }
        OooO00o(prepareContext.getAppId(), str2, false, map);
        String str3 = this.OooO00o;
        StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("Step_UPDATE_数据更新失败");
        sbOooO00o.append(baseResponse.getMessage());
        TmcLogger.d(str3, sbOooO00o.toString());
        if (this.OooO0oo) {
            prepareController.unlock(prepareController);
        }
        if (appModel == null) {
            prepareController.moveToError(MiniAppLaunch.showUpdateStepErrorMsg(prepareContext.getAppId(), baseResponse.getCode(), baseResponse.getMessage()));
        } else {
            if (baseResponse.getCode() == 30004) {
                if (prepareController != null) {
                    try {
                        prepareController.moveToError(MiniAppLaunch.showUpdateStepErrorMsg(str, 30004, ""));
                    } catch (Throwable th2) {
                        TmcLogger.e(this.OooO00o, th2);
                    }
                }
                FileUtil.INSTANCE.delectMiniapp(str);
                return;
            }
            if (this.OooO0oo) {
                prepareController.moveToNext();
            }
        }
    }

    public final synchronized void OooO00o(@NonNull BaseResponse<? extends AppInfoModel> baseResponse, o000oOoO o000oooo, PrepareController prepareController, PrepareContext prepareContext, String str, AppModel appModel, String str2, Map<String, String> map) {
        if (this.OooO) {
            TmcLogger.d(this.OooO00o, "return  " + str2);
            return;
        }
        this.OooO = true;
        OooO00o(prepareContext.getAppId(), str2, true, map);
        AppInfoModel data = baseResponse.getData();
        if (TextUtils.isEmpty(data.getAppId())) {
            OooO00o(new BaseResponse<>(), prepareController, appModel, prepareContext, str, str2, map);
            return;
        }
        o000oooo.showTaskDescription(data.getName(), data.getLogo());
        MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
        if (!miniAppLaunch.checkLowSupportVersion(data.getLowestSupportVersion())) {
            this.OooO0oo = true;
            prepareController.lock(prepareController);
            TmcLogger.d(this.OooO00o, "showFwUpdateTipsDialog->" + str);
            miniAppLaunch.showFwUpdateTipsDialog(prepareContext.getStartContext(), str, o000oooo);
            return;
        }
        OooO00o(str, data, o000oooo, prepareContext);
        if (this.OooO0oo) {
            if (TmcConstants.CHANNEL_REQUEST_CDN.equals(str2) && !prepareContext.getVirtualStart()) {
                ((PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class)).addPeroformanceImprove(str, TmcConstants.CHANNEL_REQUEST_CDN);
            }
            prepareController.unlock(prepareController);
        }
        TmcLogger.d(this.OooO00o, "Step_UPDATE_数据更新成功");
        if (this.OooO0oo) {
            o000oooo.updateStepProgress(LoadStepAction.STEP_UPDATE_APP_INFO);
            prepareController.moveToNext();
        }
    }

    public final void OooO00o(final PrepareController prepareController, final PrepareContext prepareContext, final o000oOoO o000oooo, final AppModel appModel, final String str) {
        String str2;
        boolean devStatus = prepareContext.getDevStatus();
        try {
            this.OooOOO0 = System.currentTimeMillis() + "_" + str + "_" + Math.random();
            this.OooOOO = System.currentTimeMillis();
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, th2);
        }
        if (!devStatus) {
            try {
                boolean zCheckAppInfoEnableCDNRequest = MiniAppLaunch.INSTANCE.checkAppInfoEnableCDNRequest(prepareContext.getStartContext());
                this.OooOO0 = zCheckAppInfoEnableCDNRequest;
                if (zCheckAppInfoEnableCDNRequest) {
                    OooO0O0(prepareController, prepareContext, o000oooo, appModel, str);
                }
            } catch (Throwable th3) {
                TmcLogger.e(this.OooO00o, th3);
            }
        }
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        map2.put(UrlKt.KEY_HEADER_REQUESTCHANNEL, TmcConstants.CHANNEL_REQUEST_SERVER);
        boolean devStatus2 = prepareContext.getDevStatus();
        map.put("appId", str);
        map.put(UrlKt.KEY_QUERY_CLASSIFICATION, "1");
        String url_appinfo_query = UrlKt.getURL_APPINFO_QUERY();
        String gAId = DeviceUtil.getGAId();
        if (!TextUtils.isEmpty(gAId)) {
            map2.put(UrlKt.KEY_MINI_GAID, gAId);
        }
        if (devStatus2) {
            map.put("version", prepareContext.getAppVersion());
            map.put(UrlKt.KEY_QUERY_TYPE_CODE, prepareContext.getDevTypeCode());
            String url_appinfo_dev_query = UrlKt.getURL_APPINFO_DEV_QUERY();
            if (!TextUtils.isEmpty(prepareContext.getAppToken())) {
                map2.put(UrlKt.KEY_HEADER_DEV_TOKEN, prepareContext.getAppToken());
            }
            str2 = url_appinfo_dev_query;
        } else {
            str2 = url_appinfo_query;
        }
        ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).postJson(str2, map2, null, map, Boolean.TRUE, new TmcResponseCallback<AppInfoModel>() { // from class: com.cloud.tmc.miniapp.prepare.steps.UpdateStep.2
            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            @NonNull
            public Type getType() {
                return new TypeToken<BaseResponse<AppInfoModel>>(this) { // from class: com.cloud.tmc.miniapp.prepare.steps.UpdateStep.2.1
                }.getType();
            }

            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            public void onFail(@NonNull BaseResponse<?> baseResponse, @Nullable Map<String, String> map3) {
                TmcLogger.d(UpdateStep.this.OooO00o, "Step_UPDATE_server failed");
                UpdateStep.this.OooO00o(baseResponse, prepareController, appModel, prepareContext, str, TmcConstants.CHANNEL_REQUEST_SERVER, map3);
            }

            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            public void onSuccess(@NonNull BaseResponse<? extends AppInfoModel> baseResponse, @Nullable Map<String, String> map3) {
                TmcLogger.d(UpdateStep.this.OooO00o, "Step_UPDATE_server success");
                UpdateStep.this.OooO00o(baseResponse, o000oooo, prepareController, prepareContext, str, appModel, TmcConstants.CHANNEL_REQUEST_SERVER, map3);
            }
        });
    }

    public final void OooO00o(String str, AppInfoModel appInfoModel, final o000oOoO o000oooo, final PrepareContext prepareContext) {
        TmcAppInfoManager tmcAppInfoManager;
        if (this.OooO0oo) {
            EntryInfo entryInfoGenerateEntryInfo = MiniAppLaunch.INSTANCE.generateEntryInfo(appInfoModel);
            o000oooo.OooO00o(entryInfoGenerateEntryInfo);
            prepareContext.setEntryInfo(entryInfoGenerateEntryInfo);
        }
        final AppModel appModelGenerateAppModel = MiniAppLaunch.INSTANCE.generateAppModel(appInfoModel);
        appModelGenerateAppModel.setDevMode(prepareContext.getDevStatus());
        this.OooO0O0.updateAppModel(prepareContext.getStartContext(), appModelGenerateAppModel, str + "_pre");
        this.OooO0O0.refreshUpdateTime(prepareContext.getStartContext(), str, System.currentTimeMillis());
        o000oooo.refreshAppInfo(appModelGenerateAppModel);
        if (this.OooO0oo) {
            TmcLogger.d(this.OooO00o, "appmodel 同步更新成功");
            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "UpdateStep，enableLocked，currentAppVersion:" + appModelGenerateAppModel.getDeployVersion());
            prepareContext.setAppModel(appModelGenerateAppModel);
            return;
        }
        boolean zIsDownloaded = true;
        try {
            if (MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ENABLE_APPINFO_BACKGROUND, true) && ((tmcAppInfoManager = this.OooO0O0) == null || tmcAppInfoManager.getAppModelFromUsed(prepareContext.getStartContext(), str) == null)) {
                TmcLogger.d(this.OooO00o, "no native used version,not background download");
                return;
            }
        } catch (Throwable unused) {
        }
        TmcLogger.d(this.OooO00o, "Step_appinfo_UPDATE_后台下载新的 appinfo 包");
        Context startContext = prepareContext.getStartContext();
        try {
            if (!this.OooO0OO.isDownloaded(startContext, appModelGenerateAppModel)) {
                zIsDownloaded = com.cloud.tmc.miniapp.utils.OooOOO.OooO00o(appModelGenerateAppModel) ? this.OooO0OO.isDownloaded(startContext, appModelGenerateAppModel.getAppId(), appModelGenerateAppModel.getMainPackageUrlEncryption()) : false;
            }
        } catch (Throwable th2) {
            TmcLogger.e("UpdateStep", "", th2);
        }
        if (zIsDownloaded) {
            return;
        }
        MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
        final String miniAppVersion = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), prepareContext.getAppId()));
        final String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(appModelGenerateAppModel);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModelGenerateAppModel, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_START.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, TmcConstants.KEY_ASYNC), TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "UpdateStep:backgroundDownload:appInfo:appId:" + appModelGenerateAppModel.getAppId() + ";deployVersion:" + appModelGenerateAppModel.getDeployVersion() + ";mainPkgUrl:" + appModelGenerateAppModel.getMainPackageUrl());
        miniAppLaunch.backgroundDownZip(prepareContext.getStartContext().getApplicationContext(), appModelGenerateAppModel, 1, new Function0() { // from class: com.cloud.tmc.miniapp.prepare.steps.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UpdateStep.OooO00o(prepareContext, appModelGenerateAppModel, miniAppVersion, miniAppVersion2, o000oooo);
            }
        }, new Function3() { // from class: com.cloud.tmc.miniapp.prepare.steps.h
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return UpdateStep.OooO00o(prepareContext, appModelGenerateAppModel, miniAppVersion, miniAppVersion2, o000oooo, (String) obj, (String) obj2, (IOException) obj3);
            }
        }, new Function0() { // from class: com.cloud.tmc.miniapp.prepare.steps.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UpdateStep.OooO00o(prepareContext, appModelGenerateAppModel, miniAppVersion, miniAppVersion2);
            }
        });
    }

    public final void OooO00o(String str, String str2, boolean z10, Map<String, String> map) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.OooOOO;
            Bundle bundle = new Bundle();
            bundle.putString("request_channel", str2);
            bundle.putLong(TrackingKey.REQUEST_TIME, jCurrentTimeMillis);
            bundle.putBoolean("enable_cdn_request", this.OooOO0);
            bundle.putString("request_token", this.OooOOO0);
            bundle.putBoolean("request_status", z10);
            if (map != null) {
                String str3 = map.get("x-request-cdn");
                String str4 = map.get("x-cache");
                String str5 = map.get("x-llid");
                bundle.putString("x-request-cdn", str3);
                bundle.putString("x-cache", str4);
                bundle.putString("x-llid", str5);
                TmcLogger.d(this.OooO00o, "reportNetworkTrack->x-request-cdn:" + str3 + ",X-Cache:" + str4 + ",X-LLID:" + str5);
            }
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).recordForCommon(str, "miniapp_appinfo_network", bundle);
            TmcLogger.d(this.OooO00o, "reportNetworkTrack->request_channel:" + str2 + ",request_time:" + jCurrentTimeMillis + ",enable_cdn_request:" + this.OooOO0 + ",request_token:" + this.OooOOO0 + ",request_status:" + z10);
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, th2);
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public StepType OooO0O0() {
        return StepType.UPDATE;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x01f1  */
    @Override // com.cloud.tmc.miniapp.prepare.steps.OooO00o, com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException {
        boolean z10;
        int i11;
        if (!prepareContext.getVirtualStart()) {
            Bundle bundle = new Bundle();
            bundle.putString(ChainPoint.TYPE, "app");
            OooO0O0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, bundle, ChainPoint.CHAIN_ID);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_END, ChainPoint.CheckConfigStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.UpdateStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.AppCheckConfigStep, new Bundle());
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.AppUpdateStep, new Bundle());
            new CheckConfigStepEndState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
            new UpdateStepStartState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
            if (prepareContext.getActivity() != null) {
                OffScreenWebviewPool.INSTANCE.retryOffScreenRender(prepareContext.getActivity(), this, prepareContext);
            }
        }
        super.OooO0O0(prepareController, prepareContext, o000oooo);
        this.OooO = false;
        TmcLogger.d(this.OooO00o, "Step_UPDATE");
        String appId = prepareContext.getAppId();
        if ("2".equals(prepareContext.getDevTypeCode())) {
            AppModel appModel = new AppModel();
            try {
                appModel.setAppId(appId);
                String str = ((PathProxy) TmcProxy.get(PathProxy.class)).getIDEDevelopPath(appModel) + "/appInfo.json";
                if (str != null) {
                    appModel = MiniAppLaunch.INSTANCE.generateAppModel((AppInfoModel) JsonUtil.INSTANCE.fromJson(this.OooO0o0.readFile2String(str), AppInfoModel.class));
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
                appModel = null;
            }
            if (appModel == null) {
                prepareController.moveToError(new PrepareException("develop appModel is null"));
                return;
            }
            appModel.setDevMode(2);
            prepareContext.setAppModel(appModel);
            Bundle bundle2 = new Bundle();
            bundle2.putInt(ChainPoint.UPDATE_APP_MODE, 1);
            if (!prepareContext.getVirtualStart()) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle2);
            }
            prepareController.moveToNext();
            return;
        }
        if (prepareContext.getDevStatus()) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt(ChainPoint.UPDATE_APP_MODE, 2);
            if (!prepareContext.getVirtualStart()) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle3);
            }
            this.OooO0oo = true;
            prepareController.lock(prepareController);
            OooO00o(prepareController, prepareContext, o000oooo, (AppModel) null, appId);
            return;
        }
        long lastUpdateTime = appId != null ? this.OooO0O0.getLastUpdateTime(prepareContext.getStartContext(), appId) : 0L;
        TmcLogger.d(this.OooO00o, "Step_UPDATE_获取最近的更新时间:" + lastUpdateTime);
        long jCurrentTimeMillis = System.currentTimeMillis();
        AppModel appModel2 = prepareContext.getAppModel();
        if (appModel2 == null) {
            this.OooO0oo = true;
        } else {
            o000oooo.updateStepProgress(LoadStepAction.STEP_UPDATE_APP_INFO);
        }
        String str2 = this.OooO00o;
        StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("Step_UPDATE enableLock 状态");
        sbOooO00o.append(this.OooO0oo);
        TmcLogger.d(str2, sbOooO00o.toString());
        int configInt = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigInt(LauncherMiniAppConfigHelper.KEY_APPINFO_REFRESH_INTERVAL, 3600) * 1000;
        if (appModel2 == null || !MiniAppLaunch.INSTANCE.checkFocusUpdateMyByteApp(appModel2, 1)) {
            z10 = false;
        } else {
            TmcLogger.d(this.OooO00o, "UpdateStep_需强制更新");
            if (NetworkUtils.isConnected()) {
                this.OooO0oo = true;
                z10 = true;
            } else {
                z10 = false;
            }
        }
        if (appModel2 != null && !z10 && jCurrentTimeMillis - lastUpdateTime <= configInt && lastUpdateTime != 0) {
            StringBuilder sbOooO00o2 = com.cloud.tmc.miniapp.OooO00o.OooO00o("Step_UPDATE_数据在有效期内，appVersion：");
            sbOooO00o2.append(appModel2.getDeployVersion());
            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, sbOooO00o2.toString());
            TmcLogger.d(this.OooO00o, "Step_UPDATE_数据在有效期内");
            Bundle bundle4 = new Bundle();
            bundle4.putInt(ChainPoint.UPDATE_APP_MODE, 1);
            if (!prepareContext.getVirtualStart()) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle4);
            }
            prepareController.moveToNext();
            return;
        }
        TmcLogger.d(this.OooO00o, "Step_UPDATE_过期了:更新下");
        Bundle bundle5 = new Bundle();
        if (this.OooO0oo) {
            TmcLogger.d(this.OooO00o, "Step_UPDATE: LOCK");
            prepareController.lock(prepareController);
            i11 = 2;
        } else {
            i11 = 1;
        }
        bundle5.putInt(ChainPoint.UPDATE_APP_MODE, i11);
        if (!prepareContext.getVirtualStart()) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle5);
        }
        if (NetworkUtils.isConnected()) {
            TmcLogger.d(this.OooO00o, "Step_UPDATE: Network");
            if (prepareContext.getStartContext() == null || appId == null) {
                MiniAppLaunch.INSTANCE.reportMiniAppLauncherFailedTrack(appId, "1");
                o000oooo.killActivity();
            } else {
                if (this.OooO0oo && prepareContext.getQuickMode()) {
                    o000oooo.OooO00o(true);
                }
                String str3 = this.OooO00o;
                StringBuilder sbOooO00o3 = com.cloud.tmc.miniapp.OooO00o.OooO00o("Step_UPDATE ->是否同步加载");
                sbOooO00o3.append(this.OooO0oo);
                TmcLogger.d(str3, sbOooO00o3.toString());
                OooO00o(prepareController, prepareContext, o000oooo, appModel2, appId);
            }
        } else if (this.OooO0oo) {
            prepareController.moveToError(new PrepareException("3", "network error"));
            return;
        }
        if (this.OooO0oo) {
            return;
        }
        prepareController.moveToNext();
    }

    public final void OooO0O0(final PrepareController prepareController, final PrepareContext prepareContext, final o000oOoO o000oooo, final AppModel appModel, final String str) {
        TmcLogger.d(this.OooO00o, "Step_UPDATE_通过CDN拉取 appinfo->" + str);
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        map2.put(UrlKt.KEY_HEADER_REQUESTCHANNEL, TmcConstants.CHANNEL_REQUEST_CDN);
        map2.put(UrlKt.KEY_HEADER_REQUEST_X_LDEBUG, "1");
        ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).get(MiniAppLaunch.INSTANCE.getAppInfoCDNPath(str), map2, map, Boolean.FALSE, new TmcResponseCallback<AppInfoModel>() { // from class: com.cloud.tmc.miniapp.prepare.steps.UpdateStep.1
            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            @NonNull
            public Type getType() {
                return new TypeToken<BaseResponse<AppInfoModel>>(this) { // from class: com.cloud.tmc.miniapp.prepare.steps.UpdateStep.1.1
                }.getType();
            }

            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            public void onFail(@NonNull BaseResponse<?> baseResponse, @Nullable Map<String, String> map3) {
                TmcLogger.d(UpdateStep.this.OooO00o, "Step_UPDATE_cdn failed");
                UpdateStep.this.OooO00o(baseResponse, prepareController, appModel, prepareContext, str, TmcConstants.CHANNEL_REQUEST_CDN, map3);
            }

            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            public void onSuccess(@NonNull BaseResponse<? extends AppInfoModel> baseResponse, @Nullable Map<String, String> map3) {
                TmcLogger.d(UpdateStep.this.OooO00o, "Step_UPDATE_cdn success");
                UpdateStep.this.OooO00o(baseResponse, o000oooo, prepareController, prepareContext, str, appModel, TmcConstants.CHANNEL_REQUEST_CDN, map3);
            }
        });
    }
}
