package androidx.window.core;

import android.graphics.Rect;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f15289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f15290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f15291c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f15292d;

    public b(int i11, int i12, int i13, int i14) {
        this.f15289a = i11;
        this.f15290b = i12;
        this.f15291c = i13;
        this.f15292d = i14;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(Rect rect) {
        this(rect.left, rect.top, rect.right, rect.bottom);
        Intrinsics.h(rect, "rect");
    }

    public final int a() {
        return this.f15292d - this.f15290b;
    }

    public final int b() {
        return this.f15289a;
    }

    public final int c() {
        return this.f15290b;
    }

    public final int d() {
        return this.f15291c - this.f15289a;
    }

    public final boolean e() {
        return a() == 0 && d() == 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.c(b.class, obj == null ? null : obj.getClass())) {
            return false;
        }
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.window.core.Bounds");
        }
        b bVar = (b) obj;
        return this.f15289a == bVar.f15289a && this.f15290b == bVar.f15290b && this.f15291c == bVar.f15291c && this.f15292d == bVar.f15292d;
    }

    public final Rect f() {
        return new Rect(this.f15289a, this.f15290b, this.f15291c, this.f15292d);
    }

    public int hashCode() {
        return (((((this.f15289a * 31) + this.f15290b) * 31) + this.f15291c) * 31) + this.f15292d;
    }

    public String toString() {
        return ((Object) b.class.getSimpleName()) + " { [" + this.f15289a + ',' + this.f15290b + ',' + this.f15291c + ',' + this.f15292d + "] }";
    }
}
