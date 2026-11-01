package com.cloud.tmc.miniapp.prepare.steps;

import com.cloud.tmc.integration.model.AppInfoQuery;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniutils.util.FileUtils;

/* JADX INFO: loaded from: classes3.dex */
public class o0ooOOo extends OooO00o {
    public final void OooO00o(PrepareController prepareController, String str) {
        if (prepareController != null) {
            prepareController.moveToError(new PrepareException(str));
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public StepType OooO0O0() {
        return StepType.WARMUP_CHECK;
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooO00o, com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException {
        super.OooO0O0(prepareController, prepareContext, o000oooo);
        prepareContext.setAppInfoQuery(new AppInfoQuery("100000"));
        TmcAppInfoManager tmcAppInfoManager = this.OooO0O0;
        if (tmcAppInfoManager == null) {
            OooO00o(prepareController, "appInfoManager不能为空");
            return;
        }
        AppModel appModelFromUsed = tmcAppInfoManager.getAppModelFromUsed(prepareContext.getStartContext(), "100000");
        if (appModelFromUsed == null) {
            OooO00o(prepareController, "框架包AppModel不能为空");
            return;
        }
        prepareContext.setFrameWorkModel(appModelFromUsed);
        if (FileUtils.isFileExists(this.OooO0Oo.getTarUnCompressPath(appModelFromUsed))) {
            prepareController.moveToNext();
        } else {
            OooO00o(prepareController, "本地不存在框架包文件");
        }
    }
}
