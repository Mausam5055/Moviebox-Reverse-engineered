package com.cloud.tmc.miniapp.prepare.controller;

import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.UpdateStep;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.miniapp.prepare.steps.o00O0O;
import com.cloud.tmc.miniapp.prepare.steps.o00Oo0;
import com.cloud.tmc.miniapp.prepare.steps.oo000o;
import java.util.ArrayList;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: loaded from: classes3.dex */
public class OooO0OO extends BasePrepareController {
    public OooO0OO(PrepareContext prepareContext, o000oOoO o000oooo) {
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(5);
        this.steps = arrayBlockingQueue;
        arrayBlockingQueue.add(new o00Oo0());
        this.steps.add(new com.cloud.tmc.miniapp.prepare.steps.OooO0o());
        this.steps.add(new UpdateStep());
        this.steps.add(new oo000o());
        this.steps.add(new o00O0O());
        bindContext(prepareContext, o000oooo);
        setInterceptors(new ArrayList());
    }

    @Override // com.cloud.tmc.miniapp.prepare.controller.BasePrepareController, com.cloud.tmc.miniapp.prepare.controller.PrepareController
    public void moveToError(PrepareException prepareException) {
        super.moveToError(prepareException);
    }
}
