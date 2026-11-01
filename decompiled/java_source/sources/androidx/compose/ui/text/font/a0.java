package androidx.compose.ui.text.font;

import android.graphics.Typeface;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class a0 implements x {
    private final Typeface c(String str, p pVar, int i11) {
        if (n.f(i11, n.f6139b.b()) && Intrinsics.c(pVar, p.f6149b.a()) && (str == null || str.length() == 0)) {
            return Typeface.DEFAULT;
        }
        int iC = d.c(pVar, i11);
        return (str == null || str.length() == 0) ? Typeface.defaultFromStyle(iC) : Typeface.create(str, iC);
    }

    private final Typeface d(String str, p pVar, int i11) {
        if (str.length() == 0) {
            return null;
        }
        Typeface typefaceC = c(str, pVar, i11);
        if (Intrinsics.c(typefaceC, Typeface.create(Typeface.DEFAULT, d.c(pVar, i11))) || Intrinsics.c(typefaceC, c(null, pVar, i11))) {
            return null;
        }
        return typefaceC;
    }

    @Override // androidx.compose.ui.text.font.x
    public Typeface a(s sVar, p pVar, int i11) {
        Typeface typefaceD = d(b0.b(sVar.c(), pVar), pVar, i11);
        return typefaceD == null ? c(sVar.c(), pVar, i11) : typefaceD;
    }

    @Override // androidx.compose.ui.text.font.x
    public Typeface b(p pVar, int i11) {
        return c(null, pVar, i11);
    }
}
