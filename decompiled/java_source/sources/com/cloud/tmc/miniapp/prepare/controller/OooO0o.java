package com.cloud.tmc.miniapp.prepare.controller;

import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.miniapp.prepare.steps.OooOOO;
import com.cloud.tmc.miniapp.prepare.steps.OooOOO0;
import com.cloud.tmc.miniapp.prepare.steps.OooOOOO;
import com.cloud.tmc.miniapp.prepare.steps.OooOo00;
import com.cloud.tmc.miniapp.prepare.steps.Oooo000;
import com.cloud.tmc.miniapp.prepare.steps.UpdateStep;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.miniapp.prepare.steps.o00Oo0;
import com.cloud.tmc.miniapp.prepare.steps.oo000o;
import java.util.ArrayList;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0o extends BasePrepareController {
    public OooO0o(PrepareContext prepareContext, o000oOoO o000oooo, int i11, String str) {
        if (i11 == 1) {
            ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(4);
            this.steps = arrayBlockingQueue;
            arrayBlockingQueue.add(new com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO0OO(str, 2));
            this.steps.add(new com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO0O0(str, 2));
            this.steps.add(new Oooo000());
            this.steps.add(new com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO0o(str, 2));
        } else if (i11 == 2) {
            ArrayBlockingQueue arrayBlockingQueue2 = new ArrayBlockingQueue(4);
            this.steps = arrayBlockingQueue2;
            arrayBlockingQueue2.add(new com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO0OO(str, null, 2));
            this.steps.add(new com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO0O0(str, null, 2));
            this.steps.add(new Oooo000());
            this.steps.add(new com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO0o(str, null, 2));
        } else if (i11 != 3) {
            ArrayBlockingQueue arrayBlockingQueue3 = new ArrayBlockingQueue(12);
            this.steps = arrayBlockingQueue3;
            arrayBlockingQueue3.add(new o00Oo0());
            this.steps.add(new com.cloud.tmc.miniapp.prepare.steps.OooO0OO());
            this.steps.add(new UpdateStep());
            this.steps.add(new oo000o());
            this.steps.add(new OooOOO());
            this.steps.add(new OooOOO0());
            this.steps.add(new OooOOOO());
            this.steps.add(new OooOo00());
            this.steps.add(new com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO0OO(str, null, 2));
            this.steps.add(new com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO0O0(str, null, 2));
            this.steps.add(new Oooo000());
            this.steps.add(new com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO0o(str, null, 2));
        } else {
            ArrayBlockingQueue arrayBlockingQueue4 = new ArrayBlockingQueue(3);
            this.steps = arrayBlockingQueue4;
            arrayBlockingQueue4.add(new com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO0OO(str, 3));
            this.steps.add(new com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO0O0(str, 3));
            this.steps.add(new Oooo000());
        }
        bindContext(prepareContext, o000oooo);
        setInterceptors(new ArrayList());
    }
}
