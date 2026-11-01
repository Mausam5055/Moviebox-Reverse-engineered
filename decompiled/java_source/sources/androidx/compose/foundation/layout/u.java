package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class u implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f2882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f2883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f2884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f2885d;

    private u(float f11, float f12, float f13, float f14) {
        this.f2882a = f11;
        this.f2883b = f12;
        this.f2884c = f13;
        this.f2885d = f14;
        if (f11 < 0.0f) {
            throw new IllegalArgumentException("Start padding must be non-negative");
        }
        if (f12 < 0.0f) {
            throw new IllegalArgumentException("Top padding must be non-negative");
        }
        if (f13 < 0.0f) {
            throw new IllegalArgumentException("End padding must be non-negative");
        }
        if (f14 < 0.0f) {
            throw new IllegalArgumentException("Bottom padding must be non-negative");
        }
    }

    public /* synthetic */ u(float f11, float f12, float f13, float f14, DefaultConstructorMarker defaultConstructorMarker) {
        this(f11, f12, f13, f14);
    }

    @Override // androidx.compose.foundation.layout.t
    public float a() {
        return this.f2885d;
    }

    @Override // androidx.compose.foundation.layout.t
    public float b(LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? this.f2882a : this.f2884c;
    }

    @Override // androidx.compose.foundation.layout.t
    public float c(LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? this.f2884c : this.f2882a;
    }

    @Override // androidx.compose.foundation.layout.t
    public float d() {
        return this.f2883b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return o0.i.i(this.f2882a, uVar.f2882a) && o0.i.i(this.f2883b, uVar.f2883b) && o0.i.i(this.f2884c, uVar.f2884c) && o0.i.i(this.f2885d, uVar.f2885d);
    }

    public int hashCode() {
        return (((((o0.i.j(this.f2882a) * 31) + o0.i.j(this.f2883b)) * 31) + o0.i.j(this.f2884c)) * 31) + o0.i.j(this.f2885d);
    }

    public String toString() {
        return "PaddingValues(start=" + ((Object) o0.i.k(this.f2882a)) + ", top=" + ((Object) o0.i.k(this.f2883b)) + ", end=" + ((Object) o0.i.k(this.f2884c)) + ", bottom=" + ((Object) o0.i.k(this.f2885d)) + ')';
    }
}
