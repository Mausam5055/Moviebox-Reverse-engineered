package com.cloud.tmc.miniapp.prepare.controller;

import androidx.annotation.NonNull;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.performance.WarmupType;
import com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool;
import com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.miniapp.prepare.steps.o0OOO0o;
import com.cloud.tmc.miniapp.prepare.steps.o0ooOOo;
import java.util.ArrayList;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: loaded from: classes3.dex */
public class OooO00o extends BasePrepareController {
    public OooO00o(PrepareContext prepareContext, o000oOoO o000oooo) {
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(2);
        this.steps = arrayBlockingQueue;
        arrayBlockingQueue.add(new o0ooOOo());
        this.steps.add(new o0OOO0o());
        bindContext(prepareContext, o000oooo);
        setInterceptors(new ArrayList());
    }

    @Override // com.cloud.tmc.miniapp.prepare.controller.BasePrepareController, com.cloud.tmc.miniapp.prepare.controller.PrepareController
    public void moveToError(PrepareException prepareException) {
        super.moveToError(prepareException);
        int i11 = this.context.getStartParams().getInt("warmupType");
        if (i11 != WarmupType.NORMAL_WORKER.getType() && i11 != WarmupType.NORMAL_RENDER.getType()) {
            if (i11 == WarmupType.INNER_WORKER.getType()) {
                ((IInnerWorkerPool) TmcProxy.get(IInnerWorkerPool.class)).preWarmupWorkerFail();
            } else if (i11 == WarmupType.INNER_RENNDER.getType()) {
                ((IInnerRenderPool) TmcProxy.get(IInnerRenderPool.class)).preWarmupRenderFail();
            }
        }
        o000oOoO o000oooo = this.callback;
        if (o000oooo != null) {
            o000oooo.OooO00o(this.context.getPrepareData(), prepareException);
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.controller.BasePrepareController
    public void onGetAppInfo(@NonNull AppModel appModel) {
        super.onGetAppInfo(appModel);
    }
}
