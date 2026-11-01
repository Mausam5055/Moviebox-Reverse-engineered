package com.cloud.tmc.miniapp.prepare.steps;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.chain.endState.UpdateStepEndState;
import com.cloud.tmc.integration.chain.startState.FwResInfoUpdateStepStartState;
import com.cloud.tmc.integration.model.AppInfoModel;
import com.cloud.tmc.integration.model.AppInfoQuery;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.net.BaseResponse;
import com.cloud.tmc.integration.net.TmcResponseCallback;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.integration.performance.offscreen.webview.OffScreenWebviewPool;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.GlobalPackageConfig;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.google.gson.reflect.TypeToken;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes3.dex */
public class OooOOO extends OooO00o {
    public boolean OooO0oo = false;

    public static /* synthetic */ Unit OooO00o(PrepareContext prepareContext, String str, String str2) {
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_SUCCESS.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, TmcConstants.KEY_ASYNC).putData(TmcConstants.TRACK_MPU_APPID, "100000").putData(TmcConstants.TRACK_MPU_OLD_V, str).putData(TmcConstants.TRACK_MPU_NEW_V, str2), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        return null;
    }

    public static /* synthetic */ Unit OooO00o(PrepareContext prepareContext, String str, String str2, String str3, String str4, IOException iOException) {
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_FAILED.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, TmcConstants.KEY_ASYNC).putData(TmcConstants.TRACK_MPU_APPID, "100000").putData(TmcConstants.TRACK_MPU_OLD_V, str).putData(TmcConstants.TRACK_MPU_NEW_V, str2).putData(TmcConstants.TRACK_MPU_RESULT, iOException.getClass().getSimpleName()).putData(TmcConstants.TRACK_MPU_ERROR_CODE, str3).putData(TmcConstants.TRACK_MPU_ERROR_MSG, iOException.getMessage()), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        return null;
    }

    public static /* synthetic */ Unit OooO0O0(PrepareContext prepareContext, String str, String str2) {
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_USER_EXIT.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, TmcConstants.KEY_ASYNC).putData(TmcConstants.TRACK_MPU_APPID, "100000").putData(TmcConstants.TRACK_MPU_OLD_V, str).putData(TmcConstants.TRACK_MPU_NEW_V, str2).putData(TmcConstants.TRACK_MPU_RESULT, "IOException").putData(TmcConstants.TRACK_MPU_ERROR_CODE, "D006").putData(TmcConstants.TRACK_MPU_ERROR_MSG, "Canceled"), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        return null;
    }

    public final void OooO00o(AppInfoModel appInfoModel, AppModel appModel, final PrepareContext prepareContext, PrepareController prepareController) {
        TmcAppInfoManager tmcAppInfoManager;
        boolean zCheckFwVersionUpdate = appModel != null ? MiniAppLaunch.INSTANCE.checkFwVersionUpdate(appModel.getDeployVersion(), appInfoModel.getDeployVersion()) : true;
        AppModel appModelGenerateAppModel = MiniAppLaunch.INSTANCE.generateAppModel(appInfoModel);
        if (this.OooO0oo) {
            TmcLogger.d(this.OooO00o, "Step_FRAMEWORK_UPDATE_网络请求刷新FrameWorkModel");
            prepareContext.setFrameWorkModel(appModelGenerateAppModel);
        }
        if (this.OooO0oo || zCheckFwVersionUpdate) {
            this.OooO0O0.updateAppModel(prepareContext.getStartContext(), appModelGenerateAppModel, appModelGenerateAppModel.getAppId() + "_pre");
        }
        this.OooO0O0.refreshUpdateTime(prepareContext.getStartContext(), "100000", System.currentTimeMillis());
        if (this.OooO0oo) {
            TmcLogger.d(this.OooO00o, "Step_FRAMEWORK_UPDATE_网络请求刷新同步解锁");
            prepareController.unlock(prepareController);
        }
        TmcLogger.d(this.OooO00o, "STEP_FRAMEWORK_UPDATE_数据更新成功");
        String str = this.OooO00o;
        StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("STEP_FRAMEWORK_UPDATE_");
        sbOooO00o.append(this.OooO0oo);
        TmcLogger.d(str, sbOooO00o.toString());
        if (this.OooO0oo) {
            TmcLogger.d(this.OooO00o, "Step_FRAMEWORK_UPDATE_网络请求刷新同步跳转");
            prepareController.moveToNext();
            return;
        }
        if (zCheckFwVersionUpdate && !this.OooO0OO.isDownloaded(prepareContext.getStartContext(), appModelGenerateAppModel)) {
            try {
                if (MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ENABLE_APPINFO_BACKGROUND, true) && ((tmcAppInfoManager = this.OooO0O0) == null || tmcAppInfoManager.getAppModelFromUsed(prepareContext.getStartContext(), "100000") == null)) {
                    TmcLogger.d(this.OooO00o, "no native used version,not background download");
                    return;
                }
            } catch (Throwable unused) {
            }
            TmcLogger.d(this.OooO00o, "Step_FRAMEWORK_UPDATE_后台下载新的 fw 包");
            MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
            if (miniAppLaunch.checkShowDownloadTips(appModelGenerateAppModel.getPackageSize())) {
                return;
            }
            final String miniAppVersion = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), "100000"));
            final String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), "100000"));
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_START.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, TmcConstants.KEY_ASYNC).putData(TmcConstants.TRACK_MPU_APPID, "100000").putData(TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
            miniAppLaunch.backgroundDownZip(prepareContext.getStartContext().getApplicationContext(), appModelGenerateAppModel, 1, new Function0() { // from class: com.cloud.tmc.miniapp.prepare.steps.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return OooOOO.OooO00o(prepareContext, miniAppVersion, miniAppVersion2);
                }
            }, new Function3() { // from class: com.cloud.tmc.miniapp.prepare.steps.b
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return OooOOO.OooO00o(prepareContext, miniAppVersion, miniAppVersion2, (String) obj, (String) obj2, (IOException) obj3);
                }
            }, new Function0() { // from class: com.cloud.tmc.miniapp.prepare.steps.c
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return OooOOO.OooO0O0(prepareContext, miniAppVersion, miniAppVersion2);
                }
            });
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public StepType OooO0O0() {
        return StepType.FW_UPDATE;
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooO00o, com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO0O0(final PrepareController prepareController, final PrepareContext prepareContext, final o000oOoO o000oooo) throws PrepareException {
        boolean z10;
        int i11;
        AppModel appModelFromDev;
        if (!prepareContext.getVirtualStart()) {
            Bundle bundle = new Bundle();
            bundle.putString(ChainPoint.TYPE, "app");
            OooO0O0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, bundle, ChainPoint.CHAIN_ID);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_END, ChainPoint.UpdateStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.FwResInfoUpdateStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.AppUpdateStep, new Bundle());
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.AppFwResInfoUpdateStep, new Bundle());
            new UpdateStepEndState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
            new FwResInfoUpdateStepStartState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
            if (prepareContext.getActivity() != null) {
                OffScreenWebviewPool.INSTANCE.retryOffScreenRender(prepareContext.getActivity(), this, prepareContext);
            }
        }
        if (AppPrepareUtils.INSTANCE.isShellType(prepareContext.getAppModel())) {
            prepareController.moveToNext();
            Bundle bundle2 = new Bundle();
            bundle2.putInt(ChainPoint.UPDATE_FRAMEWORK_MODE, 1);
            if (prepareContext.getVirtualStart()) {
                return;
            }
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle2);
            return;
        }
        super.OooO0O0(prepareController, prepareContext, o000oooo);
        TmcLogger.d(this.OooO00o, "Step_FW_UPDATE");
        prepareContext.setAppInfoQuery(new AppInfoQuery("100000"));
        if (AppDynamicBuildConfig.getDEV_MODE() && (appModelFromDev = this.OooO0O0.getAppModelFromDev(prepareContext.getStartContext(), "100000")) != null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt(ChainPoint.UPDATE_FRAMEWORK_MODE, 1);
            if (!prepareContext.getVirtualStart()) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle3);
            }
            prepareContext.setFrameWorkModel(appModelFromDev);
            prepareController.moveToNext();
            return;
        }
        long lastUpdateTime = this.OooO0O0.getLastUpdateTime(prepareContext.getStartContext(), "100000");
        TmcLogger.d(this.OooO00o, "Step_FW_UPDATE_获取最近的更新时间:" + lastUpdateTime);
        long jCurrentTimeMillis = System.currentTimeMillis();
        final AppModel appModel = this.OooO0O0.getAppModel(prepareContext.getStartContext(), prepareContext.getAppInfoQuery());
        if (appModel == null) {
            this.OooO0oo = true;
        } else {
            if (appModel.getFromCacheType() == 3 || appModel.getFromCacheType() == 4) {
                MiniAppLaunch.INSTANCE.buildDownloadPath(appModel);
            }
            prepareContext.setFrameWorkModel(appModel);
        }
        TmcLogger.d(this.OooO00o, "Step_FW_UPDATE:检查fwModel" + appModel);
        String lowestSupportVersion = prepareContext.getAppModel().getLowestSupportVersion();
        if (appModel != null) {
            if (TextUtils.isEmpty(lowestSupportVersion)) {
                lowestSupportVersion = "";
            }
            MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
            String miniAppVersion = miniAppLaunch.getMiniAppVersion(appModel);
            if (TextUtils.isEmpty(miniAppVersion)) {
                miniAppVersion = "";
            }
            boolean zCompareVersion = miniAppLaunch.compareVersion(lowestSupportVersion, miniAppVersion);
            if (zCompareVersion) {
                TmcLogger.d(this.OooO00o, "focuseUpdate->" + lowestSupportVersion + "deployVersion->" + miniAppVersion);
                o000oooo.OooO00o(true);
                this.OooO0oo = true;
            }
            z10 = zCompareVersion;
        } else {
            z10 = false;
        }
        int configInt = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigInt(LauncherMiniAppConfigHelper.KEY_FW_REFRESH_INTERVAL, 3600) * 1000;
        if (appModel != null && jCurrentTimeMillis - lastUpdateTime <= configInt && lastUpdateTime != 0 && !z10) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt(ChainPoint.UPDATE_FRAMEWORK_MODE, 1);
            if (!prepareContext.getVirtualStart()) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle4);
            }
            prepareContext.setFrameWorkModel(appModel);
            TmcLogger.d(this.OooO00o, "STEP_FRAMEWORK_UPDATE_数据在有效期内");
            prepareController.moveToNext();
            return;
        }
        Bundle bundle5 = new Bundle();
        TmcLogger.d(this.OooO00o, "Step_FW_UPDATE: updateFrameWorkInfo 更新数据");
        if (this.OooO0oo) {
            TmcLogger.d(this.OooO00o, "Step_FW_UPDATE:LOCK");
            prepareController.lock(prepareController);
            i11 = 2;
        } else {
            i11 = 1;
        }
        bundle5.putInt(ChainPoint.UPDATE_FRAMEWORK_MODE, i11);
        if (!prepareContext.getVirtualStart()) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle5);
        }
        if (NetworkUtils.isConnected()) {
            HashMap map = new HashMap();
            map.put("appId", "100000");
            map.put(UrlKt.KEY_QUERY_FRAMEVERSIONPREFIX, MiniAppLaunch.INSTANCE.getVersionPrefix(GlobalPackageConfig.Companion.getSDK_DEV_VERSION()));
            ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).postJson(UrlKt.getURL_FW_INFO_QUERY(), new HashMap(), null, map, Boolean.TRUE, new TmcResponseCallback<AppInfoModel>() { // from class: com.cloud.tmc.miniapp.prepare.steps.FwResInfoUpdateStep$1
                @Override // com.cloud.tmc.integration.net.TmcResponseCallback
                @NonNull
                public Type getType() {
                    return new TypeToken<BaseResponse<AppInfoModel>>(this) { // from class: com.cloud.tmc.miniapp.prepare.steps.FwResInfoUpdateStep$1.1
                    }.getType();
                }

                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                @Override // com.cloud.tmc.integration.net.TmcResponseCallback
                public void onFail(@NonNull BaseResponse<?> baseResponse, @Nullable Map<String, String> map2) {
                    TmcLogger.d(this.OooO0o0.OooO00o, "Step_FRAMEWORK_UPDATE_数据更新失败");
                    if (this.OooO0o0.OooO0oo) {
                        PrepareController prepareController2 = prepareController;
                        prepareController2.unlock(prepareController2);
                    }
                    AppModel appModel2 = appModel;
                    if (appModel2 == null) {
                        prepareController.moveToError(MiniAppLaunch.showUpdateStepErrorMsg("100000", baseResponse.getCode(), baseResponse.getMessage()));
                        return;
                    }
                    prepareContext.setFrameWorkModel(appModel2);
                    OooOOO oooOOO = this.OooO0o0;
                    if (oooOOO.OooO0oo) {
                        TmcLogger.d(oooOOO.OooO00o, "Step_FRAMEWORK_UPDATE_同步跳转");
                        prepareController.moveToNext();
                    }
                }

                @Override // com.cloud.tmc.integration.net.TmcResponseCallback
                public void onSuccess(@NonNull BaseResponse<? extends AppInfoModel> baseResponse, @Nullable Map<String, String> map2) {
                    AppInfoModel data = baseResponse.getData();
                    if (data == null) {
                        return;
                    }
                    if (TextUtils.isEmpty(data.getAppId())) {
                        onFail(new BaseResponse<>(), null);
                    } else {
                        this.OooO0o0.OooO00o(data, appModel, prepareContext, prepareController);
                    }
                }
            });
        } else if (this.OooO0oo) {
            prepareController.moveToError(new PrepareException("3", "network error"));
            return;
        }
        if (this.OooO0oo) {
            return;
        }
        TmcLogger.d(this.OooO00o, "Step_FW_UPDATE:UNLOCK 跳转到下一流程");
        prepareController.moveToNext();
    }
}
