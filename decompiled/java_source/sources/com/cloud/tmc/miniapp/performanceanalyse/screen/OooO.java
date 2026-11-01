package com.cloud.tmc.miniapp.performanceanalyse.screen;

import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO implements IEventSubscriber {
    public final /* synthetic */ OooO00o OooO00o;
    public final /* synthetic */ ScreenInspectHelper OooO0O0;
    public final /* synthetic */ OooO0O0 OooO0OO;

    public OooO(OooO00o oooO00o, ScreenInspectHelper screenInspectHelper, OooO0O0 oooO0O0) {
        this.OooO00o = oooO00o;
        this.OooO0O0 = screenInspectHelper;
        this.OooO0OO = oooO0O0;
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
    public boolean onEvent(IEvent iEvent) {
        TraceLog.i(OfflineConstantsKt.OFFLINE_TYPE_MINIAPP, "connectWorker success");
        this.OooO00o.OooO0Oo = 2;
        IEventCenter iEventCenter = this.OooO0O0.OooO00o;
        if (iEventCenter != null) {
            iEventCenter.unregister(EventConstants.EVENT_CONNECTION_WORKER, this);
        }
        OooO0O0 oooO0O0 = this.OooO0OO;
        if (oooO0O0.OooO0O0 != 2) {
            return true;
        }
        ScreenInspectHelper.access$checkWhiteScreen(this.OooO0O0, oooO0O0);
        return true;
    }
}
