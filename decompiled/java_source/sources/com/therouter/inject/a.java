package com.therouter.inject;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f40752a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f40753b;

    public a(Class clazz, Object... params) {
        Intrinsics.h(clazz, "clazz");
        Intrinsics.h(params, "params");
        this.f40752a = clazz;
        for (Object obj : params) {
            if (obj != null) {
                this.f40753b = this.f40753b + obj;
            }
        }
    }

    public final Class a() {
        return this.f40752a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return super.equals(obj);
        }
        a aVar = (a) obj;
        return Intrinsics.c(a(), aVar.a()) && Intrinsics.c(this.f40753b, aVar.f40753b);
    }

    public int hashCode() {
        int iHashCode = a().hashCode();
        String str = this.f40753b;
        if (str == null) {
            str = "";
        }
        int iHashCode2 = str.hashCode();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(iHashCode);
        sb2.append(iHashCode2);
        return sb2.toString().hashCode();
    }
}
