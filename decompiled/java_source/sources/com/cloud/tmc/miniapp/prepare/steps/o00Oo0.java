package com.cloud.tmc.miniapp.prepare.steps;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.chain.startState.SetupStepStartState;
import com.cloud.tmc.integration.model.AppInfoQuery;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.EntryInfo;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool;
import com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceImprovesProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.offline.download.OfflineManager;

/* JADX INFO: loaded from: classes3.dex */
public class o00Oo0 extends OooO00o {
    @Nullable
    public final AppModel OooO00o(PrepareContext prepareContext) {
        AppModel appModel = this.OooO0O0.getAppModel(prepareContext.getStartContext(), prepareContext.getAppInfoQuery());
        if (appModel == null) {
            return null;
        }
        String str = this.OooO00o;
        StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("Step_SETUP_获取AppModel");
        sbOooO00o.append(appModel.getFromCacheType());
        TmcLogger.d(str, sbOooO00o.toString());
        if (appModel.getFromCacheType() == 3 || appModel.getFromCacheType() == 5 || appModel.getFromCacheType() == 6) {
            MiniAppLaunch.INSTANCE.buildDownloadPath(appModel);
        }
        prepareContext.setAppModel(appModel);
        return appModel;
    }

    public final void OooO00o(PrepareContext prepareContext, o000oOoO o000oooo, AppModel appModel) {
        EntryInfo entryInfo = new EntryInfo();
        entryInfo.appId = appModel.getAppId();
        entryInfo.desc = appModel.getDesc();
        entryInfo.iconUrl = appModel.getLogo();
        entryInfo.title = appModel.getName();
        entryInfo.desc = appModel.getDesc();
        entryInfo.slogan = appModel.getSlogan();
        entryInfo.developer = appModel.getDeveloper();
        o000oooo.OooO00o(entryInfo);
        prepareContext.setEntryInfo(entryInfo);
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public StepType OooO0O0() {
        return StepType.SETUP;
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooO00o, com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException {
        if (!prepareContext.getVirtualStart()) {
            ((PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class)).resetPerformanceImproves(prepareContext.getAppId());
            Bundle bundle = new Bundle();
            bundle.putString(ChainPoint.TYPE, "app");
            OooO0O0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, bundle, ChainPoint.CHAIN_ID);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.SetupStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.AppSetupStep, new Bundle());
            bundle.putString(ChainPoint.CHAIN_APP_ID, prepareContext.getAppId());
            OooO0O0.OooO00o(prepareContext, "scene_id", "100000", bundle, ChainPoint.CHAIN_SCENE);
            bundle.putString(ChainPoint.CHAIN_OPEN_CHANNEL, "0");
            new SetupStepStartState(bundle).setChainContext(prepareContext.getAppChainContext());
            OfflineManager.prePullFeaturedAppInfo();
        }
        super.OooO0O0(prepareController, prepareContext, o000oooo);
        if (!prepareContext.getVirtualStart()) {
            ((IInnerRenderPool) TmcProxy.get(IInnerRenderPool.class)).createRender(false);
            ((IInnerWorkerPool) TmcProxy.get(IInnerWorkerPool.class)).createWorker(false);
        }
        try {
            TmcLogger.d(this.OooO00o, "Step_SETUP");
            o000oooo.updateStepProgress(LoadStepAction.STEP_START_LOADING);
            String appId = prepareContext.getAppId();
            TmcLogger.d(this.OooO00o, "Step_SETUP_获取APPID:" + appId);
            prepareContext.setAppInfoQuery(new AppInfoQuery(appId));
            TmcLogger.d(this.OooO00o, "Step_SETUP_设置AppInfoQuery");
            try {
                OfflineManager.downloadPkgFromPlatform(prepareContext.getStartContext().getPackageName());
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, "", th2);
            }
            TmcLogger.d(this.OooO00o, "Step_SETUP：获取 appmodel");
            if (prepareContext.getDevStatus()) {
                TmcLogger.d(this.OooO00o, "Step_SETUP：debug 模式");
                o000oooo.OooO00o(true);
                prepareController.moveToNext();
                return;
            }
            AppModel appModelOooO00o = OooO00o(prepareContext);
            if (appModelOooO00o == null) {
                TmcLogger.d(this.OooO00o, "Step_SETUP：appmodel 为空");
                o000oooo.OooO00o(true);
                prepareController.moveToNext();
            } else {
                o000oooo.showTaskDescription(appModelOooO00o.getName(), appModelOooO00o.getLogo());
                o000oooo.OooO00o(true);
                OooO00o(prepareContext, o000oooo, appModelOooO00o);
                prepareController.moveToNext();
            }
        } catch (Exception e11) {
            prepareController.moveToError(new PrepareException("1", e11.getMessage()));
        }
    }
}
