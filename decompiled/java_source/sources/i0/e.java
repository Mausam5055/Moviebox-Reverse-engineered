package i0;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.TypedValue;
import androidx.compose.runtime.k;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.m;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.ResourceResolutionException;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {
    private static final e4 a(CharSequence charSequence, Resources resources, int i11) {
        try {
            return c.a(e4.f4434a, resources, i11);
        } catch (Exception e11) {
            throw new ResourceResolutionException("Error attempting to load resource: " + ((Object) charSequence), e11);
        }
    }

    private static final androidx.compose.ui.graphics.vector.c b(Resources.Theme theme, Resources resources, int i11, int i12, androidx.compose.runtime.i iVar, int i13) throws XmlPullParserException, IOException {
        if (k.H()) {
            k.Q(21855625, i13, -1, "androidx.compose.ui.res.loadVectorResource (PainterResources.android.kt:91)");
        }
        d dVar = (d) iVar.l(AndroidCompositionLocals_androidKt.h());
        d.b bVar = new d.b(theme, i11);
        d.a aVarB = dVar.b(bVar);
        if (aVarB == null) {
            XmlResourceParser xml = resources.getXml(i11);
            if (!Intrinsics.c(a0.c.j(xml).getName(), "vector")) {
                throw new IllegalArgumentException("Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG, WEBP");
            }
            aVarB = i.a(theme, resources, xml, i12);
            dVar.d(bVar, aVarB);
        }
        androidx.compose.ui.graphics.vector.c cVarB = aVarB.b();
        if (k.H()) {
            k.P();
        }
        return cVarB;
    }

    public static final Painter c(int i11, androidx.compose.runtime.i iVar, int i12) {
        Painter aVar;
        if (k.H()) {
            k.Q(473971343, i12, -1, "androidx.compose.ui.res.painterResource (PainterResources.android.kt:57)");
        }
        Context context = (Context) iVar.l(AndroidCompositionLocals_androidKt.g());
        iVar.l(AndroidCompositionLocals_androidKt.f());
        Resources resources = context.getResources();
        TypedValue typedValueB = ((f) iVar.l(AndroidCompositionLocals_androidKt.i())).b(resources, i11);
        CharSequence charSequence = typedValueB.string;
        boolean z10 = true;
        if (charSequence == null || !StringsKt.g0(charSequence, ".xml", false, 2, null)) {
            iVar.P(-802884675);
            Object theme = context.getTheme();
            boolean zO = iVar.O(charSequence);
            if ((((i12 & 14) ^ 6) <= 4 || !iVar.c(i11)) && (i12 & 6) != 4) {
                z10 = false;
            }
            boolean zO2 = zO | z10 | iVar.O(theme);
            Object objY = iVar.y();
            if (zO2 || objY == androidx.compose.runtime.i.f3736a.a()) {
                objY = a(charSequence, resources, i11);
                iVar.p(objY);
            }
            aVar = new androidx.compose.ui.graphics.painter.a((e4) objY, 0L, 0L, 6, null);
            iVar.K();
        } else {
            iVar.P(-803040357);
            aVar = m.g(b(context.getTheme(), resources, i11, typedValueB.changingConfigurations, iVar, (i12 << 6) & 896), iVar, 0);
            iVar.K();
        }
        if (k.H()) {
            k.P();
        }
        return aVar;
    }
}
