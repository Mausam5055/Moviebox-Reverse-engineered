package com.cloud.tmc.miniapp.performanceanalyse;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0O0 {
    public int OooO;
    public final String OooO00o;
    public String OooO0O0;
    public final Map<String, Long> OooO0OO;
    public final Map<String, Long> OooO0Oo;
    public int OooO0o;
    public final Map<String, OooOO0> OooO0o0;
    public int OooO0oO;
    public int OooO0oo;
    public boolean OooOO0;
    public String OooOO0O;
    public String OooOO0o;
    public String OooOOO;
    public String OooOOO0;
    public boolean OooOOOO;

    public OooO0O0(String appId, String str, Map<String, Long> chainsStartMap, Map<String, Long> chainsEndMap, Map<String, OooOO0> pages, int i11, int i12, int i13, int i14, boolean z10, String h5ProgressCollectList, String isDomContentLoaded, String navigationType, String homePageRandomIdByGAId, boolean z11) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(chainsStartMap, "chainsStartMap");
        Intrinsics.h(chainsEndMap, "chainsEndMap");
        Intrinsics.h(pages, "pages");
        Intrinsics.h(h5ProgressCollectList, "h5ProgressCollectList");
        Intrinsics.h(isDomContentLoaded, "isDomContentLoaded");
        Intrinsics.h(navigationType, "navigationType");
        Intrinsics.h(homePageRandomIdByGAId, "homePageRandomIdByGAId");
        this.OooO00o = appId;
        this.OooO0O0 = str;
        this.OooO0OO = chainsStartMap;
        this.OooO0Oo = chainsEndMap;
        this.OooO0o0 = pages;
        this.OooO0o = i11;
        this.OooO0oO = i12;
        this.OooO0oo = i13;
        this.OooO = i14;
        this.OooOO0 = z10;
        this.OooOO0O = h5ProgressCollectList;
        this.OooOO0o = isDomContentLoaded;
        this.OooOOO0 = navigationType;
        this.OooOOO = homePageRandomIdByGAId;
        this.OooOOOO = z11;
    }

    public final boolean OooO() {
        return this.OooOOOO;
    }

    public final Map<String, Long> OooO00o() {
        return this.OooO0Oo;
    }

    public final void OooO00o(boolean z10) {
        this.OooOO0 = z10;
    }

    public final Map<String, Long> OooO0O0() {
        return this.OooO0OO;
    }

    public final int OooO0OO() {
        return this.OooO0oO;
    }

    public final int OooO0Oo() {
        return this.OooO0o;
    }

    public final String OooO0o() {
        return this.OooO0O0;
    }

    public final String OooO0o0() {
        return this.OooOO0O;
    }

    public final String OooO0oO() {
        return this.OooOOO;
    }

    public final String OooO0oo() {
        return this.OooOOO0;
    }

    public final Map<String, OooOO0> OooOO0() {
        return this.OooO0o0;
    }

    public final int OooOO0O() {
        return this.OooO;
    }

    public final int OooOO0o() {
        return this.OooO0oo;
    }

    public final boolean OooOOO() {
        return this.OooOO0;
    }

    public final String OooOOO0() {
        return this.OooOO0o;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OooO0O0)) {
            return false;
        }
        OooO0O0 oooO0O0 = (OooO0O0) obj;
        return Intrinsics.c(this.OooO00o, oooO0O0.OooO00o) && Intrinsics.c(this.OooO0O0, oooO0O0.OooO0O0) && Intrinsics.c(this.OooO0OO, oooO0O0.OooO0OO) && Intrinsics.c(this.OooO0Oo, oooO0O0.OooO0Oo) && Intrinsics.c(this.OooO0o0, oooO0O0.OooO0o0) && this.OooO0o == oooO0O0.OooO0o && this.OooO0oO == oooO0O0.OooO0oO && this.OooO0oo == oooO0O0.OooO0oo && this.OooO == oooO0O0.OooO && this.OooOO0 == oooO0O0.OooOO0 && Intrinsics.c(this.OooOO0O, oooO0O0.OooOO0O) && Intrinsics.c(this.OooOO0o, oooO0O0.OooOO0o) && Intrinsics.c(this.OooOOO0, oooO0O0.OooOOO0) && Intrinsics.c(this.OooOOO, oooO0O0.OooOOO) && this.OooOOOO == oooO0O0.OooOOOO;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [int] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r1v17, types: [int] */
    /* JADX WARN: Type inference failed for: r1v27, types: [int] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int iHashCode = this.OooO00o.hashCode() * 31;
        String str = this.OooO0O0;
        int iHashCode2 = (this.OooO + ((this.OooO0oo + ((this.OooO0oO + ((this.OooO0o + ((this.OooO0o0.hashCode() + ((this.OooO0Oo.hashCode() + ((this.OooO0OO.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        boolean z10 = this.OooOO0;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        int iHashCode3 = (this.OooOOO.hashCode() + ((this.OooOOO0.hashCode() + ((this.OooOO0o.hashCode() + ((this.OooOO0O.hashCode() + ((iHashCode2 + r11) * 31)) * 31)) * 31)) * 31)) * 31;
        boolean z11 = this.OooOOOO;
        return iHashCode3 + (z11 ? 1 : z11);
    }

    public String toString() {
        return "AppChainData(appId=" + this.OooO00o + ", homePagePath=" + this.OooO0O0 + ", chainsStartMap=" + this.OooO0OO + ", chainsEndMap=" + this.OooO0Oo + ", pages=" + this.OooO0o0 + ", downloadFrameworkMode=" + this.OooO0o + ", downloadAppMode=" + this.OooO0oO + ", zipFrameworkMode=" + this.OooO0oo + ", zipAppMode=" + this.OooO + ", isReport=" + this.OooOO0 + ", h5ProgressCollectList=" + this.OooOO0O + ", isDomContentLoaded=" + this.OooOO0o + ", navigationType=" + this.OooOOO0 + ", homePageRandomIdByGAId=" + this.OooOOO + ", offScreenRender=" + this.OooOOOO + ")";
    }
}
