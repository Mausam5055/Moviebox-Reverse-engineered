package androidx.compose.ui.input.pointer;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a implements s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4973b;

    public a(int i11) {
        this.f4973b = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.c(a.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.AndroidPointerIconType");
        return this.f4973b == ((a) obj).f4973b;
    }

    public int hashCode() {
        return this.f4973b;
    }

    public String toString() {
        return "AndroidPointerIcon(type=" + this.f4973b + ')';
    }
}
