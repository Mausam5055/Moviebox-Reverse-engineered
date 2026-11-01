package com.cloud.tmc.miniapp.prepare.steps;

import android.os.Bundle;
import com.cloud.tmc.integration.chain.endState.SetupStepEndState;
import com.cloud.tmc.integration.chain.startState.CheckConfigStepStartState;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.performance.offscreen.webview.OffScreenWebviewPool;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniutils.util.NetworkUtils;

/* JADX INFO: loaded from: classes3.dex */
public class OooO0OO extends OooO00o {
    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public StepType OooO0O0() {
        return StepType.CHECK_CONFIG;
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooO00o, com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException {
        if (!prepareContext.getVirtualStart()) {
            Bundle bundle = new Bundle();
            bundle.putString(ChainPoint.TYPE, "app");
            OooO0O0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, bundle, ChainPoint.CHAIN_ID);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_END, ChainPoint.SetupStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.CheckConfigStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.AppSetupStep, new Bundle());
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.AppCheckConfigStep, new Bundle());
            new SetupStepEndState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
            new CheckConfigStepStartState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
            if (prepareContext.getActivity() != null) {
                OffScreenWebviewPool.INSTANCE.retryOffScreenRender(prepareContext.getActivity(), this, prepareContext);
            }
        }
        super.OooO0O0(prepareController, prepareContext, o000oooo);
        TmcLogger.d(this.OooO00o, "Step_CHECK_CONFIG_开始");
        if (((ConfigService) TmcProxy.get(ConfigService.class)).getConfigBoolean(LauncherMiniAppConfigHelper.KEY_UPDATE_CONFIG_BY_LAUNCH, true) && NetworkUtils.isConnected()) {
            TmcLogger.d(this.OooO00o, "Step_CHECK_CONFIG_网络连接正常，开始更新config");
            ((ConfigService) TmcProxy.get(ConfigService.class)).loadService(prepareContext.getStartContext().getApplicationContext());
        }
        boolean configBoolean = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigBoolean(LauncherMiniAppConfigHelper.KEY_CLOSE_MINI_APP_SDK, false);
        TmcLogger.e(this.OooO00o, "app  check config, closeSDK = " + configBoolean);
        if (configBoolean) {
            prepareController.moveToError(MiniAppLaunch.showUpdateStepErrorMsg(prepareContext.getAppId(), 9, "miniapp close"));
        }
        TmcLogger.d(this.OooO00o, "Step_CHECK_CONFIG_结束");
    }
}
