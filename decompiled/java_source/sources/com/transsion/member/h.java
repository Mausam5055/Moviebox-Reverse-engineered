package com.transsion.member;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f46559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f46560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f46561c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i f46562d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i f46563e;

    public h(String icon, String name, String showQuestion, i basic, i pro) {
        Intrinsics.h(icon, "icon");
        Intrinsics.h(name, "name");
        Intrinsics.h(showQuestion, "showQuestion");
        Intrinsics.h(basic, "basic");
        Intrinsics.h(pro, "pro");
        this.f46559a = icon;
        this.f46560b = name;
        this.f46561c = showQuestion;
        this.f46562d = basic;
        this.f46563e = pro;
    }

    public final i a() {
        return this.f46562d;
    }

    public final String b() {
        return this.f46559a;
    }

    public final String c() {
        return this.f46560b;
    }

    public final i d() {
        return this.f46563e;
    }

    public final String e() {
        return this.f46561c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return Intrinsics.c(this.f46559a, hVar.f46559a) && Intrinsics.c(this.f46560b, hVar.f46560b) && Intrinsics.c(this.f46561c, hVar.f46561c) && Intrinsics.c(this.f46562d, hVar.f46562d) && Intrinsics.c(this.f46563e, hVar.f46563e);
    }

    public int hashCode() {
        return (((((((this.f46559a.hashCode() * 31) + this.f46560b.hashCode()) * 31) + this.f46561c.hashCode()) * 31) + this.f46562d.hashCode()) * 31) + this.f46563e.hashCode();
    }

    public String toString() {
        return "MemberFeatureUiModel(icon=" + this.f46559a + ", name=" + this.f46560b + ", showQuestion=" + this.f46561c + ", basic=" + this.f46562d + ", pro=" + this.f46563e + ")";
    }
}
