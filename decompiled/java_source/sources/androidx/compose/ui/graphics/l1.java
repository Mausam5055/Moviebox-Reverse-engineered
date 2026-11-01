package androidx.compose.ui.graphics;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class l1 {
    public static void a(m1 m1Var, y.i iVar, int i11) {
        m1Var.a(iVar.f(), iVar.i(), iVar.g(), iVar.c(), i11);
    }

    public static void b(m1 m1Var, y.i iVar, m4 m4Var) {
        m1Var.f(iVar.f(), iVar.i(), iVar.g(), iVar.c(), m4Var);
    }

    public static /* synthetic */ void c(m1 m1Var, Path path, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipPath-mtrdD-E");
        }
        if ((i12 & 2) != 0) {
            i11 = t1.f4647a.b();
        }
        m1Var.b(path, i11);
    }

    public static /* synthetic */ void d(m1 m1Var, float f11, float f12, float f13, float f14, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipRect-N_I0leg");
        }
        if ((i12 & 16) != 0) {
            i11 = t1.f4647a.b();
        }
        m1Var.a(f11, f12, f13, f14, i11);
    }

    public static /* synthetic */ void e(m1 m1Var, y.i iVar, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipRect-mtrdD-E");
        }
        if ((i12 & 2) != 0) {
            i11 = t1.f4647a.b();
        }
        m1Var.l(iVar, i11);
    }
}
