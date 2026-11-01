package androidx.compose.runtime;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {
    public static final int a(i iVar, int i11) {
        if (k.H()) {
            k.Q(524444915, i11, -1, "androidx.compose.runtime.<get-currentCompositeKeyHash> (Composables.kt:228)");
        }
        int iL = iVar.L();
        if (k.H()) {
            k.P();
        }
        return iL;
    }

    public static final void b() {
        throw new IllegalStateException("Invalid applier");
    }

    public static final m c(i iVar, int i11) {
        if (k.H()) {
            k.Q(-1165786124, i11, -1, "androidx.compose.runtime.rememberCompositionContext (Composables.kt:484)");
        }
        m mVarM = iVar.M();
        if (k.H()) {
            k.P();
        }
        return mVarM;
    }
}
