package com.vungle.ads.internal.model;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class e {
    private final String description;
    private final boolean errorIsTerminal;
    private final boolean isRetryCode;

    public e(String description, boolean z10, boolean z11) {
        Intrinsics.h(description, "description");
        this.description = description;
        this.errorIsTerminal = z10;
        this.isRetryCode = z11;
    }

    public /* synthetic */ e(String str, boolean z10, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? false : z10, (i11 & 4) != 0 ? false : z11);
    }

    public static /* synthetic */ e copy$default(e eVar, String str, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = eVar.description;
        }
        if ((i11 & 2) != 0) {
            z10 = eVar.errorIsTerminal;
        }
        if ((i11 & 4) != 0) {
            z11 = eVar.isRetryCode;
        }
        return eVar.copy(str, z10, z11);
    }

    public final String component1() {
        return this.description;
    }

    public final boolean component2() {
        return this.errorIsTerminal;
    }

    public final boolean component3() {
        return this.isRetryCode;
    }

    public final e copy(String description, boolean z10, boolean z11) {
        Intrinsics.h(description, "description");
        return new e(description, z10, z11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return Intrinsics.c(this.description, eVar.description) && this.errorIsTerminal == eVar.errorIsTerminal && this.isRetryCode == eVar.isRetryCode;
    }

    public final String getDescription() {
        return this.description;
    }

    public final boolean getErrorIsTerminal() {
        return this.errorIsTerminal;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int iHashCode = this.description.hashCode() * 31;
        boolean z10 = this.errorIsTerminal;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        int i11 = (iHashCode + r11) * 31;
        boolean z11 = this.isRetryCode;
        return i11 + (z11 ? 1 : z11);
    }

    public final boolean isRetryCode() {
        return this.isRetryCode;
    }

    public String toString() {
        return "ErrorInfo(description=" + this.description + ", errorIsTerminal=" + this.errorIsTerminal + ", isRetryCode=" + this.isRetryCode + ')';
    }
}
