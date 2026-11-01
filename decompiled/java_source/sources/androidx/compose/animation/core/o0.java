package androidx.compose.animation.core;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class o0 implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f2478a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f2479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f2480c;

    public o0() {
        this(0.0f, 0.0f, null, 7, null);
    }

    public o0(float f11, float f12, Object obj) {
        this.f2478a = f11;
        this.f2479b = f12;
        this.f2480c = obj;
    }

    public /* synthetic */ o0(float f11, float f12, Object obj, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 1.0f : f11, (i11 & 2) != 0 ? 1500.0f : f12, (i11 & 4) != 0 ? null : obj);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof o0)) {
            return false;
        }
        o0 o0Var = (o0) obj;
        return o0Var.f2478a == this.f2478a && o0Var.f2479b == this.f2479b && Intrinsics.c(o0Var.f2480c, this.f2480c);
    }

    @Override // androidx.compose.animation.core.g
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public e1 a(s0 s0Var) {
        return new e1(this.f2478a, this.f2479b, h.b(s0Var, this.f2480c));
    }

    public int hashCode() {
        Object obj = this.f2480c;
        return ((((obj != null ? obj.hashCode() : 0) * 31) + Float.floatToIntBits(this.f2478a)) * 31) + Float.floatToIntBits(this.f2479b);
    }
}
