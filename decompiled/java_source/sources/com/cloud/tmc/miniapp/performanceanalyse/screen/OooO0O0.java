package com.cloud.tmc.miniapp.performanceanalyse.screen;

import com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber;
import com.cloud.tmc.kernel.render.IRender;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0O0 {
    public IRender OooO00o;
    public int OooO0O0;
    public IEventSubscriber OooO0OO;
    public IEventSubscriber OooO0Oo;
    public OooOO0 OooO0o;
    public int OooO0o0;
    public boolean OooO0oO;
    public boolean OooO0oo;

    public OooO0O0() {
        this(null, 0, null, null, 0, null, false, false, 255);
    }

    public OooO0O0(IRender iRender, int i11, IEventSubscriber iEventSubscriber, IEventSubscriber iEventSubscriber2, int i12, OooOO0 oooOO0, boolean z10, boolean z11) {
        this.OooO00o = iRender;
        this.OooO0O0 = i11;
        this.OooO0OO = iEventSubscriber;
        this.OooO0Oo = iEventSubscriber2;
        this.OooO0o0 = i12;
        this.OooO0o = oooOO0;
        this.OooO0oO = z10;
        this.OooO0oo = z11;
    }

    public /* synthetic */ OooO0O0(IRender iRender, int i11, IEventSubscriber iEventSubscriber, IEventSubscriber iEventSubscriber2, int i12, OooOO0 oooOO0, boolean z10, boolean z11, int i13) {
        this(null, (i13 & 2) != 0 ? 0 : i11, null, null, (i13 & 16) != 0 ? 0 : i12, null, (i13 & 64) != 0 ? false : z10, (i13 & 128) == 0 ? z11 : false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OooO0O0)) {
            return false;
        }
        OooO0O0 oooO0O0 = (OooO0O0) obj;
        return Intrinsics.c(this.OooO00o, oooO0O0.OooO00o) && this.OooO0O0 == oooO0O0.OooO0O0 && Intrinsics.c(this.OooO0OO, oooO0O0.OooO0OO) && Intrinsics.c(this.OooO0Oo, oooO0O0.OooO0Oo) && this.OooO0o0 == oooO0O0.OooO0o0 && Intrinsics.c(this.OooO0o, oooO0O0.OooO0o) && this.OooO0oO == oooO0O0.OooO0oO && this.OooO0oo == oooO0O0.OooO0oo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [int] */
    /* JADX WARN: Type inference failed for: r0v17, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [int] */
    public int hashCode() {
        IRender iRender = this.OooO00o;
        int iHashCode = (this.OooO0O0 + ((iRender == null ? 0 : iRender.hashCode()) * 31)) * 31;
        IEventSubscriber iEventSubscriber = this.OooO0OO;
        int iHashCode2 = (iHashCode + (iEventSubscriber == null ? 0 : iEventSubscriber.hashCode())) * 31;
        IEventSubscriber iEventSubscriber2 = this.OooO0Oo;
        int iHashCode3 = (this.OooO0o0 + ((iHashCode2 + (iEventSubscriber2 == null ? 0 : iEventSubscriber2.hashCode())) * 31)) * 31;
        OooOO0 oooOO0 = this.OooO0o;
        int iHashCode4 = (iHashCode3 + (oooOO0 != null ? oooOO0.hashCode() : 0)) * 31;
        boolean z10 = this.OooO0oO;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        int i11 = (iHashCode4 + r11) * 31;
        boolean z11 = this.OooO0oo;
        return i11 + (z11 ? 1 : z11);
    }

    public String toString() {
        return "PageData(render=" + this.OooO00o + ", renderConnectionStatus=" + this.OooO0O0 + ", renderSubscriber=" + this.OooO0OO + ", checkWhiteScreenSubscriber=" + this.OooO0Oo + ", renderStatus=" + this.OooO0o0 + ", timeCountTask=" + this.OooO0o + ", checkFinished=" + this.OooO0oO + ", onPageReady=" + this.OooO0oo + ")";
    }
}
