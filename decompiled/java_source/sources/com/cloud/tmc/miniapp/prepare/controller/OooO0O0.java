package com.cloud.tmc.miniapp.prepare.controller;

import androidx.annotation.NonNull;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class OooO0O0 extends BasePrepareController {
    public OooO0O0(PrepareContext prepareContext, o000oOoO o000oooo) {
        new AtomicBoolean(true);
        bindContext(prepareContext, o000oooo);
        setInterceptors(new ArrayList());
    }

    @Override // com.cloud.tmc.miniapp.prepare.controller.BasePrepareController, com.cloud.tmc.miniapp.prepare.controller.PrepareController
    public void moveToError(PrepareException prepareException) {
        super.moveToError(prepareException);
    }

    @Override // com.cloud.tmc.miniapp.prepare.controller.BasePrepareController
    public void onGetAppInfo(@NonNull AppModel appModel) {
        super.onGetAppInfo(appModel);
    }
}
