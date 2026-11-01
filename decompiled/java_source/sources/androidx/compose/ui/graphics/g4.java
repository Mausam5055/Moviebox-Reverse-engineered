package androidx.compose.ui.graphics;

/* JADX INFO: loaded from: classes.dex */
public abstract class g4 {
    public static final e4 a(int i11, int i12, int i13, boolean z10, androidx.compose.ui.graphics.colorspace.c cVar) {
        return q0.a(i11, i12, i13, z10, cVar);
    }

    public static /* synthetic */ e4 b(int i11, int i12, int i13, boolean z10, androidx.compose.ui.graphics.colorspace.c cVar, int i14, Object obj) {
        if ((i14 & 4) != 0) {
            i13 = f4.f4439b.b();
        }
        if ((i14 & 8) != 0) {
            z10 = true;
        }
        if ((i14 & 16) != 0) {
            cVar = androidx.compose.ui.graphics.colorspace.g.f4353a.w();
        }
        return a(i11, i12, i13, z10, cVar);
    }
}
