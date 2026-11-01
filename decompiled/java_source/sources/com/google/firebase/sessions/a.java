package com.google.firebase.sessions;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f32623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f32624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f32625c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f32626d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final p f32627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f32628f;

    public a(String packageName, String versionName, String appBuildVersion, String deviceManufacturer, p currentProcessDetails, List appProcessDetails) {
        Intrinsics.h(packageName, "packageName");
        Intrinsics.h(versionName, "versionName");
        Intrinsics.h(appBuildVersion, "appBuildVersion");
        Intrinsics.h(deviceManufacturer, "deviceManufacturer");
        Intrinsics.h(currentProcessDetails, "currentProcessDetails");
        Intrinsics.h(appProcessDetails, "appProcessDetails");
        this.f32623a = packageName;
        this.f32624b = versionName;
        this.f32625c = appBuildVersion;
        this.f32626d = deviceManufacturer;
        this.f32627e = currentProcessDetails;
        this.f32628f = appProcessDetails;
    }

    public final String a() {
        return this.f32625c;
    }

    public final List b() {
        return this.f32628f;
    }

    public final p c() {
        return this.f32627e;
    }

    public final String d() {
        return this.f32626d;
    }

    public final String e() {
        return this.f32623a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f32623a, aVar.f32623a) && Intrinsics.c(this.f32624b, aVar.f32624b) && Intrinsics.c(this.f32625c, aVar.f32625c) && Intrinsics.c(this.f32626d, aVar.f32626d) && Intrinsics.c(this.f32627e, aVar.f32627e) && Intrinsics.c(this.f32628f, aVar.f32628f);
    }

    public final String f() {
        return this.f32624b;
    }

    public int hashCode() {
        return (((((((((this.f32623a.hashCode() * 31) + this.f32624b.hashCode()) * 31) + this.f32625c.hashCode()) * 31) + this.f32626d.hashCode()) * 31) + this.f32627e.hashCode()) * 31) + this.f32628f.hashCode();
    }

    public String toString() {
        return "AndroidApplicationInfo(packageName=" + this.f32623a + ", versionName=" + this.f32624b + ", appBuildVersion=" + this.f32625c + ", deviceManufacturer=" + this.f32626d + ", currentProcessDetails=" + this.f32627e + ", appProcessDetails=" + this.f32628f + ')';
    }
}
