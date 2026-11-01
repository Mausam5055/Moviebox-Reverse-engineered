package androidx.compose.ui.text.font;

import androidx.compose.runtime.a3;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class i {
    public static /* synthetic */ a3 a(h.b bVar, h hVar, p pVar, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resolve-DPcqOEQ");
        }
        if ((i13 & 1) != 0) {
            hVar = null;
        }
        if ((i13 & 2) != 0) {
            pVar = p.f6149b.a();
        }
        if ((i13 & 4) != 0) {
            i11 = n.f6139b.b();
        }
        if ((i13 & 8) != 0) {
            i12 = o.f6143b.a();
        }
        return bVar.a(hVar, pVar, i11, i12);
    }
}
