package androidx.compose.foundation;

import androidx.compose.ui.platform.CompositionLocalsKt;

/* JADX INFO: loaded from: classes.dex */
public final class q extends androidx.compose.ui.f.c implements androidx.compose.ui.node.d, androidx.compose.ui.focus.m {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f3158n;

    private final c0.b D1() {
        return (c0.b) androidx.compose.ui.node.e.a(this, CompositionLocalsKt.f());
    }

    @Override // androidx.compose.ui.f.c
    public boolean i1() {
        return this.f3158n;
    }

    @Override // androidx.compose.ui.focus.m
    public void r0(androidx.compose.ui.focus.k kVar) {
        kVar.r(!c0.a.f(D1().a(), c0.a.f16967b.b()));
    }
}
