package androidx.compose.foundation.layout;

import androidx.compose.ui.node.a1;

/* JADX INFO: loaded from: classes.dex */
public final class q extends androidx.compose.ui.f.c implements a1 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private androidx.compose.ui.b.InterfaceC0044b f2875n;

    public q(androidx.compose.ui.b.InterfaceC0044b interfaceC0044b) {
        this.f2875n = interfaceC0044b;
    }

    @Override // androidx.compose.ui.node.a1
    /* JADX INFO: renamed from: D1, reason: merged with bridge method [inline-methods] */
    public z v0(o0.e eVar, Object obj) {
        z zVar = obj instanceof z ? (z) obj : null;
        if (zVar == null) {
            zVar = new z(0.0f, false, null, null, 15, null);
        }
        zVar.e(m.f2861a.a(this.f2875n));
        return zVar;
    }

    public final void E1(androidx.compose.ui.b.InterfaceC0044b interfaceC0044b) {
        this.f2875n = interfaceC0044b;
    }
}
