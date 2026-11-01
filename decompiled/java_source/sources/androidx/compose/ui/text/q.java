package androidx.compose.ui.text;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class q {
    public static final l a(String str, d0 d0Var, long j11, o0.e eVar, androidx.compose.ui.text.font.h.b bVar, List list, List list2, int i11, boolean z10) {
        return androidx.compose.ui.text.platform.e.b(str, d0Var, list, list2, i11, z10, j11, eVar, bVar);
    }

    public static final l c(o oVar, long j11, int i11, boolean z10) {
        return androidx.compose.ui.text.platform.e.a(oVar, i11, z10, j11);
    }

    public static final int d(float f11) {
        return (int) Math.ceil(f11);
    }
}
