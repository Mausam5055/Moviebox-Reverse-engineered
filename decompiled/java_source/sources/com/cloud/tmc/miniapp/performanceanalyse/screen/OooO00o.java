package com.cloud.tmc.miniapp.performanceanalyse.screen;

import com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber;
import com.cloud.tmc.kernel.worker.JSI;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o {
    public final String OooO00o;
    public final ConcurrentHashMap<String, OooO0O0> OooO0O0;
    public JSI OooO0OO;
    public int OooO0Oo;
    public IEventSubscriber OooO0o0;

    public OooO00o(String appId, ConcurrentHashMap<String, OooO0O0> pages, JSI jsi, int i11, IEventSubscriber iEventSubscriber) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(pages, "pages");
        this.OooO00o = appId;
        this.OooO0O0 = pages;
        this.OooO0OO = jsi;
        this.OooO0Oo = i11;
        this.OooO0o0 = iEventSubscriber;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OooO00o)) {
            return false;
        }
        OooO00o oooO00o = (OooO00o) obj;
        return Intrinsics.c(this.OooO00o, oooO00o.OooO00o) && Intrinsics.c(this.OooO0O0, oooO00o.OooO0O0) && Intrinsics.c(this.OooO0OO, oooO00o.OooO0OO) && this.OooO0Oo == oooO00o.OooO0Oo && Intrinsics.c(this.OooO0o0, oooO00o.OooO0o0);
    }

    public int hashCode() {
        int iHashCode = (this.OooO0O0.hashCode() + (this.OooO00o.hashCode() * 31)) * 31;
        JSI jsi = this.OooO0OO;
        int iHashCode2 = (this.OooO0Oo + ((iHashCode + (jsi == null ? 0 : jsi.hashCode())) * 31)) * 31;
        IEventSubscriber iEventSubscriber = this.OooO0o0;
        return iHashCode2 + (iEventSubscriber != null ? iEventSubscriber.hashCode() : 0);
    }

    public String toString() {
        return "AppData(appId=" + this.OooO00o + ", pages=" + this.OooO0O0 + ", worker=" + this.OooO0OO + ", workerConnectionStatus=" + this.OooO0Oo + ", workerSubscriber=" + this.OooO0o0 + ")";
    }
}
