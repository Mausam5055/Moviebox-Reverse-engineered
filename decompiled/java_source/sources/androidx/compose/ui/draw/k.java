package androidx.compose.ui.draw;

import androidx.collection.l0;
import androidx.collection.r0;
import androidx.compose.ui.graphics.a4;
import androidx.compose.ui.graphics.layer.GraphicsLayer;

/* JADX INFO: loaded from: classes.dex */
final class k implements a4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private l0 f4176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a4 f4177b;

    @Override // androidx.compose.ui.graphics.a4
    public GraphicsLayer a() {
        a4 a4Var = this.f4177b;
        if (!(a4Var != null)) {
            g0.a.b("GraphicsContext not provided");
        }
        GraphicsLayer graphicsLayerA = a4Var.a();
        l0 l0Var = this.f4176a;
        if (l0Var == null) {
            this.f4176a = r0.b(graphicsLayerA);
        } else {
            l0Var.e(graphicsLayerA);
        }
        return graphicsLayerA;
    }

    @Override // androidx.compose.ui.graphics.a4
    public void b(GraphicsLayer graphicsLayer) {
        a4 a4Var = this.f4177b;
        if (a4Var != null) {
            a4Var.b(graphicsLayer);
        }
    }

    public final a4 c() {
        return this.f4177b;
    }

    public final void d() {
        l0 l0Var = this.f4176a;
        if (l0Var != null) {
            Object[] objArr = l0Var.f2244a;
            int i11 = l0Var.f2245b;
            for (int i12 = 0; i12 < i11; i12++) {
                b((GraphicsLayer) objArr[i12]);
            }
            l0Var.f();
        }
    }

    public final void e(a4 a4Var) {
        d();
        this.f4177b = a4Var;
    }
}
