package androidx.compose.ui.text.font;

import android.graphics.Typeface;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class z implements x {
    private final Typeface c(String str, p pVar, int i11) {
        n.a aVar = n.f6139b;
        if (n.f(i11, aVar.b()) && Intrinsics.c(pVar, p.f6149b.a()) && (str == null || str.length() == 0)) {
            return Typeface.DEFAULT;
        }
        return Typeface.create(str == null ? Typeface.DEFAULT : Typeface.create(str, 0), pVar.h(), n.f(i11, aVar.a()));
    }

    @Override // androidx.compose.ui.text.font.x
    public Typeface a(s sVar, p pVar, int i11) {
        return c(sVar.c(), pVar, i11);
    }

    @Override // androidx.compose.ui.text.font.x
    public Typeface b(p pVar, int i11) {
        return c(null, pVar, i11);
    }
}
