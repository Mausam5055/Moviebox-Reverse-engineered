package com.google.firebase.sessions;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f32687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f32688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f32689c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f32690d;

    public p(String processName, int i11, int i12, boolean z10) {
        Intrinsics.h(processName, "processName");
        this.f32687a = processName;
        this.f32688b = i11;
        this.f32689c = i12;
        this.f32690d = z10;
    }

    public final int a() {
        return this.f32689c;
    }

    public final int b() {
        return this.f32688b;
    }

    public final String c() {
        return this.f32687a;
    }

    public final boolean d() {
        return this.f32690d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return Intrinsics.c(this.f32687a, pVar.f32687a) && this.f32688b == pVar.f32688b && this.f32689c == pVar.f32689c && this.f32690d == pVar.f32690d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    public int hashCode() {
        int iHashCode = ((((this.f32687a.hashCode() * 31) + this.f32688b) * 31) + this.f32689c) * 31;
        boolean z10 = this.f32690d;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        return iHashCode + r11;
    }

    public String toString() {
        return "ProcessDetails(processName=" + this.f32687a + ", pid=" + this.f32688b + ", importance=" + this.f32689c + ", isDefaultProcess=" + this.f32690d + ')';
    }
}
