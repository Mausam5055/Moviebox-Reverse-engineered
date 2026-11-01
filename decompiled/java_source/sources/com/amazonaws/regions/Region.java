package com.amazonaws.regions;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class Region {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18562a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18563b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f18564c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f18565d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map f18566e = new HashMap();

    Region(String str, String str2) {
        this.f18562a = str;
        if (str2 == null || str2.isEmpty()) {
            this.f18563b = "amazonaws.com";
        } else {
            this.f18563b = str2;
        }
    }

    public static Region e(Regions regions) {
        return RegionUtils.a(regions.getName());
    }

    public static Region f(String str) {
        return RegionUtils.a(str);
    }

    public String a() {
        return this.f18563b;
    }

    Map b() {
        return this.f18565d;
    }

    Map c() {
        return this.f18566e;
    }

    public String d() {
        return this.f18562a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Region) {
            return d().equals(((Region) obj).d());
        }
        return false;
    }

    public String g(String str) {
        return (String) this.f18564c.get(str);
    }

    Map h() {
        return this.f18564c;
    }

    public int hashCode() {
        return d().hashCode();
    }

    public boolean i(String str) {
        return this.f18564c.containsKey(str);
    }

    public String toString() {
        return d();
    }
}
