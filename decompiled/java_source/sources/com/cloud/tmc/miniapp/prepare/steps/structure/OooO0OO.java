package com.cloud.tmc.miniapp.prepare.steps.structure;

import android.os.Bundle;
import com.cloud.tmc.integration.chain.endState.LocalDataFileScanStepEndState;
import com.cloud.tmc.integration.chain.endState.StartStepEndState;
import com.cloud.tmc.integration.chain.startState.StartStepStartState;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.model.PrepareCallbackParam;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.performance.offscreen.webview.OffScreenWebviewPool;
import com.cloud.tmc.integration.permission.proxy.AuthenticationProxy;
import com.cloud.tmc.integration.proxy.OfflineAppProxy;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.miniapp.offlineapps.ScanScene;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.StepType;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class OooO0OO extends com.cloud.tmc.miniapp.prepare.steps.OooO00o {
    public static final StepType OooO0oo = StepType.START;

    public void OooO00o(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo, PrepareCallbackParam prepareCallbackParam) {
        if (prepareContext.getQuickMode()) {
            o000oooo.OooO0O0(prepareCallbackParam, prepareController);
        } else {
            o000oooo.OooO00o(prepareCallbackParam, prepareController);
            try {
                if (prepareContext.getAppModel() != null && prepareContext.getAppModel().getLogo() != null) {
                    ((OfflineAppProxy) TmcProxy.get(OfflineAppProxy.class)).downloadIcon(prepareContext.getAppId(), prepareContext.getAppModel().getLogo());
                }
                ScanScene scanScene = ScanScene.SCAN_OPEN_APP;
                Intrinsics.h(scanScene, "scanScene");
                com.cloud.tmc.miniapp.offlineapps.scan.OooO0O0.OooO00o.OooO00o(false, scanScene, null);
            } catch (Throwable unused) {
            }
        }
        prepareController.finish();
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public StepType OooO0O0() {
        return OooO0oo;
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooO00o, com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException {
        PrepareCallbackParam prepareCallbackParamOooO0OO;
        if (!prepareContext.getVirtualStart()) {
            Bundle bundle = new Bundle();
            bundle.putString(ChainPoint.TYPE, "app");
            com.cloud.tmc.miniapp.prepare.steps.OooO0O0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, bundle, ChainPoint.CHAIN_ID);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_END, ChainPoint.LocalDataFileScanStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.StartStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.AppLocalDataFileScanStep, new Bundle());
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.AppStartStep, new Bundle());
            new LocalDataFileScanStepEndState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
            new StartStepStartState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
            if (prepareContext.getActivity() != null) {
                OffScreenWebviewPool.INSTANCE.retryOffScreenRender(prepareContext.getActivity(), this, prepareContext);
            }
        }
        super.OooO0O0(prepareController, prepareContext, o000oooo);
        if (AppPrepareUtils.INSTANCE.isShellType(prepareContext.getAppModel())) {
            TraceLog.i(this.OooO00o, "startStep 创建minishell app config");
            try {
                AppModel appModel = prepareContext.getAppModel();
                this.OooO0O0.updateAppModel(prepareContext.getStartContext(), appModel, appModel.getAppId() + "_used");
                if (appModel.getPermissions() != null) {
                    try {
                        ((AuthenticationProxy) TmcProxy.get(AuthenticationProxy.class)).setPermissionModel(appModel.getAppId(), appModel.getPermissions());
                    } catch (Throwable unused) {
                    }
                }
                AppLoadResult appLoadResult = new AppLoadResult();
                MiniAppConfigModel miniAppConfigModel = new MiniAppConfigModel();
                miniAppConfigModel.launchParams = new HashMap<>();
                ArrayList arrayList = new ArrayList();
                arrayList.add(appModel.getExtend().getH5Url());
                miniAppConfigModel.pages = arrayList;
                appLoadResult.appConfigModel = miniAppConfigModel;
                appLoadResult.appType = TmcConstants.TYPE_WEB_TINY;
                appLoadResult.appVersion = MiniAppLaunch.INSTANCE.getMiniAppVersion(appModel);
                AppModel appModel2 = new AppModel();
                appModel2.setAppId("100000");
                appModel2.setDeployVersion("0.0.0");
                appModel2.setDeveloper("0");
                appModel2.setPackageSize("0");
                appModel2.setPackageUrl("");
                appModel2.setPackageUrl_MD5("");
                appLoadResult.frameWorkModel = appModel2;
                appLoadResult.frameworkConfigModel = miniAppConfigModel;
                appLoadResult.htmlMap = new HashMap<>();
                appLoadResult.mainHtmlUrl = appModel.getExtend().getH5Url();
                prepareCallbackParamOooO0OO = new PrepareCallbackParam(prepareContext);
                prepareCallbackParamOooO0OO.appLoadResult = appLoadResult;
            } catch (Throwable unused2) {
                prepareCallbackParamOooO0OO = null;
            }
        } else {
            prepareCallbackParamOooO0OO = OooO0OO(prepareController, prepareContext, o000oooo);
        }
        if (prepareCallbackParamOooO0OO == null) {
            prepareController.moveToError(new PrepareException(PrepareException.ERROR_MANIFEST_INFO, "create PrepareCallbackParam fail"));
            return;
        }
        if (!prepareContext.getVirtualStart()) {
            Bundle bundle2 = new Bundle();
            bundle2.putString(ChainPoint.TYPE, "app");
            com.cloud.tmc.miniapp.prepare.steps.OooO0O0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, bundle2, ChainPoint.CHAIN_ID);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_END, ChainPoint.StartStep, bundle2);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.AppStartStep, new Bundle());
            new StartStepEndState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
        }
        OooO00o(prepareController, prepareContext, o000oooo, prepareCallbackParamOooO0OO);
    }

    public abstract PrepareCallbackParam OooO0OO(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo);
}
