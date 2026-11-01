package androidx.compose.ui.text.platform;

import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.u;
import androidx.compose.ui.text.w;
import androidx.core.text.v;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    public static final androidx.compose.ui.text.o a(String str, d0 d0Var, List list, List list2, o0.e eVar, androidx.compose.ui.text.font.h.b bVar) {
        return new AndroidParagraphIntrinsics(str, d0Var, list, list2, bVar, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean c(d0 d0Var) {
        u uVarA;
        w wVarW = d0Var.w();
        androidx.compose.ui.text.e eVarD = (wVarW == null || (uVarA = wVarW.a()) == null) ? null : androidx.compose.ui.text.e.d(uVarA.a());
        return !(eVarD == null ? false : androidx.compose.ui.text.e.g(eVarD.j(), androidx.compose.ui.text.e.f6092b.c()));
    }

    public static final int d(int i11, n0.i iVar) {
        Locale localeA;
        androidx.compose.ui.text.style.j.a aVar = androidx.compose.ui.text.style.j.f6414b;
        if (androidx.compose.ui.text.style.j.j(i11, aVar.b())) {
            return 2;
        }
        if (!androidx.compose.ui.text.style.j.j(i11, aVar.c())) {
            if (androidx.compose.ui.text.style.j.j(i11, aVar.d())) {
                return 0;
            }
            if (androidx.compose.ui.text.style.j.j(i11, aVar.e())) {
                return 1;
            }
            if (!(androidx.compose.ui.text.style.j.j(i11, aVar.a()) ? true : androidx.compose.ui.text.style.j.j(i11, aVar.f()))) {
                throw new IllegalStateException("Invalid TextDirection.");
            }
            if (iVar == null || (localeA = iVar.e(0).a()) == null) {
                localeA = Locale.getDefault();
            }
            int iA = v.a(localeA);
            if (iA == 0 || iA != 1) {
                return 2;
            }
        }
        return 3;
    }
}
