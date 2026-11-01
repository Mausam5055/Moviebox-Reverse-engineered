package com.transsion.search_pugc.fragment.hot.adapter;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f52357a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f52358b;

    public a(int i11, String strVal) {
        Intrinsics.h(strVal, "strVal");
        this.f52357a = i11;
        this.f52358b = strVal;
    }

    public final String a() {
        return this.f52358b;
    }

    public final int b() {
        return this.f52357a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f52357a == aVar.f52357a && Intrinsics.c(this.f52358b, aVar.f52358b);
    }

    public int hashCode() {
        return (this.f52357a * 31) + this.f52358b.hashCode();
    }

    public String toString() {
        return "HistoryVal(type=" + this.f52357a + ", strVal=" + this.f52358b + ")";
    }
}
