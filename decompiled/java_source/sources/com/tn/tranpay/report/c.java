package com.tn.tranpay.report;

import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f41667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f41668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f41669c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f41670d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f41671e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f41672f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f41673g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f41674h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f41675i;

    public c(String pageName, boolean z10) {
        Intrinsics.h(pageName, "pageName");
        this.f41667a = pageName;
        this.f41668b = z10;
        this.f41669c = new HashMap();
        this.f41672f = true;
        this.f41673g = -1L;
    }

    public /* synthetic */ c(String str, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? true : z10);
    }

    public final String a() {
        return this.f41670d;
    }

    public final boolean b() {
        return this.f41668b;
    }

    public final boolean c() {
        return this.f41671e;
    }

    public final boolean d() {
        return this.f41672f;
    }

    public final String e() {
        return this.f41675i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f41667a, cVar.f41667a) && this.f41668b == cVar.f41668b;
    }

    public final String f() {
        return this.f41667a;
    }

    public final HashMap g() {
        return this.f41669c;
    }

    public final long h() {
        return this.f41673g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public int hashCode() {
        int iHashCode = this.f41667a.hashCode() * 31;
        boolean z10 = this.f41668b;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        return iHashCode + r11;
    }

    public final boolean i() {
        return this.f41674h;
    }

    public final void j(boolean z10) {
        this.f41674h = z10;
    }

    public final void k(long j11) {
        this.f41673g = j11;
    }

    public String toString() {
        return "LogViewConfig(pageName=" + this.f41667a + ", needAddToPageFrom=" + this.f41668b + ")";
    }
}
