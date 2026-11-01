package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.integration.proxy.ITaskQueueProxy;
import com.cloud.tmc.kernel.log.TmcLogger;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class TaskQueueProxyImpl implements ITaskQueueProxy {
    public static final void OooO00o(Function0 function0) {
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // com.cloud.tmc.integration.proxy.ITaskQueueProxy
    public void addAppTask(String uniqueId, final Function0<Unit> function0) {
        Intrinsics.h(uniqueId, "uniqueId");
        com.cloud.tmc.miniapp.utils.OooO oooO = com.cloud.tmc.miniapp.utils.OooO.OooO00o;
        com.cloud.tmc.miniapp.task.OooO00o task = new com.cloud.tmc.miniapp.task.OooO00o(uniqueId, new Runnable() { // from class: com.cloud.tmc.miniapp.defaultimpl.l
            @Override // java.lang.Runnable
            public final void run() {
                TaskQueueProxyImpl.OooO00o(function0);
            }
        });
        Intrinsics.h(task, "task");
        try {
            oooO.OooO00o().OooO00o(task);
        } catch (Throwable th2) {
            TmcLogger.e("NormalTaskQueueUtils", "", th2);
        }
    }
}
