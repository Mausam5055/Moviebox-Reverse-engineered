package androidx.compose.ui.node;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DepthSortedSet f5392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DepthSortedSet f5393b;

    public j(boolean z10) {
        this.f5392a = new DepthSortedSet(z10);
        this.f5393b = new DepthSortedSet(z10);
    }

    public final void c(LayoutNode layoutNode, boolean z10) {
        if (z10) {
            this.f5392a.a(layoutNode);
            this.f5393b.a(layoutNode);
        } else {
            if (this.f5392a.b(layoutNode)) {
                return;
            }
            this.f5393b.a(layoutNode);
        }
    }

    public final boolean d(LayoutNode layoutNode) {
        return this.f5392a.b(layoutNode) || this.f5393b.b(layoutNode);
    }

    public final boolean e(LayoutNode layoutNode, boolean z10) {
        boolean zB = this.f5392a.b(layoutNode);
        if (z10) {
            return zB;
        }
        return zB || this.f5393b.b(layoutNode);
    }

    public final boolean f() {
        return this.f5393b.d() && this.f5392a.d();
    }

    public final boolean g(boolean z10) {
        return (z10 ? this.f5392a : this.f5393b).d();
    }

    public final boolean h() {
        return !f();
    }

    public final boolean i(LayoutNode layoutNode) {
        return this.f5393b.f(layoutNode) || this.f5392a.f(layoutNode);
    }
}
