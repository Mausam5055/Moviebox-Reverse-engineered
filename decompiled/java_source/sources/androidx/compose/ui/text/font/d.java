package androidx.compose.ui.text.font;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    public static final p a(p.a aVar) {
        return aVar.d();
    }

    public static final int b(boolean z10, boolean z11) {
        if (z11 && z10) {
            return 3;
        }
        if (z10) {
            return 1;
        }
        return z11 ? 2 : 0;
    }

    public static final int c(p pVar, int i11) {
        return b(pVar.compareTo(a(p.f6149b)) >= 0, n.f(i11, n.f6139b.a()));
    }
}
