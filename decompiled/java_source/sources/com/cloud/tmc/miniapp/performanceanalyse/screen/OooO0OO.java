package com.cloud.tmc.miniapp.performanceanalyse.screen;

import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber;
import java.util.Map;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0OO implements IEventSubscriber {
    public final /* synthetic */ ScreenInspectHelper OooO00o;
    public final /* synthetic */ OooO0O0 OooO0O0;
    public final /* synthetic */ String OooO0OO;

    public OooO0OO(ScreenInspectHelper screenInspectHelper, OooO0O0 oooO0O0, String str) {
        this.OooO00o = screenInspectHelper;
        this.OooO0O0 = oooO0O0;
        this.OooO0OO = str;
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
    public boolean onEvent(IEvent iEvent) {
        Map<String, Object> data;
        Object obj;
        if (iEvent != null && (data = iEvent.getData()) != null && (obj = data.get(IntegrationConstants.EVENT_DATA)) != null) {
            OooO0O0 oooO0O0 = this.OooO0O0;
            ScreenInspectHelper screenInspectHelper = this.OooO00o;
            String str = this.OooO0OO;
            if (StringsKt.c0(obj.toString(), "true", false, 2, null)) {
                oooO0O0.OooO0o0 = 3;
                oooO0O0.OooO0oO = true;
                boolean z10 = oooO0O0.OooO0oo;
                OooOO0 oooOO0 = oooO0O0.OooO0o;
                screenInspectHelper.OooO00o(str, 3, z10, oooOO0 != null ? Long.valueOf(oooOO0.OooO00o()) : null);
            } else {
                oooO0O0.OooO0o0 = 2;
            }
        }
        IEventCenter iEventCenter = this.OooO00o.OooO00o;
        if (iEventCenter != null) {
            iEventCenter.unregister(EventConstants.EVENT_RENDER_STARUS, this);
        }
        return true;
    }
}
