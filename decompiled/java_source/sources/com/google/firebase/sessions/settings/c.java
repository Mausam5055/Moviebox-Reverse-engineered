package com.google.firebase.sessions.settings;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Boolean f32724a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Double f32725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Integer f32726c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Integer f32727d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Long f32728e;

    public c(Boolean bool, Double d11, Integer num, Integer num2, Long l11) {
        this.f32724a = bool;
        this.f32725b = d11;
        this.f32726c = num;
        this.f32727d = num2;
        this.f32728e = l11;
    }

    public final Integer a() {
        return this.f32727d;
    }

    public final Long b() {
        return this.f32728e;
    }

    public final Boolean c() {
        return this.f32724a;
    }

    public final Integer d() {
        return this.f32726c;
    }

    public final Double e() {
        return this.f32725b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f32724a, cVar.f32724a) && Intrinsics.c(this.f32725b, cVar.f32725b) && Intrinsics.c(this.f32726c, cVar.f32726c) && Intrinsics.c(this.f32727d, cVar.f32727d) && Intrinsics.c(this.f32728e, cVar.f32728e);
    }

    public int hashCode() {
        Boolean bool = this.f32724a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Double d11 = this.f32725b;
        int iHashCode2 = (iHashCode + (d11 == null ? 0 : d11.hashCode())) * 31;
        Integer num = this.f32726c;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f32727d;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Long l11 = this.f32728e;
        return iHashCode4 + (l11 != null ? l11.hashCode() : 0);
    }

    public String toString() {
        return "SessionConfigs(sessionEnabled=" + this.f32724a + ", sessionSamplingRate=" + this.f32725b + ", sessionRestartTimeout=" + this.f32726c + ", cacheDuration=" + this.f32727d + ", cacheUpdatedTime=" + this.f32728e + ')';
    }
}
