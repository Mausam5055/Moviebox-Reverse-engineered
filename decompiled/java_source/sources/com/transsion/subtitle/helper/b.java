package com.transsion.subtitle.helper;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f54895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f54896b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f54897c;

    public b(String hostApi, String apiKey, String ua2) {
        Intrinsics.h(hostApi, "hostApi");
        Intrinsics.h(apiKey, "apiKey");
        Intrinsics.h(ua2, "ua");
        this.f54895a = hostApi;
        this.f54896b = apiKey;
        this.f54897c = ua2;
    }

    public final String a() {
        return this.f54896b;
    }

    public final String b() {
        return this.f54895a;
    }

    public final String c() {
        return this.f54897c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f54895a, bVar.f54895a) && Intrinsics.c(this.f54896b, bVar.f54896b) && Intrinsics.c(this.f54897c, bVar.f54897c);
    }

    public int hashCode() {
        return (((this.f54895a.hashCode() * 31) + this.f54896b.hashCode()) * 31) + this.f54897c.hashCode();
    }

    public String toString() {
        return "OpenSubtitleRequestConfig(hostApi=" + this.f54895a + ", apiKey=" + this.f54896b + ", ua=" + this.f54897c + ")";
    }
}
