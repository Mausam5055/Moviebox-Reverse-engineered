package com.transsion.usercenter.laboratory;

import com.transsion.ad.db.mcc.LocalMcc;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class g1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f56833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LocalMcc f56834b;

    public g1(boolean z10, LocalMcc localMcc) {
        Intrinsics.h(localMcc, "localMcc");
        this.f56833a = z10;
        this.f56834b = localMcc;
    }

    public final LocalMcc a() {
        return this.f56834b;
    }

    public final boolean b() {
        return this.f56833a;
    }

    public final void c(boolean z10) {
        this.f56833a = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g1)) {
            return false;
        }
        g1 g1Var = (g1) obj;
        return this.f56833a == g1Var.f56833a && Intrinsics.c(this.f56834b, g1Var.f56834b);
    }

    public int hashCode() {
        return (androidx.compose.foundation.e.a(this.f56833a) * 31) + this.f56834b.hashCode();
    }

    public String toString() {
        return "NationalInformationEntity(isChecked=" + this.f56833a + ", localMcc=" + this.f56834b + ")";
    }
}
