package com.iab.omid.library.hisavana.adsession;

/* JADX INFO: loaded from: classes4.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f33550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f33551b;

    private f(String str, String str2) {
        this.f33550a = str;
        this.f33551b = str2;
    }

    public static f a(String str, String str2) {
        ie.g.f(str, "Name is null or empty");
        ie.g.f(str2, "Version is null or empty");
        return new f(str, str2);
    }

    public String b() {
        return this.f33550a;
    }

    public String c() {
        return this.f33551b;
    }
}
