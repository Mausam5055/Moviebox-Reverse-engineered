package androidx.compose.ui.text.platform;

import android.graphics.Matrix;
import android.graphics.Shader;
import androidx.compose.ui.graphics.b5;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.k1;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.y4;
import androidx.compose.ui.graphics.z4;
import androidx.compose.ui.text.MultiParagraph;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static final void a(MultiParagraph multiParagraph, m1 m1Var, j1 j1Var, float f11, z4 z4Var, androidx.compose.ui.text.style.i iVar, z.h hVar, int i11) {
        m1Var.n();
        if (multiParagraph.u().size() <= 1 || (j1Var instanceof b5)) {
            b(multiParagraph, m1Var, j1Var, f11, z4Var, iVar, hVar, i11);
        } else if (j1Var instanceof y4) {
            List listU = multiParagraph.u();
            int size = listU.size();
            float fMax = 0.0f;
            float height = 0.0f;
            for (int i12 = 0; i12 < size; i12++) {
                androidx.compose.ui.text.m mVar = (androidx.compose.ui.text.m) listU.get(i12);
                height += mVar.e().getHeight();
                fMax = Math.max(fMax, mVar.e().getWidth());
            }
            Shader shaderB = ((y4) j1Var).b(y.n.a(fMax, height));
            Matrix matrix = new Matrix();
            shaderB.getLocalMatrix(matrix);
            List listU2 = multiParagraph.u();
            int size2 = listU2.size();
            for (int i13 = 0; i13 < size2; i13++) {
                androidx.compose.ui.text.m mVar2 = (androidx.compose.ui.text.m) listU2.get(i13);
                mVar2.e().j(m1Var, k1.a(shaderB), f11, z4Var, iVar, hVar, i11);
                m1Var.c(0.0f, mVar2.e().getHeight());
                matrix.setTranslate(0.0f, -mVar2.e().getHeight());
                shaderB.setLocalMatrix(matrix);
            }
        }
        m1Var.j();
    }

    private static final void b(MultiParagraph multiParagraph, m1 m1Var, j1 j1Var, float f11, z4 z4Var, androidx.compose.ui.text.style.i iVar, z.h hVar, int i11) {
        List listU = multiParagraph.u();
        int size = listU.size();
        for (int i12 = 0; i12 < size; i12++) {
            androidx.compose.ui.text.m mVar = (androidx.compose.ui.text.m) listU.get(i12);
            mVar.e().j(m1Var, j1Var, f11, z4Var, iVar, hVar, i11);
            m1Var.c(0.0f, mVar.e().getHeight());
        }
    }
}
