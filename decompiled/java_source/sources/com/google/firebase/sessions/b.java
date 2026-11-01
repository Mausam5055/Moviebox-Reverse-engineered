package com.google.firebase.sessions;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f32637a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f32638b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f32639c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f32640d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LogEnvironment f32641e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a f32642f;

    public b(String appId, String deviceModel, String sessionSdkVersion, String osVersion, LogEnvironment logEnvironment, a androidAppInfo) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(deviceModel, "deviceModel");
        Intrinsics.h(sessionSdkVersion, "sessionSdkVersion");
        Intrinsics.h(osVersion, "osVersion");
        Intrinsics.h(logEnvironment, "logEnvironment");
        Intrinsics.h(androidAppInfo, "androidAppInfo");
        this.f32637a = appId;
        this.f32638b = deviceModel;
        this.f32639c = sessionSdkVersion;
        this.f32640d = osVersion;
        this.f32641e = logEnvironment;
        this.f32642f = androidAppInfo;
    }

    public final a a() {
        return this.f32642f;
    }

    public final String b() {
        return this.f32637a;
    }

    public final String c() {
        return this.f32638b;
    }

    public final LogEnvironment d() {
        return this.f32641e;
    }

    public final String e() {
        return this.f32640d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f32637a, bVar.f32637a) && Intrinsics.c(this.f32638b, bVar.f32638b) && Intrinsics.c(this.f32639c, bVar.f32639c) && Intrinsics.c(this.f32640d, bVar.f32640d) && this.f32641e == bVar.f32641e && Intrinsics.c(this.f32642f, bVar.f32642f);
    }

    public final String f() {
        return this.f32639c;
    }

    public int hashCode() {
        return (((((((((this.f32637a.hashCode() * 31) + this.f32638b.hashCode()) * 31) + this.f32639c.hashCode()) * 31) + this.f32640d.hashCode()) * 31) + this.f32641e.hashCode()) * 31) + this.f32642f.hashCode();
    }

    public String toString() {
        return "ApplicationInfo(appId=" + this.f32637a + ", deviceModel=" + this.f32638b + ", sessionSdkVersion=" + this.f32639c + ", osVersion=" + this.f32640d + ", logEnvironment=" + this.f32641e + ", androidAppInfo=" + this.f32642f + ')';
    }
}
