package com.transsion.search.fragment.hot.adapter;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f52068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f52069b;

    public a(int i11, String strVal) {
        Intrinsics.h(strVal, "strVal");
        this.f52068a = i11;
        this.f52069b = strVal;
    }

    public final String a() {
        return this.f52069b;
    }

    public final int b() {
        return this.f52068a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f52068a == aVar.f52068a && Intrinsics.c(this.f52069b, aVar.f52069b);
    }

    public int hashCode() {
        return (this.f52068a * 31) + this.f52069b.hashCode();
    }

    public String toString() {
        return "HistoryVal(type=" + this.f52068a + ", strVal=" + this.f52069b + ")";
    }
}
