package com.cloud.tmc.miniapp.utils.athena.strategy;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o {
    public boolean OooO00o;
    public boolean OooO0O0;
    public boolean OooO0OO;

    public OooO00o(boolean z10, boolean z11, boolean z12) {
        this.OooO00o = z10;
        this.OooO0O0 = z11;
        this.OooO0OO = z12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OooO00o)) {
            return false;
        }
        OooO00o oooO00o = (OooO00o) obj;
        return this.OooO00o == oooO00o.OooO00o && this.OooO0O0 == oooO00o.OooO0O0 && this.OooO0OO == oooO00o.OooO0OO;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    public int hashCode() {
        boolean z10 = this.OooO00o;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        int i11 = r11 * 31;
        boolean z11 = this.OooO0O0;
        ?? r12 = z11;
        if (z11) {
            r12 = 1;
        }
        int i12 = (i11 + r12) * 31;
        boolean z12 = this.OooO0OO;
        return i12 + (z12 ? 1 : z12);
    }

    public String toString() {
        return "AthenaReportBean(setCache=" + this.OooO00o + ", clearCache=" + this.OooO0O0 + ", isMfah=" + this.OooO0OO + ")";
    }
}
