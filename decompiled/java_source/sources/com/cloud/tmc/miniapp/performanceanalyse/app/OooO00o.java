package com.cloud.tmc.miniapp.performanceanalyse.app;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o {
    public int OooO;
    public final String OooO00o;
    public String OooO0O0;
    public final Map<String, Long> OooO0OO;
    public final Map<String, Long> OooO0Oo;
    public final Map<String, com.cloud.tmc.miniapp.performanceanalyse.page.OooO00o> OooO0o;
    public final Map<String, Long> OooO0o0;
    public int OooO0oO;
    public int OooO0oo;
    public int OooOO0;
    public boolean OooOO0O;
    public boolean OooOO0o;
    public boolean OooOOO0;

    public OooO00o(String appId, String str, Map<String, Long> stageStartMap, Map<String, Long> stageEndMap, Map<String, Long> stageTime, Map<String, com.cloud.tmc.miniapp.performanceanalyse.page.OooO00o> pages, int i11, int i12, int i13, int i14, boolean z10, boolean z11, boolean z12) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(stageStartMap, "stageStartMap");
        Intrinsics.h(stageEndMap, "stageEndMap");
        Intrinsics.h(stageTime, "stageTime");
        Intrinsics.h(pages, "pages");
        this.OooO00o = appId;
        this.OooO0O0 = str;
        this.OooO0OO = stageStartMap;
        this.OooO0Oo = stageEndMap;
        this.OooO0o0 = stageTime;
        this.OooO0o = pages;
        this.OooO0oO = i11;
        this.OooO0oo = i12;
        this.OooO = i13;
        this.OooOO0 = i14;
        this.OooOO0O = z10;
        this.OooOO0o = z11;
        this.OooOOO0 = z12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OooO00o)) {
            return false;
        }
        OooO00o oooO00o = (OooO00o) obj;
        return Intrinsics.c(this.OooO00o, oooO00o.OooO00o) && Intrinsics.c(this.OooO0O0, oooO00o.OooO0O0) && Intrinsics.c(this.OooO0OO, oooO00o.OooO0OO) && Intrinsics.c(this.OooO0Oo, oooO00o.OooO0Oo) && Intrinsics.c(this.OooO0o0, oooO00o.OooO0o0) && Intrinsics.c(this.OooO0o, oooO00o.OooO0o) && this.OooO0oO == oooO00o.OooO0oO && this.OooO0oo == oooO00o.OooO0oo && this.OooO == oooO00o.OooO && this.OooOO0 == oooO00o.OooOO0 && this.OooOO0O == oooO00o.OooOO0O && this.OooOO0o == oooO00o.OooOO0o && this.OooOOO0 == oooO00o.OooOOO0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [int] */
    /* JADX WARN: Type inference failed for: r0v21, types: [int] */
    /* JADX WARN: Type inference failed for: r0v23, types: [int] */
    /* JADX WARN: Type inference failed for: r1v18, types: [int] */
    /* JADX WARN: Type inference failed for: r1v20, types: [int] */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int iHashCode = this.OooO00o.hashCode() * 31;
        String str = this.OooO0O0;
        int iHashCode2 = (this.OooOO0 + ((this.OooO + ((this.OooO0oo + ((this.OooO0oO + ((this.OooO0o.hashCode() + ((this.OooO0o0.hashCode() + ((this.OooO0Oo.hashCode() + ((this.OooO0OO.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        boolean z10 = this.OooOO0O;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        int i11 = (iHashCode2 + r11) * 31;
        boolean z11 = this.OooOO0o;
        ?? r12 = z11;
        if (z11) {
            r12 = 1;
        }
        int i12 = (i11 + r12) * 31;
        boolean z12 = this.OooOOO0;
        return i12 + (z12 ? 1 : z12);
    }

    public String toString() {
        return "AppOpenPointData(appId=" + this.OooO00o + ", homePagePath=" + this.OooO0O0 + ", stageStartMap=" + this.OooO0OO + ", stageEndMap=" + this.OooO0Oo + ", stageTime=" + this.OooO0o0 + ", pages=" + this.OooO0o + ", updateAppInfoMode=" + this.OooO0oO + ", updateFrameworkInfoMode=" + this.OooO0oo + ", downloadAppMode=" + this.OooO + ", downloadFrameworkMode=" + this.OooOO0 + ", isAddHomePage=" + this.OooOO0O + ", isReport=" + this.OooOO0o + ", isOpenSuccess=" + this.OooOOO0 + ")";
    }
}
