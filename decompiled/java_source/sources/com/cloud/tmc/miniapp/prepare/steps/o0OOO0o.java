package com.cloud.tmc.miniapp.prepare.steps;

import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.model.PrepareCallbackParam;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.utils.JsonUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.resource.IPackageResourceManager;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class o0OOO0o extends OooO00o {
    public final void OooO00o(AppModel appModel, List<File> list, Map<String, String> map, HashMap<String, String> map2, IPackageResourceManager iPackageResourceManager, String str) {
        if (list != null) {
            for (File file : list) {
                if (file.isDirectory()) {
                    OooO00o(appModel, Arrays.asList(file.listFiles()), map, map2, iPackageResourceManager, str + "/" + file.getName());
                } else {
                    String strGenerateVUrl = iPackageResourceManager.generateVUrl(file.getAbsolutePath(), appModel.getAppId(), file.getName(), str);
                    StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("WarmupStep:absPath:");
                    sbOooO00o.append(file.getAbsolutePath());
                    sbOooO00o.append(";vUrl:");
                    sbOooO00o.append(strGenerateVUrl);
                    TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, sbOooO00o.toString());
                    map.put(file.getName(), strGenerateVUrl);
                    if (file.getName().toLowerCase().contains(".html")) {
                        map2.put(file.getName(), strGenerateVUrl);
                    }
                    String str2 = this.OooO00o;
                    StringBuilder sbOooO00o2 = com.cloud.tmc.miniapp.OooO00o.OooO00o("Step_WarmupStep: tar包结构: ");
                    sbOooO00o2.append(file.getName());
                    TmcLogger.d(str2, sbOooO00o2.toString());
                    TmcLogger.d(this.OooO00o, "Step_WarmupStep: tar包结构: " + strGenerateVUrl);
                }
            }
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public StepType OooO0O0() {
        return StepType.WARMUP;
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooO00o, com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException {
        super.OooO0O0(prepareController, prepareContext, o000oooo);
        new HashMap();
        HashMap map = new HashMap();
        HashMap<String, String> map2 = new HashMap<>();
        IPackageResourceManager iPackageResourceManager = (IPackageResourceManager) TmcProxy.get(IPackageResourceManager.class);
        try {
            OooO00o(prepareContext.getFrameWorkModel(), this.OooO0o0.listFilesInDir(prepareContext.getFrameWorkModel()), map, map2, iPackageResourceManager, "");
        } catch (Exception unused) {
            prepareController.moveToError(new PrepareException(PrepareException.ERROR_WARMUP_DOWNLOAD_EXCEPTION, "framework zip error"));
            TmcLogger.d(this.OooO00o, "请先下载框架包资源文件：");
        }
        AppLoadResult appLoadResult = new AppLoadResult();
        appLoadResult.mainHtmlUrl = FrameworkConstants.TEMPLATE_URL;
        try {
            String str = (String) map.get("appConfig.json");
            if (str != null) {
                appLoadResult.frameworkConfigModel = (MiniAppConfigModel) JsonUtil.INSTANCE.fromJson(this.OooO0o0.readFile2String(iPackageResourceManager.getFilePath("100000", str)), MiniAppConfigModel.class);
            }
        } catch (Exception unused2) {
            prepareController.moveToError(new PrepareException(PrepareException.ERROR_MANIFEST_INFO, "frameworkConfig.json error"));
            TmcLogger.d(this.OooO00o, "frameworkConfig 不存在：");
        }
        appLoadResult.htmlMap = map2;
        appLoadResult.appType = TmcConstants.TYPE_WEB_TINY;
        PrepareCallbackParam prepareCallbackParam = new PrepareCallbackParam(prepareContext);
        prepareCallbackParam.appLoadResult = appLoadResult;
        if (prepareContext.getFrameWorkModel() != null) {
            prepareCallbackParam.setFrameworkVersion(MiniAppLaunch.INSTANCE.getMiniAppVersion(prepareContext.getFrameWorkModel()));
        }
        o000oooo.OooO00o(prepareCallbackParam, prepareContext.getStartParams().getInt("warmupType"));
        prepareController.finish();
    }
}
