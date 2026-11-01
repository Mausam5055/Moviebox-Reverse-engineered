package androidx.compose.foundation;

/* JADX INFO: loaded from: classes.dex */
public abstract class v {
    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, p.i iVar, boolean z10) {
        return fVar.e(z10 ? new HoverableElement(iVar) : androidx.compose.ui.f.f4178a);
    }

    public static /* synthetic */ androidx.compose.ui.f b(androidx.compose.ui.f fVar, p.i iVar, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        return a(fVar, iVar, z10);
    }
}
