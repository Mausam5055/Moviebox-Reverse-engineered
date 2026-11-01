package androidx.compose.ui.layout;

import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.LayoutDirection;

/* JADX INFO: loaded from: classes.dex */
final class p extends g0.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LookaheadCapablePlaceable f5195b;

    public p(LookaheadCapablePlaceable lookaheadCapablePlaceable) {
        this.f5195b = lookaheadCapablePlaceable;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.layout.g0.a
    public LayoutDirection d() {
        return this.f5195b.getLayoutDirection();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.layout.g0.a
    public int e() {
        return this.f5195b.s0();
    }
}
