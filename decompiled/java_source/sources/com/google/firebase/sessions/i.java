package com.google.firebase.sessions;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f32686a;

    public i(String str) {
        this.f32686a = str;
    }

    public final String a() {
        return this.f32686a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i) && Intrinsics.c(this.f32686a, ((i) obj).f32686a);
    }

    public int hashCode() {
        String str = this.f32686a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return "FirebaseSessionsData(sessionId=" + this.f32686a + ')';
    }
}
