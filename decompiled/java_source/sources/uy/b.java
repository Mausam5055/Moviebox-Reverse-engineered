package uy;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f76950a;

    public b(String postId) {
        Intrinsics.h(postId, "postId");
        this.f76950a = postId;
    }

    public final String a() {
        return this.f76950a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && Intrinsics.c(this.f76950a, ((b) obj).f76950a);
    }

    public int hashCode() {
        return this.f76950a.hashCode();
    }

    public String toString() {
        return "DeletePostEvent(postId=" + this.f76950a + ")";
    }
}
