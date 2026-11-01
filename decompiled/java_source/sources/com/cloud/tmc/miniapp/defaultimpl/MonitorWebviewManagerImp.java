package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.render.IMonitorWebviewManagerProxy;
import com.cloud.tmc.render.MonitorWebviewListener;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class MonitorWebviewManagerImp implements IMonitorWebviewManagerProxy {
    public final List<MonitorWebviewListener> OooO00o = new ArrayList();

    @Override // com.cloud.tmc.render.IMonitorWebviewManagerProxy
    public void registerMonitorListener(MonitorWebviewListener listener) {
        Intrinsics.h(listener, "listener");
        if (this.OooO00o.contains(listener)) {
            return;
        }
        this.OooO00o.add(listener);
    }

    @Override // com.cloud.tmc.render.IMonitorWebviewManagerProxy
    public void reportDomLoadTime(int i11, String uniqueId) {
        Intrinsics.h(uniqueId, "uniqueId");
        try {
            for (MonitorWebviewListener monitorWebviewListener : this.OooO00o) {
                if (Intrinsics.c(String.valueOf(monitorWebviewListener.hashCode()), uniqueId)) {
                    monitorWebviewListener.reportDomLoadTime(i11, uniqueId);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.tmc.render.IMonitorWebviewManagerProxy
    public void unRegisterMonitorListener(MonitorWebviewListener listener) {
        Intrinsics.h(listener, "listener");
        if (this.OooO00o.contains(listener)) {
            this.OooO00o.remove(listener);
        }
    }
}
