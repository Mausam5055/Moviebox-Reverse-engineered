package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.v1;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {
    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, Painter painter, boolean z10, androidx.compose.ui.b bVar, androidx.compose.ui.layout.e eVar, float f11, v1 v1Var) {
        return fVar.e(new PainterElement(painter, z10, bVar, eVar, f11, v1Var));
    }

    public static /* synthetic */ androidx.compose.ui.f b(androidx.compose.ui.f fVar, Painter painter, boolean z10, androidx.compose.ui.b bVar, androidx.compose.ui.layout.e eVar, float f11, v1 v1Var, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        boolean z11 = z10;
        if ((i11 & 4) != 0) {
            bVar = androidx.compose.ui.b.f4087a.d();
        }
        androidx.compose.ui.b bVar2 = bVar;
        if ((i11 & 8) != 0) {
            eVar = androidx.compose.ui.layout.e.f5176a.b();
        }
        androidx.compose.ui.layout.e eVar2 = eVar;
        if ((i11 & 16) != 0) {
            f11 = 1.0f;
        }
        float f12 = f11;
        if ((i11 & 32) != 0) {
            v1Var = null;
        }
        return a(fVar, painter, z11, bVar2, eVar2, f12, v1Var);
    }
}
