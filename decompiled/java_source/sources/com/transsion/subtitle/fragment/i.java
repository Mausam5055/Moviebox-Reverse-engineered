package com.transsion.subtitle.fragment;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f54863a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f54864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f54865c;

    public i(String name, int i11, int i12) {
        Intrinsics.h(name, "name");
        this.f54863a = name;
        this.f54864b = i11;
        this.f54865c = i12;
    }

    public final int a() {
        return this.f54865c;
    }

    public final String b() {
        return this.f54863a;
    }

    public final int c() {
        return this.f54864b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return Intrinsics.c(this.f54863a, iVar.f54863a) && this.f54864b == iVar.f54864b && this.f54865c == iVar.f54865c;
    }

    public int hashCode() {
        return (((this.f54863a.hashCode() * 31) + this.f54864b) * 31) + this.f54865c;
    }

    public String toString() {
        return "SubtitleSearchKeyword(name=" + this.f54863a + ", season=" + this.f54864b + ", episode=" + this.f54865c + ")";
    }
}
