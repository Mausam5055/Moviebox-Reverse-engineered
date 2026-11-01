package com.cloud.tmc.miniapp.task;

import com.cloud.tmc.offline.download.model.TaskResult;
import com.cloud.tmc.offline.download.task.base.BaseTask;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o extends BaseTask {
    public final String OooO00o;
    public final Runnable OooO0O0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OooO00o(String uniqueId, Runnable execute) {
        super("NormalTask", 0L, 2, null);
        Intrinsics.h(uniqueId, "uniqueId");
        Intrinsics.h(execute, "execute");
        this.OooO00o = uniqueId;
        this.OooO0O0 = execute;
    }

    @Override // com.cloud.tmc.offline.download.task.base.ITask
    public String getTrigger() {
        return "normal";
    }

    @Override // com.cloud.tmc.offline.download.task.base.ITask
    public void run(Function1<? super TaskResult<?>, Unit> function1) {
        this.OooO0O0.run();
    }
}
