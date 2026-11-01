package androidx.compose.ui.semantics;

import androidx.compose.ui.node.LayoutNode;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LayoutNode f6006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f6007b;

    public m(LayoutNode layoutNode, d dVar) {
        this.f6006a = layoutNode;
        this.f6007b = dVar;
    }

    public final SemanticsNode a() {
        return new SemanticsNode(this.f6007b, false, this.f6006a, new i());
    }
}
