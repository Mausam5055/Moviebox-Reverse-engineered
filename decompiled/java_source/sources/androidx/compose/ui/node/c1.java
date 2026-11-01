package androidx.compose.ui.node;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class c1 implements z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.ui.layout.v f5382a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LookaheadCapablePlaceable f5383b;

    public c1(androidx.compose.ui.layout.v vVar, LookaheadCapablePlaceable lookaheadCapablePlaceable) {
        this.f5382a = vVar;
        this.f5383b = lookaheadCapablePlaceable;
    }

    public final LookaheadCapablePlaceable a() {
        return this.f5383b;
    }

    public final androidx.compose.ui.layout.v b() {
        return this.f5382a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c1)) {
            return false;
        }
        c1 c1Var = (c1) obj;
        return Intrinsics.c(this.f5382a, c1Var.f5382a) && Intrinsics.c(this.f5383b, c1Var.f5383b);
    }

    public int hashCode() {
        return (this.f5382a.hashCode() * 31) + this.f5383b.hashCode();
    }

    @Override // androidx.compose.ui.node.z0
    public boolean isValidOwnerScope() {
        return this.f5383b.X0().F();
    }

    public String toString() {
        return "PlaceableResult(result=" + this.f5382a + ", placeable=" + this.f5383b + ')';
    }
}
