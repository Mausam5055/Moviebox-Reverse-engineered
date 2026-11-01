package com.iab.omid.library.vungle.adsession;

/* JADX INFO: loaded from: classes4.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f33784a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f33785b;

    private f(String str, String str2) {
        this.f33784a = str;
        this.f33785b = str2;
    }

    public static f a(String str, String str2) {
        ue.g.f(str, "Name is null or empty");
        ue.g.f(str2, "Version is null or empty");
        return new f(str, str2);
    }

    public String b() {
        return this.f33784a;
    }

    public String c() {
        return this.f33785b;
    }
}
