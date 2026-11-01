package androidx.window.layout;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f15333a;

    public a0(List displayFeatures) {
        Intrinsics.h(displayFeatures, "displayFeatures");
        this.f15333a = displayFeatures;
    }

    public final List a() {
        return this.f15333a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.c(a0.class, obj.getClass())) {
            return false;
        }
        return Intrinsics.c(this.f15333a, ((a0) obj).f15333a);
    }

    public int hashCode() {
        return this.f15333a.hashCode();
    }

    public String toString() {
        return CollectionsKt.s0(this.f15333a, ", ", "WindowLayoutInfo{ DisplayFeatures[", "] }", 0, null, null, 56, null);
    }
}
