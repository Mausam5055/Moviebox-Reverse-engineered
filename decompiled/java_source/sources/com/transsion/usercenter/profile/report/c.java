package com.transsion.usercenter.profile.report;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f57251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f57252b;

    public c(String reportName, boolean z10) {
        Intrinsics.h(reportName, "reportName");
        this.f57251a = reportName;
        this.f57252b = z10;
    }

    public final String a() {
        return this.f57251a;
    }

    public final boolean b() {
        return this.f57252b;
    }

    public final void c(boolean z10) {
        this.f57252b = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f57251a, cVar.f57251a) && this.f57252b == cVar.f57252b;
    }

    public int hashCode() {
        return (this.f57251a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f57252b);
    }

    public String toString() {
        return "ReportBean(reportName=" + this.f57251a + ", isChecked=" + this.f57252b + ")";
    }
}
