package androidx.compose.foundation.layout;

/* JADX INFO: loaded from: classes.dex */
public abstract class v {
    public static final m a(z zVar) {
        if (zVar != null) {
            return zVar.a();
        }
        return null;
    }

    public static final boolean b(z zVar) {
        if (zVar != null) {
            return zVar.b();
        }
        return true;
    }

    public static final z c(androidx.compose.ui.layout.i iVar) {
        Object objG = iVar.G();
        if (objG instanceof z) {
            return (z) objG;
        }
        return null;
    }

    public static final z d(androidx.compose.ui.layout.g0 g0Var) {
        Object objG = g0Var.G();
        if (objG instanceof z) {
            return (z) objG;
        }
        return null;
    }

    public static final float e(z zVar) {
        if (zVar != null) {
            return zVar.d();
        }
        return 0.0f;
    }

    public static final boolean f(z zVar) {
        m mVarA = a(zVar);
        if (mVarA != null) {
            return mVarA.c();
        }
        return false;
    }
}
