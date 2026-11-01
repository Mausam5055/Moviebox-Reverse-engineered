package com.google.firebase.sessions;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final EventType f32733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x f32734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f32735c;

    public u(EventType eventType, x sessionData, b applicationInfo) {
        Intrinsics.h(eventType, "eventType");
        Intrinsics.h(sessionData, "sessionData");
        Intrinsics.h(applicationInfo, "applicationInfo");
        this.f32733a = eventType;
        this.f32734b = sessionData;
        this.f32735c = applicationInfo;
    }

    public final b a() {
        return this.f32735c;
    }

    public final EventType b() {
        return this.f32733a;
    }

    public final x c() {
        return this.f32734b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f32733a == uVar.f32733a && Intrinsics.c(this.f32734b, uVar.f32734b) && Intrinsics.c(this.f32735c, uVar.f32735c);
    }

    public int hashCode() {
        return (((this.f32733a.hashCode() * 31) + this.f32734b.hashCode()) * 31) + this.f32735c.hashCode();
    }

    public String toString() {
        return "SessionEvent(eventType=" + this.f32733a + ", sessionData=" + this.f32734b + ", applicationInfo=" + this.f32735c + ')';
    }
}
