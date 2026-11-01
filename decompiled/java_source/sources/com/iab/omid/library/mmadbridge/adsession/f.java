package com.iab.omid.library.mmadbridge.adsession;

/* JADX INFO: loaded from: classes4.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f33664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f33665b;

    private f(String str, String str2) {
        this.f33664a = str;
        this.f33665b = str2;
    }

    public static f a(String str, String str2) {
        oe.g.f(str, "Name is null or empty");
        oe.g.f(str2, "Version is null or empty");
        return new f(str, str2);
    }

    public String b() {
        return this.f33664a;
    }

    public String c() {
        return this.f33665b;
    }
}
