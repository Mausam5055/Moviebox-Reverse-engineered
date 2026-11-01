package androidx.compose.ui.graphics.layer;

import androidx.compose.ui.graphics.k4;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    public static final void a(z.g gVar, GraphicsLayer graphicsLayer) {
        graphicsLayer.h(gVar.H0().e(), gVar.H0().g());
    }

    public static final void b(GraphicsLayer graphicsLayer, k4 k4Var) {
        if (k4Var instanceof k4.b) {
            k4.b bVar = (k4.b) k4Var;
            graphicsLayer.R(y.h.a(bVar.b().f(), bVar.b().i()), y.n.a(bVar.b().k(), bVar.b().e()));
            return;
        }
        if (k4Var instanceof k4.a) {
            graphicsLayer.O(((k4.a) k4Var).b());
            return;
        }
        if (k4Var instanceof k4.c) {
            k4.c cVar = (k4.c) k4Var;
            if (cVar.c() != null) {
                graphicsLayer.O(cVar.c());
            } else {
                y.k kVarB = cVar.b();
                graphicsLayer.W(y.h.a(kVarB.e(), kVarB.g()), y.n.a(kVarB.j(), kVarB.d()), y.a.d(kVarB.b()));
            }
        }
    }
}
