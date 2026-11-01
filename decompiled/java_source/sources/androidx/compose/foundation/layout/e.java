package androidx.compose.foundation.layout;

import androidx.compose.ui.node.a1;

/* JADX INFO: loaded from: classes.dex */
final class e extends androidx.compose.ui.f.c implements a1 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private androidx.compose.ui.b f2850n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f2851o;

    public e(androidx.compose.ui.b bVar, boolean z10) {
        this.f2850n = bVar;
        this.f2851o = z10;
    }

    public final androidx.compose.ui.b D1() {
        return this.f2850n;
    }

    public final boolean E1() {
        return this.f2851o;
    }

    @Override // androidx.compose.ui.node.a1
    /* JADX INFO: renamed from: F1, reason: merged with bridge method [inline-methods] */
    public e v0(o0.e eVar, Object obj) {
        return this;
    }

    public final void G1(androidx.compose.ui.b bVar) {
        this.f2850n = bVar;
    }

    public final void H1(boolean z10) {
        this.f2851o = z10;
    }
}
